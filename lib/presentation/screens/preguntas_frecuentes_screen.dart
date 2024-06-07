import 'package:marking_web/exports.dart';


class PreguntasFrecuentes extends StatelessWidget {
  // ignore: use_super_parameters
  const PreguntasFrecuentes({Key? key}) : super(key: key);
  
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
                padding: const EdgeInsets.only(right: 340, top: 30),
                child: Text('PREGUNTAS FRECUENTES', style: frequent),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 610, top: 30),
                child: Text('COMPRAS ONLINE', style: frequent2),
              ),
              const SizedBox(height: 30),
              Center(
                child: SizedBox(
                  width: size.width * 0.70,
                  child: const FaqSection(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 580, top: 30),
                child: Text('DESPACHO Y ENTREGA', style: frequent2),
              ),
              const SizedBox(height: 30),
              Center(
                child: SizedBox(
                  width: size.width * 0.70,
                  height: size.height * 1.2,
                  child: const FaqSection2(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FaqItem {
  final String question;
  final String answer;

  FaqItem({
    required this.question,
    required this.answer
  });

}

class FaqSection extends StatelessWidget {
   // ignore: use_super_parameters
  const FaqSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<FaqItem> faqItems = [
    FaqItem(
      question: '¿Cómo comprar en Aromas Selectos?', 
      answer: '''
Comprar en aromasselectos.com.co es muy fácil, sólo debes seguir los siguientes pasos:
Para buscar el producto que quieres comprar puedes navegar a través de las categorías en nuestro menú de categorías.
Una vez hayas elegido el producto que deseas, selecciona la cantidad y agrégalo a tu carrito de compras dando click
en el botón de 'AGREGAR AL CARRITO'.
Una vez hayas agregado el producto puedes seguir navegando y agregando al carrito los productos que desees.
Cuando hayas agregado todos los productos que deseas comprar, ve a tu carrito de compras que está en la parte
superior derecha. En el resumen que encontrarás, verifica que los productos que están en tu carrito son los que
deseas comprar y haz click en 'FINALIZAR COMPRA'.
Esto te llevará a un chat de WhatsApp donde deberás presionar el botón 'Ir al Chat' para que aparezcan tus productos
seleccionados en un mensaje, listo para hacer tu pedido. Si tienes alguna duda, puedes comunicarte con nosotros a
nuestros número de WhatsApp disponibles o envíanos un correo a aromasselectos24@gmail.com.
      '''
    ),
    FaqItem(
      question: '¿Cuáles son los métodos de pago que puedo utilizar en la tienda online?',
      answer: '''
En aromasselectos.com.co puedes pagar con Nequi, Bancolombia, o en efectivo. Sólo debes enviar el mensaje con los
productos seleccionados e inmediatamente podrás comunicarte con nosotros para decidir tu método de pago.
'''
    ),
    /*FaqItem(
      question: 'No logro finalizar la compra con mi tarjeta en la tienda online ¿Por qué?',
      answer: '''
Antes de finalizar la compra asegúrate de haber ingresado los datos de tu tarjeta de crédito correctamente incluyendo 
nombre de tarjetahabiente, número de tarjeta, fecha de validez, y código de seguridad, en caso de estar haciendo el 
pago con PSE asegúrate de tener los permisos para realizar compras online a través de cuenta 
(para consultar los permisos debes comunicarte con tu entidad bancaria).

Si no puedes proceder con tu pago comunícate a través de nuestros canales de atención:
A través de nuestros números de WhatsApp
A través de nuestro correo aromasselectos24@gmail.com
Nuestro equipo estará atento y te ayudará a resolver el inconveniente.
'''
    ),*/
    FaqItem(
      question: '¿Los precios incluyen IVA?',
      answer: '''
El valor de todos los productos que ves en nuestra página de internet ya tiene incluído el valor del IVA.
'''
    ),
  ];
  
  return ListView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    itemCount: faqItems.length,
    itemBuilder: (context, index) {
      final item = faqItems[index];
      return Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.grey[700],
          expansionTileTheme: const ExpansionTileThemeData(
            collapsedBackgroundColor: Colors.white,
            iconColor: Colors.black,
          )
        ),
        child: ExpansionTile(
          title: Text(item.question, style: style),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Text(item.answer, style: answer),
            ),
            //const Divider()
          ],
        ),
      );
    },
  );
 }
}

class FaqSection2 extends StatelessWidget {

    // ignore: use_super_parameters
    const FaqSection2({
      Key? key
    }) : super(key: key);
   @override
  Widget build(BuildContext context) {
    final List<FaqItem> faqItems = [
    FaqItem(
      question: '¿Cuál es el tiempo y el costo del envío?', 
      answer: '''
Por compras iguales o superiores a doscientos mil pesos
(sin contar el costo de envío) en nuestra tienda online,
tenemos envíos gratis. El tiempo de entrega oscila entre
5 y 10 días hábiles según la ciudad donde quieras recibir tu pedido.
'''
    ),
    /*FaqItem(
      question: '¿Qué hago si quiero cambiar la dirección de entrega o cometí un error en ésta al realizar la compra?',
      answer: '''
Puedes comunicarte a través de nuestros canales de atención:
A través de nuestros números de Whatsapp
A través de nuestro correo aromasselectos24@gmail.com
Nuestro equipo estará atento y te ayudará a resolver el inconveniente.
'''
    ),
    FaqItem(
      question: '¿Qué hago si no estaba al momento de la entrega?',
      answer: '''
Si no estás para recibir tu pedido, la transportadora puede dejar tu producto con cualquier persona
mayor de edad que se encuentre en el domicilio registrado en el momento de la compra.
Si no hay nadie para recibir el pedido, se realizará un nuevo intento de entrega al siguiente día hábil.
La transportadora realizará hasta 2 intentos de entrega y si no puede realizar la entrega del pedido
éste será devuelto a nuestras bodegas.
'''
    ),*/
    FaqItem(
      question: '¿Qué hago si mi producto no es el que pedí?',
      answer: '''
Si no recibes el producto que ordenaste, comunícate con nosotros:
A través de nuestros números de Whatsapp
A través de nuestro correo aromasselectosc24@gmail.com
Nuestro equipo estará atento y te ayudará a resolver el inconveniente.
'''
    ),
    FaqItem(
      question: '¿Dónde me puedo comunicar si mi pedido se demora más de lo normal?',
      answer: '''
Puedes comunícarte a través de nuestros canales de atención:
A través de nuestros números de Whatsapp
A través de nuestro correo aromasselectos24@gmail.com
Nuestro equipo estará atento y te ayudará a resolver el inconveniente.
'''
    )

  ];

  
  return ListView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    itemCount: faqItems.length,
    itemBuilder: (context, index) {
      final item = faqItems[index];
      return Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.grey[700],
          expansionTileTheme: const ExpansionTileThemeData(
            collapsedBackgroundColor: Colors.white,
            iconColor: Colors.black,
          )
        ),
        child: ExpansionTile(
          title: Text(item.question, style: style),
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 350),
              child: Text(item.answer, style: answer),
            ),
            //const Divider()
          ],
        ),
      );
    },
  );
 }
}