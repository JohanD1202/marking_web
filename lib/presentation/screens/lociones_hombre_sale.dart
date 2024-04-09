import 'package:marking_web/exports.dart';
import 'package:marking_web/presentation/screens/widgets_lociones.dart';


class LocionesHombreSale extends StatefulWidget {
  // ignore: use_super_parameters
  const LocionesHombreSale({Key? key}) : super (key: key);

  @override
  State<LocionesHombreSale> createState() => _LocionesHombreSaleState();
}

class _LocionesHombreSaleState extends State<LocionesHombreSale> {

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
              imageLocion2: 'assets/images/aroma_1.jpg',
              imageHeight: 370,
              imageWidth: 240,
              nameLocion: 'Moschino Toy Boy',
              priceOriginal: '\$17.000',
              priceDescuento: '\$14.000',
              promotion: Price(),
            ),
            Spacer(),
            WidgetLocion(
              imageLocion: 'assets/images/locion_5.jpg',
              imageLocion2: 'assets/images/aroma_1.jpg',
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
              imageLocion2: 'assets/images/aroma_1.jpg',
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
              imageLocion2: 'assets/images/aroma_1.jpg',
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
              imageLocion2: 'assets/images/aroma_1.jpg',
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
              imageLocion2: 'assets/images/aroma_1.jpg',
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
              imageLocion2: 'assets/images/aroma_1.jpg',
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
              imageLocion2: 'assets/images/aroma_1.jpg',
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
              imageLocion2: 'assets/images/aroma_1.jpg',
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
              imageLocion2: 'assets/images/aroma_1.jpg',
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
              imageLocion2: 'assets/images/aroma_1.jpg',
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
              imageLocion2: 'assets/images/aroma_1.jpg',
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
      ],
    );
  }
}