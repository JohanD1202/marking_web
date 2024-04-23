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
        //TODO: PRIMER ROW DE BOLSOS
        const Row(
          children: [
            Spacer(),
            Bolsos(
              imageBolso: 'assets/images/bolso_2.jpg', 
              imageBolso2: 'assets/images/bolso_1.jpg',
              imageWidth: 240, 
              imageHeight: 370, 
              nameBolso: 'Bolso Prada',
              symbol: '\$',
              priceOriginal: 80.000,
            ),
            Spacer(),
            Bolsos(
              imageBolso: 'assets/images/bolso_3.jpg', 
              imageBolso2: 'assets/images/bolso_4.jpg',
              imageWidth: 240, 
              imageHeight: 370, 
              nameBolso: 'Bolso Dior', 
              symbol: '\$', 
              priceOriginal: 80.000,
            ),
            Spacer(),
            Bolsos(
              imageBolso: 'assets/images/bolso_5.jpg', 
              imageBolso2: 'assets/images/bolso_6.jpg',
              imageWidth: 240, 
              imageHeight: 370,
              symbol: '\$', 
              nameBolso: 'Bolso Balenciaga', 
              priceOriginal: 80.000,
            ),
            Spacer(),
            Bolsos(
              imageBolso: 'assets/images/bolso_8.jpg', 
              imageBolso2: 'assets/images/bolso_7.jpg',
              imageWidth: 240, 
              imageHeight: 370, 
              nameBolso: 'Bolso Gucci', 
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
          Bolsos(
            imageBolso: 'assets/images/bolso_9.jpg', 
            imageBolso2: 'assets/images/bolso_2.jpg',
            imageWidth: 240, 
            imageHeight: 370, 
            nameBolso: 'Bolso Prada', 
            symbol: '\$',
            priceOriginal: 80.000,
          ),
          Spacer(),
          Bolsos(
            imageBolso: 'assets/images/bolso_10.jpg', 
            imageBolso2: 'assets/images/bolso_4.jpg',
            imageWidth: 240, 
            imageHeight: 370, 
            nameBolso: 'Bolso Dior', 
            symbol: '\$',
            priceOriginal: 80.000,
          ),
          Spacer(),
          Bolsos(
            imageBolso: 'assets/images/bolso_13.jpg', 
            imageBolso2: 'assets/images/bolso_6.jpg',
            imageWidth: 240, 
            imageHeight: 370, 
            nameBolso: 'Bolso Balenciaga', 
            symbol: '\$',
            priceOriginal: 80.000,
          ),
          Spacer(),
          Bolsos(
            imageBolso: 'assets/images/bolso_24.jpg', 
            imageBolso2: 'assets/images/bolso_8.jpg',
            imageWidth: 240, 
            imageHeight: 370, 
            nameBolso: 'Bolso Gucci', 
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
          Bolsos(
            imageBolso: 'assets/images/bolso_25.jpg', 
            imageBolso2: 'assets/images/bolso_2.jpg',
            imageWidth: 240, 
            imageHeight: 370, 
            nameBolso: 'Bolso Prada',
            symbol: '\$',
            priceOriginal: 80.000,
          ),
          Spacer(),
          Bolsos(
            imageBolso: 'assets/images/bolso_26.jpg', 
            imageBolso2: 'assets/images/bolso_4.jpg',
            imageWidth: 240, 
            imageHeight: 370, 
            nameBolso: 'Bolso Dior',
            symbol: '\$',
            priceOriginal: 80.000,
          ),
          Spacer(),
          Bolsos(
            imageBolso: 'assets/images/bolso_27.jpg', 
            imageBolso2: 'assets/images/bolso_6.jpg',
            imageWidth: 240, 
            imageHeight: 370, 
            nameBolso: 'Bolso Balenciaga', 
            symbol: '\$',
            priceOriginal: 80.000,
          ),
          Spacer(),
          Bolsos(
            imageBolso: 'assets/images/bolso_28.jpg', 
            imageBolso2: 'assets/images/bolso_8.jpg',
            imageWidth: 240, 
            imageHeight: 370, 
            nameBolso: 'Bolso Gucci',
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
            Bolsos(
              imageBolso: 'assets/images/bolso_1.jpg', 
              imageBolso2: 'assets/images/bolso_2.jpg',
              imageWidth: 240, 
              imageHeight: 370, 
              nameBolso: 'Bolso Prada',
              symbol: '\$',
              priceOriginal: 80.000,
            ),
            Spacer(),
            Bolsos(
              imageBolso: 'assets/images/bolso_3.jpg', 
              imageBolso2: 'assets/images/bolso_4.jpg',
              imageWidth: 240, 
              imageHeight: 370, 
              nameBolso: 'Bolso Dior', 
              symbol: '\$',
              priceOriginal: 80.000,
            ),
            Spacer(),
            Bolsos(
              imageBolso: 'assets/images/bolso_5.jpg', 
              imageBolso2: 'assets/images/bolso_6.jpg',
              imageWidth: 240, 
              imageHeight: 370, 
              nameBolso: 'Bolso Balenciaga', 
              symbol: '\$',
              priceOriginal: 80.000,
            ),
            Spacer(),
            Bolsos(
              imageBolso: 'assets/images/bolso_7.jpg', 
              imageBolso2: 'assets/images/bolso_8.jpg',
              imageWidth: 240, 
              imageHeight: 370, 
              nameBolso: 'Bolso Gucci',
              symbol: '\$',
              priceOriginal: 80.000,
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
            Locion(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_2.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Moschino Toy Boy',
              symbol: '\$',
              priceOriginal: 14.000,
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/locion_5.jpg',
              imageLocion2: 'assets/images/aroma_1.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Fahrenheit',
              symbol: '\$',
              priceOriginal: 14.000,
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/locion_7.jpg',
              imageLocion2: 'assets/images/aroma_1.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'L \'Aventure',
              symbol: '\$',
              priceOriginal: 14.000,
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/locion_10.jpg',
              imageLocion2: 'assets/images/aroma_1.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'AMETHYST (Unisex)',
              symbol: '\$',
              priceOriginal: 14.000,
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
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_2.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Moschino Toy Boy',
              symbol: '\$',
              priceOriginal: 14.000,
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/locion_5.jpg',
              imageLocion2: 'assets/images/aroma_1.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Fahrenheit',
              symbol: '\$',
              priceOriginal: 14.000,
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/locion_7.jpg',
              imageLocion2: 'assets/images/aroma_1.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'L \'Aventure',
              symbol: '\$',
              priceOriginal: 14.000,
            ),
            Spacer(),
            Locion(
              imageLocion: 'assets/images/locion_10.jpg',
              imageLocion2: 'assets/images/aroma_1.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'AMETHYST (Unisex)',
              symbol: '\$',
              priceOriginal: 14.000,
            ),
            Spacer(),
          ],
        ),
      ],
    );
  }
}