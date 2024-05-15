import 'package:marking_web/exports.dart';
import 'package:marking_web/responsive/screens_mobile/widgets_mobile.dart';

class GuiaAromasMobile extends StatelessWidget {
  // ignore: use_super_parameters
  const GuiaAromasMobile({Key? key}) : super(key: key);

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
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Bienvenido a Nuestra Guía de Aromas',
                              style: styleText3Mobile),
                          const SizedBox(height: 15),
                          const Text(TextAromasGuide.aromasGuideText,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text('Yara - Lattafa', style: styleText3Mobile),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text('''
Yara de Lattafa Perfumes es una fragancia de la 
Familia olfativa Ámbar Vainilla para Mujeres. 
Yara se lanzó en 2020. 
Su longevidad y su estela son moderadas. 
Es un aroma Femenino.
''', style: styleTextLocion),
                  ),
                  //TODO:
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text('Notas de Salida:', style: styleTextLocion2),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Aromas(
                        image: 'assets/images/orquidea.jpg',
                        text: 'Orquídea',
                        padding: EdgeInsets.only(left: 30, right: 15),
                      ),
                      Aromas(
                        image: 'assets/images/heliotropo.jpg',
                        text: 'Heliotropo',
                        padding: EdgeInsets.only(right: 15),
                      ),
                      Aromas(
                        image: 'assets/images/naranja_tangerina.jpg',
                        text: 'Naranja Tangerina',
                        padding: EdgeInsets.only(right: 0),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text('Corazón:', style: styleTextLocion2),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Aromas(
                        image: 'assets/images/acuerdo_goloso.jpg',
                        text: 'Acuerdo Goloso',
                        padding: EdgeInsets.only(left: 30, right: 15),
                      ),
                      Aromas(
                        image: 'assets/images/frutas_tropicales.jpg',
                        text: 'Frutas Tropicales',
                        padding: EdgeInsets.only(right: 15),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text('Base:', style: styleTextLocion2),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Aromas(
                        image: 'assets/images/vainilla.jpg',
                        text: 'Vainilla',
                        padding: EdgeInsets.only(left: 30, right: 15),
                      ),
                      Aromas(
                        image: 'assets/images/almizcle.jpg',
                        text: 'Almizcle',
                        padding: EdgeInsets.only(right: 15),
                      ),
                      Aromas(
                        image: 'assets/images/sandalo.jpg',
                        text: 'Sándalo',
                        padding: EdgeInsets.only(right: 0),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Image.asset('assets/images/yara_lattafa.jpg',
                          height: 190, width: 190),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: Text('Acordes Principales',
                                style: styleTextLocion),
                          ),
                          const SizedBox(height: 10),
                          const MainChords(
                            containerWidth: 230,
                            containerColor: Colors.red,
                            colorText: Colors.white,
                            text: 'dulce',
                          ),
                          MainChords(
                            containerWidth: 220,
                            containerColor: Colors.yellow[200],
                            colorText: Colors.black,
                            text: 'avainillado',
                          ),
                          MainChords(
                            containerWidth: 210,
                            containerColor: Colors.grey[200],
                            colorText: Colors.black,
                            text: 'atalcado',
                          ),
                          MainChords(
                            containerWidth: 140,
                            containerColor: Colors.orange[400],
                            colorText: Colors.black54,
                            text: 'tropical',
                          ),
                          MainChords(
                            containerWidth: 130,
                            containerColor: Colors.red[400],
                            colorText: Colors.black54,
                            text: 'afrutados',
                          ),
                          MainChords(
                            containerWidth: 130,
                            containerColor: Colors.grey[200],
                            colorText: Colors.black54,
                            text: 'almizclado',
                          ),
                          MainChords(
                            containerWidth: 120,
                            containerColor: Colors.pink[400],
                            colorText: Colors.black54,
                            text: 'florales',
                          ),
                          MainChords(
                            containerWidth: 100,
                            containerColor: Colors.orange[200],
                            colorText: Colors.black54,
                            text: 'cítrico',
                          ),
                          const SizedBox(height: 30)
                        ],
                      ),
                      const Spacer(),
                    ],
                  ),
                  //TODO:
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text('Ombre Nomade - Louis Vuitton',
                        style: styleText3Mobile),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text('''
Ombre Nomade de Louis Vuitton es una fragancia
de la familia olfativa Ámbar Amaderada para
Hombres. Ombre Nomade se lanzó en 2018.
Tiene una longevidad muy duradera y su
estela es enorme. Es un aroma Masculino.
''', style: styleTextLocion),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text('Notas de Fragancia:', style: styleTextLocion2),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Aromas(
                        image: 'assets/images/madera_de_oud.jpg',
                        text: 'Madera de Oud',
                        padding: EdgeInsets.only(left: 30, right: 15),
                      ),
                      Aromas(
                        image: 'assets/images/incienso.jpg',
                        text: 'Incienso',
                        padding: EdgeInsets.only(right: 15),
                      ),
                      Aromas(
                        image: 'assets/images/rosa.jpg',
                        text: 'Rosa',
                        padding: EdgeInsets.only(right: 15),
                      ),
                      Aromas(
                        image: 'assets/images/frambuesa.jpg',
                        text: 'Frambuesa',
                        padding: EdgeInsets.only(right: 0),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Aromas(
                        image: 'assets/images/azafran.jpg',
                        text: 'Azafrán',
                        padding: EdgeInsets.only(left: 30, right: 15),
                      ),
                      Aromas(
                        image: 'assets/images/amberwood.jpg',
                        text: 'Amberwood',
                        padding: EdgeInsets.only(right: 15),
                      ),
                      Aromas(
                        image: 'assets/images/benjui.jpg',
                        text: 'Benjuí',
                        padding: EdgeInsets.only(right: 15),
                      ),
                      Aromas(
                        image: 'assets/images/abedul.jpg',
                        text: 'Abedul',
                        padding: EdgeInsets.only(right: 15),
                      ),
                      Aromas(
                        image: 'assets/images/geranio.jpg',
                        text: 'Geranio',
                        padding: EdgeInsets.only(right: 0),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Image.asset(
                          'assets/images/ombre_nomade_louis_vuitton.webp',
                          height: 190,
                          width: 190),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: Text('Acordes Principales',
                                style: styleTextLocion),
                          ),
                          const SizedBox(height: 10),
                          const MainChords(
                            containerWidth: 230,
                            containerColor: Color.fromRGBO(188, 77, 16, 1),
                            colorText: Colors.white,
                            text: 'ámbar',
                          ),
                          const MainChords(
                            containerWidth: 200,
                            containerColor: Color.fromRGBO(107, 91, 82, 1),
                            colorText: Colors.white,
                            text: 'oud',
                          ),
                          const MainChords(
                            containerWidth: 190,
                            containerColor: Color.fromRGBO(213, 88, 46, 1),
                            colorText: Colors.white,
                            text: 'cálido especiado',
                          ),
                          const MainChords(
                            containerWidth: 180,
                            containerColor: Color.fromRGBO(158, 147, 162, 1),
                            colorText: Colors.white70,
                            text: 'ahumado',
                          ),
                          const MainChords(
                            containerWidth: 180,
                            containerColor: Color.fromRGBO(254, 61, 142, 1),
                            colorText: Colors.white70,
                            text: 'rosas',
                          ),
                          const MainChords(
                            containerWidth: 150,
                            containerColor: Color.fromRGBO(253, 140, 119, 1),
                            colorText: Colors.black87,
                            text: 'afrutados',
                          ),
                          const MainChords(
                            containerWidth: 150,
                            containerColor: Color.fromRGBO(170, 138, 108, 1),
                            colorText: Colors.white70,
                            text: 'amaderado',
                          ),
                          const MainChords(
                            containerWidth: 150,
                            containerColor: Color.fromRGBO(171, 141, 132, 1),
                            colorText: Colors.white70,
                            text: 'cuero',
                          ),
                          const MainChords(
                            containerWidth: 140,
                            containerColor: Color.fromRGBO(206, 182, 157, 1),
                            colorText: Colors.black87,
                            text: 'balsámico',
                          ),
                          const MainChords(
                            containerWidth: 130,
                            containerColor: Color.fromRGBO(245, 141, 144, 1),
                            colorText: Colors.white70,
                            text: 'dulce',
                          ),
                          const SizedBox(height: 30)
                        ],
                      ),
                      const Spacer(),
                    ],
                  ),
                  //TODO:
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text('Bade\'e Al Oud Amethyst - Lattafa',
                        style: styleText3Mobile),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text('''
Bade'e Al Oud Amethyst de Lattafa Perfumes
es una fragancia de la familia olfativa
Ámbar Vainilla para Hombres y Mujeres.
Bade'e Al Oud Amethyst se lanzó en 2021.
Tiene una longevidad duradera y
su estela es pesada. Es un aroma Unisex.
''', style: styleTextLocion),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text('Notas de Salida:', style: styleTextLocion2),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Aromas(
                        image: 'assets/images/pimienta_rosa.jpg',
                        text: 'Pimienta Rosa',
                        padding: EdgeInsets.only(left: 30, right: 15),
                      ),
                      Aromas(
                        image: 'assets/images/bergamota.jpg',
                        text: 'Bergamota',
                        padding: EdgeInsets.only(right: 0),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text('Corazón:', style: styleTextLocion2),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Aromas(
                        image: 'assets/images/rosa.jpg',
                        text: 'Rosa Turca',
                        padding: EdgeInsets.only(left: 30, right: 15),
                      ),
                      Aromas(
                        image: 'assets/images/rosa.jpg',
                        text: 'Rosa de Bulgaria',
                        padding: EdgeInsets.only(right: 15),
                      ),
                      Aromas(
                        image: 'assets/images/jazmin.jpg',
                        text: 'Jazmín',
                        padding: EdgeInsets.only(right: 15),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text('Base:', style: styleTextLocion2),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Aromas(
                        image: 'assets/images/madera_de_oud.jpg',
                        text: 'Madera de Oud',
                        padding: EdgeInsets.only(left: 30, right: 15),
                      ),
                      Aromas(
                        image: 'assets/images/ambar.jpg',
                        text: 'Ámbar',
                        padding: EdgeInsets.only(right: 0),
                      ),
                      Aromas(
                        image: 'assets/images/vainilla.jpg',
                        text: 'Vainilla',
                        padding: EdgeInsets.only(left: 30, right: 15),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Image.asset('assets/images/amethyst_lattafa.webp',
                          height: 190, width: 190),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: Text('Acordes Principales',
                                style: styleTextLocion),
                          ),
                          const SizedBox(height: 10),
                          const MainChords(
                            containerWidth: 230,
                            containerColor: Color.fromRGBO(254, 1, 107, 1),
                            colorText: Colors.white,
                            text: 'rosas',
                          ),
                          const MainChords(
                            containerWidth: 200,
                            containerColor: Color.fromRGBO(110, 94, 85, 1),
                            colorText: Colors.white,
                            text: 'oud',
                          ),
                          const MainChords(
                            containerWidth: 160,
                            containerColor: Color.fromRGBO(211, 139, 99, 1),
                            colorText: Colors.white70,
                            text: 'ámbar',
                          ),
                          const MainChords(
                            containerWidth: 160,
                            containerColor: Color.fromRGBO(236, 166, 142, 1),
                            colorText: Colors.black54,
                            text: 'especiado suave',
                          ),
                          const MainChords(
                            containerWidth: 155,
                            containerColor: Color.fromRGBO(255, 155, 184, 1),
                            colorText: Colors.black54,
                            text: 'florales',
                          ),
                          const MainChords(
                            containerWidth: 155,
                            containerColor: Color.fromRGBO(255, 254, 216, 1),
                            colorText: Colors.black54,
                            text: 'avainillado',
                          ),
                          const MainChords(
                            containerWidth: 145,
                            containerColor: Color.fromRGBO(251, 255, 153, 1),
                            colorText: Colors.black54,
                            text: 'cítrico',
                          ),
                          const MainChords(
                            containerWidth: 140,
                            containerColor: Color.fromRGBO(184, 224, 132, 1),
                            colorText: Colors.black54,
                            text: 'fresco especiado',
                          ),
                          const MainChords(
                            containerWidth: 135,
                            containerColor: Color.fromRGBO(245, 247, 252, 1),
                            colorText: Colors.black54,
                            text: 'floral blanco',
                          ),
                          const SizedBox(height: 30)
                        ],
                      ),
                      const Spacer()
                    ],
                  ),
                  //TODO:
                  const Aromas100(
                    title: 'Oud For Greatness - Initio',
                    description: '''
Oud for Greatness de Initio Parfums Prives es una
fragancia de la familia olfativa para Hombres y
Mujeres. Oud for Greatness se lanzó en 2018.
Tiene una longevidad muy duradera y su
estela es pesada. Es un aroma Unisex.
''',
                    imageLocion: 'assets/images/oud_for_greatness_initio.jpg',
                    imageNotaSalida: 'assets/images/azafran.jpg',
                    textNotaSalida: 'Azafrán',
                    imageNotaSalida2: 'assets/images/nuez_moscada.jpg',
                    textNotaSalida2: 'Nuez Moscada',
                    imageNotaSalida3: 'assets/images/lavanda.jpg',
                    textNotaSalida3: 'Lavanda',
                    imageCorazon: 'assets/images/madera_de_oud.jpg',
                    textCorazon: 'Madera de Oud',
                    imageBase: 'assets/images/pachuli.jpg',
                    textBase: 'Pachulí',
                    imageBase2: 'assets/images/almizcle.jpg',
                    textBase2: 'Almizcle',
                    containerWidth: 230,
                    containerColor: Color.fromRGBO(204, 51, 0, 1),
                    colorText: Colors.white,
                    text: 'cálido especiado',
                    containerWidth2: 220,
                    containerColor2: Color.fromRGBO(138, 204, 53, 1),
                    colorText2: Colors.black,
                    text2: 'fresco especiado',
                    containerWidth3: 215,
                    containerColor3: Color.fromRGBO(97, 79, 69, 1),
                    colorText3: Colors.white,
                    text3: 'oud',
                    containerWidth4: 160,
                    containerColor4: Color.fromRGBO(238, 221, 241, 1),
                    colorText4: Colors.black54,
                    text4: 'lavanda',
                    containerWidth5: 155,
                    containerColor5: Color.fromRGBO(185, 201, 206, 1),
                    colorText5: Colors.black54,
                    text5: 'metálico',
                    containerWidth6: 155,
                    containerColor6: Color.fromRGBO(150, 151, 115, 1),
                    colorText6: Colors.white70,
                    text6: 'pachulí',
                    containerWidth7: 150,
                    containerColor7: Color.fromRGBO(239, 229, 241, 1),
                    colorText7: Colors.black54,
                    text7: 'almizclado',
                    containerWidth8: 145,
                    containerColor8: Color.fromRGBO(171, 141, 133, 1),
                    colorText8: Colors.white70,
                    text8: 'cuero',
                    containerWidth9: 130,
                    containerColor9: Color.fromRGBO(208, 178, 133, 1),
                    colorText9: Colors.white70,
                    text9: 'tabaco',
                    containerWidth10: 130,
                    containerColor10: Color.fromRGBO(158, 151, 142, 1),
                    colorText10: Colors.white70,
                    text10: 'terrosos',
                  ),
                  //TODO:
                  const Aromas100(
                      title: 'Amber Oud - Al Haramain',
                      description: '''
Amber Oud de Al Haramain Perfumes es una
fragancia de la familia olfativa Ámbar
amaderada para Hombres y Mujeres.
Amber Oud se lanzó en 2018. Tiene una
longevidad duradera y su estela es pesada.
Es un aroma Unisex.
''',
                      imageLocion: 'assets/images/amber_oud_haramain.webp',
                      imageNotaSalida: 'assets/images/romero.jpg',
                      textNotaSalida: 'Romero',
                      imageNotaSalida2: 'assets/images/bergamota.jpg',
                      textNotaSalida2: 'Bergamota',
                      imageNotaSalida3: 'assets/images/cedro.jpg',
                      textNotaSalida3: 'Cedro',
                      imageNotaSalida4: 'assets/images/limon.jpg',
                      textNotaSalida4: 'Limón',
                      imageCorazon: 'assets/images/especias.jpg',
                      textCorazon: 'Especias',
                      imageCorazon2: 'assets/images/cedro.jpg',
                      textCorazon2: 'Cedro',
                      imageCorazon3: 'assets/images/madera_de_gaiac.jpg',
                      textCorazon3: 'Madera de Gaiac',
                      imageBase: 'assets/images/resinas.jpg',
                      textBase: 'Resinas',
                      imageBase2: 'assets/images/ambar.jpg',
                      textBase2: 'Ámbar',
                      imageBase3: 'assets/images/almizcle.jpg',
                      textBase3: 'Almizcle',
                      containerWidth: 230,
                      containerColor: Color.fromRGBO(188, 77, 16, 1),
                      colorText: Colors.white,
                      text: 'ámbar',
                      containerWidth2: 225,
                      containerColor2: Color.fromRGBO(121, 71, 24, 1),
                      colorText2: Colors.white,
                      text2: 'amaderado',
                      containerWidth3: 165,
                      containerColor3: Color.fromRGBO(95, 179, 160, 1),
                      colorText3: Colors.black87,
                      text3: 'aromático',
                      containerWidth4: 155,
                      containerColor4: Color.fromRGBO(250, 255, 124, 1),
                      colorText4: Colors.black54,
                      text4: 'cítrico',
                      containerWidth5: 150,
                      containerColor5: Color.fromRGBO(165, 216, 99, 1),
                      colorText5: Colors.black54,
                      text5: 'fresco especiado',
                      containerWidth6: 135,
                      containerColor6: Color.fromRGBO(244, 233, 233, 1),
                      colorText6: Colors.black45,
                      text6: 'atalcado',
                      containerWidth7: 130,
                      containerColor7: Color.fromRGBO(240, 231, 242, 1),
                      colorText7: Colors.black45,
                      text7: 'almizclado',
                      containerWidth8: 125,
                      containerColor8: Color.fromRGBO(224, 134, 104, 1),
                      colorText8: Colors.white60,
                      text8: 'cálido especiado',
                      containerWidth9: 115,
                      containerColor9: Color.fromRGBO(211, 188, 166, 1),
                      colorText9: Colors.black45,
                      text9: 'balsámico'),
                  //TODO:
                  const Aromas100(
                    title: 'L\'Aventure - Al Haramain',
                    description: '''
L'Aventure de Al Haramain Perfumes es una
fragancia de la familia olfativa Chipre
Frutal para Hombres. L'Aventure se lanzó en 2016.
Tiene una longevidad duradera y su estela
es moderada. Es un aroma Masculino
(Tiene su versión femenina) L' Aventure femme.
''',
                    imageLocion: 'assets/images/l_aventure_haramain.jpg',
                    imageNotaSalida: 'assets/images/limon.jpg',
                    textNotaSalida: 'Limón',
                    imageNotaSalida2: 'assets/images/bergamota.jpg',
                    textNotaSalida2: 'Bergamota',
                    imageNotaSalida3: 'assets/images/elemi.jpg',
                    textNotaSalida3: 'Elemí',
                    imageCorazon: 'assets/images/notas_amaderadas.jpg',
                    textCorazon: 'Notas Amaderadas',
                    imageCorazon2: 'assets/images/jazmin.jpg',
                    textCorazon2: 'Jazmín',
                    imageCorazon3: 'assets/images/lirio_de_los_valles.jpg',
                    textCorazon3: 'Lirio de los Valles',
                    imageBase: 'assets/images/almizcle.jpg',
                    textBase: 'Almizcle',
                    imageBase2: 'assets/images/pachuli.jpg',
                    textBase2: 'Pachulí',
                    imageBase3: 'assets/images/ambar.jpg',
                    textBase3: 'Ámbar',
                    containerWidth: 230,
                    containerColor: Color.fromRGBO(249, 255, 82, 1),
                    colorText: Colors.black,
                    text: 'cítrico',
                    containerWidth2: 160,
                    containerColor2: Color.fromRGBO(114, 188, 172, 1),
                    colorText2: Colors.black54,
                    text2: 'aromático',
                    containerWidth3: 155,
                    containerColor3: Color.fromRGBO(162, 128, 95, 1),
                    colorText3: Colors.white70,
                    text3: 'amaderado',
                    containerWidth4: 135,
                    containerColor4: Color.fromRGBO(240, 232, 242, 1),
                    colorText4: Colors.black45,
                    text4: 'almizclado',
                    containerWidth5: 130,
                    containerColor5: Color.fromRGBO(184, 224, 132, 1),
                    colorText5: Colors.black45,
                    text5: 'fresco especiado',
                    containerWidth6: 125,
                    containerColor6: Color.fromRGBO(245, 236, 227, 1),
                    colorText6: Colors.black45,
                    text6: 'atalcado',
                    containerWidth7: 125,
                    containerColor7: Color.fromRGBO(245, 248, 252, 1),
                    colorText7: Colors.black45,
                    text7: 'floral blanco',
                  ),
                  //TODO:
                  const Aromas100(
                    title: 'Madinah - Al Haramain',
                    description: '''
Madinah de Al Haramain Perfumes es una
fragancia de la familia olfativa Ámbar
Floral para Hombres y Mujeres.
Tiene una longevidad duradera y su
estela es moderada. Es un aroma Unisex.
''',
                    imageLocion: 'assets/images/madinah_haramain.jpg',
                    imageNotaSalida: 'assets/images/rosa.jpg',
                    textNotaSalida: 'Rosa',
                    imageNotaSalida2: 'assets/images/geranio.jpg',
                    textNotaSalida2: 'Geranio',
                    imageNotaSalida3: 'assets/images/davana.jpg',
                    textNotaSalida3: 'Davana',
                    imageNotaSalida4: 'assets/images/naranja.jpg',
                    textNotaSalida4: 'Naranja',
                    imageNotaSalida5: 'assets/images/bergamota.jpg',
                    textNotaSalida5: 'Bergamota',
                    imageCorazon: 'assets/images/rosa.jpg',
                    textCorazon: 'Rosa',
                    imageCorazon2: 'assets/images/azafran.jpg',
                    textCorazon2: 'Azafrán',
                    imageCorazon3: 'assets/images/sandalo.jpg',
                    textCorazon3: 'Sándalo',
                    imageCorazon4: 'assets/images/orquidea.jpg',
                    textCorazon4: 'Orquídea',
                    imageCorazon5: 'assets/images/jazmin.jpg',
                    textCorazon5: 'Jazmín',
                    imageCorazon6: 'assets/images/cedro.jpg',
                    textCorazon6: 'Cedro',
                    imageCorazon7: 'assets/images/clavos_de_olor.jpg',
                    textCorazon7: 'Clavos de Olor',
                    imageBase: 'assets/images/sandalo.jpg',
                    textBase: 'Sándalo',
                    imageBase2: 'assets/images/notas_florales.jpg',
                    textBase2: 'Notas Florales',
                    imageBase3: 'assets/images/almizcle.jpg',
                    textBase3: 'Almizcle',
                    imageBase4: 'assets/images/ambar.jpg',
                    textBase4: 'Ámbar',
                    imageBase5: 'assets/images/cedro.jpg',
                    textBase5: 'Cedro',
                    imageBase6: 'assets/images/cachemira.jpg',
                    textBase6: 'Cachemira',
                    containerWidth: 230,
                    containerColor: Color.fromRGBO(254, 1, 107, 1),
                    colorText: Colors.white,
                    text: 'rosas',
                    containerWidth2: 200,
                    containerColor2: Color.fromRGBO(255, 125, 162, 1),
                    colorText2: Colors.black,
                    text2: 'florales',
                    containerWidth3: 200,
                    containerColor3: Color.fromRGBO(213, 89, 48, 1),
                    colorText3: Colors.white,
                    text3: 'cálido especiado',
                    containerWidth4: 180,
                    containerColor4: Color.fromRGBO(154, 116, 81, 1),
                    colorText4: Colors.white,
                    text4: 'amaderado',
                    containerWidth5: 180,
                    containerColor5: Color.fromRGBO(250, 255, 129, 1),
                    colorText5: Colors.black54,
                    text5: 'cítrico',
                    containerWidth6: 165,
                    containerColor6: Color.fromRGBO(243, 232, 221, 1),
                    colorText6: Colors.black54,
                    text6: 'atalcado',
                    containerWidth7: 150,
                    containerColor7: Color.fromRGBO(244, 247, 252, 1),
                    colorText7: Colors.black54,
                    text7: 'floral blanco',
                    containerWidth8: 145,
                    containerColor8: Color.fromRGBO(197, 211, 214, 1),
                    colorText8: Colors.black54,
                    text8: 'metálico',
                    containerWidth9: 145,
                    containerColor9: Color.fromRGBO(199, 240, 244, 1),
                    colorText9: Colors.black54,
                    text9: 'fresco',
                    containerWidth10: 140,
                    containerColor10: Color.fromRGBO(184, 158, 151, 1),
                    colorText10: Colors.white60,
                    text10: 'cuero',
                  ),
                  //TODO:
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text('Santal 33 - Le Labo', style: styleText3Mobile),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text('''
Santal 33 de Le Labo es una fragancia
de la familia olfativa Amaderada
Aromática para Hombres y Mujeres.
Santal 33 se lanzó en 2011.
Tiene una longevidad duradera y su
estela es de moderada a pesada.
Es un aroma Unisex.
''', style: styleTextLocion),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text('Notas de Fragancia:', style: styleTextLocion2),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Aromas(
                        image: 'assets/images/sandalo.jpg',
                        text: 'Sándalo',
                        padding: EdgeInsets.only(left: 30, right: 15),
                      ),
                      Aromas(
                        image: 'assets/images/cuero.jpg',
                        text: 'Cuero',
                        padding: EdgeInsets.only(right: 15),
                      ),
                      Aromas(
                        image: 'assets/images/papiro_de_egipto.jpg',
                        text: 'Papiro de Egipto',
                        padding: EdgeInsets.only(right: 15),
                      ),
                      Aromas(
                        image: 'assets/images/cedro.jpg',
                        text: 'Cedro',
                        padding: EdgeInsets.only(right: 0),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Aromas(
                        image: 'assets/images/violeta.jpg',
                        text: 'Violeta',
                        padding: EdgeInsets.only(left: 30, right: 15),
                      ),
                      Aromas(
                        image: 'assets/images/cardamomo.jpg',
                        text: 'Cardamomo',
                        padding: EdgeInsets.only(right: 15),
                      ),
                      Aromas(
                        image: 'assets/images/iris.jpg',
                        text: 'Iris',
                        padding: EdgeInsets.only(right: 15),
                      ),
                      Aromas(
                        image: 'assets/images/ambar.jpg',
                        text: 'Ámbar',
                        padding: EdgeInsets.only(right: 0),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Image.asset('assets/images/santal_33_le_labo.jpg',
                          height: 190, width: 190),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: Text('Acordes Principales',
                                style: styleTextLocion),
                          ),
                          const SizedBox(height: 10),
                          const MainChords(
                            containerWidth: 230,
                            containerColor: Color.fromRGBO(119, 68, 20, 1),
                            colorText: Colors.white,
                            text: 'amaderado',
                          ),
                          const MainChords(
                            containerWidth: 150,
                            containerColor: Color.fromRGBO(243, 231, 219, 1),
                            colorText: Colors.black54,
                            text: 'atalcado',
                          ),
                          const MainChords(
                            containerWidth: 140,
                            containerColor: Color.fromRGBO(166, 135, 126, 1),
                            colorText: Colors.white70,
                            text: 'cuero',
                          ),
                          const MainChords(
                            containerWidth: 130,
                            containerColor: Color.fromRGBO(224, 131, 100, 1),
                            colorText: Colors.white70,
                            text: 'cálido especiado',
                          ),
                          const MainChords(
                            containerWidth: 120,
                            containerColor: Color.fromRGBO(200, 130, 255, 1),
                            colorText: Colors.white70,
                            text: 'violeta',
                          ),
                          const SizedBox(height: 30)
                        ],
                      ),
                      const Spacer(),
                    ],
                  ),
                  const SizedBox(height: 30),
                  //TODO:
                  const Aromas100(
                    title: 'Il Kakuno - ILMIN',
                    description: '''
Il Kakuno de ILMIN Parfums es una fragancia
de la familia olfativa para Hombres y Mujeres.
Il Kakuno se lanzó en 2018. Tiene una
longevidad moderada y su estela es moderada.
Es un aroma Unisex.
''',
                    imageLocion: 'assets/images/il_kakuno_ilmin.jpg',
                    imageNotaSalida: 'assets/images/caramelo.jpg',
                    textNotaSalida: 'Caramelo',
                    imageNotaSalida2: 'assets/images/bayas_silvestres.jpg',
                    textNotaSalida2: '''
Bayas
Silvestres''',
                    imageNotaSalida3: 'assets/images/pimienta_rosa.jpg',
                    textNotaSalida3: '''
Pimienta
Rosa''',
                    imageNotaSalida4: 'assets/images/durazno.jpg',
                    textNotaSalida4: 'Durazno',
                    imageNotaSalida5: 'assets/images/ladano.jpg',
                    textNotaSalida5: 'Ládano',
                    imageNotaSalida6: 'assets/images/fresa.jpg',
                    textNotaSalida6: 'Fresa',
                    imageCorazon: 'assets/images/cipriol.jpg',
                    textCorazon: 'Cipriol',
                    imageCorazon2: 'assets/images/jengibre.jpg',
                    textCorazon2: 'Jengibre',
                    imageCorazon3: 'assets/images/cuero.jpg',
                    textCorazon3: 'Cuero',
                    imageCorazon4: 'assets/images/rosa.jpg',
                    textCorazon4: 'Rosa',
                    imageCorazon5: 'assets/images/pachuli.jpg',
                    textCorazon5: 'Pachulí',
                    imageCorazon6: 'assets/images/azafran.jpg',
                    textCorazon6: 'Azafrán',
                    imageBase: 'assets/images/balsamo.jpg',
                    textBase: 'Bálsamo',
                    imageBase2: 'assets/images/madera_de_oud.jpg',
                    textBase2: 'Madera de Oud',
                    imageBase3: 'assets/images/benjui.jpg',
                    textBase3: 'Benjuí',
                    imageBase4: 'assets/images/vainilla.jpg',
                    textBase4: 'Vainilla',
                    imageBase5: 'assets/images/almizcle.jpg',
                    textBase5: 'Almizcle',
                    containerWidth: 230,
                    containerColor: Color.fromRGBO(188, 77, 16, 1),
                    colorText: Colors.white,
                    text: 'ámbar',
                    containerWidth2: 220,
                    containerColor2: Color.fromRGBO(125, 77, 31, 1),
                    colorText2: Colors.white,
                    text2: 'amaderado',
                    containerWidth3: 200,
                    containerColor3: Color.fromRGBO(184, 147, 111, 1),
                    colorText3: Colors.black87,
                    text3: 'balsámico',
                    containerWidth4: 180,
                    containerColor4: Color.fromRGBO(215, 96, 56, 1),
                    colorText4: Colors.white,
                    text4: 'cálido especiado',
                    containerWidth5: 175,
                    containerColor5: Color.fromRGBO(229, 185, 127, 1),
                    colorText5: Colors.black54,
                    text5: 'caramelo',
                    containerWidth6: 170,
                    containerColor6: Color.fromRGBO(255, 254, 208, 1),
                    colorText6: Colors.black54,
                    text6: 'avainillado',
                    containerWidth7: 165,
                    containerColor7: Color.fromRGBO(242, 107, 110, 1),
                    colorText7: Colors.white70,
                    text7: 'dulce',
                    containerWidth8: 165,
                    containerColor8: Color.fromRGBO(253, 124, 100, 1),
                    colorText8: Colors.black54,
                    text8: 'afrutados',
                    containerWidth9: 150,
                    containerColor9: Color.fromRGBO(239, 229, 241, 1),
                    colorText9: Colors.black54,
                    text9: 'almizclado',
                    containerWidth10: 150,
                    containerColor10: Color.fromRGBO(143, 130, 123, 1),
                    colorText10: Colors.white70,
                    text10: 'oud',
                  ),
                  //TODO:
                  const Aromas100(
                    title: 'Il Femme - ILMIN',
                    description: '''
Il Femme de ILMIN Parfums es una fragancia
de la familia olfativa Ámbar Amaderada para
Hombres y Mujeres. Il Femme se lanzó en 2018.
Su longevidad es muy duradera y su estela
es moderada. Es un aroma Unisex.
''',
                    imageLocion: 'assets/images/il_femme_ilmin.jpg',
                    imageNotaSalida: 'assets/images/maracuya.jpg',
                    textNotaSalida: 'Maracuyá',
                    imageNotaSalida2: 'assets/images/rosa.jpg',
                    textNotaSalida2: 'Rosa',
                    imageNotaSalida3: 'assets/images/nuez_moscada.jpg',
                    textNotaSalida3: 'Nuez Moscada',
                    imageNotaSalida4: 'assets/images/canela.jpg',
                    textNotaSalida4: 'Canela',
                    imageCorazon: 'assets/images/cedro.jpg',
                    textCorazon: 'Cedro',
                    imageCorazon2: 'assets/images/cipriol.jpg',
                    textCorazon2: 'Cipriol',
                    imageCorazon3: 'assets/images/madera_de_gaiac.jpg',
                    textCorazon3: '''
Madera
de Gaiac''',
                    imageCorazon4: 'assets/images/madera_de_cachemira.jpg',
                    textCorazon4: '''
Madera
de Cachemira''',
                    imageBase: 'assets/images/sandalo.jpg',
                    textBase: 'Sándalo',
                    imageBase2: 'assets/images/tabaco.jpg',
                    textBase2: 'Tabaco',
                    imageBase3: 'assets/images/almizcle.jpg',
                    textBase3: 'Almizcle',
                    imageBase4: 'assets/images/cumarina.jpg',
                    textBase4: 'Cumarina',
                    imageBase5: 'assets/images/vainilla.jpg',
                    textBase5: 'Vainilla',
                    imageBase6: 'assets/images/ladano.jpg',
                    textBase6: 'Ládano',
                    containerWidth: 230,
                    containerColor: Color.fromRGBO(119, 68, 20, 1),
                    colorText: Colors.white,
                    text: 'amaderado',
                    containerWidth2: 150,
                    containerColor2: Color.fromRGBO(244, 233, 222, 1),
                    colorText2: Colors.black54,
                    text2: 'atalcado',
                    containerWidth3: 150,
                    containerColor3: Color.fromRGBO(244, 128, 132, 1),
                    colorText3: Colors.white70,
                    text3: 'dulce',
                    containerWidth4: 145,
                    containerColor4: Color.fromRGBO(240, 231, 242, 1),
                    colorText4: Colors.black54,
                    text4: 'almizclado',
                    containerWidth5: 135,
                    containerColor5: Color.fromRGBO(225, 138, 109, 1),
                    colorText5: Colors.white70,
                    text5: 'cálido especiado',
                    containerWidth6: 135,
                    containerColor6: Color.fromRGBO(254, 111, 171, 1),
                    colorText6: Colors.white70,
                    text6: 'rosas',
                    containerWidth7: 135,
                    containerColor7: Color.fromRGBO(208, 178, 133, 1),
                    colorText7: Colors.white70,
                    text7: 'tabaco',
                    containerWidth8: 125,
                    containerColor8: Color.fromRGBO(189, 226, 142, 1),
                    colorText8: Colors.black54,
                    text8: 'fresco especiado',
                    containerWidth9: 125,
                    containerColor9: Color.fromRGBO(253, 161, 143, 1),
                    colorText9: Colors.black54,
                    text9: 'afrutados',
                  ),
                  //TODO:
                  const Aromas100(
                    title: 'Arabians Tonka - Montale',
                    description: '''
Arabians Tonka de Montale es una fragancia
de la familia olfativa Ámbar Amaderada para
Hombres y Mujeres. Arabians Tonka se lanzó
en 2019. Tiene una longevidad muy duradera
y su estela es enorme. Es un aroma Unisex.
''',
                    imageLocion: 'assets/images/arabians_tonka_montale.webp',
                    imageNotaSalida: 'assets/images/azafran.jpg',
                    textNotaSalida: 'Azafrán',
                    imageNotaSalida2: 'assets/images/bergamota.jpg',
                    textNotaSalida2: 'Bergamota',
                    imageCorazon: 'assets/images/madera_de_oud.jpg',
                    textCorazon: '''
Madera
de Oud''',
                    imageCorazon2: 'assets/images/rosa.jpg',
                    textCorazon2: '''
Rosa de
Bulgaria''',
                    imageBase: 'assets/images/cumarina.jpg',
                    textBase: '''Haba
Tonka''',
                    imageBase2: 'assets/images/caña_de_azucar.jpg',
                    textBase2: '''
Caña de
Azúcar''',
                    imageBase3: 'assets/images/ambar.jpg',
                    textBase3: 'Ámbar',
                    imageBase4: 'assets/images/almizcle.jpg',
                    textBase4: '''
Almizcle
Blanco''',
                    imageBase5: 'assets/images/musgo_de_roble.jpg',
                    textBase5: '''Musgo
de Roble''',
                    containerWidth: 230,
                    containerColor: Color.fromRGBO(238, 54, 59, 1),
                    colorText: Colors.white,
                    text: 'dulce',
                    containerWidth2: 210,
                    containerColor2: Color.fromRGBO(255, 254, 198, 1),
                    colorText2: Colors.black,
                    text2: 'avainillado',
                    containerWidth3: 200,
                    containerColor3: Color.fromRGBO(197, 101, 48, 1),
                    colorText3: Colors.white,
                    text3: 'ámbar',
                    containerWidth4: 170,
                    containerColor4: Color.fromRGBO(216, 101, 63, 1),
                    colorText4: Colors.white70,
                    text4: 'cálido especiado',
                    containerWidth5: 165,
                    containerColor5: Color.fromRGBO(128, 114, 106, 1),
                    colorText5: Colors.white70,
                    text5: 'oud',
                    containerWidth6: 155,
                    containerColor6: Color.fromRGBO(254, 80, 153, 1),
                    colorText6: Colors.white70,
                    text6: 'rosas',
                    containerWidth7: 135,
                    containerColor7: Color.fromRGBO(241, 232, 242, 1),
                    colorText7: Colors.black54,
                    text7: 'almizclado',
                    containerWidth8: 130,
                    containerColor8: Color.fromRGBO(144, 202, 189, 1),
                    colorText8: Colors.black54,
                    text8: 'aromático',
                    containerWidth9: 130,
                    containerColor9: Color.fromRGBO(197, 211, 215, 1),
                    colorText9: Colors.black54,
                    text9: 'metálico',
                    containerWidth10: 125,
                    containerColor10: Color.fromRGBO(246, 237, 228, 1),
                    colorText10: Colors.black54,
                    text10: 'atalcado',
                  ),
                  //TODO:
                  const Aromas100(
                    title: 'Intense Cafe - Montale',
                    description: '''
Intense Cafe de Montale es una fragancia
de la familia olfativa Ámbar Vainilla para
Hombres y Mujeres. Intense Cafe se lanzó
en 2013. Tiene una longevidad duradera y
su estela es pesada. Es un aroma Unisex.
''',
                    imageLocion: 'assets/images/intense_cafe_montale.jpg',
                    imageNotaSalida: 'assets/images/notas_florales.jpg',
                    textNotaSalida: 'Notas Florales',
                    imageCorazon: 'assets/images/rosa.jpg',
                    textCorazon: 'Rosa',
                    imageCorazon2: 'assets/images/cafe.jpg',
                    textCorazon2: 'Café',
                    imageBase: 'assets/images/vainilla.jpg',
                    textBase: 'Vainilla',
                    imageBase2: 'assets/images/almizcle.jpg',
                    textBase2: 'Almizcle Blanco',
                    imageBase3: 'assets/images/ambar.jpg',
                    textBase3: 'Ámbar',
                    containerWidth: 230,
                    containerColor: Color.fromRGBO(254, 1, 107, 1),
                    colorText: Colors.white,
                    text: 'rosas',
                    containerWidth2: 210,
                    containerColor2: Color.fromRGBO(255, 254, 198, 1),
                    colorText2: Colors.black,
                    text2: 'avainillado',
                    containerWidth3: 190,
                    containerColor3: Color.fromRGBO(113, 97, 72, 1),
                    colorText3: Colors.white,
                    text3: 'café',
                    containerWidth4: 185,
                    containerColor4: Color.fromRGBO(255, 128, 165, 1),
                    colorText4: Colors.black87,
                    text4: 'florales',
                    containerWidth5: 170,
                    containerColor5: Color.fromRGBO(243, 231, 219, 1),
                    colorText5: Colors.black54,
                    text5: 'atalcado',
                    containerWidth6: 160,
                    containerColor6: Color.fromRGBO(239, 229, 241, 1),
                    colorText6: Colors.black54,
                    text6: 'almizclado',
                    containerWidth7: 160,
                    containerColor7: Color.fromRGBO(222, 123, 91, 1),
                    colorText7: Colors.white60,
                    text7: 'cálido especiado',
                    containerWidth8: 150,
                    containerColor8: Color.fromRGBO(215, 151, 115, 1),
                    colorText8: Colors.white60,
                    text8: 'ámbar',
                    containerWidth9: 140,
                    containerColor9: Color.fromRGBO(246, 149, 152, 1),
                    colorText9: Colors.white60,
                    text9: 'dulce',
                  ),
                  //TODO:
                  const Aromas100(
                    title: 'Baccarat Rouge 540 - Francis Kurkdjian',
                    description: '''
Baccarat Rouge 540 de Maison Francis
Kurkdjian es una fragancia de la familia
olfativa Ámbar Floral para Hombres y Mujeres.
Baccarat Rouge 540 se lanzó en 2015. Su
longevidad es muy duradera y su estela 
es pesada. Es un aroma Unisex.
''',
                    imageLocion:
                        'assets/images/baccarat_rouge_francis_kurkdjian.webp',
                    imageNotaSalida: 'assets/images/azafran.jpg',
                    textNotaSalida: 'Azafrán',
                    imageNotaSalida2: 'assets/images/jazmin.jpg',
                    textNotaSalida2: 'Jazmín',
                    imageCorazon: 'assets/images/amberwood.jpg',
                    textCorazon: 'Amberwood',
                    imageCorazon2: 'assets/images/ambar_gris.jpg',
                    textCorazon2: 'Ámbar Gris',
                    imageBase: 'assets/images/resina_de_abeto.jpg',
                    textBase: 'Resina de Abeto',
                    imageBase2: 'assets/images/cedro.jpg',
                    textBase2: 'Cedro',
                    containerWidth: 230,
                    containerColor: Color.fromRGBO(119, 68, 20, 1),
                    colorText: Colors.white,
                    text: 'amaderado',
                    containerWidth2: 215,
                    containerColor2: Color.fromRGBO(193, 90, 33, 1),
                    colorText2: Colors.white,
                    text2: 'ámbar',
                    containerWidth3: 170,
                    containerColor3: Color.fromRGBO(217, 104, 67, 1),
                    colorText3: Colors.white,
                    text3: 'cálido especiado',
                    containerWidth4: 130,
                    containerColor4: Color.fromRGBO(187, 225, 137, 1),
                    colorText4: Colors.black54,
                    text4: 'fresco especiado',
                    containerWidth5: 130,
                    containerColor5: Color.fromRGBO(146, 203, 191, 1),
                    colorText5: Colors.black54,
                    text5: 'aromático',
                    containerWidth6: 130,
                    containerColor6: Color.fromRGBO(198, 212, 216, 1),
                    colorText6: Colors.black54,
                    text6: 'metálico',
                    containerWidth7: 128,
                    containerColor7: Color.fromRGBO(245, 248, 252, 1),
                    colorText7: Colors.black54,
                    text7: 'floral blanco',
                    containerWidth8: 128,
                    containerColor8: Color.fromRGBO(195, 159, 130, 1),
                    colorText8: Colors.white60,
                    text8: 'aromático',
                  ),
                  //TODO:
                  const Aromas100(
                    title: 'Oud Saffron - Orientica',
                    description: '''
Oud Saffron de Orientica Premium es una
fragancia de la familia olfativa Amaderada
Especiada para Hombres y Mujeres. Oud
Saffron se lanzó en 2021. Su longevidad
es muy duradera y su estela es pesada.
Es un aroma Unisex.
''',
                    imageLocion: 'assets/images/oud_saffron_orientica.webp',
                    imageNotaSalida: 'assets/images/notas_orientales.jpg',
                    textNotaSalida: 'Notas Orientales',
                    imageNotaSalida2: 'assets/images/vainilla.jpg',
                    textNotaSalida2: 'Vainilla',
                    imageCorazon: 'assets/images/azafran.jpg',
                    textCorazon: 'Azafrán',
                    imageCorazon2: 'assets/images/pachuli.jpg',
                    textCorazon2: 'Pachulí',
                    imageBase: 'assets/images/madera_de_oud.jpg',
                    textBase: 'Madera de Oud',
                    imageBase2: 'assets/images/madera_de_gaiac.jpg',
                    textBase2: 'Madera de Gaiac',
                    imageBase3: 'assets/images/almizcle.jpg',
                    textBase3: 'Almizcle',
                    containerWidth: 230,
                    containerColor: Color.fromRGBO(204, 51, 0, 1),
                    colorText: Colors.white,
                    text: 'cálido especiado',
                    containerWidth2: 150,
                    containerColor2: Color.fromRGBO(210, 135, 94, 1),
                    colorText2: Colors.white70,
                    text2: 'ámbar',
                    containerWidth3: 140,
                    containerColor3: Color.fromRGBO(239, 230, 241, 1),
                    colorText3: Colors.black54,
                    text3: 'almizclado',
                    containerWidth4: 140,
                    containerColor4: Color.fromRGBO(146, 134, 127, 1),
                    colorText4: Colors.white70,
                    text4: 'oud',
                    containerWidth5: 140,
                    containerColor5: Color.fromRGBO(169, 137, 106, 1),
                    colorText5: Colors.white70,
                    text5: 'amaderado',
                    containerWidth6: 140,
                    containerColor6: Color.fromRGBO(255, 254, 215, 1),
                    colorText6: Colors.black54,
                    text6: 'avainillado',
                    containerWidth7: 130,
                    containerColor7: Color.fromRGBO(245, 236, 226, 1),
                    colorText7: Colors.black54,
                    text7: 'atalcado',
                    containerWidth8: 125,
                    containerColor8: Color.fromRGBO(198, 212, 216, 1),
                    colorText8: Colors.black54,
                    text8: 'metálico',
                    containerWidth9: 120,
                    containerColor9: Color.fromRGBO(173, 174, 146, 1),
                    colorText9: Colors.white60,
                    text9: 'pachulí',
                  ),
                  //TODO: AROMAS HOMBRE
                  Padding(
                    padding: const EdgeInsets.only(left: 30, bottom: 20),
                    child: Text('Aromas de Hombre', style: styleText3Mobile),
                  ),
                  //TODO:
                  const Aromas100(
                    title: '212 Heroes - Carolina Herrera',
                    description: '''
212 Heroes de Carolina Herrera es una
fragancia de la familia olfativa Aromática
Frutal para Hombres. 212 Heroes se lanzó
en 2021. Tiene una longevidad moderada y su
estela es moderada. Es un aroma de Hombre.
''',
                    imageLocion:
                        'assets/images/212_heroes_carolina_herrera.png',
                    imageNotaSalida: 'assets/images/pera.jpg',
                    textNotaSalida: 'Pera',
                    imageNotaSalida2: 'assets/images/marihuana.jpg',
                    textNotaSalida2: 'Marihuana (cannabis)',
                    imageNotaSalida3: 'assets/images/jengibre.jpg',
                    textNotaSalida3: 'Jengibre',
                    imageCorazon: 'assets/images/geranio.jpg',
                    textCorazon: 'Geranio',
                    imageCorazon2: 'assets/images/salvia.jpg',
                    textCorazon2: 'Salvia',
                    imageBase: 'assets/images/almizcle.jpg',
                    textBase: 'Almizcle',
                    imageBase2: 'assets/images/cuero.jpg',
                    textBase2: 'Cuero',
                    containerWidth: 230,
                    containerColor: Color.fromRGBO(55, 160, 137, 1),
                    colorText: Colors.black,
                    text: 'aromático',
                    containerWidth2: 190,
                    containerColor2: Color.fromRGBO(252, 101, 72, 1),
                    colorText2: Colors.black,
                    text2: 'afrutados',
                    containerWidth3: 190,
                    containerColor3: Color.fromRGBO(130, 178, 146, 1),
                    colorText3: Colors.black,
                    text3: 'herbal',
                    containerWidth4: 170,
                    containerColor4: Color.fromRGBO(217, 103, 65, 1),
                    colorText4: Colors.white70,
                    text4: 'cálido especiado',
                    containerWidth5: 165,
                    containerColor5: Color.fromRGBO(118, 169, 106, 1),
                    colorText5: Colors.white70,
                    text5: 'cannabis',
                    containerWidth6: 165,
                    containerColor6: Color.fromRGBO(242, 109, 113, 1),
                    colorText6: Colors.white70,
                    text6: 'dulce',
                    containerWidth7: 150,
                    containerColor7: Color.fromRGBO(238, 228, 240, 1),
                    colorText7: Colors.black54,
                    text7: 'almizclado',
                    containerWidth8: 150,
                    containerColor8: Color.fromRGBO(187, 237, 242, 1),
                    colorText8: Colors.black54,
                    text8: 'fresco',
                    containerWidth9: 140,
                    containerColor9: Color.fromRGBO(175, 220, 116, 1),
                    colorText9: Colors.black54,
                    text9: 'fresco especiado',
                    containerWidth10: 140,
                    containerColor10: Color.fromRGBO(154, 222, 236, 1),
                    colorText10: Colors.black54,
                    text10: 'acuático',
                  ),
                  //TODO:
                  const Aromas100(
                    title: '212 VIP Men - Carolina Herrera',
                    description: '''
212 VIP Men de Carolina Herrera es una
fragancia de la familia olfativa Ámbar
Amaderada para Hombres. 212 VIP Men se
lanzó en 2011. Tiene una longevidad
duradera y su estela es pesada. 
Es un aroma Masculino.
''',
                    imageLocion:
                        'assets/images/212_vip_men_carolina_herrera.png',
                    imageNotaSalida: 'assets/images/maracuya.jpg',
                    textNotaSalida: 'Maracuyá',
                    imageNotaSalida2: 'assets/images/lima.jpg',
                    textNotaSalida2: 'Lima',
                    imageNotaSalida3: 'assets/images/pimienta.jpg',
                    textNotaSalida3: 'Pimienta',
                    imageNotaSalida4: 'assets/images/jengibre.jpg',
                    textNotaSalida4: 'Jengibre',
                    imageCorazon: 'assets/images/vodka.jpg',
                    textCorazon: 'Vodka',
                    imageCorazon2: 'assets/images/ginebra.jpg',
                    textCorazon2: 'Ginebra',
                    imageCorazon3: 'assets/images/menta.jpg',
                    textCorazon3: 'Menta',
                    imageCorazon4: 'assets/images/especias.jpg',
                    textCorazon4: 'Especias',
                    imageBase: 'assets/images/ambar.jpg',
                    textBase: 'Ámbar',
                    imageBase2: 'assets/images/cuero.jpg',
                    textBase2: 'Cuero',
                    imageBase3: 'assets/images/notas_amaderadas.jpg',
                    textBase3: 'Notas Amaderadas',
                    containerWidth: 230,
                    containerColor: Color.fromRGBO(55, 160, 137, 1),
                    colorText: Colors.black,
                    text: 'aromático',
                    containerWidth2: 220,
                    containerColor2: Color.fromRGBO(244, 250, 248, 1),
                    colorText2: Colors.black,
                    text2: 'vodka',
                    containerWidth3: 220,
                    containerColor3: Color.fromRGBO(206, 59, 10, 1),
                    colorText3: Colors.white,
                    text3: 'cálido especiado',
                    containerWidth4: 200,
                    containerColor4: Color.fromRGBO(144, 206, 62, 1),
                    colorText4: Colors.black87,
                    text4: 'fresco especiado',
                    containerWidth5: 190,
                    containerColor5: Color.fromRGBO(138, 94, 53, 1),
                    colorText5: Colors.white70,
                    text5: 'amaderado',
                    containerWidth6: 175,
                    containerColor6: Color.fromRGBO(62, 163, 74, 1),
                    colorText6: Colors.white70,
                    text6: 'verde',
                    containerWidth7: 170,
                    containerColor7: Color.fromRGBO(248, 193, 65, 1),
                    colorText7: Colors.black54,
                    text7: 'tropical',
                    containerWidth8: 165,
                    containerColor8: Color.fromRGBO(250, 255, 126, 1),
                    colorText8: Colors.black54,
                    text8: 'cítrico',
                    containerWidth9: 160,
                    containerColor9: Color.fromRGBO(242, 109, 113, 1),
                    colorText9: Colors.white60,
                    text9: 'dulce',
                    containerWidth10: 160,
                    containerColor10: Color.fromRGBO(253, 125, 100, 1),
                    colorText10: Colors.black45,
                    text10: 'afrutados',
                  ),
                  //TODO:
                  const Aromas100(
                    title: 'CH Men - Carolina Herrera',
                    description: '''
CH Men de Carolina Herrera es una
fragancia de la familia olfativa
Ámbar Especiada para Hombres.
CH Men se lanzó en 2009. Su longevidad
y su estela son moderadas.
Es un Aroma Masculino.
''',
                    imageLocion: 'assets/images/ch_carolina_herrera.webp',
                    imageNotaSalida: 'assets/images/hierba.jpg',
                    textNotaSalida: 'Hierba',
                    imageNotaSalida2: 'assets/images/bergamota.jpg',
                    textNotaSalida2: 'Bergamota',
                    imageNotaSalida3: 'assets/images/toronja.jpg',
                    textNotaSalida3: 'Toronja',
                    imageCorazon: 'assets/images/notas_amaderadas.jpg',
                    textCorazon: '''
Nota
Amaderada''',
                    imageCorazon2: 'assets/images/nuez_moscada.jpg',
                    textCorazon2: '''
Nuez
Moscada''',
                    imageCorazon3: 'assets/images/violeta.jpg',
                    textCorazon3: 'Violeta',
                    imageCorazon4: 'assets/images/azafran.jpg',
                    textCorazon4: 'Azafrán',
                    imageCorazon5: 'assets/images/jazmin.jpg',
                    textCorazon5: 'Jazmín',
                    imageBase: 'assets/images/caña_de_azucar.jpg',
                    textBase: 'Azúcar',
                    imageBase2: 'assets/images/cuero.jpg',
                    textBase2: 'Cuero',
                    imageBase3: 'assets/images/vainilla.jpg',
                    textBase3: 'Vainilla',
                    imageBase4: 'assets/images/ambar.jpg',
                    textBase4: 'Ámbar',
                    imageBase5: 'assets/images/madera_de_cachemira.jpg',
                    textBase5: '''
Madera de
Cachemira''',
                    imageBase6: 'assets/images/sandalo.jpg',
                    textBase6: 'Sándalo',
                    imageBase7: 'assets/images/musgo_de_roble.jpg',
                    textBase7: '''
Musgo de
Roble''',
                    imageBase8: 'assets/images/vetiver.jpg',
                    textBase8: 'Vetiver',
                    containerWidth: 230,
                    containerColor: Color.fromRGBO(120, 72, 58, 1),
                    colorText: Colors.white,
                    text: 'cuerod',
                    containerWidth2: 200,
                    containerColor2: Color.fromRGBO(240, 77, 81, 1),
                    colorText2: Colors.white,
                    text2: 'dulce',
                    containerWidth3: 200,
                    containerColor3: Color.fromRGBO(255, 254, 199, 1),
                    colorText3: Colors.black,
                    text3: 'avainillado',
                    containerWidth4: 180,
                    containerColor4: Color.fromRGBO(146, 105, 67, 1),
                    colorText4: Colors.white,
                    text4: 'amaderado',
                    containerWidth5: 165,
                    containerColor5: Color.fromRGBO(243, 231, 218, 1),
                    colorText5: Colors.black54,
                    text5: 'atalcado',
                    containerWidth6: 155,
                    containerColor6: Color.fromRGBO(98, 180, 108, 1),
                    colorText6: Colors.white70,
                    text6: 'verde',
                    containerWidth7: 155,
                    containerColor7: Color.fromRGBO(182, 140, 104, 1),
                    colorText7: Colors.white70,
                    text7: 'animálico',
                    containerWidth8: 150,
                    containerColor8: Color.fromRGBO(177, 221, 121, 1),
                    colorText8: Colors.black45,
                    text8: 'fresco especiado',
                    containerWidth9: 145,
                    containerColor9: Color.fromRGBO(251, 255, 152, 1),
                    colorText9: Colors.black45,
                    text9: 'cítrico',
                    containerWidth10: 145,
                    containerColor10: Color.fromRGBO(195, 239, 244, 1),
                    colorText10: Colors.black45,
                    text10: 'fresco',
                  ),
                  //TODO:
                  const Aromas100(
                    title: '212 VIP Men Wins - Carolina Herrera',
                    description: '''
212 VIP Men Wins de Carolina Herrera
es una fragancia de la familia olfativa
Aromática Fougère para Hombres. 212 VIP
Men Wins se lanzó en 2021. Su longevidad
y su estela son moderadas.
Es un aroma Masculino.
''',
                    imageLocion:
                        'assets/images/212_vip_wins_carolina_herrera.jpeg',
                    imageNotaSalida: 'assets/images/yuzu.jpg',
                    textNotaSalida: 'Yuzu',
                    imageNotaSalida2: 'assets/images/albahaca.jpg',
                    textNotaSalida2: 'Albahaca',
                    imageNotaSalida3: 'assets/images/mandarina.jpg',
                    textNotaSalida3: 'Mandarina',
                    imageCorazon: 'assets/images/pimienta.jpg',
                    textCorazon: '''
Pimienta de
Madagascar''',
                    imageCorazon2: 'assets/images/lavanda.jpg',
                    textCorazon2: 'Lavanda',
                    imageBase: 'assets/images/piel.jpg',
                    textBase: 'Piel',
                    imageBase2: 'assets/images/cumarina.jpg',
                    textBase2: 'Haba Tonka',
                    containerWidth: 230,
                    containerColor: Color.fromRGBO(131, 201, 40, 1),
                    colorText: Colors.black,
                    text: 'fresco especiado',
                    containerWidth2: 210,
                    containerColor2: Color.fromRGBO(249, 255, 95, 1),
                    colorText2: Colors.black87,
                    text2: 'cítrico',
                    containerWidth3: 150,
                    containerColor3: Color.fromRGBO(118, 190, 174, 1),
                    colorText3: Colors.black54,
                    text3: 'aromático',
                    containerWidth4: 145,
                    containerColor4: Color.fromRGBO(94, 178, 104, 1),
                    colorText4: Colors.white70,
                    text4: 'verde',
                    containerWidth5: 135,
                    containerColor5: Color.fromRGBO(244, 128, 131, 1),
                    colorText5: Colors.white70,
                    text5: 'dulce',
                    containerWidth6: 120,
                    containerColor6: Color.fromRGBO(241, 227, 244, 1),
                    colorText6: Colors.black45,
                    text6: 'lavanda',
                    containerWidth7: 120,
                    containerColor7: Color.fromRGBO(255, 254, 219, 1),
                    colorText7: Colors.black45,
                    text7: 'avainillado',
                    containerWidth8: 115,
                    containerColor8: Color.fromRGBO(226, 142, 114, 1),
                    colorText8: Colors.white60,
                    text8: 'cálido especiado',
                  ),
                  //TODO:
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text('1 Million Parfum - Paco Rabanne',
                        style: styleText3Mobile),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text('''
1 Million Parfum de Paco Rabanne es una
fragancia de la familia olfativa Cuero
para Hombres. 1 Million Parfum se lanzó
en 2020. Su longevidad es duradera y su
estela es pesada. Es un aroma Masculino.
''', style: styleTextLocion),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text('Notas de Fragancia:', style: styleTextLocion2),
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Aromas(
                        image: 'assets/images/nardos.jpg',
                        text: 'Nardos',
                        padding: EdgeInsets.only(left: 30, right: 15),
                      ),
                      Aromas(
                        image: 'assets/images/sal.jpg',
                        text: 'Sal',
                        padding: EdgeInsets.only(right: 15),
                      ),
                      Aromas(
                        image: 'assets/images/notas_solares.jpg',
                        text: '''Notas
Solares''',
                        padding: EdgeInsets.only(right: 15),
                      ),
                      Aromas(
                        image: 'assets/images/aceite_de_monoil.jpg',
                        text: '''Aceite
de Monoi''',
                        padding: EdgeInsets.only(right: 15),
                      ),
                      Aromas(
                        image: 'assets/images/ambar_gris.jpg',
                        text: '''Ámbar
Gris''',
                        padding: EdgeInsets.only(right: 0),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Aromas(
                        image: 'assets/images/cuero.jpg',
                        text: 'Cuero',
                        padding: EdgeInsets.only(left: 30, right: 15),
                      ),
                      Aromas(
                        image: 'assets/images/cachemira.jpg',
                        text: 'Cachemira',
                        padding: EdgeInsets.only(right: 15),
                      ),
                      Aromas(
                        image: 'assets/images/ladano.jpg',
                        text: 'Ládano',
                        padding: EdgeInsets.only(right: 15),
                      ),
                      Aromas(
                        image: 'assets/images/pino.jpg',
                        text: 'Pino',
                        padding: EdgeInsets.only(right: 0),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Image.asset('assets/images/1_million_paco_rabanne.webp',
                          height: 190, width: 190),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: Text('Acordes Principales',
                                style: styleTextLocion),
                          ),
                          const SizedBox(height: 10),
                          const MainChords(
                            containerWidth: 230,
                            containerColor: Color.fromRGBO(237, 242, 251, 1),
                            colorText: Colors.black,
                            text: 'floral blanco',
                          ),
                          const MainChords(
                            containerWidth: 210,
                            containerColor: Color.fromRGBO(236, 250, 244, 1),
                            colorText: Colors.black,
                            text: 'nardos',
                          ),
                          const MainChords(
                            containerWidth: 190,
                            containerColor: Color.fromRGBO(197, 101, 48, 1),
                            colorText: Colors.white70,
                            text: 'ámbar',
                          ),
                          const MainChords(
                            containerWidth: 180,
                            containerColor: Color.fromRGBO(161, 105, 58, 1),
                            colorText: Colors.white,
                            text: 'animálico',
                          ),
                          const MainChords(
                            containerWidth: 150,
                            containerColor: Color.fromRGBO(158, 122, 88, 1),
                            colorText: Colors.white70,
                            text: 'amaderado',
                          ),
                          const MainChords(
                            containerWidth: 140,
                            containerColor: Color.fromRGBO(240, 255, 251, 1),
                            colorText: Colors.black54,
                            text: 'salado',
                          ),
                          const MainChords(
                            containerWidth: 135,
                            containerColor: Color.fromRGBO(167, 136, 126, 1),
                            colorText: Colors.white70,
                            text: 'cuero',
                          ),
                          const MainChords(
                            containerWidth: 125,
                            containerColor: Color.fromRGBO(249, 206, 106, 1),
                            colorText: Colors.black54,
                            text: 'tropical',
                          ),
                          const MainChords(
                            containerWidth: 120,
                            containerColor: Color.fromRGBO(241, 232, 242, 1),
                            colorText: Colors.black45,
                            text: 'almizclado',
                          ),
                          const MainChords(
                            containerWidth: 115,
                            containerColor: Color.fromRGBO(247, 242, 231, 1),
                            colorText: Colors.black45,
                            text: 'coco',
                          ),
                          const SizedBox(height: 30)
                        ],
                      ),
                      const Spacer(),
                    ],
                  ),
                  const SizedBox(height: 30),
                  //TODO:
                  const Aromas100(
                    title: '1 Million Lucky - Paco Rabanne',
                    description: '''
1 Million Lucky de Paco Rabanne es una
fragancia de la familia olfativa Amaderada
para Hombres. 1 Million Lucky se lanzó en
2018. Su longevidad es duradera y su
estela es moderada. Es un aroma Masculino.
''',
                    imageLocion:
                        'assets/images/1_million_lucky_paco_rabanne.jpeg',
                    imageNotaSalida: 'assets/images/ciruela.jpg',
                    textNotaSalida: 'Ciruela',
                    imageNotaSalida2: 'assets/images/notas_ozonicas.jpg',
                    textNotaSalida2: 'Notas Ozónicas',
                    imageNotaSalida3: 'assets/images/toronja.jpg',
                    textNotaSalida3: 'Toronja',
                    imageNotaSalida4: 'assets/images/bergamota.jpg',
                    textNotaSalida4: 'Bergamota',
                    imageCorazon: 'assets/images/avellana.jpg',
                    textCorazon: 'Avellana',
                    imageCorazon2: 'assets/images/miel.jpg',
                    textCorazon2: 'Miel',
                    imageCorazon3: 'assets/images/cedro.jpg',
                    textCorazon3: 'Cedro',
                    imageCorazon4: 'assets/images/madera_de_cachemira.jpg',
                    textCorazon4: '''Madera de
Cachemira''',
                    imageCorazon5:
                        'assets/images/flor_de_azahar_del_naranjo.jpg',
                    textCorazon5: '''Flor del
Naranjo''',
                    imageBase: 'assets/images/amberwood.jpg',
                    textBase: 'Amberwood',
                    imageBase2: 'assets/images/pachuli.jpg',
                    textBase2: 'Pachulí',
                    imageBase3: 'assets/images/musgo_de_roble.jpg',
                    textBase3: 'Musgo de Roble',
                    imageBase4: 'assets/images/vetiver.jpg',
                    textBase4: 'Vetiver',
                    containerWidth: 230,
                    containerColor: Color.fromRGBO(119, 68, 20, 1),
                    colorText: Colors.white,
                    text: 'amaderado',
                    containerWidth2: 170,
                    containerColor2: Color.fromRGBO(241, 91, 95, 1),
                    colorText2: Colors.white,
                    text2: 'dulce',
                    containerWidth3: 155,
                    containerColor3: Color.fromRGBO(198, 174, 133, 1),
                    colorText3: Colors.black87,
                    text3: 'nueces',
                    containerWidth4: 150,
                    containerColor4: Color.fromRGBO(251, 191, 71, 1),
                    colorText4: Colors.black87,
                    text4: 'amielado',
                    containerWidth5: 140,
                    containerColor5: Color.fromRGBO(253, 127, 103, 1),
                    colorText5: Colors.black54,
                    text5: 'afrutados',
                    containerWidth6: 120,
                    containerColor6: Color.fromRGBO(251, 255, 148, 1),
                    colorText6: Colors.black54,
                    text6: 'cítrico',
                    containerWidth7: 110,
                    containerColor7: Color.fromRGBO(224, 253, 252, 1),
                    colorText7: Colors.black54,
                    text7: 'ozónico',
                    containerWidth8: 110,
                    containerColor8: Color.fromRGBO(217, 155, 121, 1),
                    colorText8: Colors.white60,
                    text8: 'ámbar',
                    containerWidth9: 100,
                    containerColor9: Color.fromRGBO(255, 170, 195, 1),
                    colorText9: Colors.black45,
                    text9: 'florales',
                    containerWidth10: 95,
                    containerColor10: Color.fromRGBO(245, 248, 252, 1),
                    colorText10: Colors.black45,
                    text10: 'floral blanco',
                  ),
                  //TODO:
                  const Aromas100(
                    title: 'Invictus - Paco Rabanne',
                    description: '''
Invictus de Paco Rabanne es una fragancia
de la familia olfativa Amaderada Acuática
para Hombres. Invictus se lanzó en 2013.
Su longevidad es de moderada a duradera y
su estela es moderada. Es un aroma Masculino.
''',
                    imageLocion: 'assets/images/invictus_paco_rabanne.jpg',
                    imageNotaSalida: 'assets/images/notas_marinas.jpg',
                    textNotaSalida: 'Notas Marinas',
                    imageNotaSalida2: 'assets/images/toronja.jpg',
                    textNotaSalida2: 'Toronja',
                    imageNotaSalida3: 'assets/images/mandarina.jpg',
                    textNotaSalida3: 'Mandarina',
                    imageCorazon: 'assets/images/hoja_de_laurel.jpg',
                    textCorazon: 'Hoja de Laurel',
                    imageCorazon2: 'assets/images/jazmin.jpg',
                    textCorazon2: 'Jazmín',
                    imageBase: 'assets/images/ambar_gris.jpg',
                    textBase: '''Ámbar
Gris''',
                    imageBase2: 'assets/images/madera_de_gaiac.jpg',
                    textBase2: '''Madera
de Gaiac''',
                    imageBase3: 'assets/images/musgo_de_roble.jpg',
                    textBase3: '''Musgo
de Roble''',
                    imageBase4: 'assets/images/pachuli.jpg',
                    textBase4: 'Pachulí',
                    containerWidth: 230,
                    containerColor: Color.fromRGBO(249, 255, 82, 1),
                    colorText: Colors.black,
                    text: 'cítrico',
                    containerWidth2: 200,
                    containerColor2: Color.fromRGBO(41, 102, 166, 1),
                    colorText2: Colors.white,
                    text2: 'marino',
                    containerWidth3: 195,
                    containerColor3: Color.fromRGBO(82, 173, 153, 1),
                    colorText3: Colors.black,
                    text3: 'aromático',
                    containerWidth4: 165,
                    containerColor4: Color.fromRGBO(161, 214, 93, 1),
                    colorText4: Colors.black87,
                    text4: 'fresco especiado',
                    containerWidth5: 145,
                    containerColor5: Color.fromRGBO(166, 132, 101, 1),
                    colorText5: Colors.white70,
                    text5: 'amaderado',
                    containerWidth6: 135,
                    containerColor6: Color.fromRGBO(214, 146, 109, 1),
                    colorText6: Colors.white70,
                    text6: 'ámbar',
                    containerWidth7: 135,
                    containerColor7: Color.fromRGBO(241, 255, 251, 1),
                    colorText7: Colors.black54,
                    text7: 'salado',
                    containerWidth8: 125,
                    containerColor8: Color.fromRGBO(244, 247, 252, 1),
                    colorText8: Colors.black45,
                    text8: 'floral blanco',
                    containerWidth9: 125,
                    containerColor9: Color.fromRGBO(170, 227, 239, 1),
                    colorText9: Colors.black45,
                    text9: 'acuático',
                    containerWidth10: 125,
                    containerColor10: Color.fromRGBO(168, 177, 139, 1),
                    colorText10: Colors.black45,
                    text10: 'alcanforados',
                  ),
                  //TODO:
                  const Aromas100(
                    title: 'Black XS - Paco Rabanne',
                    description: '''
Black XS de Paco Rabanne es una fragancia de
la familia olfativa Ámbar Amaderada para
Hombres. Black XS se lanzó en 2005. Su
longevidad es duradera y su estela es
moderada. Es un aroma Masculino.
''',
                    imageLocion: 'assets/images/black_xs_paco_rabanne.webp',
                    imageNotaSalida: 'assets/images/limon.jpg',
                    textNotaSalida: 'Limón',
                    imageNotaSalida2: 'assets/images/salvia.jpg',
                    textNotaSalida2: 'Salvia',
                    imageCorazon: 'assets/images/praline.jpg',
                    textCorazon: 'Praliné',
                    imageCorazon2: 'assets/images/canela.jpg',
                    textCorazon2: 'Canela',
                    imageCorazon3: 'assets/images/balsamo_de_tolu.jpg',
                    textCorazon3: '''Bálsamo
de Tolú''',
                    imageCorazon4: 'assets/images/cardamomo.jpg',
                    textCorazon4: '''Cardamomo
Negro''',
                    imageBase: 'assets/images/palo_de_rosa_de_brasil.jpg',
                    textBase: '''Palo de Rosa
de Brasil''',
                    imageBase2: 'assets/images/pachuli.jpg',
                    textBase2: 'Pachulí',
                    imageBase3: 'assets/images/ambar_gris.jpg',
                    textBase3: 'Ámbar Negro',
                    containerWidth: 230,
                    containerColor: Color.fromRGBO(238, 54, 59, 1),
                    colorText: Colors.white,
                    text: 'dulce',
                    containerWidth2: 230,
                    containerColor2: Color.fromRGBO(204, 53, 2, 1),
                    colorText2: Colors.white,
                    text2: 'cálido especiado',
                    containerWidth3: 190,
                    containerColor3: Color.fromRGBO(250, 255, 108, 1),
                    colorText3: Colors.black87,
                    text3: 'cítrico',
                    containerWidth4: 170,
                    containerColor4: Color.fromRGBO(203, 117, 70, 1),
                    colorText4: Colors.white70,
                    text4: 'ámbar',
                    containerWidth5: 160,
                    containerColor5: Color.fromRGBO(107, 184, 167, 1),
                    colorText5: Colors.black54,
                    text5: 'aromático',
                    containerWidth6: 150,
                    containerColor6: Color.fromRGBO(158, 122, 88, 1),
                    colorText6: Colors.white70,
                    text6: 'amaderado',
                    containerWidth7: 140,
                    containerColor7: Color.fromRGBO(199, 170, 141, 1),
                    colorText7: Colors.black54,
                    text7: 'balsámico',
                    containerWidth8: 135,
                    containerColor8: Color.fromRGBO(225, 155, 106, 1),
                    colorText8: Colors.white70,
                    text8: 'canela',
                    containerWidth9: 120,
                    containerColor9: Color.fromRGBO(158, 159, 125, 1),
                    colorText9: Colors.white60,
                    text9: 'pachulí',
                    containerWidth10: 110,
                    containerColor10: Color.fromRGBO(245, 245, 243, 1),
                    colorText10: Colors.black45,
                    text10: 'lactónico',
                  ),
                  //TODO:
                  const Aromas100(
                    title: 'Sauvage - Dior',
                    description: '''
Sauvage de Dior es una fragancia de la
familia olfativa Aromática Fougère para
ombres. Sauvage se lanzó en 2015. Tiene
una longevidad duradera y su estela es
pesada. Es un aroma Masculino.
''',
                    imageLocion: 'assets/images/sauvage_dior.jpg',
                    imageNotaSalida: 'assets/images/bergamota.jpg',
                    textNotaSalida: '''Bergamota
de Calabria''',
                    imageNotaSalida2: 'assets/images/pimienta.jpg',
                    textNotaSalida2: 'Pimienta',
                    imageCorazon: 'assets/images/pimienta.jpg',
                    textCorazon: '''Pimienta
de Sichuan''',
                    imageCorazon2: 'assets/images/lavanda.jpg',
                    textCorazon2: 'Lavanda',
                    imageCorazon3: 'assets/images/pimienta_rosa.jpg',
                    textCorazon3: '''Pimienta
Rosa''',
                    imageCorazon4: 'assets/images/vetiver.jpg',
                    textCorazon4: 'Vetiver',
                    imageCorazon5: 'assets/images/pachuli.jpg',
                    textCorazon5: 'Pachulí',
                    imageCorazon6: 'assets/images/geranio.jpg',
                    textCorazon6: 'Geranio',
                    imageCorazon7: 'assets/images/elemi.jpg',
                    textCorazon7: 'Elemí',
                    imageBase: 'assets/images/ambroxan.jpg',
                    textBase: 'Ambroxan',
                    imageBase2: 'assets/images/cedro.jpg',
                    textBase2: 'Cedro',
                    imageBase3: 'assets/images/ladano.jpg',
                    textBase3: 'Ládano',
                    containerWidth: 230,
                    containerColor: Color.fromRGBO(131, 201, 40, 1),
                    colorText: Colors.black,
                    text: 'fresco especiado',
                    containerWidth2: 170,
                    containerColor2: Color.fromRGBO(203, 118, 71, 1),
                    colorText2: Colors.white,
                    text2: 'ámbar',
                    containerWidth3: 165,
                    containerColor3: Color.fromRGBO(250, 255, 127, 1),
                    colorText3: Colors.black87,
                    text3: 'cítrico',
                    containerWidth4: 150,
                    containerColor4: Color.fromRGBO(118, 190, 174, 1),
                    colorText4: Colors.black87,
                    text4: 'aromático',
                    containerWidth5: 140,
                    containerColor5: Color.fromRGBO(239, 229, 241, 1),
                    colorText5: Colors.black54,
                    text5: 'almizclado',
                    containerWidth6: 130,
                    containerColor6: Color.fromRGBO(173, 142, 114, 1),
                    colorText6: Colors.white70,
                    text6: 'amaderado',
                    containerWidth7: 110,
                    containerColor7: Color.fromRGBO(176, 206, 186, 1),
                    colorText7: Colors.black45,
                    text7: 'herbal',
                    containerWidth8: 110,
                    containerColor8: Color.fromRGBO(242, 228, 244, 1),
                    colorText8: Colors.black45,
                    text8: 'Lavanda',
                    containerWidth9: 110,
                    containerColor9: Color.fromRGBO(228, 147, 120, 1),
                    colorText9: Colors.white60,
                    text9: 'cálido especiado',
                  ),
                  //TODO:
                  const Aromas100(
                    title: 'Fahrenheit - Dior',
                    description: '''
Fahrenheit de Dior es una fragancia de
la familia olfativa Aromática Fougère
para Hombres. Fahrenheit se lanzó en 1988.
Tiene una longevidad duradera y su
estela es pesada. Es un aroma masculino.
''',
                    imageLocion: 'assets/images/fahrenheit_dior.jpeg',
                    imageNotaSalida: 'assets/images/flor_del_espino.jpg',
                    textNotaSalida: '''Flor del
Espino''',
                    imageNotaSalida2: 'assets/images/lavanda.jpg',
                    textNotaSalida2: 'Lavanda',
                    imageNotaSalida3: 'assets/images/cedro.jpg',
                    textNotaSalida3: 'Cedro',
                    imageNotaSalida4: 'assets/images/bergamota.jpg',
                    textNotaSalida4: 'Bergamota',
                    imageNotaSalida5: 'assets/images/limon.jpg',
                    textNotaSalida5: 'Limón',
                    imageNotaSalida6: 'assets/images/nuez_moscada.jpg',
                    textNotaSalida6: '''Flor del
Mascadero''',
                    imageNotaSalida7: 'assets/images/mandarina.jpg',
                    textNotaSalida7: 'Mandarina',
                    imageNotaSalida8: 'assets/images/manzanilla.jpg',
                    textNotaSalida8: 'Manzanilla',
                    imageCorazon: 'assets/images/hojas_de_violeta.jpg',
                    textCorazon: '''Hojas de
Violeta''',
                    imageCorazon2: 'assets/images/nuez_moscada.jpg',
                    textCorazon2: '''Nuez
Moscada''',
                    imageCorazon3: 'assets/images/cedro.jpg',
                    textCorazon3: 'Cedro',
                    imageCorazon4: 'assets/images/clavel.jpg',
                    textCorazon4: 'Clavel',
                    imageCorazon5: 'assets/images/madreselva.jpg',
                    textCorazon5: '''Madre
Selva''',
                    imageCorazon6: 'assets/images/jazmin.jpg',
                    textCorazon6: 'Jazmín',
                    imageCorazon7: 'assets/images/lirio_de_los_valles.jpg',
                    textCorazon7: '''Lirio de
los Valles''',
                    imageBase: 'assets/images/cuero.jpg',
                    textBase: 'Cuero',
                    imageBase2: 'assets/images/vetiver.jpg',
                    textBase2: 'Vetiver',
                    imageBase3: 'assets/images/almizcle.jpg',
                    textBase3: 'Almizcle',
                    imageBase4: 'assets/images/ambar.jpg',
                    textBase4: 'Ámbar',
                    imageBase5: 'assets/images/pachuli.jpg',
                    textBase5: 'Pachulí',
                    imageBase6: 'assets/images/cumarina.jpg',
                    textBase6: 'Haba Tonka',
                    containerWidth: 230,
                    containerColor: Color.fromRGBO(120, 72, 58, 1),
                    colorText: Colors.white,
                    text: 'cuero',
                    containerWidth2: 200,
                    containerColor2: Color.fromRGBO(133, 87, 44, 1),
                    colorText2: Colors.white,
                    text2: 'amaderado',
                    containerWidth3: 180,
                    containerColor3: Color.fromRGBO(210, 253, 251, 1),
                    colorText3: Colors.black87,
                    text3: 'ozónico',
                    containerWidth4: 170,
                    containerColor4: Color.fromRGBO(155, 211, 82, 1),
                    colorText4: Colors.black87,
                    text4: 'fresco especiado',
                    containerWidth5: 160,
                    containerColor5: Color.fromRGBO(167, 115, 72, 1),
                    colorText5: Colors.white70,
                    text5: 'animálico',
                    containerWidth6: 160,
                    containerColor6: Color.fromRGBO(100, 181, 164, 1),
                    colorText6: Colors.black54,
                    text6: 'aromático',
                    containerWidth7: 140,
                    containerColor7: Color.fromRGBO(142, 218, 234, 1),
                    colorText7: Colors.black54,
                    text7: 'acuático',
                    containerWidth8: 140,
                    containerColor8: Color.fromRGBO(255, 141, 173, 1),
                    colorText8: Colors.black54,
                    text8: 'florales',
                    containerWidth9: 130,
                    containerColor9: Color.fromRGBO(251, 255, 139, 1),
                    colorText9: Colors.black45,
                    text9: 'cítrico',
                    containerWidth10: 120,
                    containerColor10: Color.fromRGBO(102, 182, 111, 1),
                    colorText10: Colors.white60,
                    text10: 'verde',
                  ),
                  //TODO:
                  const Aromas100(
                    title: 'CK One - Calvin Klein',
                    description: '''
CK One de Calvin Klein es una fragancia
de la familia olfativa Cítrica Aromática
para Hombres y Mujeres. CK One se lanzó
en 1994. Su longevidad y su estela son
moderadas. Es un aroma Unisex.
''',
                    imageLocion: 'assets/images/ck_one_calvin_klein.jpeg',
                    imageNotaSalida: 'assets/images/limon.jpg',
                    textNotaSalida: 'Limón',
                    imageNotaSalida2: 'assets/images/piña.jpg',
                    textNotaSalida2: 'Piña',
                    imageNotaSalida3: 'assets/images/bergamota.jpg',
                    textNotaSalida3: 'Bergamota',
                    imageNotaSalida4: 'assets/images/mandarina.jpg',
                    textNotaSalida4: 'Mandarina',
                    imageNotaSalida5: 'assets/images/papaya.jpg',
                    textNotaSalida5: 'Papaya',
                    imageNotaSalida6: 'assets/images/cardamomo.jpg',
                    textNotaSalida6: 'Cardamomo',
                    imageNotaSalida7: 'assets/images/notas_verdes.jpg',
                    textNotaSalida7: '''Notas
Verdes''',
                    imageCorazon: 'assets/images/lirio_de_los_valles.jpg',
                    textCorazon: '''Lirio de
los Valles''',
                    imageCorazon2: 'assets/images/jazmin.jpg',
                    textCorazon2: 'Jazmín',
                    imageCorazon3: 'assets/images/violeta.jpg',
                    textCorazon3: 'Violeta',
                    imageCorazon4: 'assets/images/rosa.jpg',
                    textCorazon4: 'Rosa',
                    imageCorazon5: 'assets/images/nuez_moscada.jpg',
                    textCorazon5: '''Nuez
Moscada''',
                    imageCorazon6: 'assets/images/raiz_de_lirio.jpg',
                    textCorazon6: '''Raíz de
Lirio''',
                    imageCorazon7: 'assets/images/fresia.jpg',
                    textCorazon7: 'Fresia',
                    imageBase: 'assets/images/notas_verdes.jpg',
                    textBase: '''Acordes
Verdes''',
                    imageBase2: 'assets/images/almizcle.jpg',
                    textBase2: 'Almizcle',
                    imageBase3: 'assets/images/cedro.jpg',
                    textBase3: 'Cedro',
                    imageBase4: 'assets/images/sandalo.jpg',
                    textBase4: 'Sándalo',
                    imageBase5: 'assets/images/musgo_de_roble.jpg',
                    textBase5: '''Musgo de
Roble''',
                    imageBase6: 'assets/images/te_verde.jpg',
                    textBase6: 'Té Verde',
                    imageBase7: 'assets/images/ambar.jpg',
                    textBase7: 'Ámbar',
                    containerWidth: 230,
                    containerColor: Color.fromRGBO(249, 255, 82, 1),
                    colorText: Colors.black,
                    text: 'cítrico',
                    containerWidth2: 170,
                    containerColor2: Color.fromRGBO(74, 168, 85, 1),
                    colorText2: Colors.white,
                    text2: 'verde',
                    containerWidth3: 140,
                    containerColor3: Color.fromRGBO(168, 136, 105, 1),
                    colorText3: Colors.white,
                    text3: 'amaderado',
                    containerWidth4: 140,
                    containerColor4: Color.fromRGBO(243, 233, 222, 1),
                    colorText4: Colors.black54,
                    text4: 'atalcado',
                    containerWidth5: 135,
                    containerColor5: Color.fromRGBO(243, 246, 252, 1),
                    colorText5: Colors.black54,
                    text5: 'floral blanco',
                    containerWidth6: 135,
                    containerColor6: Color.fromRGBO(194, 238, 243, 1),
                    colorText6: Colors.black54,
                    text6: 'fresco',
                    containerWidth7: 135,
                    containerColor7: Color.fromRGBO(134, 197, 183, 1),
                    colorText7: Colors.black54,
                    text7: 'aromático',
                    containerWidth8: 125,
                    containerColor8: Color.fromRGBO(185, 224, 134, 1),
                    colorText8: Colors.black45,
                    text8: 'fresco especiado',
                    containerWidth9: 120,
                    containerColor9: Color.fromRGBO(254, 167, 192, 1),
                    colorText9: Colors.black45,
                    text9: 'florales',
                    containerWidth10: 120,
                    containerColor10: Color.fromRGBO(241, 233, 243, 1),
                    colorText10: Colors.black45,
                    text10: 'almizclado',
                  ),
                  //TODO:
                  const Aromas100(
                    title: '360° for Men - Perry Ellis',
                    description: '''
360° for Men de Perry Ellis es una fragancia
de la familia olfativa Aromática para Hombres.
360° for Men se lanzó en 1995. Tiene longevidad
y estela moderadas. Es un aroma Masculino.
''',
                    imageLocion: 'assets/images/360_for_men_perry_ellis.jpg',
                    imageNotaSalida: 'assets/images/bayas_de_enebro.jpg',
                    textNotaSalida: '''Bayas de
Enebro''',
                    imageNotaSalida2: 'assets/images/limon.jpg',
                    textNotaSalida2: 'Limón',
                    imageNotaSalida3: 'assets/images/bergamota.jpg',
                    textNotaSalida3: 'Bergamota',
                    imageCorazon: 'assets/images/lavanda.jpg',
                    textCorazon: 'Lavanda',
                    imageCorazon2: 'assets/images/salvia.jpg',
                    textCorazon2: 'Salvia',
                    imageCorazon3: 'assets/images/cardamomo.jpg',
                    textCorazon3: 'Cardamomo',
                    imageCorazon4: 'assets/images/fresia.jpg',
                    textCorazon4: 'Fresia',
                    imageBase: 'assets/images/notas_amaderadas.jpg',
                    textBase: '''Notas
Amaderadas''',
                    imageBase2: 'assets/images/vetiver.jpg',
                    textBase2: 'Vetiver',
                    imageBase3: 'assets/images/almizcle.jpg',
                    textBase3: 'Almizcle',
                    containerWidth: 230,
                    containerColor: Color.fromRGBO(55, 160, 137, 1),
                    colorText: Colors.black,
                    text: 'aromático',
                    containerWidth2: 140,
                    containerColor2: Color.fromRGBO(158, 122, 88, 1),
                    colorText2: Colors.white,
                    text2: 'amaderado',
                    containerWidth3: 140,
                    containerColor3: Color.fromRGBO(168, 217, 105, 1),
                    colorText3: Colors.black87,
                    text3: 'fresco especiado',
                    containerWidth4: 125,
                    containerColor4: Color.fromRGBO(250, 254, 142, 1),
                    colorText4: Colors.black54,
                    text4: 'cítrico',
                    containerWidth5: 110,
                    containerColor5: Color.fromRGBO(240, 226, 243, 1),
                    colorText5: Colors.black45,
                    text5: 'lavanda',
                  ), //TODO:
                  const Aromas100(
                    title: 'Nautica Voyage - Nautica',
                    description: '''
Nautica Voyage de Nautica es una fragancia
de la familia olfativa Amaderada Acuática
para Hombres. Nautica Voyage se lanzó en 2006.
Su longevidad y su estela son moderadas.
Es un aroma Masculino.
''',
                    imageLocion: 'assets/images/nautica_voyage_nautica.jpg',
                    imageNotaSalida: 'assets/images/notas_verdes.jpg',
                    textNotaSalida: 'Hojas Verdes',
                    imageNotaSalida2: 'assets/images/manzana.jpg',
                    textNotaSalida2: 'Manzana',
                    imageCorazon: 'assets/images/flor_de_loto.jpg',
                    textCorazon: 'Flor de Loto',
                    imageCorazon2: 'assets/images/mimosa.jpg',
                    textCorazon2: 'Mimosa',
                    imageBase: 'assets/images/almizcle.jpg',
                    textBase: 'Almizcle',
                    imageBase2: 'assets/images/cedro.jpg',
                    textBase2: 'Cedro',
                    imageBase3: 'assets/images/musgo_de_roble.jpg',
                    textBase3: 'Musgo de Roble',
                    imageBase4: 'assets/images/ambar.jpg',
                    textBase4: 'Ámbar',
                    containerWidth: 230,
                    containerColor: Color.fromRGBO(14, 140, 29, 1),
                    colorText: Colors.white,
                    text: 'verde',
                    containerWidth2: 150,
                    containerColor2: Color.fromRGBO(252, 126, 101, 1),
                    colorText2: Colors.black87,
                    text2: 'afrutados',
                    containerWidth3: 135,
                    containerColor3: Color.fromRGBO(254, 149, 179, 1),
                    colorText3: Colors.black87,
                    text3: 'florales',
                    containerWidth4: 120,
                    containerColor4: Color.fromRGBO(194, 239, 243, 1),
                    colorText4: Colors.black54,
                    text4: 'fresco',
                    containerWidth5: 120,
                    containerColor5: Color.fromRGBO(244, 234, 224, 1),
                    colorText5: Colors.black54,
                    text5: 'atalcado',
                    containerWidth6: 115,
                    containerColor6: Color.fromRGBO(165, 225, 238, 1),
                    colorText6: Colors.black54,
                    text6: 'acuático',
                    containerWidth7: 110,
                    containerColor7: Color.fromRGBO(241, 233, 242, 1),
                    colorText7: Colors.black54,
                    text7: 'almizclado',
                    containerWidth8: 105,
                    containerColor8: Color.fromRGBO(181, 154, 128, 1),
                    colorText8: Colors.white70,
                    text8: 'amaderado',
                    containerWidth9: 100,
                    containerColor9: Color.fromRGBO(254, 236, 128, 1),
                    colorText9: Colors.black45,
                    text9: 'floral amarillo',
                  ),
                  //TODO:
                  const Aromas100(
                      title: 'Toy Boy - Moschino',
                      description: '''
Toy Boy de Moschino es una fragancia de la
familia olfativa Amaderada Especiada para Hombres.
Toy Boy se lanzó en 2019. Su longevidad es duradera
y su estela es pesada. Es un aroma Unisex.
''',
                      imageLocion: 'assets/images/toy_boy_moschino.webp',

                      imageNotaSalida: 'assets/images/pimienta_rosa.jpg',
                      textNotaSalida: '''Pimienta
Rosa''',
                      imageNotaSalida2: 'assets/images/pera.jpg',
                      textNotaSalida2: 'Pera',

                      imageNotaSalida3: 'assets/images/nuez_moscada.jpg',
                      textNotaSalida3: '''Nuez 
Moscada''',
                      imageNotaSalida4: 'assets/images/elemi.jpg',
                      textNotaSalida4: 'Elemí',

                      imageNotaSalida5: 'assets/images/bergamota.jpg',
                      textNotaSalida5: 'Bergamota',

                      imageCorazon: 'assets/images/rosa.jpg',
                      textCorazon: 'Rosa',

                      imageCorazon2: 'assets/images/clavos_de_olor.jpg',
                      textCorazon2: '''Clavos
de Olor''',
                      imageCorazon3: 'assets/images/magnolia.jpg',
                      textCorazon3: 'Magnolia',

                      imageCorazon4: 'assets/images/lino.jpg',
                      textCorazon4: 'Lino',

                      imageBase: 'assets/images/cachemira.jpg',
                      textBase: 'Cachemira',

                      imageBase2: 'assets/images/vetiver.jpg',
                      textBase2: '''Vetiver
de Haití''',
                      imageBase3: 'assets/images/sylkolide.jpg',
                      textBase3: 'Sylkolide',

                      imageBase4: 'assets/images/sandalo.jpg',
                      textBase4: 'Sándalo',

                      imageBase5: 'assets/images/ambar.jpg',
                      textBase5: 'Ámbar',

                      containerWidth: 230,
                      containerColor: Color.fromRGBO(254, 1, 107, 1),
                      colorText: Colors.white,
                      text: 'rosas',

                      containerWidth2: 170,
                      containerColor2: Color.fromRGBO(254, 128, 164, 1),
                      colorText2: Colors.black87,
                      text2: 'florales',

                      containerWidth3: 160,
                      containerColor3: Color.fromRGBO(236, 225, 239, 1),
                      colorText3: Colors.black87,
                      text3: 'almizclado',

                      containerWidth4: 155,
                      containerColor4: Color.fromRGBO(154, 117, 82, 1),
                      colorText4: Colors.white,
                      text4: 'amaderado',

                      containerWidth5: 150,
                      containerColor5: Color.fromRGBO(233, 156, 130, 1),
                      colorText5: Colors.black87,
                      text5: 'especiado suave',

                      containerWidth6: 135,
                      containerColor6: Color.fromRGBO(209, 135, 95, 1),
                      colorText6: Colors.white70,
                      text6: 'ámbar',
                    
                      containerWidth7: 135,
                      containerColor7: Color.fromRGBO(172, 218, 111, 1),
                      colorText7: Colors.black54,
                      text7: 'fresco especiado',
                    
                      containerWidth8: 135,
                      containerColor8: Color.fromRGBO(123, 192, 177, 1),
                      colorText8: Colors.black54,
                      text8: 'aromático',
                    
                      containerWidth9: 125,
                      containerColor9: Color.fromRGBO(244, 130, 133, 1),
                      colorText9: Colors.white70,
                      text9: 'dulce',

                      containerWidth10: 120,
                      containerColor10: Color.fromRGBO(223, 131, 101, 1),
                      colorText10: Colors.white70,
                      text10: 'cálido especiado',
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
  containerWidth6: ,
  containerColor6: ,
  colorText6: ,
  text6: ,

  containerWidth7: ,
  containerColor7: ,
  colorText7: ,
  text7: ,

  containerWidth8: ,
  containerColor8: ,
  colorText8: ,
  text8: ,

  containerWidth9: ,
  containerColor9: ,
  colorText9: ,
  text9: ,
*/

class Aromas100 extends StatelessWidget {
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
  final String imageBase;
  final String textBase;
  final String imageBase2;
  final String textBase2;
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
  final double containerWidth4;
  final Color? containerColor4;
  final Color colorText4;
  final String text4;
  final double containerWidth5;
  final Color? containerColor5;
  final Color colorText5;
  final String text5;
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
  const Aromas100({
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
    required this.imageBase,
    required this.textBase,
    required this.imageBase2,
    required this.textBase2,
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
    this.containerColor3,
    required this.colorText3,
    required this.text3,
    required this.containerWidth4,
    required this.containerColor4,
    required this.colorText4,
    required this.text4,
    required this.containerWidth5,
    required this.containerColor5,
    required this.colorText5,
    required this.text5,
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

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(title, style: styleText3Mobile),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(description, style: styleTextLocion),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text('Notas de Salida:', style: styleTextLocion2),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Aromas(
              image: imageNotaSalida,
              text: textNotaSalida,
              padding: const EdgeInsets.only(left: 30, right: 15),
            ),
            if (imageNotaSalida2 != null && textNotaSalida2 != null)
              Aromas(
                image: imageNotaSalida2!,
                text: textNotaSalida2!,
                padding: const EdgeInsets.only(right: 15),
              ),
            if (imageNotaSalida3 != null && textNotaSalida3 != null)
              Aromas(
                image: imageNotaSalida3!,
                text: textNotaSalida3!,
                padding: const EdgeInsets.only(right: 15),
              ),
            if (imageNotaSalida4 != null && textNotaSalida4 != null)
              Aromas(
                image: imageNotaSalida4!,
                text: textNotaSalida4!,
                padding: const EdgeInsets.only(right: 15),
              ),
            if (imageNotaSalida5 != null && textNotaSalida5 != null)
              Aromas(
                image: imageNotaSalida5!,
                text: textNotaSalida5!,
                padding: const EdgeInsets.only(right: 0),
              ),
          ],
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            if (imageNotaSalida6 != null && textNotaSalida6 != null)
              Aromas(
                image: imageNotaSalida6!,
                text: textNotaSalida6!,
                padding: const EdgeInsets.only(left: 30, right: 15),
              ),
            if (imageNotaSalida7 != null && textNotaSalida7 != null)
              Aromas(
                image: imageNotaSalida7!,
                text: textNotaSalida7!,
                padding: const EdgeInsets.only(right: 15),
              ),
            if (imageNotaSalida8 != null && textNotaSalida8 != null)
              Aromas(
                image: imageNotaSalida8!,
                text: textNotaSalida8!,
                padding: const EdgeInsets.only(right: 0),
              ),
          ],
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text('Corazón:', style: styleTextLocion2),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Aromas(
              image: imageCorazon,
              text: textCorazon,
              padding: const EdgeInsets.only(left: 30, right: 15),
            ),
            if (imageCorazon2 != null && textCorazon2 != null)
              Aromas(
                image: imageCorazon2!,
                text: textCorazon2!,
                padding: const EdgeInsets.only(right: 15),
              ),
            if (imageCorazon3 != null && textCorazon3 != null)
              Aromas(
                image: imageCorazon3!,
                text: textCorazon3!,
                padding: const EdgeInsets.only(right: 15),
              ),
            if (imageCorazon4 != null && textCorazon4 != null)
              Aromas(
                image: imageCorazon4!,
                text: textCorazon4!,
                padding: const EdgeInsets.only(right: 15),
              ),
            if (imageCorazon5 != null && textCorazon5 != null)
              Aromas(
                image: imageCorazon5!,
                text: textCorazon5!,
                padding: const EdgeInsets.only(right: 15),
              ),
          ],
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            if (imageCorazon6 != null && textCorazon6 != null)
              Aromas(
                image: imageCorazon6!,
                text: textCorazon6!,
                padding: const EdgeInsets.only(left: 30, right: 15),
              ),
            if (imageCorazon7 != null && textCorazon7 != null)
              Aromas(
                image: imageCorazon7!,
                text: textCorazon7!,
                padding: const EdgeInsets.only(right: 15),
              ),
          ],
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text('Base:', style: styleTextLocion2),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Aromas(
              image: imageBase,
              text: textBase,
              padding: const EdgeInsets.only(left: 30, right: 15),
            ),
            Aromas(
              image: imageBase2,
              text: textBase2,
              padding: const EdgeInsets.only(right: 15),
            ),
            if (imageBase3 != null && textBase3 != null)
              Aromas(
                image: imageBase3!,
                text: textBase3!,
                padding: const EdgeInsets.only(right: 15),
              ),
            if (imageBase4 != null && textBase4 != null)
              Aromas(
                image: imageBase4!,
                text: textBase4!,
                padding: const EdgeInsets.only(right: 15),
              ),
          ],
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            if (imageBase5 != null && textBase5 != null)
              Aromas(
                image: imageBase5!,
                text: textBase5!,
                padding: const EdgeInsets.only(left: 30, right: 15),
              ),
            if (imageBase6 != null && textBase6 != null)
              Aromas(
                image: imageBase6!,
                text: textBase6!,
                padding: const EdgeInsets.only(right: 15),
              ),
            if (imageBase7 != null && textBase7 != null)
              Aromas(
                image: imageBase7!,
                text: textBase7!,
                padding: const EdgeInsets.only(right: 15),
              ),
            if (imageBase8 != null && textBase8 != null)
              Aromas(
                image: imageBase8!,
                text: textBase8!,
                padding: const EdgeInsets.only(right: 0),
              ),
          ],
        ),
        const SizedBox(height: 30),
        Row(
          children: [
            Image.asset(imageLocion, height: 190, width: 190),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Text('Acordes Principales', style: styleTextLocion),
                ),
                const SizedBox(height: 10),
                MainChords(
                  containerWidth: containerWidth,
                  containerColor: containerColor,
                  colorText: colorText,
                  text: text,
                ),
                MainChords(
                  containerWidth: containerWidth2,
                  containerColor: containerColor2,
                  colorText: colorText2,
                  text: text2,
                ),
                MainChords(
                  containerWidth: containerWidth3,
                  containerColor: containerColor3,
                  colorText: colorText3,
                  text: text3,
                ),
                MainChords(
                  containerWidth: containerWidth4,
                  containerColor: containerColor4,
                  colorText: colorText4,
                  text: text4,
                ),
                MainChords(
                  containerWidth: containerWidth5,
                  containerColor: containerColor5,
                  colorText: colorText5,
                  text: text5,
                ),
                if (containerWidth6 != null &&
                    containerColor6 != null &&
                    colorText6 != null &&
                    text6 != null)
                  MainChords(
                    containerWidth: containerWidth6!,
                    containerColor: containerColor6!,
                    colorText: colorText6!,
                    text: text6!,
                  ),
                if (containerWidth7 != null &&
                    containerColor7 != null &&
                    colorText7 != null &&
                    text7 != null)
                  MainChords(
                    containerWidth: containerWidth7!,
                    containerColor: containerColor7!,
                    colorText: colorText7!,
                    text: text7!,
                  ),
                if (containerWidth8 != null &&
                    containerColor8 != null &&
                    colorText8 != null &&
                    text8 != null)
                  MainChords(
                    containerWidth: containerWidth8!,
                    containerColor: containerColor8!,
                    colorText: colorText8!,
                    text: text8!,
                  ),
                if (containerWidth9 != null &&
                    containerColor9 != null &&
                    colorText9 != null &&
                    text9 != null)
                  MainChords(
                    containerWidth: containerWidth9!,
                    containerColor: containerColor9!,
                    colorText: colorText9!,
                    text: text9!,
                  ),
                if (containerWidth10 != null &&
                    containerColor10 != null &&
                    colorText10 != null &&
                    text10 != null)
                  MainChords(
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
      ],
    );
  }
}
