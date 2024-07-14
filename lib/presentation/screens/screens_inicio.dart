import 'package:aromas_selectos/exports.dart';


class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 740,
      decoration: const BoxDecoration(
        image: DecorationImage(
          alignment: Alignment.topCenter,
          fit: BoxFit.cover,
          image: AssetImage('assets/images/locion_13.jpg'),
        ),
      ),
      child: Material(
        type: MaterialType.transparency,
        child: Stack(
          children: [
            Positioned(
              left: 80,
              top: 50,
              child: SizedBox(
                width: 1100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Container(
                          padding: const EdgeInsets.only(left: 30),
                          width: 1100,
                          color: Colors.black.withOpacity(0.7),
                          child: Text('Explora Aromas Selectos', style: styleTextInicio)
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Container(
                        width: 700,
                        padding: const EdgeInsets.only(left: 30, right: 30, top: 8, bottom: 8),
                        color: Colors.black.withOpacity(0.7),
                        child: Text('''
Descubre la elegancia con Aromas Selectos 
A través de fragancias exquisitas diseñadas para ti. 
Sumérgete en un mundo de sensaciones únicas''', style: styleTextB),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 580),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Container(
                          width: 1100,
                          padding: const EdgeInsets.only(left: 30, top: 8, bottom: 8),
                          color: Colors.black.withOpacity(0.7),
                          child: Text('''
Nuestros aromas son únicos y 
Reflejan tu personalidad.
Aquí encontrarás tu fragancia favorita''', style: styleTextC),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Container(
                          width: 700,
                          padding: const EdgeInsets.only(left: 30, top: 8, bottom: 8),
                          color: Colors.black.withOpacity(0.7),
                          child: Text('''
En Aromas Selectos, te ofrecemos un amplio catálogo
de aromas especiales como lociones Árabes, para
Hombres y Mujeres a un precio inmejorable''', style: styleTextB),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//TODO:
class Screen1Mobile extends StatelessWidget {
  const Screen1Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 630,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/aroma_6.jpg'),
        ),
      ),
      child: Material(
        type: MaterialType.transparency,
        child: SizedBox(
          width: 400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30, top: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Container(
                        padding: const EdgeInsets.only(left: 23, top: 4, bottom: 4),
                        width: 390,
                        color: Colors.black.withOpacity(0.7),
                        child: Text('Explora Aromas Selectos', style: styleTextInicioMobile)
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              Row(
                children: [
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        width: 360,
                        padding: const EdgeInsets.all(12),
                        color: Colors.black.withOpacity(0.7),
                        child: Text('''
Descubre la elegancia con Aromas 
Selectos a través de fragancias 
exquisitas diseñadas para ti. 
Sumérgete en un mundo de
sensaciones únicas''', style: styleTextBMobile),
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              Row(
                children: [
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        width: 340,
                        padding: const EdgeInsets.all(12),
                        color: Colors.black.withOpacity(0.7),
                        child: Text('''
Nuestros aromas son únicos y 
reflejan tu personalidad.
Aquí encontrarás tu fragancia 
favorita''', style: styleTextBMobile),
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              Row(
                children: [
                  const Spacer(),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      width: 360,
                      padding: const EdgeInsets.all(12),
                      color: Colors.black.withOpacity(0.7),
                      child: Text('''
En Aromas Selectos, te ofrecemos
un amplio catálogo de aromas
especiales como lociones Árabes,
para Hombres y Mujeres a un
precio inmejorable''', style: styleTextBMobile),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//TODO:

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Image.asset(
            'assets/images/locion_14.jpg',
            height: 600,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 50,
            left: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Container(
                padding: const EdgeInsets.all(14),
                color: Colors.black.withOpacity(0.7),
                child: Text('¿Qué nos hace Diferentes?', style: styleTextInicio),
              ),
            ),
          ),
          Positioned(
            top: 190,
            left: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Container(
                padding: const EdgeInsets.all(14),
                color: Colors.black.withOpacity(0.7),
                child: Text('''
En Aromas Selectos, no solo vendemos fragancias, 
¡Creamos experiencias memorables! 

Nuestro equipo de expertos perfumistas             
Trabaja arduamente para ofrecerte productos únicos 
Que reflejen Tu Estilo y Personalidad''', style: styleTextD),
              ),
            ),
          )
        ],
      );
  }
}
//TODO:
class Screen2Mobile extends StatelessWidget {
  const Screen2Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 450,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/locion_14.jpg'),
        ),
      ),
      child: Material(
        type: MaterialType.transparency,
        child: SizedBox(
          width: 360,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30, top: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Container(
                        padding: const EdgeInsets.only(left: 12, right: 12, top: 4, bottom: 4),
                        color: Colors.black.withOpacity(0.7),
                        child: Text('¿Qué nos hace Diferentes?', style: styleTextInicioMobile),
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              Row(
                children: [
                  const Spacer(),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      color: Colors.black.withOpacity(0.7),
                      child: Text('''
En Aromas Selectos no solo
vendemos Fragancias
¡Creamos experiencias memorables!

Nuestro equipo de expertos
perfumistas trabaja arduamente
para ofrecerte productos únicos
que reflejen tu estilo y
personalidad''', style: styleTextDMobile),
                    ),
                  ),
                  const Spacer(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
//TODO:
class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Image.asset(
            'assets/images/locion_15.jpg',
            height: 740,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 50,
            left: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Container(
                padding: const EdgeInsets.all(14),
                color: Colors.black.withOpacity(0.7),
                child: Text('Superando Expectativas', style: styleTextInicio),
              ),
            ),
          ),
          Positioned(
            top: 220,
            left: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Container(
                padding: const EdgeInsets.all(14),
                color: Colors.black.withOpacity(0.7),
                child: Text('''
Desde nuestra sede en el Corazón del Valle, 
Nos esforzamos por superar las expectativas
De nuestros clientes en cada interacción. 

Con un compromiso inquebrantable con la calidad, 
La innovación y la excelencia en el servicio al cliente, 
Nos hemos convertido en el destino preferido 
Para los amantes de las fragancias 
Exigentes y sofisticadas''', style: styleTextD),
              ),
            ),
          )
        ],
      );
  }
}
//TODO:
class Screen3Mobile extends StatelessWidget {
  const Screen3Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 500,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/locion_15.jpg'),
        ),
      ),
      child: Material(
        type: MaterialType.transparency,
        child: SizedBox(
          width: 360,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30, top: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Container(
                        padding: const EdgeInsets.only(left: 12, right: 12, top: 4, bottom: 4),
                        color: Colors.black.withOpacity(0.7),
                        child: Text('Superando Expectativas', style: styleTextInicioMobile),
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              Row(
                children: [
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        color: Colors.black.withOpacity(0.7),
                        child: Text('''
Desde nuestra sede en el 
corazón del Valle, nos esforzamos 
por superar las expectativas
de nuestros clientes en cada 
interacción. 

Con un compromiso inquebrantable 
con la calidad, la innovación y la 
excelencia en el servicio al cliente, 
nos hemos convertido en el mejor 
destino para los amantes de los
aromas exigentes y sofisticadas''', style: styleTextDMobile),
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
//TODO:
class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Image.asset(
            'assets/images/locion_13.jpg',
            height: 630,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 50,
            left: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Container(
                padding: const EdgeInsets.all(14),
                color: Colors.black.withOpacity(0.7),
                child: Text('Descubre Aromas Selectos', style: styleTextInicio),
              ),
            ),
          ),
          Positioned(
            top: 210,
            left: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Container(
                padding: const EdgeInsets.all(14),
                color: Colors.black.withOpacity(0.7),
                child: Text('''
¿Estás listo para descubrir el mundo de Aromas Selectos? 
Únete a nosotros y déjate llevar
Por una experiencia olfativa incomparable. 

Encuentra tu fragancia perfecta
Y haz una declaración de estilo con Aromas Selectos''', style: styleTextD),
              ),
            ),
          )
        ],
      );
  }
}
//TODO:
class Screen4Mobile extends StatelessWidget {
  const Screen4Mobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 450,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/locion_13.jpg'),
        ),
      ),
      child: Material(
        type: MaterialType.transparency,
        child: SizedBox(
          width: 360,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30, top: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Container(
                        padding: const EdgeInsets.only(left: 12, right: 12, top: 4, bottom: 4),
                        color: Colors.black.withOpacity(0.7),
                        child: Text('Descubre Aromas Selectos', style: styleTextInicioMobile),
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              Row(
                children: [
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        color: Colors.black.withOpacity(0.7),
                        child: Text('''
¿Estás listo para descubrir el mundo
de Aromas Selectos? Únete a nosotros
y déjate llevar por una experiencia 
olfativa incomparable. 

Encuentra tu fragancia perfecta y haz
una declaración de estilo con 
Aromas Selectos''', style: styleTextDMobile),
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

/*class Screen5 extends StatelessWidget {
  const Screen5({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Image.asset(
            'assets/images/locion_17.png',
            height: 600,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 50,
            left: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Container(
                padding: const EdgeInsets.all(14),
                color: Colors.black.withOpacity(0.7),
                child: Text('Precios Insuperables', style: styleTextInicio),
              ),
            ),
          ),
          Positioned(
            top: 220,
            left: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Container(
                padding: const EdgeInsets.all(14),
                color: Colors.black.withOpacity(0.7),
                child: Text('''
Llévate tus lociones favoritas desde tan solo \$13.000. 
¡No te pierdas esta increíble oportunidad de disfrutar 
De fragancias de calidad a un precio increíblemente bajo!''', style: styleTextD),
              ),
            ),
          )
        ],
      );
  }
}*/