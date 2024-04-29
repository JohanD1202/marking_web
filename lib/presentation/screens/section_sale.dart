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
        const SizedBox(height: 30),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Text('Bolsos', style: styleText3),
            ),
          ],
        ),
        const SizedBox(height: 30),
        //TODO: PRIMER ROW DE BOLSOS
        const Row(
          children: [
            Spacer(),
            BolsosPromotion(
              imageBolso: 'assets/images/bolso_2.jpg',
              imageBolso2: 'assets/images/bolso_3.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameBolso: 'Bolso Dior',
              symbol: '\$',
              priceOriginal: 100.000,
              priceDescuento: '\$80.000',
              promotion: Price(price: '20%'),
            ),
            Spacer(),
            BolsosPromotion(
              imageBolso: 'assets/images/bolso_13.jpg',
              imageBolso2: 'assets/images/bolso_10.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameBolso: 'Bolso Dior',
              symbol: '\$',
              priceOriginal: 100.000,
              priceDescuento: '\$80.000',
              promotion: Price(price: '20%'),
            ),
            Spacer(),
            BolsosPromotion(
              imageBolso: 'assets/images/bolso_25.jpg',
              imageBolso2: 'assets/images/bolso_26.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameBolso: 'Bolso Sencillo',
              symbol: '\$',
              priceOriginal: 100.000,
              priceDescuento: '\$80.000',
              promotion: Price(price: '20%'),
            ),
            Spacer(),
            BolsosPromotion(
              imageBolso: 'assets/images/bolso_13.jpg',
              imageBolso2: 'assets/images/bolso_24.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameBolso: 'Bolso Sencillo',
              symbol: '\$',
              priceOriginal: 100.000,
              priceDescuento: '\$80.000',
              promotion: Price(price: '20%'),
            ),
            Spacer(),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}