// ignore_for_file: constant_identifier_names

//import 'package:flutter/material.dart';
//import 'package:marking_web/presentation/screens/aromas_screen.dart';
//import 'package:url_launcher/url_launcher.dart';
//import 'package:marking_web/presentation/widgets/style_button.dart';


/*
class DefaultScreen extends StatefulWidget {

  
  const DefaultScreen({super.key});

  @override
  State<DefaultScreen> createState() => _DefaultScreenState();
}

enum ContentState {
  Default, 
  Aromas, 
  //Hombre, 
}


class _DefaultScreenState extends State<DefaultScreen> {

ContentState _currentContent = ContentState.Default;

Widget _buildContent() {
  switch (_currentContent) {
    case ContentState.Default:
      return const DefaultScreen();

    case ContentState.Aromas:
      return const AromasScreen();

    default:
      return Container(); 
  }
}
  //bool mostrarAromasScreen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Material(
                elevation: 8,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 1,
                        offset: const Offset(0, 3)
                      )
                    ]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 60),
                      Padding(
                        padding: const EdgeInsets.all(4),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.circular(90)),
                          child: Image.asset('assets/images/logo_principal_1.png', width: 85, height: 85, fit: BoxFit.cover)),
                      ),
                      //* Hacer imagen más pequeña
                      const SizedBox(width: 150),
                      const Text('Tienda Online Marking',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30
                      ),
                    ),
                    //Envio gratis por compras mayores a 200.000
                    const SizedBox(width: 340),
                    SizedBox(
                      height: 35,
                      width: 130,
                      child: GestureDetector(
                        onTap: () {},
                        child: FilledButton(
                          style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                side: BorderSide(color: Colors.black)
                              )
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            '¿Necesitas Ayuda?', 
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 11.5
                            ),
                          ),
                        ),
                      )
                    )
                   ],
                  ),
                )
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 62),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(90)),
                      child: Image.asset('assets/images/aromas_selectos_1.jpg', width: 95, height: 95, fit: BoxFit.fitWidth)
                    ),
                  ),
                  const SizedBox(width: 130),
                  ButtonTextBar(
                    buttonText: 'Inicio', 
                    onPressed: () {
                      setState(() {
                        _currentContent = ContentState.Default; 
                      });
                    }
                  ),
                  const SizedBox(width: 40),
                  ButtonTextBar(
                    buttonText: 'Aromas Selectos', 
                    onPressed: () {
                      setState(() {
                        _currentContent = ContentState.Aromas; //mostrarAromasScreen = true;
                      });
                    }
                  ),
                  const SizedBox(width: 40),
                  ButtonTextBar(
                    buttonText: 'Estampados', 
                    onPressed: () {
                      setState(() {
              
                      });
                    }
                  ),
                  const SizedBox(width: 40),
                  ButtonTextBar(
                    buttonText: 'Nuevo', 
                    onPressed: () {
                      setState(() {
              
                      });
                    }
                  ),
                  const SizedBox(width: 40),
                  ButtonTextBar(
                    buttonText: 'Hombre', 
                    onPressed: () {
                      setState(() {
                        
                      });
                    }
                  ),
                  const SizedBox(width: 40),
                  ButtonTextBar(
                    buttonText: 'Mujer', 
                    onPressed: () {
                      setState(() {
                        
                      });
                    }
                  ),
                  const SizedBox(width: 40),
                  ButtonTextBar(
                    buttonText: 'Sale', 
                    onPressed: () {
                      setState(() {
                        
                      });
                    }
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Material(
                      type: MaterialType.transparency,
                      child: IconButton(
                        hoverColor: Colors.transparent,
                        onPressed: () {},
                        icon: const Icon(Icons.shopping_cart_rounded, size: 45,),
                      ),
                    ),
                  )
                ],
              ),
              _buildContent(),
              //if (mostrarAromasScreen) const AromasScreen(),
              Container(
                width: 1200,
                height: 395,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    alignment: Alignment.topCenter,
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/logo_principal_1.png'),
                  )
                ),
                child: Material(
                  type: MaterialType.transparency,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 100,
                        top: 108,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Text('Nuestros productos con la mejor calidad', style: styleTextTitle ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Text('Aquí encontrarás todo lo que necesitas', style: styleText10),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: SizedBox(
                                  height: 45,
                                  width: 220,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30),
                                          side: const BorderSide( color: Colors.black)
                                        )
                                      )
                                    ),
                                    onPressed: () {},
                                    child: const Text('Ver Productos' ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 40,
                        right: 40,
                        child: FloatingActionButton(
                          onPressed: () {
                            launchWhatsapp();
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(0),
                              child: ClipRRect(
                                //borderRadius: BorderRadius.circular(20),
                                child: Image.asset('assets/images/whatsapp.png')
                              ),
                            )
                          )
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
*/*/








//* Motor de Busqueda
//* Finalizar Compra, directo a Whatsapp
//* ¿Necesitas Ayuda? Arriba a la derecha
//* floating actionbutton ver nueva colección, va a dirigir al container Nuevo
//* Container Aromas selectos, opciones de hombre, mujer y unisex, botones, que van a dirigir a la sección asignada
//*? Agregar al carrito, como hacer para pagar por los medios de pago seleccionados
//* Container de Nuevo, Mujer, Hombre, Sale
//*! Descripcion breve tienda online
//*? footed de Compra 100% segura, Pago en línea o en efectivo, Envio gratis desde 200.000 arriba y abajo.
//* colocar logos de nequi, Bancolombia, PSE y efecty 
//* copiright
