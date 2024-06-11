import 'package:marking_web/exports.dart';
import 'package:marking_web/responsive/screens_mobile/section_hombre_mobile.dart';


class HombreScreenMobile extends StatefulWidget {

  // ignore: use_super_parameters
  const HombreScreenMobile({Key? key}) : super(key: key);

  @override
  State<HombreScreenMobile> createState() => _HombreScreenMobileState();
}

class _HombreScreenMobileState extends State<HombreScreenMobile> {

  //Cart myCart = Cart();

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
                          Text('Bienvenidos a la sección de Hombre', style: styleText3Mobile),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text('''
Bienvenidos a nuestra sección dedicada a los hombres
modernos y con estilo. En Aromas Selectos, te
ofrecemos una exquisita variedad de fragancias que
reflejan tu personalidad única.

Llévate tus aromas favoritos desde \$15.000.
Elige el tamaño de tu loción en fl oz y luego la
cantidad.

Nuestros precios se manejan así:
1 fl oz = \$15.000
2 fl oz = \$29.000
3 fl oz = \$40.000

¡No te pierdas esta increíble oportunidad de
disfrutar de fragancias de calidad a un precio
increíblemente bajo!''', style: textoMobile),
                          )
                        ],
                      )
                    ),
                  ],
                ),
              ),
              const SectionHombreMobile(),
            ],
          ),
        ),
      ),
    );
  }
}

