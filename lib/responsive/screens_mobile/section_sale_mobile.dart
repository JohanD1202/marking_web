import 'package:marking_web/exports.dart';
import 'package:marking_web/presentation/screens/widgets_lociones.dart';


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
    return const Column(
      children: [
        //TODO: PRIMER ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            LocionPromotion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_2.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'AMETHYST (Unisex)',
              priceOriginal: 17.000,
              priceDescuento: '\$13.000',
              promotion: Price(price: '20%'), 
              symbol: '\$',
            ),
            Spacer(),/*
            LocionPromotion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'AMETHYST (Unisex)',
              priceOriginal: '\$17.000',
              priceDescuento: '\$13.000',
              promotion: Price(price: '20%'),
            ),
            Spacer(),
            LocionPromotion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_3.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'AMETHYST (Unisex)',
              priceOriginal: '\$17.000',
              priceDescuento: '\$13.000',
              promotion: Price(price: '20%'),
            ),
            Spacer(),
            LocionPromotion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_4.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'AMETHYST (Unisex)',
              priceOriginal: '\$17.000',
              priceDescuento: '\$13.000',
              promotion: Price(price: '20%'),
            ),
            Spacer(),*/
          ],
        ),
        SizedBox(height: 20),
        //TODO: SEGUNDO ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),/*
            LocionPromotion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'AMETHYST (Unisex)',
              priceOriginal: '\$17.000',
              priceDescuento: '\$13.000',
              promotion: Price(price: '20%'),
            ),
            Spacer(),
            LocionPromotion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_4.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'AMETHYST (Unisex)',
              priceOriginal: '\$17.000',
              priceDescuento: '\$13.000',
              promotion: Price(price: '20%'),
            ),
            Spacer(),
            LocionPromotion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_3.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'AMETHYST (Unisex)',
              priceOriginal: '\$17.000',
              priceDescuento: '\$13.000',
              promotion: Price(price: '20%'),
            ),
            Spacer(),
            LocionPromotion(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_2.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'AMETHYST (Unisex)',
              priceOriginal: '\$17.000',
              priceDescuento: '\$13.000',
              promotion: Price(price: '20%'),
            ),
            Spacer(),*/
          ],
        ),
        SizedBox(height: 20),
        //TODO: TERCER ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),/*
            BolsosPromotion(
              imageBolso: 'assets/images/bolso_2.jpg',
              imageBolso2: 'assets/images/bolso_3.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameBolso: 'Bolso Dior',
              priceOriginal: '\$100.000',
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
              priceOriginal: '\$100.000',
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
              priceOriginal: '\$100.000',
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
              priceOriginal: '\$100.000',
              priceDescuento: '\$80.000',
              promotion: Price(price: '20%'),
            ),
            Spacer(),*/
          ],
        ),
      ],
    );
  }
}