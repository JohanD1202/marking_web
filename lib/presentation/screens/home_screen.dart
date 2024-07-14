import 'package:aromas_selectos/exports.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:aromas_selectos/presentation/screens/cart_screen.dart';
import 'package:aromas_selectos/presentation/screens/crea_tu_locion_screen.dart';
import 'package:aromas_selectos/presentation/screens/guia_de_aromas.dart';
import 'package:aromas_selectos/presentation/screens/arabes_screen.dart';
import 'package:aromas_selectos/presentation/screens/men_screen.dart';
import 'package:aromas_selectos/presentation/screens/women_screen.dart';
import 'package:aromas_selectos/presentation/widgets/style_button.dart';
import 'package:aromas_selectos/responsive/mobile_screen.dart';
import 'package:aromas_selectos/responsive/responsive.dart';


class HomeScreen extends StatefulWidget {

  // ignore: use_super_parameters
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int indiceWidget = 0;

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return 
    Responsive(
      mobile: const MobileScreen(), 
      desktop: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
          width: size.width * 1,
          height: size.height * 2.9,
          child: Column(
            children: [
              Material(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey[350]
                  ),
                child: Row(
                  children: [
                    const Spacer(flex: 6),
                    Text('ENVÍO GRATIS POR COMPRAS DESDE \$200.000', style: styleTextHeader),
                    const Spacer(flex: 2),
                    const Text('|', style: TextStyle(fontSize: 20)),
                    SizedBox(
                      height: 45,
                      width: 200,
                      child: GestureDetector(
                        onTap: () {},
                        child: FilledButton(
                          style: ButtonStyle(
                            foregroundColor: WidgetStateProperty.all<Color>(Colors.black),
                            backgroundColor: WidgetStateProperty.all(Colors.grey[350]),
                            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                              const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(0)),
                              )
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              indiceWidget = 6;
                            });
                          },
                          child: Text(
                            '¿NECESITAS AYUDA?', style: styleTextHeader
                          ),
                        ),
                      )
                    ),
                    const Text('|', style: TextStyle(fontSize: 20)),
                    const Spacer(),
                  ],
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                Image.asset('assets/images/logo_pr1.jpg', width: 150),
                const Spacer(),
              ],
            ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10, top: 0),
            child: Row(
              children: [
                const Spacer(),
                ButtonTextBar(
                  buttonText: 'Inicio', 
                  onPressed: () {
                    setState(() {
                      indiceWidget = 0;                       
                    });
                  }
                ),
                const SizedBox(width: 50),
                ButtonTextBar(
                  buttonText: 'Aromas Árabes', 
                  onPressed: () {
                    setState(() {
                      indiceWidget = 1;
                    });
                  }
                ),
                const SizedBox(width: 50),
                ButtonTextBar(
                  buttonText: 'Aromas Hombre', 
                  onPressed: () {
                    setState(() {
                      indiceWidget = 2;
                    });
                  }
                ),
                const SizedBox(width: 50),
                ButtonTextBar(
                  buttonText: 'Aromas Mujer', 
                  onPressed: () {  
                    setState(() {
                      indiceWidget = 3;
                    });
                  }
                ),
                const SizedBox(width: 50),
                ButtonTextBar(
                  buttonText: 'Crea tu Loción', 
                  onPressed: () {  
                    setState(() {
                      indiceWidget = 4;
                    });
                  }
                ),
                const SizedBox(width: 50),
                ButtonTextBar(
                  buttonText: 'Sale', 
                  onPressed: () {
                    setState(() {
                      indiceWidget = 5;
                    });
                  }
                ),
                const SizedBox(width: 50),
                ButtonTextBar(
                  buttonText: 'Guía de Aromas', 
                  onPressed: () {
                    setState(() {
                      indiceWidget = 7;
                    });
                  }
                ),
                const SizedBox(width: 50),
                IconButton(
                  icon: const Icon(Icons.shopping_cart_rounded, color: Colors.black, size: 30),
                  onPressed: () {
                    setState(() {
                      indiceWidget = 8;
                    });
                  },
                ),
                const Spacer(),
              ],
            ),
          ),
          IndexedStack(
            index: indiceWidget,
            children: const [
              Inicio(),
              ArabesScreen(),
              MenScreen(),
              WomenScreen(),
              CreaTuLocion(),
              SaleScreen(),
              Help(),
              GuiaAromas(),
              CartScreen(),
            ],
          ),
          //TODO: FOOTER
          Material(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1.05,
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Spacer(),
                        const SocialNetworks(),
                        const Spacer(),
                        Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Container(
                          height: 250,
                          width: 300,
                          decoration: const BoxDecoration(color: Colors.black),
                          child: Column(
                            children: [
                              Text('Categorías', style: styleTextFooter),
                              const SizedBox(height: 40),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Spacer(),
                                  ButtonTextFooter(
                                    buttonText: 'Aromas Árabes', 
                                    onPressed: () {
                                      setState(() {
                                        indiceWidget = 1;
                                      });
                                    }
                                  ),
                                  const Spacer(),
                                  ButtonTextFooter(
                                    buttonText: 'Aromas Hombre', 
                                    onPressed: () {
                                      setState(() {
                                        indiceWidget = 2;  
                                      });
                                    }
                                  ),
                                  const Spacer(),
                                ],
                              ),
                              const SizedBox(height: 30),
                              Row(
                                children: [
                                  const Spacer(),
                                  ButtonTextFooter(
                                    buttonText: 'Aromas Mujer', 
                                    onPressed: () {
                                      setState(() {
                                        indiceWidget = 3;
                                      });
                                    }
                                  ),
                                  const Spacer(),
                                  ButtonTextFooter(
                                    buttonText: 'Crea Tu Loción', 
                                    onPressed: () {
                                      setState(() {
                                        indiceWidget = 4;
                                      });
                                    }
                                  ),
                                  const Spacer(),
                                ],
                              ),
                              const SizedBox(height: 30),
                              Row(
                                children: [
                                  const Spacer(),
                                  ButtonTextFooter(
                                    buttonText: 'Sale', 
                                    onPressed: () {
                                      setState(() {
                                        indiceWidget = 5;
                                      });
                                    }
                                  ),
                                  const Spacer(),
                                ],
                              )
                            ],
                          ),
                        ),
                        ),
                        const Spacer(),
                        const Phones(),
                        const Spacer(),
                      ]
                    ),
                  ),
                  Row(
                    children: [
                      const Spacer(),
                        Comments(
                          iconOrImage: IconButton(
                            color: Colors.white,
                            onPressed: () {},
                            icon: const Icon(Icons.key_rounded, size: 50),
                          ),
                          text: 'Compra 100% Segura',
                        ),
                        const Spacer(),
                        Comments(
                          iconOrImage: IconButton(
                            color: Colors.white,
                            onPressed: () {},
                            icon: const Icon(Icons.wallet_rounded, size: 50),
                          ),
                          text: 'Paga en línea o en efectivo',
                        ),
                        const Spacer(),
                        Comments(
                          iconOrImage: Image.asset('assets/images/camion.png', height: 70, width: 70),
                          text: 'Envío gratis desde \$200.000',
                        ),
                        const Spacer(),
                        Comments(
                          iconOrImage: IconButton(
                            icon: const Icon(Icons.info_outline_rounded), 
                            onPressed: () {
                              setState(() {
                                indiceWidget = 6;
                              });
                            },
                            color: Colors.white, 
                            iconSize: 50
                          ),
                          text: 'Centro de Ayuda',
                        ),
                      const Spacer(),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50, top: 60),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Spacer(),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset('assets/images/nequi1.png', height: 25, width: 75)
                        ),
                        Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.white
                          ),
                          child: Image.asset('assets/images/bancolombia1.png', fit: BoxFit.cover),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      const Spacer(),
                      Text('© 2024 | Todos los Derechos Reservados Aromas Selectos', style: styleTextCar),
                      const Spacer(),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
   ),
  )
 );
}
}

//TODO: AQUI COMIENZA EL INICIO

class Inicio extends StatefulWidget {

  // ignore: use_super_parameters
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {

  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const Screen1(),
    const Screen2(),
    const Screen3(),
    const Screen4(),
    //const Screen5(),
  ];

  void _next() {
    setState(() {
      _selectedIndex = (_selectedIndex + 1) % _screens.length;
    });
  }

  void _prev() {
    setState(() {
      if (_selectedIndex == 0) {
        _selectedIndex = _screens.length - 1;
      } else {
        _selectedIndex -=1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _screens[_selectedIndex],
        const SizedBox(height: 20),
        Row(
          children: [
            const SizedBox(width: 570),
            IconButton(
              onPressed: _prev,    
              icon: const Icon(Icons.arrow_back_ios_rounded),
              iconSize: 35,
              color: Colors.black,
            ),
            const SizedBox(width: 20),
            IconButton(
              onPressed: _next,
              icon: const Icon(Icons.arrow_forward_ios_rounded),
              iconSize: 35,
              color: Colors.black,
            ),
          ],
        ), 
      ]      
    );
  }
}



void _launchWhatsApp(String phoneNumber) async {

  String url;
  if(phoneNumber == '573026094603') {
    url = 'https://wa.me/$phoneNumber';
  } /*else if (phoneNumber == '573104025062') {
    url = 'https://wa.me/$phoneNumber';
  } */else {
    throw 'Número de teléfono no válido: $phoneNumber';
  }

  html.window.open(url, 'WhatsApp');

}

void _launchInstagram() async {
  
  const url = 'https://www.instagram.com/aromasselectos_co/';
  
  html.window.open(url, 'Instagram');

}