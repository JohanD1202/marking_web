import 'dart:math';

import 'package:marking_web/exports.dart';
import 'package:marking_web/presentation/screens/lotions.dart';

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
            ArabicLotion(
              imageLocion: 'assets/images/yara_lattafa.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 370,
              name: 'Juan',
              description: '345',
              price: 20,
              imageWidth: 240,
              symbol: '\$',
            ),
            Spacer(),
            //ArabicLotionList(),
            ArabicLotion(
              imageLocion: 'assets/images/ombre_nomade_louis_vuitton.webp',
              imageLocion2: 'assets/images/aroma_5.jpg',
              name: 'Juan',
              description: '345',
              price: 20,
              imageHeight: 370,
              imageWidth: 240,
              symbol: '\$',
            ),
            Spacer(),
            LocionArabe(
              imageLocion: 'assets/images/amethyst_lattafa.webp',
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
              imageLocion: 'assets/images/oud_for_greatness_initio.jpg',
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
              imageLocion: 'assets/images/amber_oud_haramain.jpg',
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
              imageLocion: 'assets/images/l_aventure_haramain.jpg',
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
              imageLocion: 'assets/images/madinah_haramain.jpg',
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
              imageLocion: 'assets/images/santal_33_le_labo.jpg',
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
              imageLocion: 'assets/images/il_kakuno_ilmin.jpg',
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
              imageLocion: 'assets/images/il_femme_ilmin.jpg',
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
              imageLocion: 'assets/images/arabians_tonka_montale.webp',
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
              imageLocion: 'assets/images/intense_cafe_montale.jpg',
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
              imageLocion: 'assets/images/baccarat_rouge_francis_kurkdjian.webp',
              imageLocion2: 'assets/images/aroma_4.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Baccarat Rouge 540
Francis Kurkdjian''',
              symbol: '\$',
              priceOriginal: 17.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionArabe(
              imageLocion: 'assets/images/oud_saffron_orientica.webp',
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
              imageLocion: 'assets/images/amber_rouge_orientica.jpg',
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
              imageLocion: 'assets/images/amber_oud_gold_haramain.webp',
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
              imageLocion: 'assets/images/king_bharara.jpg',
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
              imageLocion: 'assets/images/corvus_ahli.jpg',
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
              imageLocion: 'assets/images/velvet_gold_orientica.jpg',
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
              imageLocion: 'assets/images/asad_lattafa.jpg',
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
              imageLocion: 'assets/images/club_de_nuit_intense_man.jpg',
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
              imageLocion: 'assets/images/opulent_musk_lattafa.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Opulent Musk
Lattafa''',
              symbol: '\$',
              priceOriginal: 17.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            /*Lotion(
              imageLocion: 'assets/images/yara_lattafa.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 370,
              imageWidth: 240,
              symbol: '\$',
            ),
            Spacer(),*/
            /*
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
        SizedBox(height: 20),
      ],
    );
  }
}

//*33.000 2 onzas
//*45.000 3 onzas
//Para Aromas arabes

//*29.000 2 onzas
//*40.000 3 onzas