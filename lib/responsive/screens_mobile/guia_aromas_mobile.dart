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
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Bienvenido a Nuestra Guía de Aromas', style: styleText3Mobile),
                          const SizedBox(height: 15),
                          const Text(TextAromasGuide.aromasGuideText, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500))
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
                      Image.asset('assets/images/yara_lattafa.jpg', height: 190, width: 190),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: Text('Acordes Principales', style: styleTextLocion),
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
                    child: Text('Ombre Nomade - Louis Vuitton', style: styleText3Mobile),
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
                      Image.asset('assets/images/ombre_nomade_louis_vuitton.webp', height: 190, width: 190),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: Text('Acordes Principales', style: styleTextLocion),
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
                    child: Text('Bade\'e Al Oud Amethyst - Lattafa', style: styleText3Mobile),
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
                      Image.asset('assets/images/amethyst_lattafa.webp', height: 190, width: 190),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: Text('Acordes Principales', style: styleTextLocion),
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
                    text9: 'balsámico'
                  ),
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
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Aromas100 extends StatelessWidget {

  final String title;
  final String description;
  final String imageLocion;
  final String imageNotaSalida;
  final String textNotaSalida;
  final String imageNotaSalida2;
  final String textNotaSalida2;
  final String imageNotaSalida3;
  final String textNotaSalida3;
  final String? imageNotaSalida4;
  final String? textNotaSalida4;
  final String imageCorazon;
  final String textCorazon;
  final String? imageCorazon2;
  final String? textCorazon2;
  final String? imageCorazon3;
  final String? textCorazon3;
  final String imageBase;
  final String textBase;
  final String imageBase2;
  final String textBase2;
  final String? imageBase3;
  final String? textBase3;
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
  final double containerWidth6;
  final Color? containerColor6;
  final Color colorText6;
  final String text6;
  final double containerWidth7;
  final Color? containerColor7;
  final Color colorText7;
  final String text7;
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
    required this.imageNotaSalida2, 
    required this.textNotaSalida2, 
    required this.imageNotaSalida3, 
    required this.textNotaSalida3,
    this.imageNotaSalida4,
    this.textNotaSalida4,
    required this.imageCorazon, 
    required this.textCorazon, 
    this.imageCorazon2,
    this.textCorazon2,
    this.imageCorazon3,
    this.textCorazon3,
    required this.imageBase, 
    required this.textBase, 
    required this.imageBase2, 
    required this.textBase2,
    this.imageBase3,
    this.textBase3,
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
    required this.containerWidth6, 
    required this.containerColor6, 
    required this.colorText6, 
    required this.text6, 
    required this.containerWidth7, 
    required this.containerColor7, 
    required this.colorText7, 
    required this.text7, 
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
            Aromas(
              image: imageNotaSalida2,
              text: textNotaSalida2,
              padding: const EdgeInsets.only(right: 15),
            ),
            Aromas(
              image: imageNotaSalida3,
              text: textNotaSalida3,
              padding: const EdgeInsets.only(right: 15),
            ),
            if (imageNotaSalida4 != null && textNotaSalida4 != null)
            Aromas(
              image: imageNotaSalida4!,
              text: textNotaSalida4!,
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
                MainChords(
                  containerWidth: containerWidth6,
                  containerColor: containerColor6,
                  colorText: colorText6,
                  text: text6,
                ),
                MainChords(
                  containerWidth: containerWidth7,
                  containerColor: containerColor7,
                  colorText: colorText7,
                  text: text7,
                ),
                if (
                  containerWidth8 != null && 
                  containerColor8 != null &&
                  colorText8 != null &&
                  text8 != null  
                )
                MainChords(
                  containerWidth: containerWidth8!,
                  containerColor: containerColor8!,
                  colorText: colorText8!,
                  text: text8!,
                ),
                if (
                  containerWidth9 != null && 
                  containerColor9 != null &&
                  colorText9 != null &&
                  text9 != null  
                )
                MainChords(
                  containerWidth: containerWidth9!,
                  containerColor: containerColor9!,
                  colorText: colorText9!,
                  text: text9!,
                ),
                if (
                  containerWidth10 != null && 
                  containerColor10 != null &&
                  colorText10 != null &&
                  text10 != null  
                )
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