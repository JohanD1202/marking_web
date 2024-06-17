import 'package:marking_web/exports.dart';

class HombreScreen extends StatefulWidget {

  // ignore: use_super_parameters
  const HombreScreen({Key? key}) : super(key: key);

  @override
  State<HombreScreen> createState() => _HombreScreenState();
}

class _HombreScreenState extends State<HombreScreen> {

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
                          Text('Bienvenidos a la sección de Hombre', style: styleText3),
                          const SizedBox(height: 20),
                          Text('''
Bienvenidos a nuestra sección dedicada a los hombres modernos y con estilo. 
En Aromas Selectos, te ofrecemos una exquisita variedad de fragancias 
que reflejan tu personalidad única.

Llévate tus aromas favoritos desde tan solo \$15.000.
Elige el tamaño de tu loción en fl oz y luego la cantidad.
Nuestros precios se manejan así:
1 fl oz = \$15.000
2 fl oz = \$29.000
3 fl oz = \$40.000

¡No te pierdas esta increíble oportunidad de disfrutar 
de fragancias de calidad a un precio increíblemente bajo!
                          ''', style: texto)
                        ],
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Image.asset('assets/images/aromas_selectos.jpg', width: 300, height: 300, fit: BoxFit.cover),
                    ),
                  ],
                ),
              ),
              const SectionHombre(),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}




/*
Bienvenido a nuestra sección dedicada a los hombres modernos y con estilo. 
En Marking, no solo te ofrecemos una exquisita variedad de fragancias 
Que reflejan tu personalidad única, sino que también hemos seleccionado 
Cuidadosamente una colección de camisetas estampadas que complementarán tu look 
Con elegancia y originalidad.

Descubre nuestra gama de lociones exclusivas que van desde 
Aromas frescos y revitalizantes hasta notas profundas y seductoras, 
Diseñadas para acompañarte en cada momento de tu día y destacar tu presencia con distinción.

Además, sumérgete en nuestra selección de camisetas estampadas, 
Donde encontrarás diseños creativos y llamativos que expresan tu estilo y pasión por la moda. 
Desde estampados abstractos hasta gráficos inspiradores, 
Cada camiseta es una declaración de individualidad y buen gusto.

Ya sea que estés buscando el complemento perfecto para tu aroma favorito
O quieras actualizar tu guardarropa con prendas únicas, 
en nuestra sección de hombre encontrarás todo lo que necesitas 
Para destacar con autenticidad y sofisticación.

¡Explora nuestras propuestas y déjate seducir por el mundo de Marking!

*/

 /*
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/locion_12.jpg', width: 270, height: 315),
                    const SizedBox(height: 25),
                    Text('-   Al Haramain', style: styleTextLocion),
                    const SizedBox(height: 8),
                    Text('-   Arabians Tonal', style: styleTextLocion),
                    const SizedBox(height: 8),
                    Text('-   L \'Aventure', style: styleTextLocion)
                  ],
                ),
                */
                /*Material(
              elevation: 8,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.black,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.7),
                      blurRadius: 1,
                      offset: const Offset(0, 3)
                    )
                  ]
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 30),
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios_rounded,),
                      onPressed: () {},
                      color: Colors.white,
                      iconSize: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(90)),
                        child: Image.asset('assets/images/logo_principal_1.png', width: 75, height: 75, fit: BoxFit.cover),
                      ),
                    ),
                    const SizedBox(width: 50),
                    const Text(
                      'Hombre', 
                      style: TextStyle(
                        color: Colors.white, 
                        fontSize: 30
                      )
                    )
                  ],
                ),
              ),
            ),*/

            /*Text('-   Moschino Toy Boy', style: styleTextLocion),
                      const SizedBox(height: 8),
                      Text('-   212 VIP Wins', style: styleTextLocion),
                      const SizedBox(height: 8),
                      Text('-   AMETHYST (Unisex)', style: styleTextLocion),
                      const SizedBox(height: 20),*/
                      //Image.asset('assets/images/locion_4.jpg', width: 240, height: 380),

/*Image.asset('assets/images/locion_4.jpg', width: 240, height: 380),
                      Text('-   Moschino Toy Boy', style: styleTextLocion),*/
                      /*OutlinedButton.icon(
                        icon: const Icon(Icons.shopping_cart_rounded, color: Colors.white, size: 17),
                        onPressed: () {}, 
                        label: Text('AGREGAR AL CARRITO', style: styleTextCar),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: const RoundedRectangleBorder()
                        ),
                      )*/