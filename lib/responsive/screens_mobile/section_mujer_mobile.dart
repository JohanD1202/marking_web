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
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text('Aromas Mujer', style: styleText3Mobile),
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
              imageLocion2: 'assets/images/aroma_2.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Carolina Herrera
Carolina Herrera''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_1.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''CH (2015)
Carolina Herrera''',
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
              imageLocion2: 'assets/images/aroma_3.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''212 VIP Rosé
Carolina Herrera''',
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
        //TODO: TERCER ROW DE LOCIONES DE MUJER
        const Row(
          children: [
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Paris Hilton
Paris Hilton''',
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
              nameLocion: '''Can Can
Paris Hilton''',
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
              imageLocion2: 'assets/images/aroma_8.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Heiress
Paris Hilton''',
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
        //TODO: QUINTO ROW DE LOCIONES DE MUJER
        const Row(
          children: [
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_10.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Amor Amor
Cacharel''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_17.jpg',
              imageLocion2: 'assets/images/aroma_16.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''La Vie Est Belle
Lancôme''',
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
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_12.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Light Blue
Dolce&Gabbana''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_13.jpg',
              imageHeight: 240,
              imageWidth: 150,
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
        //TODO: SÉPTIMO ROW DE LOCIONES DE MUJER
        const Row(
          children: [
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_2.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Angel
Mugler''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_3.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Halloween
Halloween''',
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
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_4.jpg',
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
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''CK 2
Calvin Klein''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        const SizedBox(height: 20),
        //TODO: NOVENO ROW DE LOCIONES DE MUJER
        const Row(
          children: [
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Scandal
Jean Paul Galtier''',
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
              nameLocion: '''Good Girl
Carolina Herrera''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        const SizedBox(height: 20),
        //TODO: DÉCIMO ROW DE LOCIONES DE MUJER
        const Row(
          children: [
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_8.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Omnia Coral
Bvlgari''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),/*
            LocionMobile(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_9.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '''Toy 2
Moschino''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),*/
          ],
        ),
      ],
    );
  }
}
