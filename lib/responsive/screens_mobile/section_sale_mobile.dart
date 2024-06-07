import 'package:marking_web/exports.dart';
import 'package:marking_web/responsive/screens_mobile/widgets_mobile.dart';


class SectionSaleMobile extends StatefulWidget {
  // ignore: use_super_parameters
  const SectionSaleMobile({Key? key}) : super (key: key);

  @override
  State<SectionSaleMobile> createState() => _SectionSaleMobileState();
}

class _SectionSaleMobileState extends State<SectionSaleMobile> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //TODO: PRIMER ROW DE LOCIONES DE HOMBRE
        const Row(
          children: [/*
            Spacer(),
            LocionPromotionMobile(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_2.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '212 Heroes - Carolina Herrera',
              symbol: '\$',
              priceOriginal: 20.000,
              priceDescuento: '\$15.000',
              promotion: Price(price: '20%'), 
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionPromotionMobile(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '212 Vip - Carolina Herrera',
              symbol: '\$',
              priceOriginal: 20.000,
              priceDescuento: '\$15.000',
              promotion: Price(price: '20%'),
              onzas: '1 fl oz',
            ),
            Spacer(),*/
          ],
        ),
        //const SizedBox(height: 20),
        //TODO: SEGUNDO ROW DE LOCIONES DE HOMBRE
        const Row(
          children: [/*    
            Spacer(),
            LocionPromotionMobile(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_2.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: 'Ch - Carolina Herrera',
              symbol: '\$',
              priceOriginal: 20.000,
              priceDescuento: '\$15.000',
              promotion: Price(price: '20%'),
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionPromotionMobile(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: '212 Vip Wins - Carolina Herrera',
              symbol: '\$',
              priceOriginal: 20.000,
              priceDescuento: '\$15.000',
              promotion: Price(price: '20%'),
              onzas: '1 fl oz',
            ),
            Spacer(),*/
          ],
        ),
        //const SizedBox(height: 20),
        //TODO: TERCER ROW DE LOCIONES DE HOMBRE
        const Row(
          children: [/*
            Spacer(),
            LocionPromotionMobile(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_2.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: 'One Million - Paco Rabanne',
              symbol: '\$',
              priceOriginal: 20.000,
              priceDescuento: '\$15.000',
              promotion: Price(price: '20%'), 
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionPromotionMobile(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: 'One Million Lucky - Paco Rabanne',
              symbol: '\$',
              priceOriginal: 20.000,
              priceDescuento: '\$15.000',
              promotion: Price(price: '20%'),
              onzas: '1 fl oz',
            ),
            Spacer(),*/
          ],
        ),
        //const SizedBox(height: 25),
        /*Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text('Aromas Mujer', style: styleText3),
            ),
          ],
        ),*/
        //const SizedBox(height: 25),
        //TODO: PRIMER ROW DE LOCIONES DE MUJER
        const Row(
          children: [/*
            Spacer(),
            LocionPromotionMobile(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_2.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: 'Paris Hilton - Paris Hilton',
              symbol: '\$',
              priceOriginal: 20.000,
              priceDescuento: '\$15.000',
              promotion: Price(price: '20%'),
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionPromotionMobile(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: 'Can can - Paris Hilton',
              symbol: '\$',
              priceOriginal: 20.000,
              priceDescuento: '\$15.000',
              promotion: Price(price: '20%'),
              onzas: '1 fl oz',
            ),
            Spacer(),*/
          ],
        ),
        //const SizedBox(height: 20),
        //TODO: SEGUNDO ROW DE LOCIONES DE MUJER
        const Row(
          children: [/*
            Spacer(),
            LocionPromotionMobile(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_2.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: 'Heires - Paris Hilton',
              symbol: '\$',
              priceOriginal: 20.000,
              priceDescuento: '\$15.000',
              promotion: Price(price: '20%'), 
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionPromotionMobile(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameLocion: 'Ck One - Calvin Klein',
              symbol: '\$',
              priceOriginal: 20.000,
              priceDescuento: '\$15.000',
              promotion: Price(price: '20%'),
              onzas: '1 fl oz',
            ),
            Spacer(),*/
          ],
        ),
        //const SizedBox(height: 25),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text('Nuestras Promociones', style: styleText3Mobile),
            ),
          ],
        ),
        const SizedBox(height: 25),
        //TODO: PRIMER ROW DE BOLSOS
        const Row(
          children: [
            Spacer(),
            BolsosPromotionMobile(
              imageBolso: 'assets/images/promo_bolso_mk+1locion_160.jpg',
              imageBolso2: 'assets/images/promo_bolso_mk+1locion_160.jpg',
              imageHeight: 240, 
              imageWidth: 150, 
              nameBolso: '''Bolso MK
+ 1 Locion''',
              symbol: '\$',
              price: 200.000,
              priceDescuento: 160.000, 
              promotion: PriceMobile(price: '20%')
            ),
            Spacer(),
            BolsosPromotionMobile(
              imageBolso: 'assets/images/bolso_prada_cafe_promo_+1locion_110.jpg',
              imageBolso2: 'assets/images/bolso_prada_cafe_promo_+1locion_110.jpg',
              imageHeight: 240, 
              imageWidth: 150, 
              nameBolso: '''Bolso Prada Café
+ 1 Locion''',
              symbol: '\$',
              price: 142.000, 
              priceDescuento: 110.000, 
              promotion: PriceMobile(price: '22%')
            ),
            Spacer(),
          ],
        ),
        const SizedBox(height: 20),
        //TODO: SEGUNDO ROW DE BOLSOS
        const Row(
          children: [
            Spacer(),
            BolsosPromotionMobile(
              imageBolso: 'assets/images/bolso_coach_promo_+1locion_90.jpg',
              imageBolso2: 'assets/images/bolso_coach_promo_+1locion_90.jpg',
              imageHeight: 240, 
              imageWidth: 150, 
              nameBolso: '''Bolso Coach
+ 1 Locion''',
              symbol: '\$',
              price: 110.000, 
              priceDescuento: 90.000, 
              promotion: PriceMobile(price: '18%')
            ),
            Spacer(),
            BolsosPromotionMobile(
              imageBolso: 'assets/images/bolso_bimba_y_lola_promo_+1locion_130.jpg',
              imageBolso2: 'assets/images/bolso_bimba_y_lola_promo_+1locion_130.jpg',
              imageHeight: 240, 
              imageWidth: 150, 
              nameBolso: '''Bolso Bimba Y
Lola + 1 Locion''',
              symbol: '\$',
              price: 163.000, 
              priceDescuento: 130.000, 
              promotion: PriceMobile(price: '20%')
            ),
            Spacer(),
          ],
        ),
        const SizedBox(height: 20),
        //TODO: SEGUNDO ROW DE BOLSOS
        const Row(
          children: [
            Spacer(),
            BolsosPromotionMobile(
              imageBolso: 'assets/images/bolso_marc_jacobs_mediano_promo_+1locion_100.jpg',
              imageBolso2: 'assets/images/bolso_marc_jacobs_mediano_promo_+1locion_100.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameBolso: '''Bolso Marc Jacobs
Mediano + 1 Locion''',
              symbol: '\$',
              price: 120.000,
              priceDescuento: 100.000,
              promotion: PriceMobile(price: '18%'),
            ),
            Spacer(),
            BolsosPromotionMobile(
              imageBolso: 'assets/images/bolso_marc_jacobs_grande_promo_+1locion_90.jpg',
              imageBolso2: 'assets/images/bolso_marc_jacobs_grande_promo_+1locion_90.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameBolso: '''Bolso Marc Jacobs
Grande + 1 Locion''',
              symbol: '\$',
              price: 105.000,
              priceDescuento: 90.000,
              promotion: PriceMobile(price: '14%'),
            ),
            Spacer(),
          ],
        ),
        const SizedBox(height: 20),
        //TODO: TERCER ROW DE BOLSOS
        const Row(
          children: [
            Spacer(),
            BolsosPromotionMobile(
              imageBolso: 'assets/images/bolso_luis_vuitton_promo_+1locion_110.jpg',
              imageBolso2: 'assets/images/bolso_luis_vuitton_promo_+1locion_110.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameBolso: '''Bolso Louis
Vuitton + 1 Locion''',
              symbol: '\$',
              price: 130.000,
              priceDescuento: 110.000,
              promotion: PriceMobile(price: '15%'),
            ),
            Spacer(),
            BolsosPromotionMobile(
              imageBolso: 'assets/images/bolso_dior_billetera_promo_+1locion_110.jpg',
              imageBolso2: 'assets/images/bolso_dior_billetera_promo_+1locion_110.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameBolso: '''Bolso Dior +
Billetera + 1 Locion''',
              symbol: '\$',
              price: 130.000,
              priceDescuento: 110.000,
              promotion: PriceMobile(price: '20%'),
            ),
            Spacer(),
          ]
        ),
        const SizedBox(height: 20),
        //TODO: CUARTO ROW DE BOLSOS + ACCESORIOS
        const Row(
          children: [
            Spacer(),
            BolsosPromotionMobile(
              imageBolso: 'assets/images/cartera_ch_promo_+1locion_35.jpg',
              imageBolso2: 'assets/images/cartera_2.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameBolso: '''Cartera CH 
+ 1 Locion''',
              symbol: '\$',
              price: 45.000,
              priceDescuento: 35.000,
              promotion: PriceMobile(price: '22%'),
            ),
            Spacer(),
            BolsosPromotionMobile(
              imageBolso: 'assets/images/porta_celular_mk_85.jpg',
              imageBolso2: 'assets/images/porta_celular_mk_85.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameBolso: '''Porta Celular
Michael Kors''',
              symbol: '\$',
              price: 100.000,
              priceDescuento: 85.000,
              promotion: PriceMobile(price: '15%'),
            ),
            Spacer(),
          ]
        ),
        const SizedBox(height: 20),
        //TODO: QUINTO ROW DE BOLSOS + ACCESORIOS
        const Row(
          children: [
            Spacer(),
            BolsosPromotionMobile(
              imageBolso: 'assets/images/portacelular_fashion_75.jpg',
              imageBolso2: 'assets/images/portacelular_fashion_75.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameBolso: '''Porta Celular
Fashion''',
              symbol: '\$',
              price: 95.000,
              priceDescuento: 75.000,
              promotion: PriceMobile(price: '21%'),
            ),
            Spacer(),
            BolsosPromotionMobile(
              imageBolso: 'assets/images/riñonera_louis_vuitton_promo_+1locion_100.jpg',
              imageBolso2: 'assets/images/riñonera_louis_vuitton_promo_+1locion_100.jpg',
              imageHeight: 240,
              imageWidth: 150,
              nameBolso: '''Riñonera Louis
Vuitton + 1 Locion''',
              symbol: '\$',
              price: 115.000,
              priceDescuento: 100.000,
              promotion: PriceMobile(price: '13%'),
            ),
            Spacer(),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
