import 'package:marking_web/exports.dart';


class Screen1 extends StatelessWidget {
  const Screen1({
    super.key,
  });

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
¡Y eso no es todo!
En Aromas Selectos, también ofrecemos emocionantes 
Rifas y sorteos, donde tendrás la oportunidad de ganar
Fabulosos premios y vivir experiencias inolvidables.''', style: styleTextB),
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

class Screen2 extends StatelessWidget {
  const Screen2({
    super.key,
  });

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

class Screen3 extends StatelessWidget {
  const Screen3({
    super.key,
  });

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

class Screen4 extends StatelessWidget {
  const Screen4({
    super.key,
  });

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