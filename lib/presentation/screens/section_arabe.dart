import 'package:marking_web/exports.dart';
import 'package:marking_web/presentation/screens/widgets_lociones.dart';


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

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        //TODO: PRIMER ROW DE LOCIONES ARABES
        Row(
          children: [
            Spacer(),
            LocionArabe(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_2.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Yara
Lattafa''',
              symbol: '\$',
              priceOriginal: 17.000,
              onzas: '1 fl oz',
            ),
            Spacer(),            
            LocionArabe(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_3.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Ombre Nomade
Louis Vuitton''',
              symbol: '\$',
              priceOriginal: 17.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionArabe(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_4.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Bade'e Al Oud
Amethyst Lattafa''',
              symbol: '\$',
              priceOriginal: 17.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionArabe(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Oud for Greatness
Initio''',
              symbol: '\$',
              priceOriginal: 17.000,
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
            LocionArabe(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_7.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Amber Oud
Al Haramain''',
              symbol: '\$',
              priceOriginal: 17.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_8.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''L' Aventure
Al Haramain''',
              symbol: '\$',
              priceOriginal: 17.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionArabe(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_9.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Madinah
Al Haramain''',
              symbol: '\$',
              priceOriginal: 17.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionArabe(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_10.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Santal 33
Le Labo''',
              symbol: '\$',
              priceOriginal: 17.000,
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
            LocionArabe(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_12.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Il Kakuno
ILMIN''',
              symbol: '\$',
              priceOriginal: 17.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionArabe(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_13.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Il Femme
ILMIN''',
              symbol: '\$',
              priceOriginal: 17.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionArabe(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_2.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Arabians Tonka
Montale''',
              symbol: '\$',
              priceOriginal: 17.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionArabe(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_3.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Intense Cafe
Montale''',
              symbol: '\$',
              priceOriginal: 17.000,
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
            LocionArabe(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_4.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Baccarat Rouge
Francis Kurkdjian''',
              symbol: '\$',
              priceOriginal: 17.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionArabe(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Oud Saffron
Orientica''',
              symbol: '\$',
              priceOriginal: 17.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionArabe(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_7.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Amber Rouge
Orientica''',
              symbol: '\$',
              priceOriginal: 17.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionArabe(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_8.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Amber Oud Gold
Al Haramain''',
              symbol: '\$',
              priceOriginal: 17.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 20),
        //TODO: QUINTO ROW DE LOCIONES ARABES
        Row(
          children: [
            Spacer(),
            LocionArabe(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_9.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''King
Bharara''',
              symbol: '\$',
              priceOriginal: 17.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionArabe(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_10.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Corvus
Ahli''',
              symbol: '\$',
              priceOriginal: 17.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionArabe(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_12.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Velvet Gold
Orientica''',
              symbol: '\$',
              priceOriginal: 17.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionArabe(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_13.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Asad
Lattafa''',
              symbol: '\$',
              priceOriginal: 17.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 20),
        //TODO: SEXTO ROW DE LOCIONES ARABES
        Row(
          children: [
            Spacer(),
            LocionArabe(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_4.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Club de Nuit Intense Man
Armaf''',
              symbol: '\$',
              priceOriginal: 17.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionArabe(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Opulent Musk
Lattafa''',
              symbol: '\$',
              priceOriginal: 17.000,
              onzas: '1 fl oz',
            ),
            Spacer(),/*
            LocionArabe(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_7.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Amber Rouge
Orientica''',
              symbol: '\$',
              priceOriginal: 17.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionArabe(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_8.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Amber Oud Gold
Al Haramain''',
              symbol: '\$',
              priceOriginal: 17.000,
              onzas: '1 fl oz',
            ),
            Spacer(),*/
          ],
        ),
      ],
    );
  }
}

//*33.000 2 onzas
//*45.000 3 onzas
//Para Aromas arabes

//*29.000 2 onzas
//*40.000 3 onzas