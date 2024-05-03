import 'package:marking_web/exports.dart';


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
                    child: Text('YARA - LATTAFA', style: styleText3Mobile),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text('''
Yara de Lattafa Perfumes es una fragancia de la familia olfativa Ámbar Vainilla para Mujeres. 
Yara se lanzó en 2020. Las Notas de Salida son orquídea, heliotropo y naranja tangerina; 
las Notas de Corazón son Acuerdo goloso y frutas tropicales; 
las Notas de Fondo son vainilla, almizcle y sándalo. Aroma Femenino. 
Su longevidad y su estela son moderadas. Es un aroma Femenino.
''', style: styleTextLocion),
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/yara_lattafa.jpg', height: 200, width: 200),
                      Column(
                        children: [
                          
                        ],
                      )
                    ],
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