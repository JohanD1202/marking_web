// ignore_for_file: curly_braces_in_flow_control_structures
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:marking_web/exports.dart';


ButtonStyle styleButton = ButtonStyle(
  overlayColor: MaterialStateProperty.resolveWith<Color>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.focused))
        return const Color.fromARGB(255, 255, 171, 15);
      if (states.contains(MaterialState.hovered))
        return const Color.fromARGB(255, 255, 171, 15);
      if (states.contains(MaterialState.pressed))
        return const Color.fromARGB(255, 255, 171, 15);
      return const Color.fromARGB(255, 255, 171, 15);
    }
  )
);

class ButtonTextBar extends StatefulWidget {

  final String buttonText;
  final VoidCallback onPressed;

  // ignore: use_super_parameters
  const ButtonTextBar({
    Key? key, 
    required this.buttonText, 
    required this.onPressed
  }) : super(key: key);

  @override
  State<ButtonTextBar> createState() => _ButtonTextBarState();
}

class _ButtonTextBarState extends State<ButtonTextBar> {

  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: MouseRegion(
        onEnter: (_) => setState(() => _isHovered = true),
        onExit: (_) => setState(() => _isHovered = false),
        child: Container(
          decoration: _isHovered
          ? const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey,
                width: 1.5
              )
            )
          )
          : null,
          child: TextButton(
            onPressed: widget.onPressed,
            child: Text(
              widget.buttonText,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: _isHovered ? Colors.grey : Colors.black,
                fontFamily: 'Fredoka',
              ),
            ),
          ),
        ),
      ) ,
    );
  }
}

class ButtonTextMobile extends StatefulWidget {

  final String buttonText;
  final VoidCallback onPressed;
  final EdgeInsets padding;

  // ignore: use_super_parameters
  const ButtonTextMobile({
    Key? key, 
    required this.buttonText, 
    required this.onPressed,
    required this.padding,
  }) : super(key: key);

  @override
  State<ButtonTextMobile> createState() => _ButtonTextMobileState();
}

class _ButtonTextMobileState extends State<ButtonTextMobile> {

  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: MouseRegion(
        onEnter: (_) => setState(() => _isHovered = true),
        onExit: (_) => setState(() => _isHovered = false),
        child: Container(
          decoration: _isHovered
          ? const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey,
                width: 1.5
              )
            )
          )
          : null,
          child: TextButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.white),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.zero
                  )
                )
              )
            ),
            onPressed: widget.onPressed,
            child: Padding(
              padding: widget.padding,
              child: Text(
                widget.buttonText,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Fredoka',
                  color: _isHovered ? Colors.grey : Colors.black,
                ),
              ),
            ),
          ),
        ),
      ) ,
    );
  }
}
/*
TextButton(
      onPressed: widget.onPressed,
      style: styleText2,
      child: Text(widget.buttonText)
    );*/

class ButtonTextFooter extends StatelessWidget {

  final String buttonText;
  final VoidCallback onPressed;

  const ButtonTextFooter({
    super.key, 
    required this.buttonText, 
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: styleText20,
      child: Text(buttonText)
    );
  }
}








/*

TextButton2 buttonTextAromas = TextButton(

  String text;
  String onPressed = 

  style: styleButton,
  onPressed: () {},
  child: const Text(
    'Camisetas', 
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.black
    )
  )
);

TextButton buttonTextLociones = TextButton(

  style: styleButton,
  onPressed: () {},
  child: const Text(
    'Lociones', 
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.black
    )
  )
);

TextButton buttonTextBolsos = TextButton(

style: styleButton,
  onPressed: () {},
  child: const Text(
    'Bolsos', 
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.black
    )
  )
);

TextButton buttonTextRifas = TextButton(

  style: styleButton,
  onPressed: () {},
  child: const Text(
    'Rifas', 
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.black
    )
  )
);
*/

TextStyle styleTextTitle = const TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.bold,
  color: Colors.white
);

TextStyle styleTextInicio = const TextStyle(
  fontSize: 60,
  fontWeight: FontWeight.w600,
  color: Colors.white,
  fontFamily: 'Fredoka',
);

TextStyle styleTextInicioMobile = const TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.w600,
  color: Colors.white,
  fontFamily: 'Fredoka',
);

TextStyle styleText = const TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w600,
  color: Colors.black,
  fontFamily: 'Fredoka',
);

TextStyle style = const TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.normal,
  color: Colors.black,
  fontFamily: 'Fredoka',
);

TextStyle styleMobile = const TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.normal,
  color: Colors.black,
  fontFamily: 'Fredoka',
);

TextStyle frequent = const TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.w600,
  color: Colors.black,
  fontFamily: 'Fredoka',
);

TextStyle title = const TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.w600,
  color: Colors.black,
  fontFamily: 'Fredoka',
);

TextStyle titleMobile = const TextStyle(
  fontSize: 21,
  fontWeight: FontWeight.w600,
  color: Colors.black,
  fontFamily: 'Fredoka',
);

TextStyle title2 = const TextStyle(
  fontSize: 22,
  color: Colors.black,
  fontFamily: 'Fredoka',
);

TextStyle title2Mobile = const TextStyle(
  fontSize: 18,
  color: Colors.black,
  fontFamily: 'Fredoka',
);

TextStyle title3 = const TextStyle(
  fontSize: 22,
  color: Colors.black,
);

TextStyle frequentMobile = const TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w600,
  color: Colors.black,
  fontFamily: 'Fredoka',
);

TextStyle frequent2 = const TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.w600,
  color: Colors.black,
  fontFamily: 'Fredoka',
);

TextStyle frequent2Mobile = const TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w600,
  color: Colors.black,
  fontFamily: 'Fredoka',
);

TextStyle styleText10 = const TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.w900,
  color: Colors.white
);

TextStyle styleTextA = const TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.w900,
  color: Colors.white
);

TextStyle styleTextB = const TextStyle(
  fontSize: 26,
  fontWeight: FontWeight.normal,
  color: Colors.white,
  fontFamily: 'Fredoka',
);

TextStyle styleTextBMobile = const TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.normal,
  color: Colors.white,
  fontFamily: 'Fredoka',
);

TextStyle styleTextC = const TextStyle(
  fontSize: 26,
  fontWeight: FontWeight.normal,
  color: Colors.white,
  fontFamily: 'Fredoka',
);

TextStyle styleTextD = const TextStyle(
  fontSize: 35,
  fontWeight: FontWeight.normal,
  color: Colors.white,
  fontFamily: 'Fredoka',
);

TextStyle styleTextDMobile = const TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.normal,
  color: Colors.white,
  fontFamily: 'Fredoka',
);

TextStyle snackbar = const TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.normal,
  color: Colors.white,
  fontFamily: 'Fredoka',
);

TextStyle snackbarMobile = const TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.normal,
  color: Colors.white,
  fontFamily: 'Fredoka',
);

TextStyle styleText3 = const TextStyle(
  fontSize: 21,
  fontWeight: FontWeight.w600,
  color: Colors.black,
  fontFamily: 'Fredoka',
);

TextStyle help = const TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  color: Colors.black,
  fontFamily: 'Fredoka',
);

TextStyle texto = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.normal,
  color: Colors.grey[800],
  fontFamily: 'Fredoka',
);

TextStyle textoMobile = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.normal,
  color: Colors.grey[800],
  fontFamily: 'Fredoka',
);

TextStyle styleText3Mobile = const TextStyle(
  fontSize: 19,
  fontWeight: FontWeight.w600,
  color: Colors.black,
  fontFamily: 'Fredoka',
);

TextStyle creaLocion = const TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w600,
  color: Colors.black,
  fontFamily: 'Fredoka',
);

TextStyle answer = const TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w400,
  color: Colors.black,
  fontFamily: 'Fredoka',
);

TextStyle styleTextHeader = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w100,
  color: Colors.grey[900],
  fontFamily: 'Fredoka',
);

TextStyle styleTextHeaderMobile = TextStyle(
  fontSize: 13,
  fontWeight: FontWeight.w100,
  color: Colors.grey[900],
  fontFamily: 'Fredoka',
);

/*
TextStyle styleTextShop = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w100,
  color: Colors.grey[900]
);
*/
TextStyle styleText4 = const TextStyle(
  fontSize: 45,
  fontWeight: FontWeight.w900,
  color: Colors.white
);

TextStyle styleTextLocion = TextStyle(
  fontSize: 17,
  color: Colors.grey [800],
  fontFamily: 'Fredoka',
);

TextStyle styleTextLocion100 = TextStyle(
  fontSize: 19,
  color: Colors.grey [800],
  fontFamily: 'Fredoka',
);

TextStyle styleTextLocionMobile = TextStyle(
  fontSize: 12,
  color: Colors.grey [800],
  fontFamily: 'Fredoka',
);

TextStyle cantidadMobile = TextStyle(
  fontSize: 11,
  color: Colors.grey [800],
  fontFamily: 'Fredoka',
);

TextStyle cantidad = TextStyle(
  fontSize: 13,
  color: Colors.grey [800],
  fontFamily: 'Fredoka',
);

TextStyle styleTextBolsosMobile = TextStyle(
  fontSize: 14.5,
  color: Colors.grey [800],
  fontFamily: 'Fredoka',
);


TextStyle styleText9 = const TextStyle(
  fontSize: 15.5,
  color: Colors.black
);

TextStyle styleTextLocion2 = TextStyle(
  fontSize: 17,
  color: Colors.grey [800],
  fontWeight: FontWeight.w600,
  fontFamily: 'Fredoka',
);
TextStyle styleTextLocion20 = TextStyle(
  fontSize: 19,
  color: Colors.grey [800],
  fontWeight: FontWeight.w600,
  fontFamily: 'Fredoka',
);

TextStyle styleTextLocion2Mobile = TextStyle(
  fontSize: 15.5,
  color: Colors.grey [800],
  fontWeight: FontWeight.w600,
  fontFamily: 'Fredoka',
);

TextStyle styleTextPrice = TextStyle(
  fontSize: 16,
  color: Colors.grey[900],
  fontFamily: 'Fredoka',
);

TextStyle styleTextPriceMobile = TextStyle(
  fontSize: 13,
  color: Colors.grey[900],
  fontFamily: 'Fredoka',
);

TextStyle styleTextPriceMobile2 = TextStyle(
  fontSize: 14.5,
  color: Colors.grey[900],
  fontFamily: 'Fredoka',
);

TextStyle styleTextSale = TextStyle(
  decoration: TextDecoration.lineThrough,
  fontSize: 14,
  color: Colors.grey [700],
  fontFamily: 'Fredoka',
);

TextStyle styleTextSale2 = TextStyle(
  decoration: TextDecoration.lineThrough,
  fontSize: 15.5,
  color: Colors.grey [700],
  fontFamily: 'Fredoka',
);

TextStyle styleTextSaleMobile = TextStyle(
  decoration: TextDecoration.lineThrough,
  fontSize: 12,
  color: Colors.grey [700]
);

TextStyle styleTextCar = const TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w500,
  color: Colors.white,
  fontFamily: 'Fredoka',
);

TextStyle styleTextCarMobile = const TextStyle(
  fontSize: 8.6,
  fontWeight: FontWeight.w400,
  color: Colors.white,
  fontFamily: 'Fredoka',
);

TextStyle styleTextCarMobile3 = const TextStyle(
  fontSize: 8.2,
  fontWeight: FontWeight.w400,
  color: Colors.white,
  fontFamily: 'Fredoka',
);

TextStyle styleTextCarMobile2 = const TextStyle(
  fontSize: 11,
  fontWeight: FontWeight.w500,
  color: Colors.white
);

TextStyle styleTextCa = const TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w500,
  color: Colors.white,
  fontFamily: 'Fredoka',
);

TextStyle styleTextMo = const TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w500,
  color: Colors.black
);

TextStyle styleTextCar2 = const TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w500,
  color: Colors.white
);


TextStyle styleTextTitle2 = const TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.w500,
  color: Colors.white
);

TextStyle styleTextFooter = const TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.w500,
  color: Colors.white,
  fontFamily: 'Fredoka',
);

TextStyle styleTextFooterMobile = const TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w500,
  color: Colors.white,
  fontFamily: 'Fredoka',
);

/*TextStyle styleTextFooterText = const TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w500,
  color: Colors.white
);*/

ButtonStyle styleText2 = ButtonStyle(
  backgroundColor: MaterialStateProperty.all(Colors.white),
  foregroundColor: MaterialStateProperty.all(Colors.black),
  textStyle: MaterialStateProperty.all(styleText)
);

ButtonStyle styleText20 = ButtonStyle(
  fixedSize: MaterialStateProperty.all(const Size(150, 13)),
  backgroundColor: MaterialStateProperty.all(Colors.black),
  foregroundColor: MaterialStateProperty.all(Colors.white),
  textStyle: MaterialStateProperty.all(styleTextCar)
);

ButtonStyle styleText200 = ButtonStyle(
  fixedSize: MaterialStateProperty.all(const Size(300, 35)),
  shape: MaterialStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero))),
  backgroundColor: MaterialStateProperty.all(Colors.black),
  foregroundColor: MaterialStateProperty.all(Colors.white),
);

ButtonStyle styleText300 = ButtonStyle(
  fixedSize: MaterialStateProperty.all(const Size(437, 35)),
  shape: MaterialStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero))),
  backgroundColor: MaterialStateProperty.all(Colors.black),
  foregroundColor: MaterialStateProperty.all(Colors.white),
);

ButtonStyle styleText400 = ButtonStyle(
  fixedSize: MaterialStateProperty.all(const Size(300, 35)),
  side: MaterialStateProperty.all(const BorderSide(color: Colors.black, width: 1)),
  shape: MaterialStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero))),
  backgroundColor: MaterialStateProperty.all(Colors.white),
  foregroundColor: MaterialStateProperty.all(Colors.black),
);



class SeguirComprando extends StatefulWidget {

  // ignore: use_super_parameters
  const SeguirComprando({Key? key}) : super(key: key);

  @override
  State<SeguirComprando> createState() => _SeguirComprandoState();
}

class _SeguirComprandoState extends State<SeguirComprando> {

  bool isHovering = false;
  Color? textColor = Colors.black;

  void _setHovering(bool hovering) {
    setState(() {
      isHovering = hovering;
      textColor = isHovering ? Colors.white : Colors.black;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _setHovering(true),
      onExit: (_) => _setHovering(false),
      child: Container(
        width: 300,
        height: 35,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: isHovering ? Colors.black : Colors.white
        ),
        child: InkWell(
          onTap: () {},
          child: Center(
            child: Text('SEGUIR COMPRANDO', 
              style: TextStyle(
                color: textColor, 
                fontSize: 16,
                fontWeight: FontWeight.normal
              )
            ),
          ),
        ),
      ),
    );
  }
}

class SeguirComprandoMobile extends StatefulWidget {

  // ignore: use_super_parameters
  const SeguirComprandoMobile({Key? key}) : super(key: key);

  @override
  State<SeguirComprandoMobile> createState() => _SeguirComprandoMobileState();
}

class _SeguirComprandoMobileState extends State<SeguirComprandoMobile> {

  bool isHovering = false;
  Color? textColor = Colors.black;

  void _setHovering(bool hovering) {
    setState(() {
      isHovering = hovering;
      textColor = isHovering ? Colors.white : Colors.black;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _setHovering(true),
      onExit: (_) => _setHovering(false),
      child: Container(
        width: 437,
        height: 35,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: isHovering ? Colors.black : Colors.white
        ),
        child: InkWell(
          onTap: () {},
          child: Center(
            child: Text('SEGUIR COMPRANDO', 
              style: TextStyle(
                color: textColor, 
                fontSize: 16,
                fontWeight: FontWeight.normal
              )
            ),
          ),
        ),
      ),
    );
  }
}





class TextHelp {
  static const String helpText = '''
    Estamos aquí para brindarte asistencia y responder a todas tus preguntas. 
    Nuestra misión es hacer que tu experiencia de compra sea lo más fácil y satisfactoria posible.

    Cómo podemos ayudarte:

    - Preguntas Frecuentes: Explora nuestra sección de Preguntas Frecuentes para obtener 
      respuestas rápidas a las consultas más comunes.

    - Proceso de Compra: Aprende más sobre cómo realizar pedidos y opciones de pago.

    Explora nuestras Categorías:

    - Aromas Árabes
    - Aromas Hombre
    - Aromas Mujer
    - Crea Tu Loción
    - Sale
  ''';
}

class TextAromasGuide {
  static const String aromasGuideText = '''
En Aromas Selectos, creemos que cada
fragancia cuenta una historia única y
evocadora. Con el fin de enriquecer su
experiencia de compra y ayudarle a
eescubrir el aroma que mejor se adapte
e su estilo y emociones, hemos creado
esta exclusiva Guía de Aromas.

Aquí, explorará un mundo de fragancias 
detalladamente descritas, desde las vibrantes 
notas de salida hasta las profundas 
y duraderas notas de fondo. Cada aroma se 
presenta con descripciones claras y 
sugerentes que le invitan a imaginar y sentir 
cada fragancia en su complejidad.

Esta guía está diseñada para ser su compañera
en el descubrimiento de nuevos perfumes
y para profundizar su apreciación por los
aromas que ya conoce y ama. Tómese su
tiempo para navegar a través de nuestra
colección y dejar que su nariz le guíe
a través de un viaje olfativo sin igual.

En Aromas Selectos, su viaje hacia el perfume 
perfecto comienza aquí. Explore, experimente y 
encuentre ese aroma que resuena con su 
esencia.
''';
}

class TextAromasGuide2 {
  static const String aromasGuideText = '''
En Aromas Selectos, creemos que cada fragancia cuenta una historia única y evocadora. Con el fin de enriquecer su experiencia de
compra y ayudarle a descubrir el aroma que mejor se adapte a su estilo y emociones, hemos creado esta exclusiva Guía de Aromas.

Aquí, explorará un mundo de fragancias detalladamente descritas, desde las vibrantes notas de salida hasta las profundas y
duraderas notas de fondo. Cada aroma se presenta con descripciones claras y sugerentes que le invitan a imaginar y sentir cada
fragancia en su complejidad.

Esta guía está diseñada para ser su compañera en el descubrimiento de nuevos perfumes y para profundizar su apreciación por los
aromas que ya conoce y ama. Tómese su tiempo para navegar a través de nuestra colección y dejar que su nariz le guíe a través de un
viaje olfativo sin igual.

En Aromas Selectos, su viaje hacia el perfume perfecto comienza aquí. Explore, experimente y encuentre ese aroma que resuena con
su esencia.
''';
}

class TextHelpMobile {
  static const String helpText = '''
  Estamos aquí para brindarte asistencia 
  Y responder a todas tus preguntas. 
  Nuestra misión es hacer que tu experiencia 
  De compra sea lo más fácil posible.

    Cómo podemos ayudarte:

  - Preguntas Frecuentes: 

    Explora nuestra sección de Preguntas 
    Frecuentes para obtener respuestas 
    Rápidas a las consultas más comunes.

  - Proceso de Compra: 
  
    Aprende más sobre cómo realizar pedidos
    Y opciones de pago.

    Explora nuestras Categorías:

    - Aromas Árabes
    - Aromas Hombre
    - Aromas Mujer
    - Crea Tu Loción
    - Sale
  ''';
}



class TextHelpWidget extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;

  const TextHelpWidget(
    this.text, 
    this.textStyle, {super.key}
  );

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: textStyle, 
        children: _buildTextSpans(text)
      )
    );
  }

  List<TextSpan> _buildTextSpans(String text) {
    final List<TextSpan> textSpans = [];
    final List<String> highlightedWords = [
      'Preguntas Frecuentes', 'Aromas Selectos', 
      'Proceso de Compra','Atención al Cliente', 
      'Aromas Hombre', 'Aromas Mujer', 
      'Sale', 'Aromas Árabes', 'Crea Tu Loción'
    ];

    // Creamos una expresión regular para buscar las palabras destacadas
    final RegExp regExp = RegExp(
      highlightedWords.map((word) => '\\b$word\\b').join('|'),
      caseSensitive: false
    );

    // Usamos el método allMatches para encontrar todas las ocurrencias de las palabras destacadas
    final Iterable<Match> matches = regExp.allMatches(text);

    // Iteramos sobre las coincidencias y agregamos TextSpans
    int currentPosition = 0;
    for (final Match match in matches) {
      // Agregamos el texto antes de la coincidencia
      if (match.start > currentPosition) {
        textSpans.add(TextSpan(text: text.substring(currentPosition, match.start)));
      }

      // Agregamos la palabra destacada en negrita
      textSpans.add(TextSpan(
        text: match.group(0),
        style: const TextStyle(fontWeight: FontWeight.w600),
      ));

      // Actualizamos la posición actual
      currentPosition = match.end;
    }

    // Agregamos el texto restante después de la última coincidencia
    if (currentPosition < text.length) {
      textSpans.add(TextSpan(text: text.substring(currentPosition)));
    }

    return textSpans;
  }
}



class TextHelpWidgetMobile extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;

  const TextHelpWidgetMobile(
    this.text, 
    this.textStyle, {super.key}
  );

  

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: textStyle, 
        children: _buildTextSpans(text)
      )
    );
  }

  List<TextSpan> _buildTextSpans(String text) {
    final List<TextSpan> textSpans = [];
    final List<String> highlightedWords = [
      'Preguntas Frecuentes', 'Aromas Selectos', 
      'Proceso de Compra','Atención al Cliente', 
      'Aromas Árabes', 'Aromas Hombre', 'Aromas Mujer', 
      'Sale', 'Crea Tu Loción',
    ];

    // Creamos una expresión regular para buscar las palabras destacadas
    final RegExp regExp = RegExp(
      highlightedWords.map((word) => '\\b$word\\b').join('|'),
      caseSensitive: false
    );

    // Usamos el método allMatches para encontrar todas las ocurrencias de las palabras destacadas
    final Iterable<Match> matches = regExp.allMatches(text);

    // Iteramos sobre las coincidencias y agregamos TextSpans
    int currentPosition = 0;
    for (final Match match in matches) {
      // Agregamos el texto antes de la coincidencia
      if (match.start > currentPosition) {
        textSpans.add(TextSpan(text: text.substring(currentPosition, match.start)));
      }

      // Agregamos la palabra destacada en negrita
      textSpans.add(TextSpan(
        text: match.group(0),
        style: const TextStyle(fontWeight: FontWeight.w600),
      ));

      // Actualizamos la posición actual
      currentPosition = match.end;
    }

    // Agregamos el texto restante después de la última coincidencia
    if (currentPosition < text.length) {
      textSpans.add(TextSpan(text: text.substring(currentPosition)));
    }

    return textSpans;
  }
}





// 
/*
Text textHelp = const Text(
  'Bienvenido al Centro de Ayuda de Marking \n'
  'Estamos aquí para brindarte asistencia y responder a todas tus preguntas \n'
  'Nuestra misión es hacer que tu experiencia de compra sea lo más fácil y satisfactoria posible \n'
  'Como podemos ayudarte: \n'
  'Preguntas Frecuentes: Explora nuestras preguntas frecuentes para obtener respuestas rápidas a las consultas más comunes \n'
  'Guías de Producto: Descubre guías detalladas sobre nuestros productos, incluyendo características, especificaciones y consejos de uso \n'
  'Proceso de Compra: Aprende más sobre cómo realizar pedidos, opciones de pago y seguimiento de envíos \n'
  'Atención al Cliente: ¿Necesitas ayuda personalizada? Nuestro equipo de atención al cliente está disponible para ayudarte. Contáctanos por chat, correo electrónico o teléfono \n'
  'Explora nuestras Categorías: \n'
  'Aromas Selectos \n'
  'Nuevo \n'
  'Hombre \n'
  'Mujer \n'
  'Unisex \n'
  'Sale \n'
  'Estamos comprometidos a proporcionarte la mejor experiencia de compra \n'
  'Si no encuentras la información que necesitas, no dudes en contactarnos. ¡Estamos aquí para ayudarte! \n'
);
*/
//       \n

/*
fontSize: 20,
  fontWeight: FontWeight.bold,
  color: Colors.black

  */