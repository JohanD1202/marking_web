import 'package:marking_web/exports.dart';
import 'package:marking_web/responsive/screens_mobile/section_crea_tu_locion_mobile.dart';



class CreaTuLocionMobile extends StatefulWidget {
  // ignore: use_super_parameters
  const CreaTuLocionMobile({Key? key}) : super(key: key);

  @override
  State<CreaTuLocionMobile> createState() => _CreaTuLocionMobileState();
}

class _CreaTuLocionMobileState extends State<CreaTuLocionMobile> {
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
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Bienvenidos a la sección de Crea Tu Loción', style: styleText3Mobile),
                          const SizedBox(height: 20),
                          Text('''
Bienvenido a nuestra innovadora sección Crea tu Loción
donde la creatividad y la personalización se unen para
ofrecerte aromas únicos y exclusivos. Aquí puedes
combinar dos de nuestras lociones para crear una
fragancia que sea verdaderamente tuya.

Cómo funciona:

Explora nuestras sugerencias: 
Utiliza nuestro menú desplegable de sugerencias para
inspirarte. Estas combinaciones recomendadas están
diseñadas por expertos para ofrecerte mezclas
armoniosas y sorprendentes. Si te llama la atención
una de las sugerencias armala tú mismo en las lociones
elegibles de los menús.

Elige tus lociones: 
Puedes desplegar los dos menús que contienen todas
nuestras lociones disponibles y seleccionar una loción
de cada lista para crear tu combinación personalizada.

Elige la cantidad:
Por último, elige la cantidad que deseas comprar de tu
combinación.

Añade tu creación al carrito:
Una vez que hayas seleccionado tus lociones favoritas
y la cantidad, da click en el botón de 'Listo ✔', verás
un resumen con los detalles de tu compra, solo haz clic
en 'Añadir al carrito' y tu fragancia personalizada
estará lista para ser comprada. Si no te gusta tu
creación, puedes presionar en el icono de la basura
para eliminarla.

Te recordamos que en esta sección todas las lociones
son de 1 fl oz. Y tienen un precio de \$25.000 por
unidad. Puedes hacer tantas combinaciones como desees
¡Siéntete libre de hacer tu Loción Personalizada!
''', style: textoMobile)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SectionCreaTuLocionMobile(),
              const SizedBox(height: 50)
            ],
          ),
        ),
      ),
    );
  }
}