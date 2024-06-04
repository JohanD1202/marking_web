import 'package:marking_web/exports.dart';
import 'package:marking_web/responsive/screens_mobile/widgets_mobile.dart';
/*
/*
enum ContentState {
  Initial,
  HelloWorld,
}

class ContentModel extends ChangeNotifier {
  ContentState _contentState = ContentState.Initial;

  ContentState get contentState => _contentState;

  void changeContent(ContentState newState) {
    _contentState = newState;
    notifyListeners(); 
  }
}

*/
class SectionHombreMobile extends StatefulWidget {
  // ignore: use_super_parameters
  const SectionHombreMobile({Key? key}) : super (key: key);

  @override
  State<SectionHombreMobile> createState() => _SectionHombreMobileState();
}

class _SectionHombreMobileState extends State<SectionHombreMobile> {

  Locion? selectedProduct;


  void selectProduct(Locion product) {
    setState(() {
      selectedProduct = product;
    });
  }

  //Cart myCart = Cart();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        //TODO: PRIMER ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            LocionMobile(
                imageLocion: 'assets/images/aroma_1.jpg',
                imageLocion2: 'assets/images/aroma_2.jpg',
                imageHeight: 240,
                imageWidth: 150,
                nameLocion: '''212 Heroes
Carolina Herrera''',
                symbol: '\$',
                priceOriginal: 15.000,
                onzas: '1 fl oz',
              ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_11.jpg',
              imageHeight: 220,
              imageWidth: 150,
              nameLocion: '''212 VIP Men
Carolina Herrrera''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 20),
        //TODO: SEGUNDO ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_3.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''CH Men
Carolina Herrrera''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_4.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''212 VIP Men Wins
Carolina Herrrera''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 20),
        //TODO: TERCER ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''1 Million Parfum
Paco Rabanne''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_7.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''1 Million Lucky
Paco Rabanne''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 20),
        //TODO: CUARTO ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_8.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Invictus
Paco Rabanne''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_9.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Black XS
Paco Rabanne''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 20),
        //TODO: QUINTO ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_10.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Sauvage
Dior''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_12.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Fahrenheit
Dior''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 20),
        //TODO: SEXTO ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_13.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''CK One
Calvin Klein''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_2.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''360° for Men
Perry Ellis''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 20),
        //TODO: SÉPTIMO ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_3.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Nautica Voyage
Nautica''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_4.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Toy Boy
Moschino''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 20),
        //TODO: OCTAVO ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Red
Lacoste''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_7.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''L'Eau d'Issey Homme
Issey Miyake''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 20),
        //TODO: CUARTO ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_8.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Hugo
Hugo Boss''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_9.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Acqua di Gio
Giorgio Armani''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 20),
        //TODO: QUINTO ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_10.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Polo Blue
Ralph Lauren''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),/*
            LocionMobile(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/locion_10.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: 'Acqua di Gio - Giorgio Armani',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),*/
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
*/