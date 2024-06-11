import 'package:marking_web/exports.dart';


class Locion extends StatefulWidget {
  
  final String imageLocion;
  final String imageLocion2;
  final double imageWidth;
  final double imageHeight;
  final String nameLocion;
  final String symbol;
  final double priceOriginal;
  final String onzas;

  // ignore: use_super_parameters
  const Locion({
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
  State<Locion> createState() => _LocionState();

}

class _LocionState extends State<Locion> {

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
        height: 510,
        width: 250,
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
              top: 360,
              bottom: 8,
              left: 12,
              right: 8,
              child: Text(widget.nameLocion, style: styleTextLocion),
            ),
            Positioned(
              top: 400,
              bottom: 8,
              left: 12,
              right: 8,
              child: DropdownButton<String>(
                value: _selectedOnza,
                onChanged: updateOnza,
                items: ['1', '2', '3'].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text('$value fl oz', style: styleTextLocion),
                  );
                }).toList(),
              ),
            ),
            Positioned(
              top: 400,
              left: 170,
              child: Text('Cantidad:', style: cantidad),
            ),
            Positioned(
              top: 425,
              left: 175,
              child: Cantidad(onQuantityChanged: updateQuantity),
            ),
            Positioned(
              top: 435,
              left: 13,
              right: 12,
              child: Text('${widget.symbol}${widget.priceOriginal.toStringAsFixed(3)}', style: styleTextPrice),
            ),
            Positioned(
              top: 470,
              left: 5,
              right: 5,
              child: CarShop(
                productToAdd: Product(
                  id: DateTime.now().toString(),
                  name: widget.nameLocion,
                  price: _totalPrice,
                  image: widget.imageLocion,
                  imageWidth: 120,
                  imageHeight: 185,
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

//TODO: LOCION ARABE

class LocionArabe extends StatefulWidget {
  
  final String imageLocion;
  final String imageLocion2;
  final double imageWidth;
  final double imageHeight;
  final String nameLocion;
  final String symbol;
  final double priceOriginal;
  final String onzas;

  // ignore: use_super_parameters
  const LocionArabe({
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
  State<LocionArabe> createState() => _LocionArabeState();

}

class _LocionArabeState extends State<LocionArabe> {

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
        height: 510,
        width: 250,
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
              top: 360,
              bottom: 8,
              left: 12,
              right: 8,
              child: Text(widget.nameLocion, style: styleTextLocion),
            ),
            Positioned(
              top: 400,
              bottom: 8,
              left: 12,
              right: 8,
              child: DropdownButton<String>(
                value: _selectedOnza,
                onChanged: updateOnza,
                items: ['1', '2', '3'].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text('$value fl oz'),
                  );
                }).toList(),
              ),
            ),
            Positioned(
              top: 400,
              left: 170,
              child: Text('Cantidad:', style: cantidad),
            ),
            Positioned(
              top: 425,
              left: 175,
              child: Cantidad(onQuantityChanged: updateQuantity),
            ),
            Positioned(
              top: 435,
              left: 13,
              right: 12,
              child: Text('${widget.symbol}${widget.priceOriginal.toStringAsFixed(3)}', style: styleTextPrice),
            ),
            Positioned(
              top: 470,
              left: 5,
              right: 5,
              child: CarShop(
                productToAdd: Product(
                  id: DateTime.now().toString(),
                  name: widget.nameLocion,
                  price: _totalPrice,
                  image: widget.imageLocion,
                  imageWidth: 120,
                  imageHeight: 185,
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
/*

//TODO: BOLSOS


class Bolsos extends StatefulWidget {

  final String imageBolso;
  final String imageBolso2;
  final double imageWidth;
  final double imageHeight;
  final String nameBolso;
  final String symbol;
  final double priceOriginal;

  // ignore: use_super_parameters
  const Bolsos({
    Key? key,
    required this.imageBolso,
    required this.imageBolso2,
    required this.imageWidth,
    required this.imageHeight,
    required this.nameBolso,
    required this.symbol,
    required this.priceOriginal, 
  }) : super(key: key);

  @override
  State<Bolsos> createState() => _BolsosState();
}

class _BolsosState extends State<Bolsos> {

  int _quantity = 1;
  double _totalPrice = 0.0;

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
        height: 510,
        width: 250,
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
              top: 360,
              bottom: 8,
              left: 12,
              right: 8,
              child: Text(widget.nameBolso, style: styleTextLocion),
            ),
            Positioned(
              top: 420,
              left: 13,
              right: 12,
              child: Text('${widget.symbol}${widget.priceOriginal.toStringAsFixed(3)}', style: styleTextPrice),
            ),
            Positioned(
              top: 470,
              left: 5,
              right: 5,
              child: CarShop(
                productToAdd: Product(
                  id: DateTime.now().toString(),
                  name: widget.nameBolso,
                  price: _totalPrice,
                  image: widget.imageBolso,
                  imageWidth: 120,
                  imageHeight: 185,
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
*/
//TODO: BOLSOS PROMOTION


class BolsosPromotion extends StatefulWidget {

  final String imageBolso;
  final String imageBolso2;
  final double imageWidth;
  final double imageHeight;
  final String nameBolso;
  final String symbol;
  final double price;
  final double priceDescuento;
  final Widget promotion;

  // ignore: use_super_parameters
  const BolsosPromotion({
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
  State<BolsosPromotion> createState() => _BolsosPromotionState();
}

class _BolsosPromotionState extends State<BolsosPromotion> {

  int _quantity= 1;
  double _totalPrice = 0.0;
  double _totalDiscountedPrice = 0.0;

  @override
  void initState() {
    super.initState();
    _totalPrice = widget.priceDescuento * _quantity;
    _totalDiscountedPrice = widget.priceDescuento * _quantity;
  }

  void updateQuantity(int newQuantity) {
    setState(() {
      _quantity = newQuantity;
      _totalPrice = widget.price * _quantity;
      _totalDiscountedPrice = widget.priceDescuento * _quantity;
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
        height: 510,
        width: 250,
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
              top: 360,
              bottom: 8,
              left: 12,
              right: 8,
              child: Text(widget.nameBolso, style: styleTextLocion),
            ),
            Positioned(
              top: 415,
              left: 13,
              right: 12,
              child: Text('${widget.symbol}${widget.price.toStringAsFixed(3)}', style: styleTextSale),
            ),
            Positioned(
              top: 400,
              left: 170,
              child: Text('Cantidad:', style: cantidad),
            ),
            Positioned(
              top: 425,
              left: 175,
              child: Cantidad(onQuantityChanged: updateQuantity),
            ),
            Positioned(
              top: 435,
              left: 13,
              right: 12,
              child: Text('${widget.symbol}${widget.priceDescuento.toStringAsFixed(3)}', style: styleTextPrice),
            ),
            Positioned(
              top: 435,
              left: 90,
              child: widget.promotion,
            ),
            Positioned(
              top: 470,
              left: 5,
              right: 5,
              child: CarShop(
                productToAdd: Product(
                  id: DateTime.now().toString(),
                  name: widget.nameBolso,
                  price: _totalDiscountedPrice,
                  image: widget.imageBolso,
                  imageWidth: 120,
                  imageHeight: 185,
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

/*
class LocionPromotion extends StatefulWidget {

  final String imageLocion;
  final String imageLocion2;
  final double imageWidth;
  final double imageHeight;
  final String nameLocion;
  final String symbol;
  final double priceOriginal;
  final String priceDescuento;
  final Widget promotion;
  final String onzas;

  // ignore: use_super_parameters
  const LocionPromotion({
    Key? key,
    required this.imageLocion,
    required this.imageLocion2,
    required this.imageWidth,
    required this.imageHeight,
    required this.nameLocion,
    required this.symbol,
    required this.priceOriginal, 
    required this.priceDescuento, 
    required this.promotion,
    required this.onzas,
  }) : super(key: key);

  @override
  State<LocionPromotion> createState() => _LocionPromotionState();
}

class _LocionPromotionState extends State<LocionPromotion> {

  bool isCartEmpty = false;

  final List<Widget> _overlayWidgets = [];


  Color? textColor = Colors.grey[700];
  int selectedNumber = 1;
  OverlayEntry? _overlayEntry;
  double totalPrice = 0;

  @override
  void initState() {
    super.initState();
    totalPrice = widget.priceOriginal;
  }

  void updateTotalPrice(int quantity) {
    setState(() {
      selectedNumber = quantity;
      totalPrice = widget.priceOriginal * quantity;
    });
  }

  void _closeCartOverlay() {

    _overlayEntry?.remove();

    _overlayEntry = null;

    setState(() {
      
    });
  }

  void _addToCartAndShowOverlay() {

    setState(() {
      isCartEmpty = false;
    });
    _showCartOverlay();
  }


  void _showCartOverlay() {

  totalPrice = widget.priceOriginal * selectedNumber;

    _overlayWidgets.clear();

    _overlayWidgets.add(
      Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 170, 0),
            child: Image.asset(widget.imageLocion, width: 160),
          ),
          Positioned(
            top: 15,
            left: 160,
            child: Text(widget.nameLocion, style: styleTextLocion),
          ),
          Positioned(
            top: 60,
            left: 160,
            child: Text('${widget.symbol}${totalPrice.toStringAsFixed(3)}', style: styleTextPrice)
          ),
          Positioned(
            top: 110,
            left: 160,
            child: Text('Cantidad:', style: styleTextLocion),
          ),
          Positioned(
            top: 150,
            left: 170,
            child: Cantidad(
              onQuantityChanged: (quantity) {
                setState(() {
                  selectedNumber = quantity;
                  totalPrice = widget.priceOriginal * quantity;
                });
              }
            )
          )
        ],
      ),
    );

    _overlayEntry = OverlayEntry(
      builder: (context) => Consumer<CartProvider>(
        builder: (context, cart, _) => Positioned(
          top: MediaQuery.of(context).size.height * 0.22,
          right: 50,
          width: 320,
          height: 445,
          child: Material(
            elevation: 12,
            child: Container(
              color: Colors.white,
              child: isCartEmpty ? _buildEmptyCart() : _buildCartContent(context),
            ),
          ),
        ),
      ),
    );    
    Overlay.of(context)?.insert(_overlayEntry!);
  }

  Widget _buildEmptyCart() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [    
            IconButton(
              icon: const Icon(Icons.close_rounded),
              onPressed: _closeCartOverlay
            )
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset('assets/images/logo_pr1.jpg', width: 194, height: 178),
            ),
            Text('Tu carrito de compras está vacío', style: styleTextMo)
          ],
        )
      ],
    );
  }


  Widget _buildCartContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Material(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.grey[350]
            ),
            child: Row(
              children: [
                const Spacer(),
                Text('ENVÍO GRATIS DESDE \$200.000', style: styleTextHeader),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.close_rounded),
                  onPressed: _closeCartOverlay,
                )
              ],
            ),
          ),
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 170, 0),
              child: Image.asset(widget.imageLocion, width: 160),
            ),
            Positioned(
              top: 23,
              left: 160,
              child: Text(widget.nameLocion, style: styleText9),
            ),
            Positioned(
              top: 13.5,
              left: 283,
              child: IconButton(
                icon: Icon(Icons.delete_rounded, color: Colors.grey[700], size: 18),
                onPressed: () {
                  setState(() {
                    isCartEmpty = true;
                  });
                  _showCartOverlay();
                },
              ),
            ),
            Positioned(
              top: 60,
              left: 160,
              child: Text('${widget.symbol}${totalPrice.toStringAsFixed(3)}', style: styleTextSale)
            ),
            Positioned(
              top: 90,
              left: 160,
              child: Text(widget.priceDescuento, style: styleTextPrice),
            ),
            Positioned(
              top: 125,
              left: 160,
              child: Text('Cantidad:', style: styleTextLocion),
            ),
            Positioned(
              top: 160,
              left: 165,
              child: Cantidad(
                onQuantityChanged: (quantity) {
                  setState(() {
                    selectedNumber = quantity;
                    totalPrice = widget.priceOriginal * quantity;
                  });
                }
              )
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 120, 10, 0),
          child: FilledButton(
            onPressed: () {},
            style: styleText200,
            child: Text('FINALIZAR COMPRA', style: styleTextCar),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: SeguirComprando(),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _overlayEntry?.remove();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(color: Colors.white)
      ),
      child: Container(
        height: 510,
        width: 250,
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
                imageHeight: widget.imageHeight
              ),
            ),
            Positioned(
              top: 360,
              bottom: 8,
              left: 12,
              right: 8,
              child: Text(widget.nameLocion, style: styleTextLocion),
            ),
            Positioned(
              top: 385,
              bottom: 8,
              left: 12,
              right: 8,
              child: Text(widget.onzas, style: styleTextLocion),
            ),
            Positioned(
              top: 412.5,
              left: 13,
              right: 12,
              child: Text('${widget.symbol}${widget.priceOriginal.toStringAsFixed(3)}', style: styleTextSale)
            ),
            Positioned(
              top: 435,
              left: 13,
              right: 12,
              child: Text(widget.priceDescuento, style: styleTextPrice),
            ),
            Positioned(
              top: 435,
              left: 90,
              child: widget.promotion,
            ),
            Positioned(
              top: 470,
              left: 5,
              right: 5,
              child: CarShop(
                productToAdd: Product(
                  id: DateTime.now().toString(),
                  name: widget.nameLocion, 
                  price: widget.priceOriginal, 
                  image: widget.imageLocion,
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}

*/


/*
class LocionPromotion extends StatefulWidget {

  final String imageLocion;
  final String imageLocion2;
  final double imageWidth;
  final double imageHeight;
  final String nameLocion;
  final String priceOriginal;
  final String priceDescuento;
  final Widget promotion;

  // ignore: use_super_parameters
  const LocionPromotion({
    Key? key,
    required this.imageLocion,
    required this.imageLocion2,
    required this.imageWidth,
    required this.imageHeight,
    required this.nameLocion,
    required this.priceOriginal,
    required this.priceDescuento,
    required this.promotion
  }) : super(key: key);

  @override
  State<LocionPromotion> createState() => _LocionPromotionState();
}

class _LocionPromotionState extends State<LocionPromotion> {

  Cart myCart = Cart();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(color: Colors.white)
      ),
      child: Container(
        height: 510,
        width: 250,
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
                imageHeight: widget.imageHeight
              ),
            ),
            Positioned(
              top: 360,
              bottom: 8,
              left: 12,
              right: 8,
              child: Text(widget.nameLocion, style: styleTextLocion),
            ),
            Positioned(
              top: 390,
              left: 13,
              right: 12,
              child: Text(widget.priceOriginal, style: styleTextSale),
            ),
            Positioned(
              top: 420,
              left: 13,
              right: 12,
              child: Text(widget.priceDescuento, style: styleTextPrice),
            ),
            Positioned(
              top: 420,
              left: 90,
              child: widget.promotion,
            ),
            const Positioned(
              top: 470,
              left: 5,
              right: 5,
              child: CarShop(),
            )
          ],
        )
      ),
    );
  }
}
*/

//TODO: BOLSOS


/*
class BolsosPromotion extends StatefulWidget {

  final String imageBolso;
  final String imageBolso2;
  final double imageWidth;
  final double imageHeight;
  final String nameBolso;
  final String symbol;
  final double priceOriginal;
  final String priceDescuento;
  final Widget promotion;

  // ignore: use_super_parameters
  const BolsosPromotion({
    Key? key,
    required this.imageBolso,
    required this.imageBolso2,
    required this.imageWidth,
    required this.imageHeight,
    required this.nameBolso,
    required this.symbol,
    required this.priceOriginal, 
    required this.priceDescuento, 
    required this.promotion, 
  }) : super(key: key);

  @override
  State<BolsosPromotion> createState() => _BolsosPromotionState();
}

class _BolsosPromotionState extends State<BolsosPromotion> {

  bool isCartEmpty = false;

  final List<Widget> _overlayWidgets = [];


  Color? textColor = Colors.grey[700];
  int selectedNumber = 1;
  OverlayEntry? _overlayEntry;
  double totalPrice = 0;

  @override
  void initState() {
    super.initState();
    totalPrice = widget.priceOriginal;
  }

  void updateTotalPrice(int quantity) {
    setState(() {
      selectedNumber = quantity;
      totalPrice = widget.priceOriginal * quantity;
    });
  }

  void _closeCartOverlay() {

    _overlayEntry?.remove();

    _overlayEntry = null;

    setState(() {
      
    });
  }

  void _addToCartAndShowOverlay() {

    setState(() {
      isCartEmpty = false;
    });
    _showCartOverlay();
  }


  void _showCartOverlay() {

  totalPrice = widget.priceOriginal * selectedNumber;

    _overlayWidgets.clear();

    _overlayWidgets.add(
      Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 170, 0),
            child: Image.asset(widget.imageBolso, width: 160),
          ),
          Positioned(
            top: 15,
            left: 160,
            child: Text(widget.nameBolso, style: styleTextLocion),
          ),
          Positioned(
            top: 70,
            left: 160,
            child: Text('${widget.symbol}${totalPrice.toStringAsFixed(3)}', style: styleTextPrice)
          ),
          Positioned(
            top: 110,
            left: 160,
            child: Text('Cantidad:', style: styleTextLocion),
          ),
          Positioned(
            top: 150,
            left: 170,
            child: Cantidad(
              onQuantityChanged: (quantity) {
                setState(() {
                  selectedNumber = quantity;
                  totalPrice = widget.priceOriginal * quantity;
                });
              }
            )
          )
        ],
      ),
    );

    _overlayEntry = OverlayEntry(
      builder: (context) => Consumer<CartProvider>(
        builder: (context, cart, _) => Positioned(
          top: MediaQuery.of(context).size.height * 0.22,
          right: 50,
          width: 320,
          height: 445,
          child: Material(
            elevation: 12,
            child: Container(
              color: Colors.white,
              child: isCartEmpty ? _buildEmptyCart() : _buildCartContent(context),
            ),
          ),
        ),
      ),
    );    
    Overlay.of(context)?.insert(_overlayEntry!);
  }

  Widget _buildEmptyCart() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [    
            IconButton(
              icon: const Icon(Icons.close_rounded),
              onPressed: _closeCartOverlay
            )
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset('assets/images/logo_pr1.jpg', width: 194, height: 178),
            ),
            Text('Tu carrito de compras está vacío', style: styleTextMo)
          ],
        )
      ],
    );
  }


  Widget _buildCartContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Material(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.grey[350]
            ),
            child: Row(
              children: [
                const Spacer(),
                Text('ENVÍO GRATIS DESDE \$200.000', style: styleTextHeader),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.close_rounded),
                  onPressed: _closeCartOverlay,
                )
              ],
            ),
          ),
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 170, 0),
              child: Image.asset(widget.imageBolso, width: 160),
            ),
            Positioned(
              top: 23,
              left: 160,
              child: Text(widget.nameBolso, style: styleText9),
            ),
            Positioned(
              top: 13.5,
              left: 283,
              child: IconButton(
                icon: Icon(Icons.delete_rounded, color: Colors.grey[700], size: 18),
                onPressed: () {
                  setState(() {
                    isCartEmpty = true;
                  });
                  _showCartOverlay();
                },
              ),
            ),
            Positioned(
              top: 75,
              left: 160,
              child: Text('${widget.symbol}${totalPrice.toStringAsFixed(3)}', style: styleTextSale)
            ),
            Positioned(
              top: 100,
              left: 160,
              child: Text(widget.priceDescuento, style: styleTextPrice),
            ),
            Positioned(
              top: 125,
              left: 160,
              child: Text('Cantidad:', style: styleTextLocion),
            ),
            Positioned(
              top: 160,
              left: 165,
              child: Cantidad(
                onQuantityChanged: (quantity) {
                  setState(() {
                    selectedNumber = quantity;
                    totalPrice = widget.priceOriginal * quantity;
                  });
                }
              )
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 120, 10, 0),
          child: FilledButton(
            onPressed: () {},
            style: styleText200,
            child: Text('FINALIZAR COMPRA', style: styleTextCar),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: SeguirComprando(),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _overlayEntry?.remove();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(color: Colors.white)
      ),
      child: Container(
        height: 510,
        width: 250,
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
                imageHeight: widget.imageHeight
              ),
            ),
            Positioned(
              top: 360,
              bottom: 8,
              left: 12,
              right: 8,
              child: Text(widget.nameBolso, style: styleTextLocion),
            ),
            Positioned(
              top: 415,
              left: 13,
              right: 12,
              child: Text('${widget.symbol}${widget.priceOriginal.toStringAsFixed(3)}', style: styleTextSale)
            ),
            Positioned(
              top: 435,
              left: 13,
              right: 12,
              child: Text(widget.priceDescuento, style: styleTextPrice),
            ),
            Positioned(
              top: 435,
              left: 90,
              child: widget.promotion,
            ),
            Positioned(
              top: 470,
              left: 5,
              right: 5,
              child: CarShop(
                productToAdd: Product(
                  id: DateTime.now().toString(),
                  name: widget.nameBolso, 
                  price: widget.priceOriginal, 
                  image: widget.imageBolso,
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}
*/



/*
class Bolsos extends StatefulWidget {

  final String imageBolso;
  final String imageBolso2;
  final double imageWidth;
  final double imageHeight;
  final String nameBolso;
  final String priceOriginal;

  // ignore: use_super_parameters
  const Bolsos({
    Key? key,
    required this.imageBolso,
    required this.imageBolso2,
    required this.imageWidth,
    required this.imageHeight,
    required this.nameBolso,
    required this.priceOriginal,
  }) : super(key: key);

  @override
  State<Bolsos> createState() => _BolsosState();
}

class _BolsosState extends State<Bolsos> {


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(color: Colors.white)
      ),
      child: Container(
        height: 510,
        width: 250,
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
                imageHeight: widget.imageHeight
              ),
            ),
            Positioned(
              top: 360,
              bottom: 8,
              left: 12,
              right: 8,
              child: Text(widget.nameBolso, style: styleTextLocion),
            ),
            Positioned(
              top: 420,
              left: 13,
              right: 12,
              child: Text(widget.priceOriginal, style: styleTextPrice),
            ),
            Positioned(
              top: 470,
              left: 5,
              right: 5,
              child: CarShop(
                onAddToCart: _addToCartAndShowOverlay,
                productToAdd: Product(
                  id: 1, 
                  name: widget.nameBolso, 
                  price: widget.priceOriginal, 
                  image: widget.imageBolso,
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}
*/
/*
class BolsosPromotion extends StatefulWidget {

  final String imageBolso;
  final String imageBolso2;
  final double imageWidth;
  final double imageHeight;
  final String nameBolso;
  final String priceOriginal;
  final String priceDescuento;
  final Widget promotion;

  // ignore: use_super_parameters
  const BolsosPromotion({
    Key? key,
    required this.imageBolso,
    required this.imageBolso2,
    required this.imageWidth,
    required this.imageHeight,
    required this.nameBolso,
    required this.priceOriginal,
    required this.priceDescuento,
    required this.promotion
  }) : super(key: key);

  @override
  State<BolsosPromotion> createState() => _BolsosPromotionState();
}

class _BolsosPromotionState extends State<BolsosPromotion> {

  //Cart myCart = Cart();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(color: Colors.white)
      ),
      child: Container(
        height: 510,
        width: 250,
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
                imageHeight: widget.imageHeight
              ),
            ),
            Positioned(
              top: 360,
              bottom: 8,
              left: 12,
              right: 8,
              child: Text(widget.nameBolso, style: styleTextLocion),
            ),
            Positioned(
              top: 390,
              left: 13,
              right: 12,
              child: Text(widget.priceOriginal, style: styleTextSale),
            ),
            Positioned(
              top: 420,
              left: 13,
              right: 12,
              child: Text(widget.priceDescuento, style: styleTextPrice),
            ),
            Positioned(
              top: 420,
              left: 90,
              child: widget.promotion,
            ),
            const Positioned(
              top: 470,
              left: 5,
              right: 5,
              child: CarShop(),
            )
          ],
        )
      ),
    );
  }
}
*/

class Price extends StatelessWidget {

  final String price;

  // ignore: use_super_parameters
  const Price({
    Key? key,
    required this.price
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 38,
      height: 23,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black),
      ),
      child: InkWell(
        onTap: () {},
        child: Center(
          child: Text(price, style: const TextStyle(fontSize: 14, color: Colors.white, fontFamily: 'Fredoka'),
          ),
        ),
      ),
    );
  }
}

class PriceMobile extends StatelessWidget {

  final String price;

  // ignore: use_super_parameters
  const PriceMobile({
    Key? key,
    required this.price
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 17,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black),
      ),
      child: InkWell(
        onTap: () {},
        child: Center(
          child: Text(price, style: const TextStyle(fontSize: 11, color: Colors.white, fontFamily: 'Fredoka'),
          ),
        ),
      ),
    );
  }
}


class CarShop extends StatelessWidget {

  final Product productToAdd;

  // ignore: use_super_parameters
  const CarShop({
    Key? key, 
    required this.productToAdd
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      icon: const Icon(Icons.shopping_cart_rounded, color: Colors.white, size: 17),
      onPressed: () {
        Provider.of<CartModel>(context, listen: false).addProduct(productToAdd);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Agregado al Carrito', style: snackbar),
            duration: const Duration(milliseconds: 1500),
            backgroundColor: Colors.black,
          )
        );
      },
      label: Text('AGREGAR AL CARRITO', style: styleTextCar),
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.black,
        shape: const RoundedRectangleBorder()
      ),
    );
  }
}



class Product {
  final String id;
  final String name;
  final double price;
  final String image;
  final double imageHeight;
  final double imageWidth;
  final String? onzas;
  final double? priceDescuento;
  final int cantidad;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
    required this.imageHeight,
    required this.imageWidth,
    this.onzas,
    this.priceDescuento,
    required this.cantidad,
  });
}

class CartModel with ChangeNotifier {
  final List<Product> _items = [];

  List<Product> get items => _items;

  void addProduct(Product product) {
    _items.add(product);
    notifyListeners();
  }

  void removeProduct(Product product) {
    _items.remove(product);
    notifyListeners();
  }

  double get totalPrice => _items.fold(0.0, (sum, item) => sum + item.price);
}


//TODO: CANTIDAD


class Cantidad extends StatefulWidget {
  final Function(int) onQuantityChanged;

  // ignore: use_super_parameters
  const Cantidad({
    Key? key,
    required this.onQuantityChanged,
  }) : super(key: key);

  @override
  State<Cantidad> createState() => _CantidadState();
}

class _CantidadState extends State<Cantidad> {
  int selectedNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 30,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black87),
        color: Colors.white,
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<int>(
          value: selectedNumber,
          icon: const Icon(Icons.keyboard_arrow_down_rounded, color: Colors.black),
          iconSize: 22,
          elevation: 16,
          style: const TextStyle(color: Colors.black, fontSize: 13),
          onChanged: (int? newValue) {
            if (newValue != null) {
              setState(() {
              selectedNumber = newValue;
            });
            widget.onQuantityChanged(newValue);
            }
          },
          items: List.generate(10, (index) => index + 1).map<DropdownMenuItem<int>>((int value) {
            return DropdownMenuItem<int>(
              value: value,
              child: Padding(
                padding: const EdgeInsets.only(left: 7),
                child: Text(value.toString())
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

//TODO: TERMINA WIDGET CANTIDAD

class CantidadMobile extends StatefulWidget {
  final Function(int) onQuantityChanged;

  // ignore: use_super_parameters
  const CantidadMobile({
    Key? key,
    required this.onQuantityChanged,
  }) : super(key: key);

  @override
  State<CantidadMobile> createState() => _CantidadMobileState();
}

class _CantidadMobileState extends State<CantidadMobile> {
  int selectedNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 33,
      height: 20,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black87),
        color: Colors.white,
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<int>(
          value: selectedNumber,
          icon: const Icon(Icons.keyboard_arrow_down_rounded, color: Colors.black),
          iconSize: 14,
          elevation: 0,
          style: const TextStyle(color: Colors.black, fontSize: 10),
          onChanged: (int? newValue) {
            if (newValue != null) {
              setState(() {
              selectedNumber = newValue;
            });
            widget.onQuantityChanged(newValue);
            }
          },
          items: List.generate(10, (index) => index + 1).map<DropdownMenuItem<int>>((int value) {
            return DropdownMenuItem<int>(
              value: value,
              child: Padding(
                padding: const EdgeInsets.only(left: 4),
                child: Text(value.toString())
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

/*class WidgetCamisetas extends StatefulWidget {

  final String imageCamiseta;
  final String imageCamiseta2;
  final double imageWidth;
  final double imageHeight;
  final String nameCamiseta;
  final String priceOriginal;
  final Widget size;
  final Widget size2;
  final Widget size3;
  final Widget size4;
  final Widget size5;
  final Widget size6;

  // ignore: use_super_parameters
  const WidgetCamisetas({
    Key? key, 
    required this.imageCamiseta, 
    required this.imageCamiseta2, 
    required this.imageWidth, 
    required this.imageHeight, 
    required this.nameCamiseta, 
    required this.priceOriginal, 
    required this.size, 
    required this.size2, 
    required this.size3, 
    required this.size4,
    required this.size5,
    required this.size6,
  }) : super(key: key);

  @override
  State<WidgetCamisetas> createState() => _WidgetCamisetasState();
}

class _WidgetCamisetasState extends State<WidgetCamisetas> {

  Cart myCart = Cart();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(color: Colors.white)
      ),
      child: Container(
        height: 530,
        width: 265,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: ImageOnHover(
                imagePath: widget.imageCamiseta,
                hoverImagePath: widget.imageCamiseta2,
                imageWidth: widget.imageWidth, 
                imageHeight: widget.imageHeight
              ),
            ),
            Positioned(
              top: 365,
              bottom: 8,
              left: 12,
              right: 8,
              child: Text(widget.nameCamiseta, style: styleTextLocion),
            ),
            Positioned(
              top: 390,
              left: 13,
              right: 12,
              child: Text(widget.priceOriginal, style: styleTextPrice),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 450),
              child: widget.size,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 450, left: 47),
              child: widget.size2,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 450, left: 89),
              child: widget.size3,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 450, left: 131),
              child: widget.size4,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 450, left: 173),
              child: widget.size5,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 450, left: 215.5),
              child: widget.size6,
            ),
            const Positioned(
              top: 490,
              left: 5,
              right: 5,
              child: CarShop(),
            )
          ],
        )
      ),
    );
  }
}

class ShirtSize extends StatefulWidget {

  final String size;
  // ignore: use_super_parameters
  const ShirtSize({
    Key? key, 
    required this.size
  }) : super(key: key);

  @override
  State<ShirtSize> createState() => _ShirtSizeState();
}

class _ShirtSizeState extends State<ShirtSize> {

  bool isHovering = false;
  Color? textColor = Colors.grey[700];
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _setHovering(true),
      onExit: (_) => _setHovering(false),
      child: Container(
        width: 40,
        height: 30,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black87),
          color: isHovering ? Colors.black : Colors.white
        ),
        child: InkWell(
          onTap: () {},
          child: Center(
            child: Text(widget.size, style: TextStyle(fontSize: 13, color: textColor),
            ),
          ),
        ),
      ),
    );
  }

  void _setHovering(bool hovering) {
    setState(() {
      isHovering = hovering;
      textColor = isHovering ? Colors.white : Colors.grey[700];
    });
  }
}*/

   /*
    Card(
      elevation: 12,
      child: ListTile(
        title: Text(widget.nameLocion),
        subtitle: Text('${widget.symbol}${widget.priceOriginal.toStringAsFixed(3)}'),
      ),
    );
*/
/*
    CartProvider cartProvider = 
    Provider.of<CartProvider>(context, listen: false);
    cartProvider.addToCart(Product(
      id: 0,
      name: widget.nameLocion,
      price: widget.priceOriginal,
      image: widget.imageLocion,  
    ));
*/
/*
class ButtonTextBar extends StatefulWidget {

  final String buttonText;
  final VoidCallback onPressed;

  // ignore: use_super_parameters
  const ButtonTextBar({
    Key? key, 
    required this.buttonText, 
    required this.onPressed
  }) : super(key: key);

  @override
  State<ButtonTextBar> createState() => _ButtonTextBarState();
}

class _ButtonTextBarState extends State<ButtonTextBar> {

  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: MouseRegion(
        onEnter: (_) => setState(() => _isHovered = true),
        onExit: (_) => setState(() => _isHovered = false),
        child: Tooltip(
          message: '',
          child: TextButton(
            onPressed: widget.onPressed,
            child: Text(
              widget.buttonText,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w900,
                color: _isHovered ? Colors.grey[700] : Colors.black,
              ),
            ),
          ),
        ),
      ) ,
    );
  }
}
*/
//  bool _isHovered = false;

/*GestureDetector(
      onTap: widget.onPressed,
      child: MouseRegion(
        onEnter: (_) => setState(() => _isHovered = true),
        onExit: (_) => setState(() => _isHovered = false),
        child: Tooltip(
          message: '',
          child: TextButton(
            onPressed: widget.onPressed,
            child: Text(
              widget.buttonText,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w900,
                color: _isHovered ? Colors.grey[700] : Colors.black,
              ),
            ),
          ),
        ),
      ) ,
    );

    */

/*


class Locion extends StatefulWidget {

  final String imageLocion;
  final String imageLocion2;
  final double imageWidth;
  final double imageHeight;
  final String nameLocion;
  final String symbol;
  final double priceOriginal;
  final String onzas;

  // ignore: use_super_parameters
  const Locion({
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
  State<Locion> createState() => _LocionState();
}

class _LocionState extends State<Locion> {

  bool isCartEmpty = false;
  List<Product> selectedProducts = [];
  List<Widget> _overlayWidgets = [];


  Color? textColor = Colors.grey[700];
  int selectedNumber = 1;
  OverlayEntry? _overlayEntry;
  double totalPrice = 0;

  @override
  void initState() {
    super.initState();
    totalPrice = widget.priceOriginal;
  }

  void updateTotalPrice(int quantity) {
    setState(() {
      selectedNumber = quantity;
      totalPrice = widget.priceOriginal * quantity;
    });
  }

  void _closeCartOverlay() {

    _overlayEntry?.remove();

    _overlayEntry = null;

    setState(() {
      
    });
  }

  void _addToCartAndShowOverlay(Product product) {

    setState(() {
      isCartEmpty = false;
      selectedProducts.add(product);
    });
    _showCartOverlay();
  }


  void _showCartOverlay() {

  totalPrice = widget.priceOriginal * selectedNumber;

    _overlayWidgets.clear();

    _overlayWidgets.add(
      Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 170, 0),
            child: Image.asset(widget.imageLocion, width: 160),
          ),
          Positioned(
            top: 15,
            left: 160,
            child: Text(widget.nameLocion, style: styleTextLocion),
          ),
          Positioned(
            top: 80,
            left: 160,
            child: Text('${widget.symbol}${totalPrice.toStringAsFixed(3)}', style: styleTextPrice)
          ),
          Positioned(
            top: 110,
            left: 160,
            child: Text('Cantidad:', style: styleTextLocion),
          ),
          Positioned(
            top: 150,
            left: 170,
            child: Cantidad(
              onQuantityChanged: (quantity) {
                setState(() {
                  selectedNumber = quantity;
                  totalPrice = widget.priceOriginal * quantity;
                });
              }
            )
          )
        ],
      ),
    );

    _overlayEntry = OverlayEntry(
      builder: (context) => Consumer<CartProvider>(
        builder: (context, cart, _) => Positioned(
          top: MediaQuery.of(context).size.height * 0.22,
          right: 50,
          width: 320,
          height: 445,
          child: Material(
            elevation: 12,
            child: Container(
              color: Colors.white,
              child: isCartEmpty ? _buildEmptyCart() : _buildCartContent(context),
            ),
          ),
        ),
      ),
    );    
    Overlay.of(context)?.insert(_overlayEntry!);
  }

  Widget _buildEmptyCart() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [    
            IconButton(
              icon: const Icon(Icons.close_rounded),
              onPressed: _closeCartOverlay
            )
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset('assets/images/logo_pr1.jpg', width: 194, height: 178),
            ),
            Text('Tu carrito de compras está vacío', style: styleTextMo)
          ],
        )
      ],
    );
  }


  Widget _buildCartContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Material(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.grey[350]
            ),
            child: Row(
              children: [
                const Spacer(),
                Text('ENVÍO GRATIS DESDE \$200.000', style: styleTextHeader),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.close_rounded),
                  onPressed: _closeCartOverlay,
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: selectedProducts.length,
            itemBuilder: (context, index) {
              final product = selectedProducts[index];
              return ListTile(
                leading: Image.asset(product.image, width: 50),
                title: Text(product.name),
                subtitle: Text('${widget.symbol}${totalPrice.toStringAsFixed(3)}', style: styleTextPrice),
                trailing: IconButton(
                  icon: Icon(Icons.delete_rounded, color: Colors.grey[700]),
                  onPressed: () {
                    setState(() {
                      selectedProducts.removeAt(index);
                      if (selectedProducts.isEmpty) {
                        isCartEmpty = true;
                      }
                    });
                    _showCartOverlay();
                  },
                ),
              );
            },
          ),
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 170, 0),
              child: Image.asset(widget.imageLocion, width: 160),
            ),
            Positioned(
              top: 23,
              left: 160,
              child: Text(widget.nameLocion, style: styleText9),
            ),
            Positioned(
              top: 13.5,
              left: 283,
              child: IconButton(
                icon: Icon(Icons.delete_rounded, color: Colors.grey[700], size: 18),
                onPressed: () {
                  setState(() {
                    isCartEmpty = true;
                  });
                  _showCartOverlay();
                },
              ),
            ),
            Positioned(
              top: 80,
              left: 160,
              child: Text('${widget.symbol}${totalPrice.toStringAsFixed(3)}', style: styleTextPrice)
            ),
            Positioned(
              top: 110,
              left: 160,
              child: Text('Cantidad:', style: styleTextLocion),
            ),
            Positioned(
              top: 150,
              left: 170,
              child: Cantidad(
                onQuantityChanged: (quantity) {
                  setState(() {
                    selectedNumber = quantity;
                    totalPrice = widget.priceOriginal * quantity;
                  });
                }
              )
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 120, 10, 0),
          child: FilledButton(
            onPressed: () {},
            style: styleText200,
            child: Text('FINALIZAR COMPRA', style: styleTextCar),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: SeguirComprando(),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _overlayEntry?.remove();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(color: Colors.white)
      ),
      child: Container(
        height: 510,
        width: 250,
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
                imageHeight: widget.imageHeight
              ),
            ),
            Positioned(
              top: 360,
              bottom: 8,
              left: 12,
              right: 8,
              child: Text(widget.nameLocion, style: styleTextLocion),
            ),
            Positioned(
              top: 410,
              bottom: 8,
              left: 12,
              right: 8,
              child: Text(widget.onzas, style: styleTextLocion),
            ),
            Positioned(
              top: 435,
              left: 13,
              right: 12,
              child: Text('${widget.symbol}${widget.priceOriginal.toStringAsFixed(3)}', style: styleTextPrice)
            ),
            Positioned(
              top: 470,
              left: 5,
              right: 5,
              child: CarShop(
                onAddToCart: (product) {
                  _addToCartAndShowOverlay(product);
                },
                productToAdd: Product(
                  id: 1, 
                  name: widget.nameLocion, 
                  price: widget.priceOriginal, 
                  image: widget.imageLocion,
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}
*/

/*

class Locion extends StatefulWidget {
  final String imageLocion;
  final String imageLocion2;
  final double imageWidth;
  final double imageHeight;
  final String nameLocion;
  final String symbol;
  final double priceOriginal;
  final String onzas;

  // ignore: use_super_parameters
  const Locion({
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
  State<Locion> createState() => _LocionState();
}

class _LocionState extends State<Locion> {
  bool isCartEmpty = true;
  List<Product> selectedProducts = [];
  OverlayEntry? _overlayEntry;

  @override
  void initState() {
    super.initState();
  }

  void _closeCartOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
    setState(() {
      isCartEmpty = true;
    });
  }

  void _addToCartAndShowOverlay(Product product) {
    setState(() {
      isCartEmpty = false;
      selectedProducts.add(product);
    });

    if (_overlayEntry != null) {
      _overlayEntry!.markNeedsBuild();
    } else {
      _showCartOverlay();
    }
  }

  void _showCartOverlay() {
    _overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: MediaQuery.of(context).size.height * 0.22,
        right: 50,
        width: 320,
        height: 445,
        child: Material(
          elevation: 12,
          child: Container(
            color: Colors.white,
            child: isCartEmpty ? _buildEmptyCart() : _buildCartContent(context),
          ),
        ),
      ),
    );
    Overlay.of(context)?.insert(_overlayEntry!);
  }

  Widget _buildEmptyCart() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              icon: const Icon(Icons.close_rounded),
              onPressed: _closeCartOverlay,
            )
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset('assets/images/logo_pr1.jpg', width: 194, height: 178),
            ),
            Text('Tu carrito de compras está vacío', style: styleTextMo),
          ],
        ),
      ],
    );
  }

  Widget _buildCartContent(BuildContext context) {
    double totalPrice = selectedProducts.fold(0, (sum, item) => sum + item.price);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Material(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 40,
            decoration: BoxDecoration(color: Colors.grey[350]),
            child: Row(
              children: [
                const Spacer(),
                Text('ENVÍO GRATIS DESDE \$200.000', style: styleTextHeader),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.close_rounded),
                  onPressed: _closeCartOverlay,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: selectedProducts.length,
            itemBuilder: (context, index) {
              final product = selectedProducts[index];
              return ListTile(
                leading: Image.asset(product.image, width: 50),
                title: Text(product.name),
                subtitle: Text('${widget.symbol}${product.price.toStringAsFixed(3)}', style: styleTextPrice),
                trailing: IconButton(
                  icon: Icon(Icons.delete_rounded, color: Colors.grey[700]),
                  onPressed: () {
                    setState(() {
                      selectedProducts.removeAt(index);
                      if (selectedProducts.isEmpty) {
                        isCartEmpty = true;
                      }
                    });
                    if (_overlayEntry != null) {
                      _overlayEntry!.markNeedsBuild();
                    }
                  },
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: FilledButton(
            onPressed: () {},
            style: styleText200,
            child: Text('FINALIZAR COMPRA', style: styleTextCar),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: SeguirComprando(),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _overlayEntry?.remove();
    super.dispose();
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
        height: 510,
        width: 250,
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
              top: 360,
              bottom: 8,
              left: 12,
              right: 8,
              child: Text(widget.nameLocion, style: styleTextLocion),
            ),
            Positioned(
              top: 410,
              bottom: 8,
              left: 12,
              right: 8,
              child: Text(widget.onzas, style: styleTextLocion),
            ),
            Positioned(
              top: 435,
              left: 13,
              right: 12,
              child: Text('${widget.symbol}${widget.priceOriginal.toStringAsFixed(3)}', style: styleTextPrice),
            ),
            Positioned(
              top: 470,
              left: 5,
              right: 5,
              child: CarShop(
                onAddToCart: (product) {
                  _addToCartAndShowOverlay(product);
                  if (_overlayEntry == null) {
                    _showCartOverlay();
                  }
                },
                productToAdd: Product(
                  id: DateTime.now().toString(),
                  name: widget.nameLocion,
                  price: widget.priceOriginal,
                  image: widget.imageLocion,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

*/