import 'package:marking_web/exports.dart';
import 'package:marking_web/presentation/screens/widgets_lociones.dart';
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
              imageHeight: 277.5,
              imageWidth: 180,
              nameLocion: 'VIP 212',
              symbol: '\$',
              priceOriginal: 17.000,
              priceDescuento: '\$13.000',
              promotion: Price(price: '20%'), 
            ),
            Spacer(),
            LocionPromotionMobile(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 277.5,
              imageWidth: 180,
              nameLocion: 'Calvin Klein',
              symbol: '\$',
              priceOriginal: 17.000,
              priceDescuento: '\$13.000',
              promotion: Price(price: '20%'),
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
              imageHeight: 277.5,
              imageWidth: 180,
              nameLocion: 'VIP 212',
              symbol: '\$',
              priceOriginal: 17.000,
              priceDescuento: '\$13.000',
              promotion: Price(price: '20%'), 
            ),
            Spacer(),
            LocionPromotionMobile(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 277.5,
              imageWidth: 180,
              nameLocion: 'Calvin Klein',
              symbol: '\$',
              priceOriginal: 17.000,
              priceDescuento: '\$13.000',
              promotion: Price(price: '20%'),
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
              imageHeight: 277.5,
              imageWidth: 180,
              nameLocion: 'VIP 212',
              symbol: '\$',
              priceOriginal: 17.000,
              priceDescuento: '\$13.000',
              promotion: Price(price: '20%'), 
            ),
            Spacer(),
            LocionPromotionMobile(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 277.5,
              imageWidth: 180,
              nameLocion: 'Calvin Klein',
              symbol: '\$',
              priceOriginal: 17.000,
              priceDescuento: '\$13.000',
              promotion: Price(price: '20%'),
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
              imageHeight: 277.5,
              imageWidth: 180,
              nameLocion: 'VIP 212',
              symbol: '\$',
              priceOriginal: 17.000,
              priceDescuento: '\$13.000',
              promotion: Price(price: '20%'), 
            ),
            Spacer(),
            LocionPromotionMobile(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 277.5,
              imageWidth: 180,
              nameLocion: 'Calvin Klein',
              symbol: '\$',
              priceOriginal: 17.000,
              priceDescuento: '\$13.000',
              promotion: Price(price: '20%'),
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
              imageHeight: 277.5,
              imageWidth: 180,
              nameLocion: 'VIP 212',
              symbol: '\$',
              priceOriginal: 17.000,
              priceDescuento: '\$13.000',
              promotion: Price(price: '20%'), 
            ),
            Spacer(),
            LocionPromotionMobile(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_5.jpg',
              imageHeight: 277.5,
              imageWidth: 180,
              nameLocion: 'Calvin Klein',
              symbol: '\$',
              priceOriginal: 17.000,
              priceDescuento: '\$13.000',
              promotion: Price(price: '20%'),
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
              imageLocion: 'assets/images/bolso_13.jpg',
              imageLocion2: 'assets/images/bolso_10.jpg',
              imageWidth: 180, 
              imageHeight: 277.5, 
              nameLocion: 'Bolso Gucci',
              symbol: '\$',
              priceOriginal: 100.000, 
              priceDescuento: '\$80.000', 
              promotion: Price(price: '20%')
            ),
            Spacer(),
            BolsosPromotionMobile(
              imageLocion: 'assets/images/bolso_25.jpg',
              imageLocion2: 'assets/images/bolso_26.jpg',
              imageWidth: 180, 
              imageHeight: 277.5, 
              nameLocion: 'Bolso Gucci',
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
              imageLocion: 'assets/images/bolso_2.jpg',
              imageLocion2: 'assets/images/bolso_3.jpg',
              imageWidth: 180, 
              imageHeight: 277.5, 
              nameLocion: 'Bolso Gucci',
              symbol: '\$',
              priceOriginal: 100.000, 
              priceDescuento: '\$80.000', 
              promotion: Price(price: '20%')
            ),
            Spacer(),
            BolsosPromotionMobile(
              imageLocion: 'assets/images/bolso_13.jpg',
              imageLocion2: 'assets/images/bolso_24.jpg',
              imageWidth: 180, 
              imageHeight: 277.5, 
              nameLocion: 'Bolso Gucci',
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