import 'package:flutter/material.dart';
import 'package:marking_web/exports.dart';
import 'package:marking_web/presentation/screens/guia_de_aromas.dart';
import 'dart:html' as html;

import 'package:marking_web/presentation/screens/preguntas_frecuentes_screen.dart';


class Help extends StatefulWidget {

  // ignore: use_super_parameters
  const Help({Key? key}) : super(key: key);

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {

  @override
  Widget build(BuildContext context) {
    
    return Consumer<HelpScreenState>(builder: (context, helpScreenState, _) {
      if (helpScreenState.showAromasGuide) {
        return buildAromasGuide(context);
      }
      return helpScreenState.showFullContent
        ? buildFullContent(context)
        : buildPartialContent(context);
      },
    );
  }

  Widget buildAromasGuide(BuildContext context) {
    return const GuiaAromas();
  }

  Widget buildFullContent(BuildContext context) {

  final size = MediaQuery.of(context).size;
  
  return SizedBox(
    height: size.height * 1.2,
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Bienvenido al Centro de Ayuda de Aromas Selectos', style: styleText3),
                            const SizedBox(height: 15),
                            const TextHelpWidget(TextHelp.helpText, TextStyle(fontSize: 18, fontWeight: FontWeight.w400, fontFamily: 'Fredoka')),
                            Row(
                              children: [
                                const Contactanos(
                                  image: 'assets/images/whats.png', 
                                  title: 'WhatsApp', 
                                  description: 'Escríbenos para responder tus dudas',
                                    padding: EdgeInsets.fromLTRB(20, 20, 100, 20),
                                  ),
                                  const SizedBox(width: 15),
                                  Questions(
                                    image: 'assets/images/preguntas.png', 
                                    title: 'Preguntas Frecuentes', 
                                    description: 'Resuelve las dudas más frecuentes',
                                    padding: const EdgeInsets.fromLTRB(15, 20, 100, 20),
                                    onTapCallback: () {
                                      Provider.of<HelpScreenState>(context, listen: false).showFullContent = false;
                                    },
                                  ),
                                ],
                              ),
                              const SizedBox(height: 15),
                                Row(
                                  children: [
                                    AromasGuide(
                                      image: 'assets/images/olor1.jpg', 
                                      title: 'Guía de Aromas', 
                                      description: 'Conoce tu Aroma indicado',
                                      padding: const EdgeInsets.fromLTRB(15, 20, 100, 20),
                                      onTapCallback: () {
                                        Provider.of<HelpScreenState>(context, listen: false).toggleAromasGuide();
                                      },
                                    ),
                                    const SizedBox(width: 15),
                                    const Debito(
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
                            child: Image.asset('assets/images/aromas_selectos.jpg', width: 205, height: 135, fit: BoxFit.cover)),
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
  
  Widget buildPartialContent(BuildContext context) {
    return const PreguntasFrecuentes();
  }

      

class HelpScreenState extends ChangeNotifier {
  bool showFullContent = true;
  bool showAromasGuide = false;

  void toggleContent() {
    showFullContent = !showFullContent;
    notifyListeners();
  }

  void toggleAromasGuide() {
    showAromasGuide = true;
    showFullContent = false;
    notifyListeners();
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

class Questions extends StatefulWidget {

  final String image;
  final String title;
  final String description;
  final EdgeInsets padding;
  final Function onTapCallback;

  // ignore: use_super_parameters
  const Questions({
    Key? key,
    required this.image, 
    required this.title, 
    required this.description, 
    required this.padding, 
    required this.onTapCallback, 
  }) : super(key: key);

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {

  //int indiceWidget2 = 0;
  void _handleTap() {
    widget.onTapCallback;
  }

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
                    onTap: () {
                      Provider.of<HelpScreenState>(context, listen: false).toggleContent();
                    },
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
            ),
          ],
        ),
      ),
    );
  }
}
//TODO:

class AromasGuide extends StatefulWidget {

  final String image;
  final String title;
  final String description;
  final EdgeInsets padding;
  final VoidCallback onTapCallback;

  // ignore: use_super_parameters
  const AromasGuide({
    Key? key,
    required this.image, 
    required this.title, 
    required this.description, 
    required this.padding, 
    required this.onTapCallback, 
  }) : super(key: key);

  @override
  State<AromasGuide> createState() => _AromasGuideState();
}

class _AromasGuideState extends State<AromasGuide> {

  //int indiceWidget2 = 0;
  void _handleTap() {
    widget.onTapCallback();
  }

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
                    onTap: _handleTap,
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
            ),
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
