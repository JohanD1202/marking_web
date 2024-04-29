import 'package:marking_web/exports.dart';
import 'package:marking_web/responsive/screens_mobile/widgets_mobile.dart';


class SectionMujerMobile extends StatefulWidget {
  // ignore: use_super_parameters
  const SectionMujerMobile({Key? key}) : super(key: key);

  @override
  State<SectionMujerMobile> createState() => _SectionMujerMobileState();
}

class _SectionMujerMobileState extends State<SectionMujerMobile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //TODO: PRIMER ROW DE BOLSOS
        const Row(
          children: [
            Spacer(),
            BolsosMobile(
              imageBolso: 'assets/images/bolso_2.jpg', 
              imageBolso2: 'assets/images/bolso_1.jpg',
              imageWidth: 180, 
              imageHeight: 277.5, 
              nameBolso: 'Bolso Prada',
              symbol: '\$',
              priceOriginal: 80.000,
            ),
            Spacer(),
            BolsosMobile(
              imageBolso: 'assets/images/bolso_3.jpg', 
              imageBolso2: 'assets/images/bolso_5.jpg',
              imageWidth: 180,
              imageHeight: 277.5, 
              nameBolso: 'Bolso Dior',
              symbol: '\$',
              priceOriginal: 80.000,
            ),
            Spacer(),
          ],
       ),
       const SizedBox(height: 20),
        //TODO: SEGUNDO ROW DE BOLSOS
       const Row(
         children: [
          Spacer(),
          BolsosMobile(
              imageBolso: 'assets/images/bolso_6.jpg', 
              imageBolso2: 'assets/images/bolso_4.jpg',
              imageWidth: 180, 
              imageHeight: 277.5, 
              nameBolso: 'Bolso Prada',
              symbol: '\$',
              priceOriginal: 80.000,
            ),
            Spacer(),
            BolsosMobile(
              imageBolso: 'assets/images/bolso_8.jpg', 
              imageBolso2: 'assets/images/bolso_9.jpg',
              imageWidth: 180,
              imageHeight: 277.5, 
              nameBolso: 'Bolso Dior',
              symbol: '\$',
              priceOriginal: 80.000,
            ),
            Spacer(),
         ],
       ),
       const SizedBox(height: 20),
        //TODO: TERCER ROW DE BOLSOS
       const Row(
         children: [
          Spacer(),
          BolsosMobile(
              imageBolso: 'assets/images/bolso_2.jpg', 
              imageBolso2: 'assets/images/bolso_1.jpg',
              imageWidth: 180, 
              imageHeight: 277.5, 
              nameBolso: 'Bolso Prada',
              symbol: '\$',
              priceOriginal: 80.000,
            ),
            Spacer(),
            BolsosMobile(
              imageBolso: 'assets/images/bolso_3.jpg', 
              imageBolso2: 'assets/images/bolso_5.jpg',
              imageWidth: 180,
              imageHeight: 277.5, 
              nameBolso: 'Bolso Dior',
              symbol: '\$',
              priceOriginal: 80.000,
            ),
            Spacer(),
        ],
      ),
        const SizedBox(height: 20),
        //TODO: CUARTO ROW DE BOLSOS
        const Row(
          children: [
            Spacer(),
            BolsosMobile(
              imageBolso: 'assets/images/bolso_2.jpg', 
              imageBolso2: 'assets/images/bolso_1.jpg',
              imageWidth: 180, 
              imageHeight: 277.5, 
              nameBolso: 'Bolso Prada',
              symbol: '\$',
              priceOriginal: 80.000,
            ),
            Spacer(),
            BolsosMobile(
              imageBolso: 'assets/images/bolso_3.jpg', 
              imageBolso2: 'assets/images/bolso_5.jpg',
              imageWidth: 180,
              imageHeight: 277.5, 
              nameBolso: 'Bolso Dior',
              symbol: '\$',
              priceOriginal: 80.000,
            ),
            Spacer(),
          ],
        ),
        const SizedBox(height: 20),
        //TODO: QUINTO ROW DE BOLSOS
        const Row(
          children: [
            Spacer(),
            BolsosMobile(
              imageBolso: 'assets/images/bolso_2.jpg', 
              imageBolso2: 'assets/images/bolso_1.jpg',
              imageWidth: 180, 
              imageHeight: 277.5, 
              nameBolso: 'Bolso Prada',
              symbol: '\$',
              priceOriginal: 80.000,
            ),
            Spacer(),
            BolsosMobile(
              imageBolso: 'assets/images/bolso_3.jpg', 
              imageBolso2: 'assets/images/bolso_5.jpg',
              imageWidth: 180,
              imageHeight: 277.5, 
              nameBolso: 'Bolso Dior',
              symbol: '\$',
              priceOriginal: 80.000,
            ),
            Spacer(),
          ],
        ),
        const SizedBox(height: 25),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text('Aromas Mujer', style: styleText3),
            ),
          ],
        ),
        const SizedBox(height: 25),
        //TODO: PRIMER ROW DE LOCIONES DE MUJER
        const Row(
          children: [
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 277.5,
              imageWidth: 180,
              nameLocion: 'L \'Aventure',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/locion_10.jpg',
              imageHeight: 277.5,
              imageWidth: 180,
              nameLocion: 'AMETHYST (Unisex)',
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
            LocionMobile(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 277.5,
              imageWidth: 180,
              nameLocion: 'L \'Aventure',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/locion_10.jpg',
              imageHeight: 277.5,
              imageWidth: 180,
              nameLocion: 'AMETHYST (Unisex)',
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
            LocionMobile(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 277.5,
              imageWidth: 180,
              nameLocion: 'L \'Aventure',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/locion_10.jpg',
              imageHeight: 277.5,
              imageWidth: 180,
              nameLocion: 'AMETHYST (Unisex)',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}