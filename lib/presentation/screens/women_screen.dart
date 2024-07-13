import 'package:marking_web/exports.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:marking_web/presentation/screens/men_screen.dart';


class WomenScreen extends StatefulWidget {
  const WomenScreen({super.key});

  @override
  _WomenScreenState createState() => _WomenScreenState();
}

class _WomenScreenState extends State<WomenScreen> {
  bool _loading = true;
  List<Map<String, dynamic>> _lotions = [];

  @override
  void initState() {
    super.initState();
    _loadLotions();
  }

  void _loadLotions() async {
    try {
      QuerySnapshot snapshot = await FirebaseFirestore.instance.collection('Women Lotions').orderBy('createdAt', descending: false).get();
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
            : SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Bienvenidos a la sección de Aromas de Mujer', style: styleText3),
                  const SizedBox(height: 20),
                  Text('''
Bienvenidos a nuestra sección dedicada a las mujeres sofisticadas y con estilo. En Aromas Selectos, te ofrecemos una exquisita variedad de fragancias
que reflejan tu esencia única. Descubre tus aromas favoritos desde tan solo \$15.000. Elige el tamaño de tu loción en fl oz y luego la cantidad.

Nuestros precios se manejan así:
1 fl oz = \$15.000
2 fl oz = \$29.000
3 fl oz = \$40.000

¡No te pierdas esta increíble oportunidad de disfrutar de fragancias de calidad a un precio increíblemente bajo!
                  ''', style: texto),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      childAspectRatio: 0.58,
                    ),
                    itemCount: _lotions.length,
                    itemBuilder: (context, index) {
                      final lotion = _lotions[index];
                      return Lotion(
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
                ],
              ),
            ),
        ),
      ),
    );
  }
}