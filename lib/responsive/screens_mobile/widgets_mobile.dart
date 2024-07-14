import 'package:aromas_selectos/exports.dart';

class LocionMobile extends StatefulWidget {
  
  final String imageLocion;
  final String imageLocion2;
  final double imageWidth;
  final double imageHeight;
  final String nameLocion;
  final String symbol;
  final double priceOriginal;
  final String onzas;

  // ignore: use_super_parameters
  const LocionMobile({
    Key? key,
    required this.imageLocion,
    required this.imageLocion2,
    required this.imageWidth,
    required this.imageHeight,
    required this.nameLocion,
    required this.symbol,
    required this.priceOriginal,
    required this.onzas,
  }) : super(key: key);

  @override
  State<LocionMobile> createState() => _LocionMobileState();

}

class _LocionMobileState extends State<LocionMobile> {

  int _quantity = 1;
  double _totalPrice = 0.0;
  String _selectedOnza = '1';


  @override
  void initState() {
    super.initState();
    _totalPrice = widget.priceOriginal * _quantity;
  }

void updateQuantity(int newQuantity) {
    setState(() {
      _quantity = newQuantity;
      _totalPrice = _calculatePrice();
    });
  }

  void updateOnza(String? newOnza) {
    setState(() {
      _selectedOnza = newOnza!;
      _totalPrice = _calculatePrice();
    });
  }

  double _calculatePrice() {
    double basePrice;
    switch (_selectedOnza) {
      case '2':
      basePrice = 29;
      break;
      case '3':
      basePrice = 40;
      break;
      default:
      basePrice = widget.priceOriginal;
      break;
    }
    return basePrice * _quantity;
  }


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(color: Colors.white),
      ),
      child: Container(
        height: 380,
        width: 160,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: ImageOnHover(
                imagePath: widget.imageLocion,
                hoverImagePath: widget.imageLocion2,
                imageWidth: widget.imageWidth,
                imageHeight: widget.imageHeight,
              ),
            ),
            Positioned(
              top: 227,
              bottom: 8,
              left: 8,
              right: 8,
              child: Text(widget.nameLocion, style: styleTextLocionMobile),
            ),
            Positioned(
              top: 247,
              left: 8,
              right: 8,
              child: DropdownButton<String>(
                value: _selectedOnza,
                underline: const SizedBox.shrink(),
                onChanged: updateOnza,
                items: ['1', '2', '3'].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text('$value fl oz', style: styleTextLocionMobile),
                  );
                }).toList(),
              ),
            ),
            Positioned(
              top: 280,
              left: 9,
              child: Text('Cantidad:', style: cantidadMobile),
            ),
            Positioned(
              top: 297,
              left: 12,
              child: CantidadMobile(onQuantityChanged: updateQuantity),
            ),
            Positioned(
              top: 320,
              left: 9,
              right: 12,
              child: Text('${widget.symbol}${widget.priceOriginal.toStringAsFixed(3)}', style: styleTextPriceMobile),
            ),
            Positioned(
              top: 345,
              left: 3,
              right: 3,
              bottom: 3,
              child: CarShopMobile(
                productToAdd: Product(
                  id: DateTime.now().toString(),
                  name: widget.nameLocion,
                  priceDescuento: _totalPrice,
                  image: widget.imageLocion,
                  imageWidth: 100,
                  imageHeight: 160,
                  onzas: _selectedOnza,
                  cantidad: _quantity,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//TODO: LOCION CREA TU LOCION MOBILE

class LocionCreaTuLocionMobile extends StatefulWidget {
  
  final String imageLocion;
  final String imageLocion2;
  final double imageWidth;
  final double imageHeight;
  final String nameLocion;
  final String symbol;
  final double priceOriginal;
  final int cantidad;
  final VoidCallback onRemove;

  // ignore: use_super_parameters
  const LocionCreaTuLocionMobile({
    Key? key,
    required this.imageLocion,
    required this.imageLocion2,
    required this.imageWidth,
    required this.imageHeight,
    required this.nameLocion,
    required this.symbol,
    required this.priceOriginal,
    required this.cantidad,
    required this.onRemove,
  }) : super(key: key);

  @override
  State<LocionCreaTuLocionMobile> createState() => _LocionCreaTuLocionMobileState();

}

class _LocionCreaTuLocionMobileState extends State<LocionCreaTuLocionMobile> {

  int _quantity = 1;
  late double _totalPrice = 0.0;


  @override
  void initState() {
    super.initState();
    _totalPrice = widget.priceOriginal * _quantity;
  }

  void updateQuantity(int newQuantity) {
    setState(() {
      _quantity = newQuantity;
      _totalPrice = widget.priceOriginal * _quantity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(color: Colors.white),
      ),
      child: Container(
        height: 380,
        width: 180,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
        ),
        child: Stack(
          children: [
            Positioned(
              right: 1,
              child: IconButton(
                icon: const Icon(Icons.delete_rounded, color: Colors.black, size: 16),
                onPressed: () {
                  widget.onRemove();
                }
              ),
            ),
            Positioned(
              top: 30,
              left: 8,
              right: 8,
              child: ImageOnHover(
                imagePath: widget.imageLocion,
                hoverImagePath: widget.imageLocion2,
                imageWidth: widget.imageWidth,
                imageHeight: widget.imageHeight,
              ),
            ),
            Positioned(
              top: 245,
              bottom: 8,
              left: 8,
              right: 8,
              child: Text(widget.nameLocion, style: styleTextLocionMobile),
            ),
            Positioned(
              top: 310,
              bottom: 8,
              left: 8,
              right: 8,
              child: Text('1 fl oz', style: styleTextLocionMobile)
            ),
            Positioned(
              top: 324,
              left: 90,
              child: Text('Cantidad: ${widget.cantidad}', style: cantidad),
            ),
            Positioned(
              top: 324,
              left: 8,
              child: Text('${widget.symbol}${widget.priceOriginal.toStringAsFixed(3)}', style: styleTextPriceMobile),
            ),
            Positioned(
              top: 343,
              left: 5,
              right: 5,
              child: CarShopMobile(
                productToAdd: Product(
                  id: DateTime.now().toString(),
                  name: widget.nameLocion,
                  priceDescuento: _totalPrice,
                  image: widget.imageLocion,
                  imageWidth: 120,
                  imageHeight: 185,
                  onzas: '1',
                  cantidad: widget.cantidad,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//TODO: LOCION CREA TU LOCION MOBILE 3 LOCIONES

class LocionCreaTuLocionMobile3 extends StatefulWidget {
  
  final String imageLocion;
  final String imageLocion2;
  final double imageWidth;
  final double imageHeight;
  final String nameLocion;
  final String symbol;
  final double priceOriginal;
  final int cantidad;
  final VoidCallback onRemove;

  // ignore: use_super_parameters
  const LocionCreaTuLocionMobile3({
    Key? key,
    required this.imageLocion,
    required this.imageLocion2,
    required this.imageWidth,
    required this.imageHeight,
    required this.nameLocion,
    required this.symbol,
    required this.priceOriginal,
    required this.cantidad,
    required this.onRemove,
  }) : super(key: key);

  @override
  State<LocionCreaTuLocionMobile3> createState() => _LocionCreaTuLocionMobile3State();

}

class _LocionCreaTuLocionMobile3State extends State<LocionCreaTuLocionMobile3> {

  int _quantity = 1;
  late double _totalPrice = 0.0;


  @override
  void initState() {
    super.initState();
    _totalPrice = widget.priceOriginal * _quantity;
  }

  void updateQuantity(int newQuantity) {
    setState(() {
      _quantity = newQuantity;
      _totalPrice = widget.priceOriginal * _quantity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(color: Colors.white),
      ),
      child: Container(
        height: 440,
        width: 190,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
        ),
        child: Stack(
          children: [
            Positioned(
              right: 1,
              child: IconButton(
                icon: const Icon(Icons.delete_rounded, color: Colors.black, size: 16),
                onPressed: () {
                  widget.onRemove();
                }
              ),
            ),
            Positioned(
              top: 30,
              left: 8,
              right: 8,
              child: ImageOnHover(
                imagePath: widget.imageLocion,
                hoverImagePath: widget.imageLocion2,
                imageWidth: widget.imageWidth,
                imageHeight: widget.imageHeight,
              ),
            ),
            Positioned(
              top: 245,
              bottom: 8,
              left: 8,
              right: 8,
              child: Text(widget.nameLocion, style: styleTextLocionMobile),
            ),
            Positioned(
              top: 350,
              bottom: 8,
              left: 8,
              right: 8,
              child: Text('1 fl oz', style: styleTextLocionMobile)
            ),
            Positioned(
              top: 374,
              left: 90,
              child: Text('Cantidad: ${widget.cantidad}', style: cantidad),
            ),
            Positioned(
              top: 374,
              left: 8,
              child: Text('${widget.symbol}${widget.priceOriginal.toStringAsFixed(3)}', style: styleTextPriceMobile),
            ),
            Positioned(
              top: 398,
              left: 5,
              right: 5,
              child: CarShopMobile(
                productToAdd: Product(
                  id: DateTime.now().toString(),
                  name: widget.nameLocion,
                  priceDescuento: _totalPrice,
                  image: widget.imageLocion,
                  imageWidth: 120,
                  imageHeight: 185,
                  onzas: '1',
                  cantidad: widget.cantidad,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//TODO: LOCION ARABE MOBILE

class LocionArabeMobile extends StatefulWidget {
  
  final String imageLocion;
  final String imageLocion2;
  final double imageWidth;
  final double imageHeight;
  final String nameLocion;
  final String symbol;
  final double priceOriginal;
  final String onzas;

  // ignore: use_super_parameters
  const LocionArabeMobile({
    Key? key,
    required this.imageLocion,
    required this.imageLocion2,
    required this.imageWidth,
    required this.imageHeight,
    required this.nameLocion,
    required this.symbol,
    required this.priceOriginal,
    required this.onzas,
  }) : super(key: key);

  @override
  State<LocionArabeMobile> createState() => _LocionArabeMobileState();

}

class _LocionArabeMobileState extends State<LocionArabeMobile> {

  int _quantity = 1;
  double _totalPrice = 0.0;
  String _selectedOnza = '1';


  @override
  void initState() {
    super.initState();
    _totalPrice = widget.priceOriginal * _quantity;
  }

void updateQuantity(int newQuantity) {
    setState(() {
      _quantity = newQuantity;
      _totalPrice = _calculatePrice();
    });
  }

  void updateOnza(String? newOnza) {
    setState(() {
      _selectedOnza = newOnza!;
      _totalPrice = _calculatePrice();
    });
  }

  double _calculatePrice() {
    double basePrice;
    switch (_selectedOnza) {
      case '2':
      basePrice = 33;
      break;
      case '3':
      basePrice = 45;
      break;
      default:
      basePrice = widget.priceOriginal;
      break;
    }
    return basePrice * _quantity;
  }


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(color: Colors.white),
      ),
      child: Container(
        height: 380,
        width: 160,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: ImageOnHover(
                imagePath: widget.imageLocion,
                hoverImagePath: widget.imageLocion2,
                imageWidth: widget.imageWidth,
                imageHeight: widget.imageHeight,
              ),
            ),
            Positioned(
              top: 227,
              bottom: 8,
              left: 8,
              right: 8,
              child: Text(widget.nameLocion, style: styleTextLocionMobile),
            ),
            Positioned(
              top: 247,
              left: 8,
              right: 8,
              child: DropdownButton<String>(
                value: _selectedOnza,
                underline: const SizedBox.shrink(),
                onChanged: updateOnza,
                items: ['1', '2', '3'].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text('$value fl oz', style: styleTextLocionMobile),
                  );
                }).toList(),
              ),
            ),
            Positioned(
              top: 280,
              left: 9,
              child: Text('Cantidad:', style: cantidadMobile),
            ),
            Positioned(
              top: 297,
              left: 12,
              child: CantidadMobile(onQuantityChanged: updateQuantity),
            ),
            Positioned(
              top: 320,
              left: 9,
              right: 12,
              child: Text('${widget.symbol}${widget.priceOriginal.toStringAsFixed(3)}', style: styleTextPriceMobile),
            ),
            Positioned(
              top: 345,
              left: 3,
              right: 3,
              bottom: 3,
              child: CarShopMobile(
                productToAdd: Product(
                  id: DateTime.now().toString(),
                  name: widget.nameLocion,
                  priceDescuento: _totalPrice,
                  image: widget.imageLocion,
                  imageWidth: 100,
                  imageHeight: 160,
                  onzas: _selectedOnza,
                  cantidad: _quantity,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//TODO: BOLSOS PROMOTION

class BolsosPromotionMobile extends StatefulWidget {

  final String imageBolso;
  final String imageBolso2;
  final double imageWidth;
  final double imageHeight;
  final String nameBolso;
  final String symbol;
  final double priceDescuento;
  final double price;
  final Widget promotion;

  // ignore: use_super_parameters
  const BolsosPromotionMobile({
    Key? key,
    required this.imageBolso,
    required this.imageBolso2,
    required this.imageWidth,
    required this.imageHeight,
    required this.nameBolso,
    required this.symbol,
    required this.price, 
    required this.priceDescuento, 
    required this.promotion, 
  }) : super(key: key);

  @override
  State<BolsosPromotionMobile> createState() => _BolsosPromotionMobileState();
}

class _BolsosPromotionMobileState extends State<BolsosPromotionMobile> {

  int _quantity= 1;
  double _totalPrice = 0.0;
  double _totalDiscountedPrice = 0.0;

  @override
  void initState() {
    super.initState();
    _totalPrice = widget.priceDescuento * _quantity;
    _totalDiscountedPrice = widget.price * _quantity;
  }

  void updateQuantity(int newQuantity) {
    setState(() {
      _quantity = newQuantity;
      _totalPrice = widget.priceDescuento * _quantity;
      _totalDiscountedPrice = widget.price * _quantity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(color: Colors.white),
      ),
      child: Container(
        height: 410,
        width: 160,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: ImageOnHover(
                imagePath: widget.imageBolso,
                hoverImagePath: widget.imageBolso2,
                imageWidth: widget.imageWidth,
                imageHeight: widget.imageHeight,
              ),
            ),
            Positioned(
              top: 227,
              bottom: 8,
              left: 9,
              right: 8,
              child: Text(widget.nameBolso, style: styleTextBolsosMobile),
            ),
            Positioned(
              top: 280,
              left: 9,
              right: 12,
              child: Text('${widget.symbol}${widget.price.toStringAsFixed(3)}', style: styleTextSale),
            ),
            Positioned(
              top: 300,
              left: 8,
              right: 12,
              child: Text('${widget.symbol}${widget.priceDescuento.toStringAsFixed(3)}', style: styleTextPriceMobile),
            ),
            Positioned(
              top: 320,
              left: 9,
              child: Text('Cantidad:', style: cantidadMobile),
            ),
            Positioned(
              top: 340,
              left: 12,
              child: CantidadMobile(onQuantityChanged: updateQuantity),
            ),
            Positioned(
              top: 300,
              left: 105,
              child: widget.promotion,
            ),
            Positioned(
              top: 370,
              left: 5,
              right: 5,
              bottom: 5,
              child: CarShopMobileBolsos(
                productToAdd: Product(
                  id: DateTime.now().toString(),
                  name: widget.nameBolso,
                  price: _totalDiscountedPrice,
                  image: widget.imageBolso,
                  imageWidth: 100,
                  imageHeight: 160,
                  priceDescuento: _totalPrice,
                  cantidad: _quantity,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CarShopMobile extends StatelessWidget {

  final Product productToAdd;

  // ignore: use_super_parameters
  const CarShopMobile({
    Key? key, 
    required this.productToAdd
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      icon: const Icon(Icons.shopping_cart_rounded, color: Colors.white, size: 11),
      onPressed: () {
        Provider.of<CartModel>(context, listen: false).addProduct(productToAdd);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Agregado al Carrito', style: snackbarMobile),
            duration: const Duration(milliseconds: 1500),
            backgroundColor: Colors.black,
          )
        );
      },
      label: Text('AGREGAR AL CARRITO', style: styleTextCarMobile),
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.black,
        shape: const RoundedRectangleBorder()
      ),
    );
  }
}

class CarShopMobileBolsos extends StatelessWidget {

  final Product productToAdd;

  // ignore: use_super_parameters
  const CarShopMobileBolsos({
    Key? key, 
    required this.productToAdd
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      icon: const Icon(Icons.shopping_cart_rounded, color: Colors.white, size: 11),
      onPressed: () {
        Provider.of<CartModel>(context, listen: false).addProduct(productToAdd);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Agregado al Carrito', style: snackbarMobile),
            duration: const Duration(milliseconds: 1500),
            backgroundColor: Colors.black,
          )
        );
      },
      label: Text('AGREGAR AL CARRITO', style: styleTextCarMobile3),
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.black,
        shape: const RoundedRectangleBorder()
      ),
    );
  }
}

class Aromas extends StatelessWidget {

  final String image;
  final String text;
  final EdgeInsets padding;
  // ignore: use_super_parameters
  const Aromas({
    Key? key, 
    required this.image, 
    required this.text,
    required this.padding
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        children: [
          Image.asset(image, height: 60),
          Text(text, style: styleTextLocion, maxLines: 2),
        ],
      ),
    );
  }
}

class MainChords extends StatelessWidget {

  final double containerWidth;
  final Color? containerColor;
  final Color colorText;
  final String text;
  // ignore: use_super_parameters
  const MainChords({
    Key? key, 
    required this.containerWidth, 
    required this.containerColor, 
    required this.colorText,
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerWidth,
      height: 20,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: const BorderRadius.horizontal(right: Radius.circular(5))
      ),
      child: Stack(
        children: [
          Row(
            children: [
              const Spacer(),
              Text(text, style: TextStyle(color: colorText, fontSize: 14, fontFamily: 'Fredoka')),
              const Spacer(),
            ]
          )
        ],
      ),
    );
  }
}
