// ignore_for_file: curly_braces_in_flow_control_structures
import 'package:flutter/material.dart';


ButtonStyle styleButton = ButtonStyle(
  overlayColor: MaterialStateProperty.resolveWith<Color>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.focused))
        return Colors.transparent;
      if (states.contains(MaterialState.hovered))
        return Colors.transparent;
      if (states.contains(MaterialState.pressed))
        return Colors.transparent;
      return Colors.transparent;
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
          child: TextButton(
            onPressed: widget.onPressed,
            child: Text(
              widget.buttonText,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w900,
                color: _isHovered ? Colors.grey[700] : Colors.black,
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

TextStyle styleText = const TextStyle(
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

TextStyle styleTextC = const TextStyle(
  fontSize: 26,
  fontWeight: FontWeight.w800,
  color: Colors.black
);

TextStyle styleText3 = const TextStyle(
  fontSize: 21,
  fontWeight: FontWeight.w700,
  color: Colors.black
);

TextStyle styleTextHeader = TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w100,
  color: Colors.grey[900]
);

TextStyle styleText4 = const TextStyle(
  fontSize: 45,
  fontWeight: FontWeight.w900,
  color: Colors.white
);

TextStyle styleTextLocion = TextStyle(
  fontSize: 17,
  color: Colors.grey [800]
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

class TextHelp {
  static const String helpText = '''
    Estamos aquí para brindarte asistencia y responder a todas tus preguntas. 
    Nuestra misión es hacer que tu experiencia de compra sea lo más fácil y satisfactoria posible.

    Cómo podemos ayudarte:

    - Preguntas Frecuentes: Explora nuestra sección de Preguntas Frecuentes para obtener 
      respuestas rápidas a las consultas más comunes.

    - Guías de Producto: Descubre guías detalladas sobre nuestros productos, 
      incluyendo características, especificaciones y consejos de uso.

    - Proceso de Compra: Aprende más sobre cómo realizar pedidos, 
      opciones de pago y seguimiento de envíos.

    - Atención al Cliente: ¿Necesitas ayuda personalizada? 
      Nuestro equipo de atención al cliente está disponible para ayudarte.

      Contáctanos por chat, correo electrónico o teléfono.

    Explora nuestras Categorías:

    - Aromas Selectos
    - Estampados
    - Nuevo
    - Hombre
    - Mujer
    - Sale

    Estamos comprometidos a proporcionarte la mejor experiencia de compra. 
    Si no encuentras la información que necesitas, no dudes en contactarnos. 
    ¡Estamos aquí para ayudarte!

    Comunícate con nosotros a los Teléfonos:    
    (+57) 310 731 2102
    (+57) 310 402 5062

    WhatsApp:    
    (+57) 310 402 5062

    Instagram:
    @aromasselectos_co

    Correo Eléctrónico:
    idarragajohan8@gmail.com

  ''';
}

class TextHelpWidget extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;

  const TextHelpWidget(
    this.text, 
    this.textStyle
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
      'Guías de Producto', 'Proceso de Compra', 
      'Atención al Cliente', 'Nuevo', 'Hombre', 
      'Mujer', 'Estampados', 'Sale'
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