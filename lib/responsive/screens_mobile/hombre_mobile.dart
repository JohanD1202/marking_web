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
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Bienvenidos a la sección de Hombre', style: styleText3),
                          const Padding(
                            padding: EdgeInsets.only(top: 20, bottom: 10),
                            child: Text('''
Bienvenidos a nuestra sección dedicada 
A los hombres modernos y con estilo. 
En Aromas Selectos, te ofrecemos una 
Exquisita variedad de fragancias 
Que reflejan tu personalidad única.

Llévate tus aromas favoritos desde \$14.000. 
¡No te pierdas esta increíble oportunidad de 
Disfrutar de fragancias de calidad 
A un precio increíblemente bajo!''', style: TextStyle(fontSize: 18)),
                          )
                        ],
                      )
                    ),
                  ],
                ),
              ),
              const SectionHombreMobile(),
              //ShoppingCart(cart: myCart),
            ],
          ),
        ),
      ),
    );
  }
}

