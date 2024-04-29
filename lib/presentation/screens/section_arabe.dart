import 'package:marking_web/exports.dart';


class SectionArabe extends StatefulWidget {
  // ignore: use_super_parameters
  const SectionArabe({Key? key}) : super (key: key);

  @override
  State<SectionArabe> createState() => _SectionArabeState();
}

class _SectionArabeState extends State<SectionArabe> {

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
        //TODO: PRIMER ROW DE LOCIONES ARABES
        Row(
          children: [
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_2.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Yara - Lattafa',
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
              nameLocion: 'Ombre Nómada - Lattafa',
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
              nameLocion: 'Amethyst - Lattafa',
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
              nameLocion: 'Oud for Greatness - Initio',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 20),
        //TODO: SEGUNDO ROW DE LOCIONES ARABES
        Row(
          children: [
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Amber Oud - Haramain',
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
              nameLocion: 'L Aventure - Haramain',
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
              nameLocion: 'Madinah - Haramain',
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
              nameLocion: 'Santal 33 - Le Labo',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 20),
        //TODO: TERCER ROW DE LOCIONES ARABES
        Row(
          children: [
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/locion_3.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Il Kakuno - ILMIN',
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
              nameLocion: 'Il Femme - ILMIN',
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
              nameLocion: 'Arabians Tonka - Móntale',
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
              nameLocion: 'Intense Cafe - Móntale',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 20),
        //TODO: CUARTO ROW DE LOCIONES ARABES
        Row(
          children: [
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/locion_4.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Baccarat - Francis Kurkdjian',
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
              nameLocion: 'Oud Safran - Orientica',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),/*
            Locion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/locion_7.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Lacoste Red - Lacoste',
              symbol: '\$',
              priceOriginal: 15.000,
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
            ),
            Spacer(),*/
          ],
        ),
        SizedBox(height: 20),
        //TODO: QUINTO ROW DE LOCIONES ARABES
        Row(
          children: [/*
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_2.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Hugo Boss - Hugo Boss',
              symbol: '\$',
              priceOriginal: 15.000,
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
            ),
            Spacer(),
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