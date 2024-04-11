import 'package:marking_web/exports.dart';
import 'package:marking_web/presentation/screens/widgets_lociones.dart';


class SectionHombre extends StatefulWidget {
  // ignore: use_super_parameters
  const SectionHombre({Key? key}) : super (key: key);

  @override
  State<SectionHombre> createState() => _SectionHombreState();
}

class _SectionHombreState extends State<SectionHombre> {

  Locion? selectedProduct;

  void selectProduct(Locion product) {
    setState(() {
      selectedProduct = product;
    });
  }

  //Cart myCart = Cart();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        //TODO: PRIMER ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            //if (selectedProduct == null)
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
            //if (selectedProduct != null)
            
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
              priceOriginal: 17.000,
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
        SizedBox(height: 20),
        //TODO: SEGUNDO ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            Locion(
              imageLocion: 'assets/images/locion_4.jpg',
              imageLocion2: 'assets/images/aroma_1.jpg',
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
        SizedBox(height: 20),
        //TODO: TERCER ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            Locion(
              imageLocion: 'assets/images/locion_4.jpg',
              imageLocion2: 'assets/images/aroma_1.jpg',
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
        SizedBox(height: 20),
        //TODO: CUARTO ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            Locion(
              imageLocion: 'assets/images/locion_4.jpg',
              imageLocion2: 'assets/images/aroma_1.jpg',
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
        SizedBox(height: 20),
        //TODO: QUINTO ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            Locion(
              imageLocion: 'assets/images/locion_4.jpg',
              imageLocion2: 'assets/images/aroma_1.jpg',
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