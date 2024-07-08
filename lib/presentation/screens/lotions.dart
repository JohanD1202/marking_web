import 'package:marking_web/exports.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class ArabicLotion extends StatefulWidget {

  final String imageLocion;
  final String imageLocion2;
  final double imageWidth;
  final double imageHeight;
  final String symbol;
  final String name;
  final String description;
  final double price;

  // ignore: use_super_parameters
  const ArabicLotion({
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
  State<ArabicLotion> createState() => _ArabicLotionState();
}

class _ArabicLotionState extends State<ArabicLotion> {

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
                  child: ImageOnHover2(
                    imagePath: widget.imageLocion,
                    hoverImagePath: widget.imageLocion2,
                    imageWidth: widget.imageWidth,
                    imageHeight: widget.imageHeight,
                    dialogText: widget.description,
                  ),
                ),
                Positioned(
                  top: 360,
                  bottom: 8,
                  left: 12,
                  right: 8,
                  child: Text(widget.name, style: styleTextLocion),
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
                  child: Text('${widget.symbol}${widget.price.toStringAsFixed(3)}', style: styleTextPrice),
                ),
                Positioned(
                  top: 470,
                  left: 5,
                  right: 5,
                  child: CarShop(
                    productToAdd: Product(
                      id: DateTime.now().toString(),
                      name: widget.name,
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
        ),
      ],
    );
  }
}


class ArabicLotionList extends StatefulWidget {
  const ArabicLotionList({super.key});

  @override
  _ArabicLotionListState createState() => _ArabicLotionListState();
}

class _ArabicLotionListState extends State<ArabicLotionList> {
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
      height: size.height * 1.35,
      width: size.width * 1,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 60, top: 20),
          child: _loading
            ? const Center(child: CircularProgressIndicator())
            : GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 0.58,
                ),
              itemCount: _lotions.length,
              itemBuilder: (context, index) {
                final lotion = _lotions[index];
                return ArabicLotion(
                  imageLocion: lotion['image'],
                  imageLocion2: lotion['image2'],
                  imageWidth: 240,
                  imageHeight: 370,
                  symbol: '\$',
                  name: lotion['name'],
                  description: lotion['description'],
                  price: lotion['price'],
                );
              },
            ),
        ),
      ),
    );
  }
}