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
              imageLocion: 'assets/images/carolina_herrera_carolina_herrera.jpg',
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
              imageLocion: 'assets/images/ch_2015_carolina_herrera.jpg',
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
              imageLocion: 'assets/images/212_vip_rose_carolina_herrera.jpg',
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
              imageLocion: 'assets/images/360_perry_ellis.jpg',
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
              imageLocion: 'assets/images/paris_hilton_paris_hilton.jpg',
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
              imageLocion: 'assets/images/can_can_paris_hilton.webp',
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
              imageLocion: 'assets/images/heiress_paris_hilton.jpg',
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
              imageLocion: 'assets/images/toy_2_moschino.jpg',
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
              imageLocion: 'assets/images/amor_amor_cacharel.webp',
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
              imageLocion: 'assets/images/la_vie_est_belle_lancome.jpg',
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
              imageLocion: 'assets/images/light_blue_dolce_gabbana.jpg',
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
              imageLocion: 'assets/images/kim_kardashian_kim_kardashian.jpg',
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
              imageLocion: 'assets/images/angel_mugler.webp',
              imageLocion2: 'assets/images/aroma_2.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Angel
Mugler''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/halloween_halloween.jpg',
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
              imageLocion: 'assets/images/ck_one_calvin_klein.jpeg',
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
              imageLocion: 'assets/images/ck2_calvin_klein.webp',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''CK2
Calvin Klein''',
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
            Locion(
              imageLocion: 'assets/images/scandal_jean_paul_galtier.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Scandal 
Jean Paul Galtier''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/good_girl_carolina_herrera.jpg',
              imageLocion2: 'assets/images/aroma_7.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Good Girl
Carolina Herrera''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/omnia_coral_bvlgari.jpg',
              imageLocion2: 'assets/images/aroma_8.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''Omnia Coral
Bvlgari''',
              symbol: '\$',
              priceOriginal: 15.000,
              onzas: '1 fl oz',
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/the_scent_of_peace_bond9.jpg',
              imageLocion2: 'assets/images/aroma_7.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '''The Scent of Peace
Bond No 9''',
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