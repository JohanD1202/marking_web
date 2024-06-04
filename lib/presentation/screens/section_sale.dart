import 'package:marking_web/exports.dart';


class SectionSale extends StatefulWidget {
  // ignore: use_super_parameters
  const SectionSale({Key? key}) : super (key: key);

  @override
  State<SectionSale> createState() => _SectionSaleState();
}

class _SectionSaleState extends State<SectionSale> {

  //Cart myCart = Cart();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /*
        //TODO: PRIMER ROW DE LOCIONES DE HOMBRE
        const Row(
          children: [
            Spacer(),
            LocionPromotion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_2.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Calvin Klein',
              symbol: '\$',
              priceOriginal: 18.000,
              priceDescuento: '\$15.000',
              promotion: Price(price: '20%'), 
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionPromotion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Calvin Klein',
              symbol: '\$',
              priceOriginal: 18.000,
              priceDescuento: '\$15.000',
              promotion: Price(price: '20%'),
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionPromotion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_3.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Calvin Klein',
              symbol: '\$',
              priceOriginal: 18.000,
              priceDescuento: '\$15.000',
              promotion: Price(price: '20%'),
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionPromotion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_4.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Calvin Klein',
              symbol: '\$',
              priceOriginal: 18.000,
              priceDescuento: '\$15.000',
              promotion: Price(price: '20%'),
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        const SizedBox(height: 20),
        //TODO: SEGUNDO ROW DE LOCIONES DE HOMBRE
        const Row(
          children: [
            Spacer(),
            LocionPromotion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Calvin Klein',
              symbol: '\$',
              priceOriginal: 18.000,
              priceDescuento: '\$15.000',
              promotion: Price(price: '20%'),
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionPromotion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_4.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Calvin Klein',
              symbol: '\$',
              priceOriginal: 18.000,
              priceDescuento: '\$15.000',
              promotion: Price(price: '20%'),
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionPromotion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_3.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Calvin Klein',
              symbol: '\$',
              priceOriginal: 18.000,
              priceDescuento: '\$15.000',
              promotion: Price(price: '20%'),
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionPromotion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_2.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Calvin Klein',
              symbol: '\$',
              priceOriginal: 18.000,
              priceDescuento: '\$15.000',
              promotion: Price(price: '20%'),
              onzas: '1 fl oz',
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
            LocionPromotion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '212 VIP',
              symbol: '\$',
              priceOriginal: 18.000,
              priceDescuento: '\$15.000',
              promotion: Price(price: '20%'),
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionPromotion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_4.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '212 VIP',
              symbol: '\$',
              priceOriginal: 18.000,
              priceDescuento: '\$15.000',
              promotion: Price(price: '20%'),
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionPromotion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_3.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '212 VIP',
              symbol: '\$',
              priceOriginal: 18.000,
              priceDescuento: '\$15.000',
              promotion: Price(price: '20%'),
              onzas: '1 fl oz',
            ),
            Spacer(),
            LocionPromotion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_2.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: '212 VIP',
              symbol: '\$',
              priceOriginal: 18.000,
              priceDescuento: '\$15.000',
              promotion: Price(price: '20%'),
              onzas: '1 fl oz',
            ),
            Spacer(),
          ],
        ),
        const SizedBox(height: 30),*/
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Text('Nuestras Promociones', style: styleText3),
            ),
          ],
        ),
        const SizedBox(height: 30),
        //TODO: PRIMER ROW DE BOLSOS
        const Row(
          children: [
            Spacer(),
            /*BolsosPromotion(
              imageBolso: 'assets/images/promo_bolso_mk+1locion_160.jpg',
              imageBolso2: 'assets/images/promo_bolso_mk+1locion_160.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameBolso: '''Bolso MK
+ 1 Locion''',
              symbol: '\$',
              priceOriginal: 200.000,
              priceDescuento: '\$160.000',
              promotion: Price(price: '20%'),
            ),
            Spacer(),
            BolsosPromotion(
              imageBolso: 'assets/images/bolso_prada_cafe_promo_+1locion_110.jpg',
              imageBolso2: 'assets/images/bolso_prada_cafe_promo_+1locion_110.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameBolso: '''Bolso Prada Café
+ 1 Locion''',
              symbol: '\$',
              priceOriginal: 142.000,
              priceDescuento: '\$110.000',
              promotion: Price(price: '22%'),
            ),
            Spacer(),
            BolsosPromotion(
              imageBolso: 'assets/images/bolso_coach_promo_+1locion_90.jpg',
              imageBolso2: 'assets/images/bolso_coach_promo_+1locion_90.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameBolso: '''Bolso Coach
+ 1 Locion''',
              symbol: '\$',
              priceOriginal: 110.000,
              priceDescuento: '\$90.000',
              promotion: Price(price: '18%'),
            ),
            Spacer(),
            BolsosPromotion(
              imageBolso: 'assets/images/bolso_bimba_y_lola_promo_+1locion_130.jpg',
              imageBolso2: 'assets/images/bolso_bimba_y_lola_promo_+1locion_130.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameBolso: '''Bolso Bimba Y
Lola + 1 Locion''',
              symbol: '\$',
              priceOriginal: 163.000,
              priceDescuento: '\$130.000',
              promotion: Price(price: '20%'),
            ),
            Spacer(),*/
          ],
        ),
        const SizedBox(height: 20),
        //TODO: SEGUNDO ROW DE BOLSOS
        const Row(
          children: [/*
            Spacer(),
            BolsosPromotion(
              imageBolso: 'assets/images/bolso_marc_jacobs_mediano_promo_+1locion_100.jpg',
              imageBolso2: 'assets/images/bolso_marc_jacobs_mediano_promo_+1locion_100.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameBolso: '''Bolso Marc Jacobs
Mediano + 1 Locion''',
              symbol: '\$',
              priceOriginal: 120.000,
              priceDescuento: '\$100.000',
              promotion: Price(price: '18%'),
            ),
            Spacer(),
            BolsosPromotion(
              imageBolso: 'assets/images/bolso_marc_jacobs_grande_promo_+1locion_90.jpg',
              imageBolso2: 'assets/images/bolso_marc_jacobs_grande_promo_+1locion_90.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameBolso: '''Bolso Marc Jacobs
Grande + 1 Locion''',
              symbol: '\$',
              priceOriginal: 105.000,
              priceDescuento: '\$90.000',
              promotion: Price(price: '14%'),
            ),
            Spacer(),
            BolsosPromotion(
              imageBolso: 'assets/images/bolso_luis_vuitton_promo_+1locion_110.jpg',
              imageBolso2: 'assets/images/bolso_luis_vuitton_promo_+1locion_110.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameBolso: '''Bolso Louis
Vuitton + 1 Locion''',
              symbol: '\$',
              priceOriginal: 130.000,
              priceDescuento: '\$110.000',
              promotion: Price(price: '15%'),
            ),
            Spacer(),
            BolsosPromotion(
              imageBolso: 'assets/images/bolso_dior_billetera_promo_+1locion_110.jpg',
              imageBolso2: 'assets/images/bolso_dior_billetera_promo_+1locion_110.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameBolso: '''Bolso Dior +
Billetera + 1 Locion''',
              symbol: '\$',
              priceOriginal: 138.000,
              priceDescuento: '\$110.000',
              promotion: Price(price: '20%'),
            ),
            Spacer(),*/
          ],
        ),
        const SizedBox(height: 20),
        //TODO: TERCER ROW DE BOLSOS + ACCESORIOS
        const Row(
          children: [/*
            Spacer(),
            BolsosPromotion(
              imageBolso: 'assets/images/cartera_ch_promo_+1locion_35.jpg',
              imageBolso2: 'assets/images/cartera_2.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameBolso: '''Cartera CH 
+ 1 Locion''',
              symbol: '\$',
              priceOriginal: 45.000,
              priceDescuento: '\$35.000',
              promotion: Price(price: '22%'),
            ),
            Spacer(),
            BolsosPromotion(
              imageBolso: 'assets/images/porta_celular_mk_85.jpg',
              imageBolso2: 'assets/images/porta_celular_mk_85.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameBolso: '''Porta Celular
Michael Kors''',
              symbol: '\$',
              priceOriginal: 100.000,
              priceDescuento: '\$85.000',
              promotion: Price(price: '15%'),
            ),
            Spacer(),
            BolsosPromotion(
              imageBolso: 'assets/images/portacelular_fashion_75.jpg',
              imageBolso2: 'assets/images/portacelular_fashion_75.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameBolso: '''Porta Celular
Fashion''',
              symbol: '\$',
              priceOriginal: 95.000,
              priceDescuento: '\$75.000',
              promotion: Price(price: '21%'),
            ),
            Spacer(),
            BolsosPromotion(
              imageBolso: 'assets/images/riñonera_louis_vuitton_promo_+1locion_100.jpg',
              imageBolso2: 'assets/images/riñonera_louis_vuitton_promo_+1locion_100.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameBolso: '''Riñonera Louis
Vuitton + 1 Locion''',
              symbol: '\$',
              priceOriginal: 115.000,
              priceDescuento: '\$100.000',
              promotion: Price(price: '13%'),
            ),
            Spacer(),*/
          ],
        ),
        const SizedBox(height: 20),
        //
      ],
    );
  }
}