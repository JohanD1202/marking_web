import 'package:marking_web/exports.dart';
import 'package:marking_web/presentation/screens/section_crea_tu_locion.dart';


class CreaTuLocion extends StatefulWidget {
  // ignore: use_super_parameters
  const CreaTuLocion({Key? key}) : super(key: key);

  @override
  State<CreaTuLocion> createState() => _CreaTuLocionState();
}

class _CreaTuLocionState extends State<CreaTuLocion> {
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
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Bienvenidos a la sección de Crea Tu Loción', style: styleText3),
                          const SizedBox(height: 20),
                          Text('''
Bienvenido a nuestra innovadora sección "Crea tu Loción", donde la creatividad
y la personalización se unen para ofrecerte aromas únicos y exclusivos. Aquí
puedes combinar dos de nuestras lociones para crear una fragancia que sea
verdaderamente tuya.

Cómo funciona:

Explora nuestras sugerencias: Utiliza nuestro menú desplegable de sugerencias
para inspirarte. Estas combinaciones recomendadas están diseñadas por expertos
para ofrecerte mezclas armoniosas y sorprendentes.

Elige tus lociones: 
Despliega los dos menús que contienen todas nuestras lociones disponibles.
Selecciona una loción de cada lista para crear tu combinación personalizada.

Añade tu creación al carrito:
Una vez que hayas seleccionado tus lociones favoritas, simplemente haz clic en
"Añadir al carrito" y tu fragancia personalizada estará lista para ser comprada.
''', style: texto)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Image.asset('assets/images/logo_pr1.jpg', width: 300, height: 300, fit: BoxFit.cover),
                    ),
                  ],
                ),
              ),
              const SectionCreaTuLocion(),
              const SizedBox(height: 50)
            ],
          ),
        ),
      ),
    );
  }
}


/*
Beneficios de crear tu propia loción:

Personalización total: Diseña una fragancia que se adapte a tu estilo y preferencias.
Calidad garantizada: Todas nuestras lociones están hechas con ingredientes de la más alta calidad.
Innovación en tus manos: Crea combinaciones únicas que no encontrarás en ninguna otra parte.
Empieza ahora y descubre la emoción de crear una fragancia que es exclusivamente tuya. ¡Haz que cada día sea especial con tu loción personalizada!
*/