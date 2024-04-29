import 'package:marking_web/exports.dart';


class SectionHombre extends StatefulWidget {
  // ignore: use_super_parameters
  const SectionHombre({Key? key}) : super (key: key);

  @override
  State<SectionHombre> createState() => _SectionHombreState();
}

class _SectionHombreState extends State<SectionHombre> {

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
            Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_2.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '212 heroes - Carolina Herrera',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),            
            Locion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_3.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '212 Vip - Carolina Herrera',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_4.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Ch - Carolina Herrera',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/locion_10.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '212 Vip Wins - Carolina Herrera',
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
            Locion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'One Million - Paco Rabanne',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/locion_5.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'One Million Lucky - Paco Rabanne',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_2.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Invictus - Paco Rabanne',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/locion_10.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Black XS - Paco Rabanne',
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
            Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/locion_3.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Suavage - Dior',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_3.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Fahrenheit - Dior',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/locion_7.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Ck One - Calvin Klein',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/locion_5.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '360 - Perry Ellis',
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
            Locion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/locion_4.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Náutica Voyage - Náutica',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/locion_5.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Toy Boy - Moschino',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/locion_7.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Lacoste Red - Lacoste',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/locion_10.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Issey Miyake - Shiseido Emea',
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
            Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_2.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Hugo Boss - Hugo Boss',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_3.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Acqua de Gio - Giorgio Armani',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),/*
            Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_4.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'L \'Aventure',
              symbol: '\$',
              priceOriginal: 14.000,
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/locion_3.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'AMETHYST (Unisex)',
              symbol: '\$',
              priceOriginal: 14.000,
            ),
            Spacer(),*/
          ],
        ),
      ],
    );
  }
}