import 'package:marking_web/exports.dart';
import 'package:marking_web/presentation/widgets/style_button.dart';
import 'package:marking_web/responsive/screens_mobile/widgets_mobile.dart';


class GuiaAromas extends StatelessWidget {

  // ignore: use_super_parameters
  const GuiaAromas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 1.35,
      width: size.width * 1,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SearchhBarMobile(),
                          const SizedBox(height: 30),
                          Text('Bienvenido a Nuestra Guía de Aromas',
                              style: styleText3),
                          const SizedBox(height: 20),
                          const Text(TextAromasGuide2.aromasGuideText,
                              style: TextStyle(
                                  fontSize: 18,))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Aromas500(
                    title: 'Yara - Lattafa',
                    description: '''
Yara de Lattafa Perfumes es una fragancia de la familia olfativa Ámbar Vainilla para Mujeres. Yara se lanzó en 2020. Su
longevidad y su estela son moderadas. Es un aroma Femenino.
''',
                    imageLocion: 'assets/images/yara_lattafa.jpg',
                    imageNotaSalida: 'assets/images/orquidea.jpg',
                    textNotaSalida: 'Orquídea',
                    imageNotaSalida2: 'assets/images/heliotropo.jpg',
                    textNotaSalida2: 'Heliotropo',
                    imageNotaSalida3: 'assets/images/naranja_tangerina.jpg',
                    textNotaSalida3: '''Naranja
Tangerina''',
                    imageCorazon: 'assets/images/acuerdo_goloso.jpg',
                    textCorazon: '''Acuerdo
Goloso''',
                    imageCorazon2: 'assets/images/frutas_tropicales.jpg',
                    textCorazon2: '''Frutas
Tropicales''',
                    imageBase: 'assets/images/vainilla.jpg',
                    textBase: 'Vainilla',
                    imageBase2: 'assets/images/almizcle.jpg',
                    textBase2: 'Almizcle',
                    imageBase3: 'assets/images/sandalo.jpg',
                    textBase3: 'Sándalo',
                    containerWidth: 230,
                    containerColor: Color.fromRGBO(238, 54, 59, 1),
                    colorText: Colors.white,
                    text: 'dulce',
                    containerWidth2: 225,
                    containerColor2: Color.fromRGBO(255, 254, 193, 1),
                    colorText2: Colors.black,
                    text2: 'avainillado',
                    containerWidth3: 215,
                    containerColor3: Color.fromRGBO(239, 223, 207, 1),
                    colorText3: Colors.black,
                    text3: 'atalcado',
                    containerWidth4: 150,
                    containerColor4: Color.fromRGBO(249, 200, 87, 1),
                    colorText4: Colors.black54,
                    text4: 'tropical',
                    containerWidth5: 145,
                    containerColor5: Color.fromRGBO(239, 229, 241, 1),
                    colorText5: Colors.black54,
                    text5: 'almizclado',
                    containerWidth6: 145,
                    containerColor6: Color.fromRGBO(253, 135, 113, 1),
                    colorText6: Colors.black54,
                    text6: 'afrutados',
                    containerWidth7: 130,
                    containerColor7: Color.fromRGBO(255, 156, 185, 1),
                    colorText7: Colors.black54,
                    text7: 'florales',
                    containerWidth8: 110,
                    containerColor8: Color.fromRGBO(251, 255, 163, 1),
                    colorText8: Colors.black45,
                    text8: 'cítrico',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


class Aromas500 extends StatelessWidget {
  final String title;
  final String description;
  final String imageLocion;
  final String imageNotaSalida;
  final String textNotaSalida;
  final String? imageNotaSalida2;
  final String? textNotaSalida2;
  final String? imageNotaSalida3;
  final String? textNotaSalida3;
  final String? imageNotaSalida4;
  final String? textNotaSalida4;
  final String? imageNotaSalida5;
  final String? textNotaSalida5;
  final String? imageNotaSalida6;
  final String? textNotaSalida6;
  final String? imageNotaSalida7;
  final String? textNotaSalida7;
  final String? imageNotaSalida8;
  final String? textNotaSalida8;
  final String imageCorazon;
  final String textCorazon;
  final String? imageCorazon2;
  final String? textCorazon2;
  final String? imageCorazon3;
  final String? textCorazon3;
  final String? imageCorazon4;
  final String? textCorazon4;
  final String? imageCorazon5;
  final String? textCorazon5;
  final String? imageCorazon6;
  final String? textCorazon6;
  final String? imageCorazon7;
  final String? textCorazon7;
  final String? imageCorazon8;
  final String? textCorazon8;
  final String? imageCorazon9;
  final String? textCorazon9;
  final String? imageCorazon10;
  final String? textCorazon10;
  final String? imageCorazon11;
  final String? textCorazon11;
  final String? imageCorazon12;
  final String? textCorazon12;
  final String? imageCorazon13;
  final String? textCorazon13;
  final String imageBase;
  final String textBase;
  final String? imageBase2;
  final String? textBase2;
  final String? imageBase3;
  final String? textBase3;
  final String? imageBase4;
  final String? textBase4;
  final String? imageBase5;
  final String? textBase5;
  final String? imageBase6;
  final String? textBase6;
  final String? imageBase7;
  final String? textBase7;
  final String? imageBase8;
  final String? textBase8;
  final double containerWidth;
  final Color? containerColor;
  final Color colorText;
  final String text;
  final double containerWidth2;
  final Color? containerColor2;
  final Color colorText2;
  final String text2;
  final double containerWidth3;
  final Color? containerColor3;
  final Color colorText3;
  final String text3;
  final double? containerWidth4;
  final Color? containerColor4;
  final Color? colorText4;
  final String? text4;
  final double? containerWidth5;
  final Color? containerColor5;
  final Color? colorText5;
  final String? text5;
  final double? containerWidth6;
  final Color? containerColor6;
  final Color? colorText6;
  final String? text6;
  final double? containerWidth7;
  final Color? containerColor7;
  final Color? colorText7;
  final String? text7;
  final double? containerWidth8;
  final Color? containerColor8;
  final Color? colorText8;
  final String? text8;
  final double? containerWidth9;
  final Color? containerColor9;
  final Color? colorText9;
  final String? text9;
  final double? containerWidth10;
  final Color? containerColor10;
  final Color? colorText10;
  final String? text10;

  // ignore: use_super_parameters
  const Aromas500({
    Key? key,
    required this.title,
    required this.description,
    required this.imageLocion,
    required this.imageNotaSalida,
    required this.textNotaSalida,
    this.imageNotaSalida2,
    this.textNotaSalida2,
    this.imageNotaSalida3,
    this.textNotaSalida3,
    this.imageNotaSalida4,
    this.textNotaSalida4,
    this.imageNotaSalida5,
    this.textNotaSalida5,
    this.imageNotaSalida6,
    this.textNotaSalida6,
    this.imageNotaSalida7,
    this.textNotaSalida7,
    this.imageNotaSalida8,
    this.textNotaSalida8,
    required this.imageCorazon,
    required this.textCorazon,
    this.imageCorazon2,
    this.textCorazon2,
    this.imageCorazon3,
    this.textCorazon3,
    this.imageCorazon4,
    this.textCorazon4,
    this.imageCorazon5,
    this.textCorazon5,
    this.imageCorazon6,
    this.textCorazon6,
    this.imageCorazon7,
    this.textCorazon7,
    this.imageCorazon8,
    this.textCorazon8,
    this.imageCorazon9,
    this.textCorazon9,
    this.imageCorazon10,
    this.textCorazon10,
    this.imageCorazon11,
    this.textCorazon11,
    this.imageCorazon12,
    this.textCorazon12,
    this.imageCorazon13,
    this.textCorazon13,
    required this.imageBase,
    required this.textBase,
    this.imageBase2,
    this.textBase2,
    this.imageBase3,
    this.textBase3,
    this.imageBase4,
    this.textBase4,
    this.imageBase5,
    this.textBase5,
    this.imageBase6,
    this.textBase6,
    this.imageBase7,
    this.textBase7,
    this.imageBase8,
    this.textBase8,
    required this.containerWidth,
    required this.containerColor,
    required this.colorText,
    required this.text,
    required this.containerWidth2,
    required this.containerColor2,
    required this.colorText2,
    required this.text2,
    required this.containerWidth3,
    required this.containerColor3,
    required this.colorText3,
    required this.text3,
    this.containerWidth4,
    this.containerColor4,
    this.colorText4,
    this.text4,
    this.containerWidth5,
    this.containerColor5,
    this.colorText5,
    this.text5,
    this.containerWidth6,
    this.containerColor6,
    this.colorText6,
    this.text6,
    this.containerWidth7,
    this.containerColor7,
    this.colorText7,
    this.text7,
    this.containerWidth8,
    this.containerColor8,
    this.colorText8,
    this.text8,
    this.containerWidth9,
    this.containerColor9,
    this.colorText9,
    this.text9,
    this.containerWidth10,
    this.containerColor10,
    this.colorText10,
    this.text10,
  }) : super(key: key);
//TODO:
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Text(title, style: styleText3),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Text(description, style: styleTextLocion100),
        ),
        //TODO:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Text('Notas de Salida:', style: styleTextLocion20),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Aromas2(
                  image: imageNotaSalida,
                  text: textNotaSalida,
                  padding: const EdgeInsets.only(left: 60, right: 20),
                ),
                if (imageNotaSalida2 != null && textNotaSalida2 != null)
                  Aromas2(
                    image: imageNotaSalida2!,
                    text: textNotaSalida2!,
                    padding: const EdgeInsets.only(right: 20),
                  ),
                if (imageNotaSalida3 != null && textNotaSalida3 != null)
                  Aromas2(
                    image: imageNotaSalida3!,
                    text: textNotaSalida3!,
                    padding: const EdgeInsets.only(right: 20),
                  ),
                if (imageNotaSalida4 != null && textNotaSalida4 != null)
                  Aromas2(
                    image: imageNotaSalida4!,
                    text: textNotaSalida4!,
                    padding: const EdgeInsets.only(right: 20),
                  ),
                if (imageNotaSalida5 != null && textNotaSalida5 != null)
                  Aromas2(
                    image: imageNotaSalida5!,
                    text: textNotaSalida5!,
                    padding: const EdgeInsets.only(right: 0),
                  ),
                
                  //TODO:
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                if (imageNotaSalida6 != null && textNotaSalida6 != null)
                  Aromas2(
                    image: imageNotaSalida6!,
                    text: textNotaSalida6!,
                    padding: const EdgeInsets.only(left: 60, right: 20),
                  ),
                if (imageNotaSalida7 != null && textNotaSalida7 != null)
                  Aromas2(
                    image: imageNotaSalida7!,
                    text: textNotaSalida7!,
                    padding: const EdgeInsets.only(right: 20),
                  ),
                if (imageNotaSalida8 != null && textNotaSalida8 != null)
                  Aromas2(
                    image: imageNotaSalida8!,
                    text: textNotaSalida8!,
                    padding: const EdgeInsets.only(right: 0),
                  ),
              ],
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Text('Corazón:', style: styleTextLocion20),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Aromas2(
                  image: imageCorazon,
                  text: textCorazon,
                  padding: const EdgeInsets.only(left: 60, right: 20),
                ),
                if (imageCorazon2 != null && textCorazon2 != null)
                  Aromas2(
                    image: imageCorazon2!,
                    text: textCorazon2!,
                    padding: const EdgeInsets.only(right: 20),
                  ),
                if (imageCorazon3 != null && textCorazon3 != null)
                  Aromas2(
                    image: imageCorazon3!,
                    text: textCorazon3!,
                    padding: const EdgeInsets.only(right: 20),
                  ),
                if (imageCorazon4 != null && textCorazon4 != null)
                  Aromas2(
                    image: imageCorazon4!,
                    text: textCorazon4!,
                    padding: const EdgeInsets.only(right: 20),
                  ),
                if (imageCorazon5 != null && textCorazon5 != null)
                  Aromas2(
                    image: imageCorazon5!,
                    text: textCorazon5!,
                    padding: const EdgeInsets.only(right: 0),
                  ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                if (imageCorazon6 != null && textCorazon6 != null)
                  Aromas2(
                    image: imageCorazon6!,
                    text: textCorazon6!,
                    padding: const EdgeInsets.only(left: 60, right: 20),
                  ),
                if (imageCorazon7 != null && textCorazon7 != null)
                  Aromas2(
                    image: imageCorazon7!,
                    text: textCorazon7!,
                    padding: const EdgeInsets.only(right: 20),
                  ),
                if (imageCorazon8 != null && textCorazon8 != null)
                  Aromas2(
                    image: imageCorazon8!,
                    text: textCorazon8!,
                    padding: const EdgeInsets.only(right: 20),
                  ),
                if (imageCorazon9 != null && textCorazon9 != null)
                  Aromas2(
                    image: imageCorazon9!,
                    text: textCorazon9!,
                    padding: const EdgeInsets.only(right: 20),
                  ),
                if (imageCorazon10 != null && textCorazon10 != null)
                  Aromas2(
                    image: imageCorazon10!,
                    text: textCorazon10!,
                    padding: const EdgeInsets.only(right: 0),
                  ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                if (imageCorazon11 != null && textCorazon11 != null)
                  Aromas2(
                    image: imageCorazon11!,
                    text: textCorazon11!,
                    padding: const EdgeInsets.only(left: 60, right: 20),
                  ),
                if (imageCorazon12 != null && textCorazon12 != null)
                  Aromas2(
                    image: imageCorazon12!,
                    text: textCorazon12!,
                    padding: const EdgeInsets.only(right: 20),
                  ),
                if (imageCorazon13 != null && textCorazon13 != null)
                  Aromas2(
                    image: imageCorazon13!,
                    text: textCorazon13!,
                    padding: const EdgeInsets.only(right: 0),
                  ),
              ],
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Text('Base:', style: styleTextLocion20),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Aromas2(
                  image: imageBase,
                  text: textBase,
                  padding: const EdgeInsets.only(left: 60, right: 20),
                ),
                if (imageBase2 != null && textBase2 != null)
                  Aromas2(
                    image: imageBase2!,
                    text: textBase2!,
                    padding: const EdgeInsets.only(right: 20),
                  ),
                if (imageBase3 != null && textBase3 != null)
                  Aromas2(
                    image: imageBase3!,
                    text: textBase3!,
                    padding: const EdgeInsets.only(right: 20),
                  ),
                if (imageBase4 != null && textBase4 != null)
                  Aromas2(
                    image: imageBase4!,
                    text: textBase4!,
                    padding: const EdgeInsets.only(right: 20),
                  ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                if (imageBase5 != null && textBase5 != null)
                  Aromas2(
                    image: imageBase5!,
                    text: textBase5!,
                    padding: const EdgeInsets.only(left: 60, right: 20),
                  ),
                if (imageBase6 != null && textBase6 != null)
                  Aromas2(
                    image: imageBase6!,
                    text: textBase6!,
                    padding: const EdgeInsets.only(right: 20),
                  ),
                if (imageBase7 != null && textBase7 != null)
                  Aromas2(
                    image: imageBase7!,
                    text: textBase7!,
                    padding: const EdgeInsets.only(right: 20),
                  ),
                if (imageBase8 != null && textBase8 != null)
                  Aromas2(
                    image: imageBase8!,
                    text: textBase8!,
                    padding: const EdgeInsets.only(right: 0),
                  ),
              ],
            ),
          ],
        ),
        //TODO:
        const SizedBox(height: 30),
        Row(
          children: [
            Image.asset(imageLocion, height: 250, width: 250),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Text('Acordes Principales', style: styleTextLocion),
                ),
                const SizedBox(height: 10),
                MainChords2(
                  containerWidth: containerWidth,
                  containerColor: containerColor,
                  colorText: colorText,
                  text: text,
                ),
                MainChords2(
                  containerWidth: containerWidth2,
                  containerColor: containerColor2,
                  colorText: colorText2,
                  text: text2,
                ),
                MainChords2(
                  containerWidth: containerWidth3,
                  containerColor: containerColor3,
                  colorText: colorText3,
                  text: text3,
                ),
                if (containerWidth4 != null &&
                    containerColor4 != null &&
                    colorText4 != null &&
                    text4 != null)
                  MainChords2(
                    containerWidth: containerWidth4!,
                    containerColor: containerColor4!,
                    colorText: colorText4!,
                    text: text4!,
                  ),
                if (containerWidth5 != null &&
                    containerColor5 != null &&
                    colorText5 != null &&
                    text5 != null)
                  MainChords2(
                    containerWidth: containerWidth5!,
                    containerColor: containerColor5!,
                    colorText: colorText5!,
                    text: text5!,
                  ),
                if (containerWidth6 != null &&
                    containerColor6 != null &&
                    colorText6 != null &&
                    text6 != null)
                  MainChords2(
                    containerWidth: containerWidth6!,
                    containerColor: containerColor6!,
                    colorText: colorText6!,
                    text: text6!,
                  ),
                if (containerWidth7 != null &&
                    containerColor7 != null &&
                    colorText7 != null &&
                    text7 != null)
                  MainChords2(
                    containerWidth: containerWidth7!,
                    containerColor: containerColor7!,
                    colorText: colorText7!,
                    text: text7!,
                  ),
                if (containerWidth8 != null &&
                    containerColor8 != null &&
                    colorText8 != null &&
                    text8 != null)
                  MainChords2(
                    containerWidth: containerWidth8!,
                    containerColor: containerColor8!,
                    colorText: colorText8!,
                    text: text8!,
                  ),
                if (containerWidth9 != null &&
                    containerColor9 != null &&
                    colorText9 != null &&
                    text9 != null)
                  MainChords2(
                    containerWidth: containerWidth9!,
                    containerColor: containerColor9!,
                    colorText: colorText9!,
                    text: text9!,
                  ),
                if (containerWidth10 != null &&
                    containerColor10 != null &&
                    colorText10 != null &&
                    text10 != null)
                  MainChords2(
                    containerWidth: containerWidth10!,
                    containerColor: containerColor10!,
                    colorText: colorText10!,
                    text: text10!,
                  ),
                const SizedBox(height: 30)
              ],
            ),
            const Spacer()
          ],
        ),
        //TODO:
      ],
    );
  }
}

class Aromas2 extends StatelessWidget {

  final String image;
  final String text;
  final EdgeInsets padding;
  // ignore: use_super_parameters
  const Aromas2({
    Key? key, 
    required this.image, 
    required this.text,
    required this.padding
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        children: [
          Image.asset(image, height: 80),
          Text(text, style: styleTextLocion100, maxLines: 2),
        ],
      ),
    );
  }
}





class MainChords2 extends StatelessWidget {

  final double containerWidth;
  final Color? containerColor;
  final Color colorText;
  final String text;
  // ignore: use_super_parameters
  const MainChords2({
    Key? key, 
    required this.containerWidth, 
    required this.containerColor, 
    required this.colorText,
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerWidth,
      height: 20,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: const BorderRadius.horizontal(right: Radius.circular(5))
      ),
      child: Stack(
        children: [
          Row(
            children: [
              const Spacer(),
              Text(text, style: TextStyle(color: colorText, fontSize: 14)),
              const Spacer(),
            ]
          )
        ],
      ),
    );
  }
}