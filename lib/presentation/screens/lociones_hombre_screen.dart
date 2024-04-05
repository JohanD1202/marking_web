import 'package:marking_web/exports.dart';
import 'package:marking_web/presentation/screens/widgets_lociones.dart';


class LocionesHombreScreen extends StatefulWidget {
  // ignore: use_super_parameters
  const LocionesHombreScreen({Key? key}) : super (key: key);

  @override
  State<LocionesHombreScreen> createState() => _LocionesHombreScreenState();
}

class _LocionesHombreScreenState extends State<LocionesHombreScreen> {

  Cart myCart = Cart();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        //TODO: PRIMER ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            WidgetLocion(
              imageLocion: 'assets/images/locion_4.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Moschino Toy Boy',
              priceOriginal: '\$17.000',
              priceDescuento: '\$13.000',
              promotion: Price(),
            ),
            Spacer(),
            WidgetLocion(
              imageLocion: 'assets/images/locion_5.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Fahrenheit',
              priceOriginal: '\$17.000',
              priceDescuento: '\$13.000',
              promotion: Price(),
            ),
            Spacer(),
            WidgetLocion(
              imageLocion: 'assets/images/locion_7.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'L \'Aventure',
              priceOriginal: '\$17.000',
              priceDescuento: '\$13.000',
              promotion: Price(),
            ),
            Spacer(),
            WidgetLocion(
              imageLocion: 'assets/images/locion_10.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'AMETHYST (Unisex)',
              priceOriginal: '\$17.000',
              priceDescuento: '\$13.000',
              promotion: Price(),
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 20),
        //TODO: SEGUNDO ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            WidgetLocion(
              imageLocion: 'assets/images/locion_4.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Moschino Toy Boy',
              priceOriginal: '\$17.000',
              priceDescuento: '\$13.000',
              promotion: Price(),
            ),
            Spacer(),
            WidgetLocion(
              imageLocion: 'assets/images/locion_5.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Fahrenheit',
              priceOriginal: '\$17.000',
              priceDescuento: '\$13.000',
              promotion: Price(),
            ),
            Spacer(),
            WidgetLocion(
              imageLocion: 'assets/images/locion_7.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'L \'Aventure',
              priceOriginal: '\$17.000',
              priceDescuento: '\$13.000',
              promotion: Price(),
            ),
            Spacer(),
            WidgetLocion(
              imageLocion: 'assets/images/locion_10.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'AMETHYST (Unisex)',
              priceOriginal: '\$17.000',
              priceDescuento: '\$13.000',
              promotion: Price(),
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 20),
        //TODO: TERCER ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            WidgetLocion(
              imageLocion: 'assets/images/locion_4.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Moschino Toy Boy',
              priceOriginal: '\$17.000',
              priceDescuento: '\$13.000',
              promotion: Price(),
            ),
            Spacer(),
            WidgetLocion(
              imageLocion: 'assets/images/locion_5.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Fahrenheit',
              priceOriginal: '\$17.000',
              priceDescuento: '\$13.000',
              promotion: Price(),
            ),
            Spacer(),
            WidgetLocion(
              imageLocion: 'assets/images/locion_7.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'L \'Aventure',
              priceOriginal: '\$17.000',
              priceDescuento: '\$13.000',
              promotion: Price(),
            ),
            Spacer(),
            WidgetLocion(
              imageLocion: 'assets/images/locion_10.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'AMETHYST (Unisex)',
              priceOriginal: '\$17.000',
              priceDescuento: '\$13.000',
              promotion: Price(),
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 20),
        //TODO: CUARTO ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            WidgetLocion(
              imageLocion: 'assets/images/locion_4.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Moschino Toy Boy',
              priceOriginal: '\$17.000',
              priceDescuento: '\$13.000',
              promotion: Price(),
            ),
            Spacer(),
            WidgetLocion(
              imageLocion: 'assets/images/locion_5.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Fahrenheit',
              priceOriginal: '\$17.000',
              priceDescuento: '\$13.000',
              promotion: Price(),
            ),
            Spacer(),
            WidgetLocion(
              imageLocion: 'assets/images/locion_7.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'L \'Aventure',
              priceOriginal: '\$17.000',
              priceDescuento: '\$13.000',
              promotion: Price(),
            ),
            Spacer(),
            WidgetLocion(
              imageLocion: 'assets/images/locion_10.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'AMETHYST (Unisex)',
              priceOriginal: '\$17.000',
              priceDescuento: '\$13.000',
              promotion: Price(),
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 20),
        //TODO: QUINTO ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            Spacer(),
            WidgetLocion(
              imageLocion: 'assets/images/locion_4.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Moschino Toy Boy',
              priceOriginal: '\$17.000',
              priceDescuento: '\$13.000',
              promotion: Price(),
            ),
            Spacer(),
            WidgetLocion(
              imageLocion: 'assets/images/locion_5.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Fahrenheit',
              priceOriginal: '\$17.000',
              priceDescuento: '\$13.000',
              promotion: Price(),
            ),
            Spacer(),
            WidgetLocion(
              imageLocion: 'assets/images/locion_7.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'L \'Aventure',
              priceOriginal: '\$17.000',
              priceDescuento: '\$13.000',
              promotion: Price(),
            ),
            Spacer(),
            WidgetLocion(
              imageLocion: 'assets/images/locion_10.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'AMETHYST (Unisex)',
              priceOriginal: '\$17.000',
              priceDescuento: '\$13.000',
              promotion: Price(),
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 50),
        Row(
          children: [
          ]
        ),
      ],
    );
  }
}