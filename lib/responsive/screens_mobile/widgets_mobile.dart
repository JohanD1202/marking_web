import 'package:marking_web/exports.dart';


class LocionMobile extends StatefulWidget {

  final String imageLocion;
  final String imageLocion2;
  final double imageWidth;
  final double imageHeight;
  final String nameLocion;
  final String symbol;
  final double priceOriginal;

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
  }) : super(key: key);

  @override
  State<LocionMobile> createState() => _LocionMobileState();
}

class _LocionMobileState extends State<LocionMobile> {

  bool isCartEmpty = false;

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
        height: 382.5,
        width: 187.5,
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
              top: 270,
              bottom: 8,
              left: 12,
              right: 8,
              child: Text(widget.nameLocion, style: styleTextLocion),
            ),
            Positioned(
              top: 305,
              left: 13,
              right: 12,
              child: Text('${widget.symbol}${widget.priceOriginal.toStringAsFixed(3)}', style: styleTextPrice)
            ),
            Positioned(
              top: 340,
              left: 5,
              right: 5,
              bottom: 5,
              child: CarShopMobile(
                onAddToCart: _addToCartAndShowOverlay,
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
  

  OverlayEntry? _overlayEntry;

  Color? textColor = Colors.grey[700];
  int selectedNumber = 1;

  OverlayEntry _createOverlayEntry() {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    var size = renderBox.size;
    var offset = renderBox.localToGlobal(Offset.zero);

    return OverlayEntry(
      builder: (context) => Consumer<CartNotifier>(
        builder: (context, cart, _) => Positioned(
          left: offset.dx,
          top: offset.dy + size.height * 1,//+ (1 * 20),
          width: size.width * 1.18,
          height: size.height * 7.5,
          child: Material(
            elevation: 4,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                int itemNumber = index + 1;
                return Container(
                  height: 32,
                  child: ListTile(
                    title: Text('$itemNumber'),
                    onTap: () {
                      setState(() {
                        selectedNumber = itemNumber; //
                      });
                      widget.onQuantityChanged(itemNumber);
                      _overlayEntry?.remove();
                    },
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }


  void _showMenu() {
    _overlayEntry = _createOverlayEntry();
    Overlay.of(context)!.insert(_overlayEntry!);
  }

  @override
  void dispose() {
    _overlayEntry?.remove();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _showMenu,
      child: Container(
        width: 50,
        height: 30,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black87),
          color: Colors.white
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$selectedNumber', style: const TextStyle(fontSize: 13, color: Colors.black)),
            const Icon(Icons.keyboard_arrow_down_rounded, color: Colors.black),
          ],
        )
      ),
    );
  }
}

class CarShopMobile extends StatelessWidget {

  final VoidCallback onAddToCart;
  final Product productToAdd;

  // ignore: use_super_parameters
  const CarShopMobile({
    Key? key, 
    required this.onAddToCart, 
    required this.productToAdd
  }) : super(key: key);

  void addToCart(BuildContext context) {
    Provider.of<CartProvider>(context, listen: false).addToCart(productToAdd);
  }

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      icon: const Icon(Icons.shopping_cart_rounded, color: Colors.white, size: 13),
      onPressed: () {
        onAddToCart();
        addToCart(context);
      },
      label: Text('AGREGAR AL CARRITO', style: styleTextCarMobile),
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.black,
        shape: const RoundedRectangleBorder()
      ),
    );
  }
}

class CartNotifier extends ChangeNotifier {
  bool _isCartOpen = false;

  bool get isCartOpen => _isCartOpen;

  void openCart() {
    _isCartOpen = true;
    notifyListeners();
  }

  void closeCart() {
    _isCartOpen = false;
    notifyListeners();
  }
}

//TODO: CART PROVIDER

class CartProvider extends ChangeNotifier {
  List<Product> _cartItems = [];

  List<Product> get cartItems => _cartItems;

  void addToCart(Product product) {
    _cartItems.add(product);
    notifyListeners();
  }

  int get itemCount => _cartItems.length;
}



class Product {
  final int id;
  final String name;
  final double price;
  final String image;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.image
  });
}