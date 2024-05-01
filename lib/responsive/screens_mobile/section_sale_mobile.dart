import 'package:marking_web/exports.dart';
import 'package:marking_web/responsive/screens_mobile/widgets_mobile.dart';


class SectionSaleMobile extends StatefulWidget {
  // ignore: use_super_parameters
  const SectionSaleMobile({Key? key}) : super (key: key);

  @override
  State<SectionSaleMobile> createState() => _SectionSaleMobileState();
}

class _SectionSaleMobileState extends State<SectionSaleMobile> {

  //Cart myCart = Cart();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //TODO: PRIMER ROW DE LOCIONES DE HOMBRE
        const Row(
          children: [
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
            Spacer(),
          ],
        ),
        const SizedBox(height: 20),
        //TODO: SEGUNDO ROW DE LOCIONES DE HOMBRE
        const Row(
          children: [            
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
            Spacer(),
          ],
        ),
        const SizedBox(height: 20),
        //TODO: TERCER ROW DE LOCIONES DE HOMBRE
        const Row(
          children: [
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
            Spacer(),
          ],
        ),
        const SizedBox(height: 20),
        //TODO: SEGUNDO ROW DE LOCIONES DE MUJER
        const Row(
          children: [
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
            Spacer(),
          ],
        ),
        const SizedBox(height: 25),
        //TODO: PRIMER ROW DE BOLSOS
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text('Bolsos', style: styleText3),
            ),
          ],
        ),
        const SizedBox(height: 25),
        const Row(
          children: [
            Spacer(),
            BolsosPromotionMobile(
              imageBolso: 'assets/images/bolso_13.jpg',
              imageBolso2: 'assets/images/bolso_10.jpg',
              imageHeight: 240, 
              imageWidth: 150, 
              nameBolso: 'Bolso Gucci',
              symbol: '\$',
              priceOriginal: 100.000, 
              priceDescuento: '\$80.000', 
              promotion: Price(price: '20%')
            ),
            Spacer(),
            BolsosPromotionMobile(
              imageBolso: 'assets/images/bolso_25.jpg',
              imageBolso2: 'assets/images/bolso_26.jpg',
              imageHeight: 240, 
              imageWidth: 150, 
              nameBolso: 'Bolso Gucci',
              symbol: '\$',
              priceOriginal: 100.000, 
              priceDescuento: '\$80.000', 
              promotion: Price(price: '20%')
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
              imageBolso: 'assets/images/bolso_2.jpg',
              imageBolso2: 'assets/images/bolso_3.jpg',
              imageHeight: 240, 
              imageWidth: 150, 
              nameBolso: 'Bolso Gucci',
              symbol: '\$',
              priceOriginal: 100.000, 
              priceDescuento: '\$80.000', 
              promotion: Price(price: '20%')
            ),
            Spacer(),
            BolsosPromotionMobile(
              imageBolso: 'assets/images/bolso_13.jpg',
              imageBolso2: 'assets/images/bolso_24.jpg',
              imageHeight: 240, 
              imageWidth: 150, 
              nameBolso: 'Bolso Gucci Strange Behavior',
              symbol: '\$',
              priceOriginal: 100.000, 
              priceDescuento: '\$80.000', 
              promotion: Price(price: '20%')
            ),
            Spacer(),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}