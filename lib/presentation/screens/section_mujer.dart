import 'package:marking_web/exports.dart';


class SectionMujer extends StatefulWidget {
  // ignore: use_super_parameters
  const SectionMujer({Key? key}) : super(key: key);

  @override
  State<SectionMujer> createState() => _SectionMujerState();
}

class _SectionMujerState extends State<SectionMujer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //TODO: PRIMER ROW DE BOLSOS
        const Row(
          children: [
            Spacer(),
            Bolsos(
              imageBolso: 'assets/images/bolso_bimba_y_lola_150.jpg', 
              imageBolso2: 'assets/images/bolso_bimba_y_lola_150.jpg',
              imageWidth: 240, 
              imageHeight: 370, 
              nameBolso: '''Bolso Bimba
Y Lola''',
              symbol: '\$',
              priceOriginal: 150.000,
            ),
            Spacer(),
            Bolsos(
              imageBolso: 'assets/images/bolso_dior_85.jpg', 
              imageBolso2: 'assets/images/bolso_dior_85.jpg',
              imageWidth: 240, 
              imageHeight: 370, 
              nameBolso: 'Bolso Dior', 
              symbol: '\$', 
              priceOriginal: 85.000,
            ),
            Spacer(),
            Bolsos(
              imageBolso: 'assets/images/bolso_louis_vuitton_150.jpg', 
              imageBolso2: 'assets/images/bolso_louis_vuitton_150.jpg',
              imageWidth: 240, 
              imageHeight: 370,
              symbol: '\$', 
              nameBolso: '''Bolso Louis
Vuitton''', 
              priceOriginal: 150.000,
            ),
            Spacer(),
            Bolsos(
              imageBolso: 'assets/images/bolso_marc_jacobs_grande_140.jpg', 
              imageBolso2: 'assets/images/bolso_marc_jacobs_grande_140.jpg',
              imageWidth: 240, 
              imageHeight: 370, 
              nameBolso: '''Bolso Marc
Jacobs grande''', 
              symbol: '\$',
              priceOriginal: 140.000,
            ),
            Spacer(),
          ],
       ),
       const SizedBox(height: 20),
        //TODO: SEGUNDO ROW DE BOLSOS
       const Row(
         children: [
          Spacer(),
          Bolsos(
            imageBolso: 'assets/images/bolso_nike_70.jpg', 
            imageBolso2: 'assets/images/bolso_nike_70.jpg',
            imageWidth: 240, 
            imageHeight: 370, 
            nameBolso: 'Bolso Nike', 
            symbol: '\$',
            priceOriginal: 70.000,
          ),
          Spacer(),
          Bolsos(
            imageBolso: 'assets/images/bolso_prada_120.jpg', 
            imageBolso2: 'assets/images/bolso_prada_120.jpg',
            imageWidth: 240, 
            imageHeight: 370, 
            nameBolso: 'Bolso Prada',
            symbol: '\$',
            priceOriginal: 120.000,
          ),
          Spacer(),
          Bolsos(
            imageBolso: 'assets/images/bolso_bimba_y_lola_150.jpg', 
            imageBolso2: 'assets/images/bolso_bimba_y_lola_150.jpg',
            imageWidth: 240, 
            imageHeight: 370, 
            nameBolso: '''Bolso Bimba
Y Lola''',
            symbol: '\$',
            priceOriginal: 150.000,
          ),
          Spacer(),
          Bolsos(
            imageBolso: 'assets/images/bolso_dior_85.jpg', 
            imageBolso2: 'assets/images/bolso_dior_85.jpg',
            imageWidth: 240, 
            imageHeight: 370, 
            nameBolso: 'Bolso Dior', 
            symbol: '\$',
            priceOriginal: 85.000,
          ),
          Spacer(),
         ],
       ),
       const SizedBox(height: 20),
        //TODO: TERCER ROW DE BOLSOS
       const Row(
         children: [
          Spacer(),
          Bolsos(
            imageBolso: 'assets/images/bolso_louis_vuitton_150.jpg', 
            imageBolso2: 'assets/images/bolso_louis_vuitton_150.jpg',
            imageWidth: 240, 
            imageHeight: 370, 
            nameBolso: '''Bolso Louis
Vuitton''',
            symbol: '\$',
            priceOriginal: 150.000,
          ),
          Spacer(),
          Bolsos(
            imageBolso: 'assets/images/bolso_marc_jacobs_grande_140.jpg', 
            imageBolso2: 'assets/images/bolso_marc_jacobs_grande_140.jpg',
            imageWidth: 240, 
            imageHeight: 370, 
            nameBolso: '''Bolso Marc
Jacobs grande''',
            symbol: '\$',
            priceOriginal: 140.000,
          ),
          Spacer(),
          Bolsos(
            imageBolso: 'assets/images/bolso_nike_70.jpg',
            imageBolso2: 'assets/images/bolso_nike_70.jpg',
            imageWidth: 240, 
            imageHeight: 370, 
            nameBolso: 'Bolso Nike', 
            symbol: '\$',
            priceOriginal: 70.000,
          ),
          Spacer(),
          Bolsos(
            imageBolso: 'assets/images/bolso_prada_120.jpg', 
            imageBolso2: 'assets/images/bolso_prada_120.jpg',
            imageWidth: 240, 
            imageHeight: 370, 
            nameBolso: 'Bolso Prada',
            symbol: '\$',
            priceOriginal: 120.000,
          ),
          Spacer(),
        ],
      ),
        const SizedBox(height: 20),
        //TODO: CUARTO ROW DE BOLSOS
        const Row(
          children: [
            Spacer(),
            Bolsos(
              imageBolso: 'assets/images/bolso_bimba_y_lola_150.jpg', 
              imageBolso2: 'assets/images/bolso_bimba_y_lola_150.jpg',
              imageWidth: 240, 
              imageHeight: 370, 
              nameBolso: '''Bolso Bimba
Y Lola''',
              symbol: '\$',
              priceOriginal: 150.000,
            ),
            Spacer(),
            Bolsos(
              imageBolso: 'assets/images/bolso_dior_85.jpg', 
              imageBolso2: 'assets/images/bolso_dior_85.jpg',
              imageWidth: 240, 
              imageHeight: 370, 
              nameBolso: 'Bolso Dior', 
              symbol: '\$',
              priceOriginal: 85.000,
            ),
            Spacer(),
            Bolsos(
              imageBolso: 'assets/images/bolso_louis_vuitton_150.jpg', 
              imageBolso2: 'assets/images/bolso_louis_vuitton_150.jpg',
              imageWidth: 240, 
              imageHeight: 370, 
              nameBolso: '''Bolso Louis
Vuitton''', 
              symbol: '\$',
              priceOriginal: 150.000,
            ),
            Spacer(),
            Bolsos(
              imageBolso: 'assets/images/bolso_marc_jacobs_grande_140.jpg', 
              imageBolso2: 'assets/images/bolso_marc_jacobs_grande_140.jpg',
              imageWidth: 240, 
              imageHeight: 370, 
              nameBolso: '''Bolso Marc
Jacobs grande''',
              symbol: '\$',
              priceOriginal: 140.000,
            ),
            Spacer(),
          ],
        ),
        const SizedBox(height: 30),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Text('Aromas Mujer', style: styleText3),
            ),
          ],
        ),
        const SizedBox(height: 30),
        //TODO: PRIMER ROW DE LOCIONES DE MUJER
        const Row(
          children: [
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_2.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Carolina Herrera
Carolina Herrera''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_1.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''CH (2015)
Carolina Herrera''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_3.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''212 Vip Rosé
Carolina Herrera''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_4.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''360°
Perry Ellis''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        const SizedBox(height: 20),
        //TODO: SEGUNDO ROW DE LOCIONES DE MUJER
        const Row(
          children: [
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Paris Hilton
Paris Hilton''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_7.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Can Can
Paris Hilton''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_8.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Heiress
Paris Hilton''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_9.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Toy 2
Moschino''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        const SizedBox(height: 20),
        //TODO: TERCER ROW DE LOCIONES DE MUJER
        const Row(
          children: [
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_10.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Amor Amor
Cacharel''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_17.jpg',
              imageLocion2: 'assets/images/aroma_16.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''La Vie Est Belle
Lancôme''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_12.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Light Blue
Dolce&Gabbana''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_13.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Kim Kardashian
Kim Kardashian''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        const SizedBox(height: 20),
        //TODO: CUARTO ROW DE LOCIONES DE MUJER
        const Row(
          children: [
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_2.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Angel - Mugler',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_3.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Halloween
Halloween''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_4.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''CK One
Calvin Klein''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'CK2 - Calvin Klein',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        )
      ],
    );
  }
}