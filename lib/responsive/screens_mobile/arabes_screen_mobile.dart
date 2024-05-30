import 'package:marking_web/exports.dart';
import 'package:marking_web/responsive/screens_mobile/section_arabe_mobile.dart';


class ArabesScreenMobile extends StatefulWidget {

  // ignore: use_super_parameters
  const ArabesScreenMobile({Key? key}) : super(key: key);

  @override
  State<ArabesScreenMobile> createState() => _ArabesScreenMobileState();
}

class _ArabesScreenMobileState extends State<ArabesScreenMobile> {

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
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Bienvenidos a la sección de Aromas Árabes', style: styleText3),
                          const Padding(
                            padding: EdgeInsets.only(top: 20, bottom: 10),
                            child: Text('''
Bienvenidos a nuestra sección de Aromas Árabes, 
En este espacio te invitamos a descubrir una amplia gama
De aromas Árabes, que capturan la esencia de la elegancia.

Desde aromas frescos y vibrantes hasta notas cálidas.
Explora nuestra colección y encuentra el aroma perfecto.

Llévate tus aromas favoritos desde tan solo \$15.000. 
¡No te pierdas esta increíble oportunidad de disfrutar 
De fragancias de calidad a un precio increíblemente bajo!
                            ''', style: TextStyle(fontSize: 18)),
                          )
                        ],
                      )
                    ),
                  ],
                ),
              ),
              const SectionArabeMobile(),
              //ShoppingCart(cart: myCart),
            ],
          ),
        ),
      ),
    );
  }
}

