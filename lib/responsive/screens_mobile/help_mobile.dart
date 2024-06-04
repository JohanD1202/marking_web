import 'package:flutter/material.dart';
import 'package:marking_web/exports.dart';
import 'package:marking_web/presentation/screens/guia_de_aromas.dart';
import 'dart:html' as html;

import 'package:marking_web/presentation/screens/preguntas_frecuentes_screen.dart';
import 'package:marking_web/responsive/screens_mobile/guia_aromas_mobile.dart';
import 'package:marking_web/responsive/screens_mobile/preguntas_frecuentes_mobile.dart';


class HelpMobile extends StatefulWidget {

  // ignore: use_super_parameters
  const HelpMobile({Key? key}) : super(key: key);

  @override
  State<HelpMobile> createState() => _HelpMobileState();
}

class _HelpMobileState extends State<HelpMobile> {

  @override
  Widget build(BuildContext context) {
    
    return Consumer<HelpScreenState>(builder: (context, helpScreenState, _) {
      return helpScreenState.showFullContent
        ? buildFullContent(context)
        : buildPartialContent(context);
      },
    );
  }
/*
  Widget buildAromasGuide(BuildContext context) {
    return const GuiaAromasMobile();
  }
*/
  Widget buildFullContent(BuildContext context) {

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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Bienvenido al Centro de Ayuda de Aromas Selectos', style: styleText3Mobile),
                            const SizedBox(height: 15),
                            const TextHelpWidgetMobile(TextHelpMobile.helpText, TextStyle(fontSize: 18, fontWeight: FontWeight.w200)),
                            Row(
                              children: [
                                const Spacer(),
                                const ContactanosMobile(
                                  image: 'assets/images/whats.png', 
                                  title: 'WhatsApp', 
                                  description: 'Escríbenos para responder tus dudas',
                                    padding: EdgeInsets.fromLTRB(55, 15, 55, 20),
                                  ),
                                const Spacer(),
                                QuestionsMobile(
                                  image: 'assets/images/preguntas.png', 
                                  title: 'Preguntas Frecuentes', 
                                  description: 'Resuelve las dudas más frecuentes',
                                  padding: const EdgeInsets.fromLTRB(55, 15, 55, 20),
                                  onTapCallback: () {
                                    Provider.of<HelpScreenState>(context, listen: false).showFullContent = false;
                                  },
                                ),
                                const Spacer(),
                                ],
                              ),
                              const SizedBox(height: 15),
                                Row(
                                  children: [
                                    const Spacer(),
                                    AromasGuideMobile(
                                      image: 'assets/images/olor1.jpg', 
                                      title: 'Guía de Aromas', 
                                      description: 'Conoce tu Aroma indicado',
                                      padding: const EdgeInsets.fromLTRB(53, 15, 55, 20),
                                      onTapCallback: () {
                                        Provider.of<HelpScreenState>(context, listen: false).showFullContent = false;
                                      },
                                    ),
                                    const Spacer(),
                                    const DebitoMobile(
                                      image: 'assets/images/debito1.jpg',
                                      height: 100,
                                      title: 'Medios de Pago', 
                                      description: 'Consulta o agrega las opciones de pago',
                                      padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                              ],
                            ),
                         ),
                         const SizedBox(width: 10),
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
    return const PreguntasFrecuentesMobile();
  }

      
/*
class HelpScreenState extends ChangeNotifier {
  bool showFullContent = true;
  bool showAromasGuide = false;

  void toggleContent() {
    showFullContent = !showFullContent;
    notifyListeners();
  }

  void toggleAromasGuide() {
    showAromasGuide = !showAromasGuide;
    notifyListeners();
  }
}
*/

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

class ContactanosMobile extends StatefulWidget {

  final String image;
  final String title;
  final String description;
  final EdgeInsets padding;

  // ignore: use_super_parameters
  const ContactanosMobile({
    Key? key,
    required this.image, 
    required this.title, 
    required this.description, 
    required this.padding,
  }) : super(key: key);

  @override
  State<ContactanosMobile> createState() => _ContactanosMobileState();
}

class _ContactanosMobileState extends State<ContactanosMobile> {
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
        height: 180,
        width: 180,
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
              padding: const EdgeInsets.only(left: 20, top: 85),
              child: Text(widget.title, style: styleTextLocion2),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 115),
              child: Text(widget.description, style: styleTextBolsosMobile),
            )
          ],
        ),
      ),
    );
  }
}

class QuestionsMobile extends StatefulWidget {

  final String image;
  final String title;
  final String description;
  final EdgeInsets padding;
  final Function onTapCallback;

  // ignore: use_super_parameters
  const QuestionsMobile({
    Key? key,
    required this.image, 
    required this.title, 
    required this.description, 
    required this.padding, 
    required this.onTapCallback, 
  }) : super(key: key);

  @override
  State<QuestionsMobile> createState() => _QuestionsMobileState();
}

class _QuestionsMobileState extends State<QuestionsMobile> {

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
        height: 180,
        width: 180,
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
              padding: const EdgeInsets.only(left: 12, top: 95),
              child: Text(widget.title, style: styleTextLocion2Mobile),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 125),
              child: Text(widget.description, style: styleTextBolsosMobile),
            ),
          ],
        ),
      ),
    );
  }
}
//TODO:

class AromasGuideMobile extends StatefulWidget {

  final String image;
  final String title;
  final String description;
  final EdgeInsets padding;
  final Function onTapCallback;

  // ignore: use_super_parameters
  const AromasGuideMobile({
    Key? key,
    required this.image, 
    required this.title, 
    required this.description, 
    required this.padding, 
    required this.onTapCallback, 
  }) : super(key: key);

  @override
  State<AromasGuideMobile> createState() => _AromasGuideMobileState();
}

class _AromasGuideMobileState extends State<AromasGuideMobile> {

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
        height: 180,
        width: 180,
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
                      Provider.of<HelpScreenState>(context, listen: false).toggleAromasGuide();
                    },
                    child: Image.asset(widget.image)
                  )
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 90),
              child: Text(widget.title, style: styleTextLocion2),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 120),
              child: Text(widget.description, style: styleTextBolsosMobile),
            ),
          ],
        ),
      ),
    );
  }
}

class DebitoMobile extends StatefulWidget {

  final String image;
  final String title;
  final String description;
  final EdgeInsets padding;
  final double height;

  // ignore: use_super_parameters
  const DebitoMobile({
    Key? key,
    required this.image, 
    required this.title, 
    required this.description, 
    required this.padding, 
    required this.height, 
  }) : super(key: key);

  @override
  State<DebitoMobile> createState() => _DebitoMobileState();
}

class _DebitoMobileState extends State<DebitoMobile> {
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
        height: 180,
        width: 180,
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
              padding: const EdgeInsets.only(left: 20, top: 90),
              child: Text(widget.title, style: styleTextLocion2),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 120),
              child: Text(widget.description, style: styleTextBolsosMobile),
            )
          ],
        ),
      ),
    );
  }
}

//fromLTRB(32, 15, 100, 15)
//fromLTRB(15, 15, 100, 15)
