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
                  priceDescuento: _totalPrice,
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

//TODO: LOCION DE 'CREA TU LOCION'

class LocionCreaTuLocion extends StatefulWidget {
  
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
  const LocionCreaTuLocion({
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
  State<LocionCreaTuLocion> createState() => _LocionCreaTuLocionState();

}

class _LocionCreaTuLocionState extends State<LocionCreaTuLocion> {

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
        height: 553,
        width: 270,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 1,
              right: 1,
              child: IconButton(
                icon: const Icon(Icons.delete_rounded, color: Colors.black, size: 22),
                onPressed: () {
                  widget.onRemove();
                }
              ),
            ),
            Positioned(
              top: 28,
              left: 12,
              right: 12,
              child: ImageOnHover(
                imagePath: widget.imageLocion,
                hoverImagePath: widget.imageLocion2,
                imageWidth: widget.imageWidth,
                imageHeight: widget.imageHeight,
              ),
            ),
            Positioned(
              top: 370,
              bottom: 8,
              left: 12,
              right: 8,
              child: Text(widget.nameLocion, style: styleTextLocion),
            ),
            Positioned(
              top: 463,
              bottom: 8,
              left: 12,
              right: 8,
              child: Text('1 fl oz', style: styleTextLocion)
            ),
            Positioned(
              top: 485,
              left: 140,
              child: Text('Cantidad: ${widget.cantidad}', style: styleTextBolsosMobile),
            ),
            Positioned(
              top: 485,
              left: 13,
              right: 12,
              child: Text('${widget.symbol}${widget.priceOriginal.toStringAsFixed(3)}', style: styleTextPrice),
            ),
            Positioned(
              top: 515,
              left: 5,
              right: 5,
              child: CarShop(
                productToAdd: Product(
                  id: DateTime.now().toString(),
                  name: widget.nameLocion,
                  priceDescuento: _totalPrice,
                  image: widget.imageLocion,
                  imageWidth: 120,
                  imageHeight: 185,
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
                  priceDescuento: _totalPrice,
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
      width: 35,
      height: 18,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black),
      ),
      child: InkWell(
        onTap: () {},
        child: Center(
          child: Text(price, style: const TextStyle(fontSize: 12, color: Colors.white, fontFamily: 'Fredoka'),
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
  final double? price;
  final String image;
  final double imageHeight;
  final double imageWidth;
  final String? onzas;
  final double priceDescuento;
  final int cantidad;

  Product({
    required this.id,
    required this.name,
    this.price,
    required this.image,
    required this.imageHeight,
    required this.imageWidth,
    this.onzas,
    required this.priceDescuento,
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

  double get totalPrice => _items.fold(0.0, (sum, item) => sum + item.priceDescuento);
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


class ImageOnHover extends StatefulWidget {

  final String imagePath;
  final String hoverImagePath;
  final double imageWidth;
  final double imageHeight;

  // ignore: use_super_parameters
  const ImageOnHover({
    Key? key, 
    required this.imagePath, 
    required this.hoverImagePath,
    required this.imageWidth,
    required this.imageHeight, 
  }) : super(key: key);

  @override
  State<ImageOnHover> createState() => _ImageOnHoverState();
}

class _ImageOnHoverState extends State<ImageOnHover> {

  late String currentImage;

  @override
  void initState() {
    super.initState();
    currentImage = widget.imagePath;
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _changeImage(true),
      onExit: (_) => _changeImage(false),
      child: Image.asset(currentImage, width: widget.imageWidth, height: widget.imageHeight),
    );
  }

  void _changeImage(bool hover) {
    setState(() {
      currentImage = hover ? widget.hoverImagePath : widget.imagePath;
    });
  }
}

//TODO:

class ImageOnHover2 extends StatefulWidget {
  final String imagePath;
  final String hoverImagePath;
  final double imageWidth;
  final double imageHeight;
  final String dialogText;

  // ignore: use_super_parameters
  const ImageOnHover2({
    Key? key,
    required this.imagePath,
    required this.hoverImagePath,
    required this.imageWidth,
    required this.imageHeight,
    required this.dialogText,
  }) : super(key: key);

  @override
  State<ImageOnHover2> createState() => _ImageOnHover2State();
}

class _ImageOnHover2State extends State<ImageOnHover2> {

  late String currentImage;

  @override
  void initState() {
    super.initState();
    currentImage = widget.imagePath; // Inicializar currentImage con la primera imagen
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showImageDialog(context),
      child: MouseRegion(
        onEnter: (_) => _changeImage(true),
        onExit: (_) => _changeImage(false),
        child: Image.asset(currentImage, width: widget.imageWidth, height: widget.imageHeight),
      ),
    );
  }

  void _changeImage(bool hover) {
    setState(() {
      if (hover) {
        currentImage = widget.hoverImagePath;
      } else {
        currentImage = widget.imagePath;
      }
    });
  }

  void _showImageDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).size.height * 0.5,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(widget.imagePath, width: widget.imageWidth, height: widget.imageHeight),
                const SizedBox(width: 20),
                SizedBox(
                  width: 440,
                  child: Text(widget.dialogText, style: styleTextLocion)
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

//TODO:

class ImageOnHoverMobile extends StatefulWidget {
  final String imagePath;
  final String hoverImagePath;
  final double imageWidth;
  final double imageHeight;
  final String dialogText;

  // ignore: use_super_parameters
  const ImageOnHoverMobile({
    Key? key,
    required this.imagePath,
    required this.hoverImagePath,
    required this.imageWidth,
    required this.imageHeight,
    required this.dialogText,
  }) : super(key: key);

  @override
  State<ImageOnHoverMobile> createState() => _ImageOnHoverMobileState();
}

class _ImageOnHoverMobileState extends State<ImageOnHoverMobile> {

  late String currentImage;

  @override
  void initState() {
    super.initState();
    currentImage = widget.imagePath; // Inicializar currentImage con la primera imagen
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showImageDialog(context),
      child: MouseRegion(
        onEnter: (_) => _changeImage(true),
        onExit: (_) => _changeImage(false),
        child: Image.asset(currentImage, width: widget.imageWidth, height: widget.imageHeight),
      ),
    );
  }

  void _changeImage(bool hover) {
    setState(() {
      if (hover) {
        currentImage = widget.hoverImagePath;
      } else {
        currentImage = widget.imagePath;
      }
    });
  }

  void _showImageDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.83,
            height: MediaQuery.of(context).size.height * 0.4,
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(widget.imagePath, width: widget.imageWidth, height: widget.imageHeight),
                SizedBox(
                  width: 250,
                  height: 140,
                  child: SingleChildScrollView(
                    child: Text(widget.dialogText, style: styleTextLocionMobile)
                  )
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}


