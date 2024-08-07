import 'package:aromas_selectos/exports.dart';
import 'package:aromas_selectos/responsive/screens_mobile/widgets_mobile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ArabesScreenMobile extends StatefulWidget {
  const ArabesScreenMobile({super.key});

  @override
  _ArabesScreenMobileState createState() => _ArabesScreenMobileState();
}

class _ArabesScreenMobileState extends State<ArabesScreenMobile> {
  bool _loading = true;
  List<Map<String, dynamic>> _lotions = [];

  @override
  void initState() {
    super.initState();
    _loadLotions();
  }

  void _loadLotions() async {
    try {
      QuerySnapshot snapshot = await FirebaseFirestore.instance.collection('Arabic Lotions').orderBy('createdAt', descending: false).get();
      List<Map<String, dynamic>> lotions = snapshot.docs.map((doc) {
        var data = doc.data() as Map<String, dynamic>;
        return {
          'name': data['name'],
          'description': data['description'],
          'price': data['price'],
          'image': data['image'],
          'image2': data['image2'],
        };
      }).toList();
      setState(() {
        _lotions = lotions;
        _loading = false;
      });
    } catch (e) {
      setState(() {
        _loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 0.6,
      width: size.width * 1,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: _loading
            ? const Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Bienvenidos a la sección de Aromas Árabes', style: styleText3Mobile),
                  const SizedBox(height: 20),
                  Text('''
Bienvenidos a nuestra sección de Aromas Árabes,
en este espacio te invitamos a descubrir una
amplia gama de aromas Árabes, que capturan la
esencia de la elegancia. Desde aromas frescos
y vibrantes hasta notas cálidas. Explora nuestra
colección y encuentra el aroma perfecto. Llévate
tus aromas favoritos desde tan solo \$17.000.
Elige el tamaño de tu loción en fl oz y luego
la cantidad.

Nuestros precios se manejan así:
1 fl oz = \$17.000
2 fl oz = \$33.000
3 fl oz = \$45.000

¡No te pierdas esta increíble oportunidad de
disfrutar de fragancias de calidad a un precio
increíblemente bajo!
                  ''', style: textoMobile),
                  const SizedBox(height: 10),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.45,
                    ),
                    itemCount: _lotions.length,
                    itemBuilder: (context, index) {
                      final lotion = _lotions[index];
                      return ArabicLotionMobile(
                        imageLocion: lotion['image'],
                        imageLocion2: lotion['image2'],
                        imageWidth: 150,
                        imageHeight: 240,
                        symbol: '\$',
                        name: lotion['name'],
                        description: lotion['description'],
                        price: lotion['price'],
                      );
                    },
                  ),
                ],
              ),
            ),
        ),
      ),
    );
  }
}

//TODO: 

class ArabicLotionMobile extends StatefulWidget {

  final String imageLocion;
  final String imageLocion2;
  final double imageWidth;
  final double imageHeight;
  final String symbol;
  final String name;
  final String description;
  final double price;

  // ignore: use_super_parameters
  const ArabicLotionMobile({
    Key? key,
    required this.imageLocion,
    required this.imageLocion2,
    required this.imageWidth,
    required this.imageHeight,
    required this.symbol,
    required this.name,
    required this.description,
    required this.price,
  }) : super(key: key);

  @override
  State<ArabicLotionMobile> createState() => _ArabicLotionMobileState();
}

class _ArabicLotionMobileState extends State<ArabicLotionMobile> {

  int _quantity = 1;
  double _totalPrice = 0.0;
  String _selectedOnza = '1';

  @override
  void initState() {
    super.initState();
    _totalPrice = widget.price * _quantity;
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
      basePrice = widget.price;
      break;
    }
    return basePrice * _quantity;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
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
                  child: ImageOnHoverMobile(
                    imagePath: widget.imageLocion,
                    hoverImagePath: widget.imageLocion2,
                    imageWidth: widget.imageWidth,
                    imageHeight: widget.imageHeight,
                    dialogText: widget.description,
                  ),
                ),
                Positioned(
                  top: 227,
                  bottom: 8,
                  left: 8,
                  right: 8,
                  child: Text(widget.name, style: styleTextLocionMobile),
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
                  child: Text('${widget.symbol}${widget.price.toStringAsFixed(3)}', style: styleTextPriceMobile),
                ),
                Positioned(
                  top: 345,
                  left: 3,
                  right: 3,
                  bottom: 3,
                  child: CarShopMobile(
                    productToAdd: Product(
                      id: DateTime.now().toString(),
                      name: widget.name,
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
        ),
      ],
    );
  }
}