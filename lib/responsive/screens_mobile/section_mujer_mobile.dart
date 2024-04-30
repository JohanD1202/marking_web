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
              imageHeight: 240, 
              imageWidth: 150, 
              nameBolso: 'Bolso Prada',
              symbol: '\$',
              priceOriginal: 80.000,
            ),
            Spacer(),
            BolsosMobile(
              imageBolso: 'assets/images/bolso_3.jpg', 
              imageBolso2: 'assets/images/bolso_5.jpg',
              imageHeight: 240, 
              imageWidth: 150,
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
              imageHeight: 240,
              imageWidth: 150, 
              nameBolso: 'Bolso Prada',
              symbol: '\$',
              priceOriginal: 80.000,
            ),
            Spacer(),
            BolsosMobile(
              imageBolso: 'assets/images/bolso_8.jpg', 
              imageBolso2: 'assets/images/bolso_9.jpg',
              imageHeight: 240,
              imageWidth: 150,
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
              imageHeight: 240,
              imageWidth: 150, 
              nameBolso: 'Bolso Prada',
              symbol: '\$',
              priceOriginal: 80.000,
            ),
            Spacer(),
            BolsosMobile(
              imageBolso: 'assets/images/bolso_3.jpg', 
              imageBolso2: 'assets/images/bolso_5.jpg',
              imageHeight: 240,
              imageWidth: 150,
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
              imageHeight: 240,
              imageWidth: 150, 
              nameBolso: 'Bolso Prada',
              symbol: '\$',
              priceOriginal: 80.000,
            ),
            Spacer(),
            BolsosMobile(
              imageBolso: 'assets/images/bolso_3.jpg', 
              imageBolso2: 'assets/images/bolso_5.jpg',
              imageHeight: 240,
              imageWidth: 150,
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
              imageHeight: 240,
              imageWidth: 150, 
              nameBolso: 'Bolso Prada',
              symbol: '\$',
              priceOriginal: 80.000,
            ),
            Spacer(),
            BolsosMobile(
              imageBolso: 'assets/images/bolso_3.jpg', 
              imageBolso2: 'assets/images/bolso_5.jpg',
              imageHeight: 240,
              imageWidth: 150,
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
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: 'Carolina Herrera - Carolina Herrera',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/locion_10.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: 'Ch - Carolina Herrera',
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
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '212 Vip Rose - Carolina Herrera',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/locion_10.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '360 - Perry Ellis',
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
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: 'Paris Hilton - Paris Hilton',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/locion_10.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: 'Can Can - Paris Hilton',
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
            LocionMobile(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: 'Heires - Paris Hilton',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/locion_10.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: 'Toy 2 - Moschino',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        const SizedBox(height: 20),
        //TODO: QUINTO ROW DE LOCIONES DE MUJER
        const Row(
          children: [
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: 'Amor amor - Cacharel',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/locion_10.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: 'La Vida es Bella - Lancome',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        const SizedBox(height: 20),
        //TODO: SEXTO ROW DE LOCIONES DE MUJER
        const Row(
          children: [
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: 'Light Blue - Dolce & Gabbana',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/locion_10.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: 'Kim Kardashian - Kim Kardashian',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        const SizedBox(height: 20),
        //TODO: SÉPTIMO ROW DE LOCIONES DE MUJER
        const Row(
          children: [
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: 'Angel - Thierry Mugler',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/locion_10.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: 'Halloween - Jesús del Pozo',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        const SizedBox(height: 20),
        //TODO: OCTAVO ROW DE LOCIONES DE MUJER
        const Row(
          children: [
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: 'Ck One - Calvin Klein',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/locion_10.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: 'Ck 2 u - Calvin Klein',
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