import 'package:marking_web/exports.dart';
import 'dart:html' as html;


class Help extends StatelessWidget {

  const Help({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 1,
      width: size.width * 1,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Bienvenido al Centro de Ayuda de Aromas Selectos', style: styleText3),
                              const SizedBox(height: 15),
                              const TextHelpWidget(TextHelp.helpText, TextStyle(fontSize: 18, fontWeight: FontWeight.w200)),
                              const Row(
                                children: [
                                  Contactanos(
                                    image: 'assets/images/whats.png', 
                                    title: 'WhatsApp', 
                                    description: 'Escríbenos para responder tus dudas',
                                    padding: EdgeInsets.fromLTRB(20, 20, 100, 20),
                                  ),
                                  SizedBox(width: 15),
                                  GuideSize(
                                    image: 'assets/images/preguntas.png', 
                                    title: 'Preguntas Frecuentes', 
                                    description: 'Resuelve las dudas más frecuentes',
                                    padding: EdgeInsets.fromLTRB(15, 20, 100, 20),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 15),
                              const Row(
                                children: [
                                  GuideSize(
                                    image: 'assets/images/regla1.png', 
                                    title: 'Guía de Tallas', 
                                    description: 'Conoce tu talla indicada',
                                    padding: EdgeInsets.fromLTRB(32, 20, 100, 20),
                                  ),
                                  SizedBox(width: 15),
                                  Debito(
                                    image: 'assets/images/debito1.jpg',
                                    height: 100,
                                    title: 'Medios de Pago', 
                                    description: 'Consulta, agrega o edita las opciones de pago',
                                    padding: EdgeInsets.fromLTRB(2, 0, 100, 0),
                                  ),
                                ],
                              ),
                            ],
                          ),
                       ),
                       const SizedBox(width: 10),
                       Padding(
                         padding: const EdgeInsets.all(6),
                         child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.circular(15)),
                          child: Image.asset('assets/images/logo_principal_1.png', width: 200, height: 130, fit: BoxFit.cover)),
                       )
                    ],
                  ),  
                 )
               ] 
             ),
        ),
      ),
    );
  }
}

void _launchWhatsApp(String phoneNumber) async {

  String url;
  if(phoneNumber == '573107312102') {
    url = 'https://wa.me/$phoneNumber';
  } else if (phoneNumber == '573104025062') {
    url = 'https://wa.me/$phoneNumber';
  } else {
    throw 'Número de teléfono no válido: $phoneNumber';
  }

  html.window.open(url, 'WhatsApp');

}

class Contactanos extends StatefulWidget {

  final String image;
  final String title;
  final String description;
  final EdgeInsets padding;

  // ignore: use_super_parameters
  const Contactanos({
    Key? key,
    required this.image, 
    required this.title, 
    required this.description, 
    required this.padding,
  }) : super(key: key);

  @override
  State<Contactanos> createState() => _ContactanosState();
}

class _ContactanosState extends State<Contactanos> {
  @override
  Widget build(BuildContext context) {
    return 
    Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(color: Colors.white)
      ),
      child: Container(
        height: 110,
        width: 430,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
        ),
        child: Stack(
          children: [
            Padding(
              padding: widget.padding,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: GestureDetector(
                    onTap: () => _launchWhatsApp('573107312102'),
                    child: Image.asset(widget.image)
                  )
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100, top: 10),
              child: Text(widget.title, style: styleTextLocion2),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100, top: 40),
              child: Text(widget.description, style: styleTextLocion),
            )
          ],
        ),
      ),
    );
  }
}

class GuideSize extends StatefulWidget {

  final String image;
  final String title;
  final String description;
  final EdgeInsets padding;

  // ignore: use_super_parameters
  const GuideSize({
    Key? key,
    required this.image, 
    required this.title, 
    required this.description, 
    required this.padding, 
  }) : super(key: key);

  @override
  State<GuideSize> createState() => _GuideSizeState();
}

class _GuideSizeState extends State<GuideSize> {
  @override
  Widget build(BuildContext context) {
    return 
    Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(color: Colors.white)
      ),
      child: Container(
        height: 110,
        width: 430,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
        ),
        child: Stack(
          children: [
            Padding(
              padding: widget.padding,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: GestureDetector(
                    onTap: () {},
                    child: Image.asset(widget.image)
                  )
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100, top: 10),
              child: Text(widget.title, style: styleTextLocion2),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100, top: 40),
              child: Text(widget.description, style: styleTextLocion),
            )
          ],
        ),
      ),
    );
  }
}

class Debito extends StatefulWidget {

  final String image;
  final String title;
  final String description;
  final EdgeInsets padding;
  final double height;

  // ignore: use_super_parameters
  const Debito({
    Key? key,
    required this.image, 
    required this.title, 
    required this.description, 
    required this.padding, 
    required this.height, 
  }) : super(key: key);

  @override
  State<Debito> createState() => _DebitoState();
}

class _DebitoState extends State<Debito> {
  @override
  Widget build(BuildContext context) {
    return 
    Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(color: Colors.white)
      ),
      child: Container(
        height: 110,
        width: 430,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
        ),
        child: Stack(
          children: [
            Padding(
              padding: widget.padding,
              child: GestureDetector(
                onTap: () {},
                child: Image.asset(widget.image, height: widget.height)
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100, top: 10),
              child: Text(widget.title, style: styleTextLocion2),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100, top: 40),
              child: Text(widget.description, style: styleTextLocion),
            )
          ],
        ),
      ),
    );
  }
}

//fromLTRB(32, 15, 100, 15)
//fromLTRB(15, 15, 100, 15)
