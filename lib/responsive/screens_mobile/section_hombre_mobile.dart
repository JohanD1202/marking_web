import 'package:marking_web/exports.dart';
import 'package:marking_web/presentation/screens/widgets_lociones.dart';
import 'package:marking_web/responsive/screens_mobile/widgets_mobile.dart';


class SectionHombreMobile extends StatefulWidget {
  // ignore: use_super_parameters
  const SectionHombreMobile({Key? key}) : super (key: key);

  @override
  State<SectionHombreMobile> createState() => _SectionHombreMobileState();
}

class _SectionHombreMobileState extends State<SectionHombreMobile> {

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
            LocionMobile(
              imageLocion: 'assets/images/aroma_1.jpg',
              imageLocion2: 'assets/images/aroma_2.jpg',
              imageHeight: 277.5,
              imageWidth: 180,
              nameLocion: 'Moschino Toy Boy',
              symbol: '\$',
              priceOriginal: 14.000,
            ),
            Spacer(),
            //if (selectedProduct != null)
            LocionMobile(
              imageLocion: 'assets/images/aroma_6.jpg',
              imageLocion2: 'assets/images/aroma_3.jpg',
              imageHeight: 277.5,
              imageWidth: 180,
              nameLocion: 'Fahrenheit',
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
            LocionMobile(
              imageLocion: 'assets/images/locion_7.jpg',
              imageLocion2: 'assets/images/aroma_1.jpg',
              imageHeight: 277.5,
              imageWidth: 180,
              nameLocion: 'L \'Aventure',
              symbol: '\$',
              priceOriginal: 14.000,
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/locion_10.jpg',
              imageLocion2: 'assets/images/aroma_1.jpg',
              imageHeight: 277.5,
              imageWidth: 180,
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
            LocionMobile(
              imageLocion: 'assets/images/locion_7.jpg',
              imageLocion2: 'assets/images/aroma_1.jpg',
              imageHeight: 277.5,
              imageWidth: 180,
              nameLocion: 'L \'Aventure',
              symbol: '\$',
              priceOriginal: 14.000,
            ),
            Spacer(),
            LocionMobile(
              imageLocion: 'assets/images/locion_10.jpg',
              imageLocion2: 'assets/images/aroma_1.jpg',
              imageHeight: 277.5,
              imageWidth: 180,
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
            
          ],
        ),
        SizedBox(height: 20),
        //TODO: QUINTO ROW DE LOCIONES DE HOMBRE
        Row(
          children: [
            
          ],
        ),
      ],
    );
  }
}