// ignore_for_file: curly_braces_in_flow_control_structures
import 'package:flutter/material.dart';


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
        child: Tooltip(
          message: '',
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
                  fontWeight: FontWeight.w900,
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
            onPressed: widget.onPressed,
            child: Padding(
              padding: widget.padding,
              child: Text(
                widget.buttonText,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
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
  fontWeight: FontWeight.bold,
  color: Colors.white
);

TextStyle styleTextInicioMobile = const TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.bold,
  color: Colors.white
);

TextStyle styleText = const TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w900,
  color: Colors.black
);

TextStyle style = const TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w600,
  color: Colors.black
);

TextStyle styleMobile = const TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w500,
  color: Colors.black
);

TextStyle frequent = const TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.w900,
  color: Colors.black
);

TextStyle frequentMobile = const TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w900,
  color: Colors.black
);

TextStyle frequent2 = const TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.w900,
  color: Colors.black
);

TextStyle frequent2Mobile = const TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w900,
  color: Colors.black
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
  fontWeight: FontWeight.w800,
  color: Colors.white
);

TextStyle styleTextBMobile = const TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w800,
  color: Colors.white
);

TextStyle styleTextC = const TextStyle(
  fontSize: 26,
  fontWeight: FontWeight.w800,
  color: Colors.white
);

TextStyle styleTextD = const TextStyle(
  fontSize: 35,
  fontWeight: FontWeight.w800,
  color: Colors.white
);

TextStyle styleTextDMobile = const TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w800,
  color: Colors.white
);

TextStyle styleText3 = const TextStyle(
  fontSize: 21,
  fontWeight: FontWeight.w700,
  color: Colors.black
);

TextStyle styleText3Mobile = const TextStyle(
  fontSize: 17,
  fontWeight: FontWeight.w700,
  color: Colors.black
);

TextStyle answer = const TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w500,
  color: Colors.black
);

TextStyle styleTextHeader = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w100,
  color: Colors.grey[900]
);

TextStyle styleTextHeaderMobile = TextStyle(
  fontSize: 13,
  fontWeight: FontWeight.w100,
  color: Colors.grey[900]
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
  color: Colors.grey [800]
);

TextStyle styleTextLocionMobile = TextStyle(
  fontSize: 15,
  color: Colors.grey [800]
);


TextStyle styleText9 = const TextStyle(
  fontSize: 15.5,
  color: Colors.black
);

TextStyle styleTextLocion2 = TextStyle(
  fontSize: 17,
  color: Colors.grey [800],
  fontWeight: FontWeight.w600
);

TextStyle styleTextLocion2Mobile = TextStyle(
  fontSize: 15.5,
  color: Colors.grey [800],
  fontWeight: FontWeight.w600
);

TextStyle styleTextPrice = TextStyle(
  fontSize: 16,
  color: Colors.grey[900]
);

TextStyle styleTextSale = TextStyle(
  decoration: TextDecoration.lineThrough,
  fontSize: 14,
  color: Colors.grey [700]
);

TextStyle styleTextCar = const TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w500,
  color: Colors.white
);

TextStyle styleTextCarMobile = const TextStyle(
  fontSize: 11,
  fontWeight: FontWeight.w500,
  color: Colors.white
);

TextStyle styleTextCa = const TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w500,
  color: Colors.white
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
  color: Colors.white
);

TextStyle styleTextFooterMobile = const TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w500,
  color: Colors.white
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





class TextHelp {
  static const String helpText = '''
    Estamos aquí para brindarte asistencia y responder a todas tus preguntas. 
    Nuestra misión es hacer que tu experiencia de compra sea lo más fácil y satisfactoria posible.

    Cómo podemos ayudarte:

    - Preguntas Frecuentes: Explora nuestra sección de Preguntas Frecuentes para obtener 
      respuestas rápidas a las consultas más comunes.

    - Proceso de Compra: Aprende más sobre cómo realizar pedidos y opciones de pago.

    Explora nuestras Categorías:

    - Aromas Selectos
    - Hombre
    - Mujer
    - Nuevo
    - Sale
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

    - Aromas Selectos
    - Hombre
    - Mujer
    - Nuevo
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
      'Nuevo', 'Hombre', 'Mujer', 
      'Sale'
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
        style: const TextStyle(fontWeight: FontWeight.w900),
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
      'Nuevo', 'Hombre', 'Mujer', 
      'Sale'
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
        style: const TextStyle(fontWeight: FontWeight.w900),
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