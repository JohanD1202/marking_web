import 'package:marking_web/exports.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;


class HomeScreen extends StatefulWidget {

  // ignore: use_super_parameters
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;

  Widget inicio = const Inicio();
  Widget aromas = const AromasScreen();
  Widget estampados = const EstampadosScreen();
  Widget hombre = const HombreScreen();
  Widget mujer = const MujerScreen();
  Widget help = const Help();
  Widget sale = const SaleScreen();


  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return 
    Responsive(
      mobile: const MobileScreen(), 
      tablet: const TabletScreen(), 
      desktop: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
          width: size.width * 1,
          height: size.height * 2.84,
          child: Column(
            children: [
              Material(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                  ),
                child: Row(
                  children: [
                    //const SizedBox(width: 455),
                    const Spacer(flex: 6),
                    Text('ENVÍO GRATIS POR COMPRAS DESDE \$200.000', style: styleTextHeader),
                    const Spacer(flex: 2),
                    //const SizedBox(width: 100),
                    const Text('|', style: TextStyle(fontSize: 20)),
                    SizedBox(
                      height: 45,
                      width: 200,
                      child: GestureDetector(
                        onTap: () {},
                        child: FilledButton(
                          style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                            backgroundColor: MaterialStateProperty.all(Colors.grey[400]),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(0)),
                              )
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              _selectedIndex = 5;
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
            const SizedBox(height: 10),
          Material(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 90,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //const SizedBox(width: 500),
                  const Spacer(flex: 2),
                  const MyButton(),
                  const Spacer(),
                  const SearchhBar(),
                  const SizedBox(width: 20),
                Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: Material(
                    type: MaterialType.transparency,
                    child: IconButton(
                      hoverColor: Colors.transparent,
                      onPressed: () {},
                      icon: const Icon(Icons.shopping_bag_outlined, size: 35, color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(width: 40),
              ],
            ),
           )
          ),
          Row(
            children: [
              /*Padding(
                padding: const EdgeInsets.only(left: 62),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(90)),
                  child: Image.asset('assets/images/aromas_selectos_1.jpg', width: 95, height: 95, fit: BoxFit.fitWidth)
                ),
              ),*/
              const Spacer(flex: 1),
              Padding(
                padding: const EdgeInsets.only(left: 100, bottom: 15),
                child: ButtonTextBar(
                  buttonText: 'Inicio', 
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 0;                       
                    });
                  }
                ),
              ),
              const SizedBox(width: 40),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: ButtonTextBar(
                  buttonText: 'Aromas Selectos', 
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                  }
                ),
              ),
              const SizedBox(width: 40),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: ButtonTextBar(
                  buttonText: 'Estampados', 
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 2;
                    });
                  }
                ),
              ),
              const SizedBox(width: 40),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: ButtonTextBar(
                  buttonText: 'Nuevo', 
                  onPressed: () {
                    setState(() {
                          
                    });
                  }
                ),
              ),
              const SizedBox(width: 40),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: ButtonTextBar(
                  buttonText: 'Hombre', 
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 3;
                    });
                  }
                ),
              ),
              const SizedBox(width: 40),
              //TODO:
              /*Tooltip(
                message: 'Bolsos', // Texto que se mostrará al pasar el ratón por encima
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 4;
                    });
                  },
                  child: Text('Mujer', style: styleText), // Texto del botón
                ),
              ),*/
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: ButtonTextBar(
                  buttonText: 'Mujer', 
                  onPressed: () {
                
                    setState(() {
                      _selectedIndex = 4;
                    });
                  }
                ),
              ),
              const SizedBox(width: 40),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: ButtonTextBar(
                  buttonText: 'Sale', 
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 6;
                    });
                  }
                ),
              ),
              const Spacer(),
              /*Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Material(
                  type: MaterialType.transparency,
                  child: IconButton(
                    hoverColor: Colors.transparent,
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_cart_rounded, size: 45),
                  ),
                ),
              )*/
            ],
          ),
          Visibility(
            visible: _selectedIndex == 0, // Mostrar Inicio cuando _selectedIndex es 0
            child: inicio,
          ),
          Visibility(
            visible: _selectedIndex == 1, // Mostrar widget2 cuando _selectedIndex es 1
            child: aromas,
          ),
          Visibility(
            visible: _selectedIndex == 2, // Mostrar widget3 cuando _selectedIndex es 2
            child: estampados,
          ),
          Visibility(
            visible: _selectedIndex == 3,
            child: hombre,
          ),
          Visibility(
            visible: _selectedIndex == 4,
            child: mujer,
          ),
          Visibility(
            visible: _selectedIndex == 5,
            child: help,
          ),
          Visibility(
            visible: _selectedIndex == 6,
            child: sale,
          ),

          FloatingActionButton(
            onPressed: () => _launchWhatsApp('573107312102'),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset('assets/images/whats.png')
                ),
              )
            )
          ),
          
          //TODO: FOOTER
          Material(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
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
                        const SizedBox(width: 100),
                        Text('Nuestras Redes Sociales', style: styleTextFooter),
                        const SizedBox(width: 220),
                        Text('Categorías', style: styleTextFooter),
                        const SizedBox(width: 275),
                        Text('Teléfonos', style: styleTextFooter),
                      ]
                    ),
                  ),
                  Row(
                    children: [
                        GestureDetector(
                          onTap: () => _launchWhatsApp('573107312102'),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 160, top: 15),
                            child: Image.asset('assets/images/whats.png', height: 45, width: 45),
                          ),
                        ),
                        GestureDetector(
                        onTap: _launchInstagram,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0, top: 13),
                          child: Image.asset('assets/images/instagr.png', height: 75, width: 95),
                        ),
                        ),
                        const SizedBox(width: 180),
                        ButtonTextFooter(
                          buttonText: 'Aromas Selectos', 
                          onPressed: () {
                            setState(() {
                               _selectedIndex = 1;//(_selectedIndex + 1) % 3;
                            });
                          }
                        ),
                        const SizedBox(width: 30),
                        ButtonTextFooter(
                          buttonText: 'Estampados', 
                            onPressed: () {
                              setState(() {
                                  _selectedIndex = 2;//(_selectedIndex + 1) % 3;
                              });
                            }
                        ),
                        const SizedBox(width: 150),
                        GestureDetector(
                          onTap: () => _launchWhatsApp('573107312102'),
                          child: Image.asset('assets/images/whats.png', height: 30, width: 30),
                        ),
                        GestureDetector(
                          onTap: () => _launchWhatsApp('573107312102'),
                          child: Text('(+57) 310 731 2102', style: styleTextCar)
                        )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(width: 457),
                      Padding(
                        padding: const EdgeInsets.only(left: 62, bottom: 15),
                        child: ButtonTextFooter(
                          buttonText: 'Nuevo', 
                          onPressed: () {
                            setState(() {
                               //_selectedIndex = 1;
                            });
                          }
                        ),
                      ),
                      const SizedBox(width: 80),
                      ButtonTextFooter(
                        buttonText: 'Hombre', 
                        onPressed: () {
                          setState(() {
                             _selectedIndex = 3;  
                          });
                        }
                      ),
                      const SizedBox(width: 169),
                      GestureDetector(
                          onTap: () => _launchWhatsApp('573104025062'),
                          child: Image.asset('assets/images/whats.png', height: 28, width: 28),
                        ),
                      GestureDetector(
                          onTap: () => _launchWhatsApp('573104025062'),
                        child: Text('(+57) 310 402 5062', style: styleTextCar)
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 520, top: 20),
                        child: ButtonTextFooter(
                          buttonText: 'Mujer', 
                          onPressed: () {
                            setState(() {
                              _selectedIndex = 4;     //(_selectedIndex + 1) % 3;
                            });
                          }
                        ),
                      ),
                      const SizedBox(width: 93),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: ButtonTextFooter(
                          buttonText: 'Sale', 
                          onPressed: () {
                            setState(() {
                              //_selectedIndex = 1;//(_selectedIndex + 1) % 3;
                            });
                          }
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(width: 155),
                        IconButton(
                          color: Colors.white,
                          onPressed: () {},
                          icon: const Icon(Icons.key_rounded, size: 50),
                        ),
                        const SizedBox(width: 220),
                        IconButton(
                          color: Colors.white,
                          onPressed: () {},
                          icon: const Icon(Icons.wallet_rounded, size: 50),
                        ),
                        const SizedBox(width: 220),
                        GestureDetector(
                          onTap: () {
                            //launchInstagram(); 
                          },
                          child: Image.asset('assets/images/camion.png', height: 70, width: 70),
                        ),
                        const SizedBox(width: 220),
                        IconButton(
                          icon: const Icon(Icons.info_outline_rounded), 
                          onPressed: () {
                            setState(() {
                              _selectedIndex = 4;
                            });
                          },
                          color: Colors.white, 
                          iconSize: 50
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 80),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(width: 117),
                        Text('Compra 100% Segura', style: styleTextCar),
                        const SizedBox(width: 110),
                        Text('Paga en línea o en efectivo', style: styleTextCar),
                        const SizedBox(width: 85),
                        Text('Envío gratis desde \$200.000', style: styleTextCar),
                        const SizedBox(width: 117),
                        Text('Centro de Ayuda', style: styleTextCar),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 60),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(width: 450),
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
                        const SizedBox(width: 10),
                        Image.asset('assets/images/pse.png', height: 25, width: 25),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset('assets/images/efecty.jpg', height: 25, width: 82)
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 420),
                      Text('© 2024 | Todos los Derechos Reservados Marking', style: styleTextCar)
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

  const Inicio({Key?key}) : super(key: key);

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
    const Screen5(),
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
  if(phoneNumber == '573107312102') {
    url = 'https://wa.me/$phoneNumber';
  } else if (phoneNumber == '573104025062') {
    url = 'https://wa.me/$phoneNumber';
  } else {
    throw 'Número de teléfono no válido: $phoneNumber';
  }

  html.window.open(url, 'WhatsApp');

}

void _launchInstagram() async {
  
  const url = 'https://www.instagram.com/aromasselectos_co/';
  
  html.window.open(url, 'Instagram');
  

}


//TODO: DIRECCIÓN
/*
Column(
                          children: [
                            Text('Dirección', style: styleTextFooter),
                            const SizedBox(height: 10),
                            Text('Carrera 34 A No. 31-11 B/Victoria - Tuluá', style: styleTextCar),
                            const SizedBox(height: 10),
                            Text('¿Cómo Llegar?', style: styleTextCar),
                          ],
                        )*/


//TODO: BOTON VER PRODUCTOS
/*
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
      child: const Text('Ver Productos'),
    ),
  ),
)

*/

  /*Visibility(
          visible: _selectedIndex == 0,
          child: screen1,
        ),
        Visibility(
          visible: _selectedIndex == 1,
          child: screen2,
        ),
        Visibility(
          visible: _selectedIndex == 2,
          child: screen3,
        ),
        Visibility(
          visible: _selectedIndex == 3,
          child: screen4,
        ),
        Visibility(
          visible: _selectedIndex == 4,
          child: screen5,
        ),*/

        /*
        Tennis Tienda de Ropa Online
Bienvenid@ a Tennis, una tienda de ropa colombiana 
en la que encuentras ropa, zapatos, accesorios y 
productos de belleza para mujer, hombre, niña y niño. 
Somos una marca enfocada en un estilo de vida joven, fresco y urbano. 
Creamos colecciones de moda con las últimas tendencias de temporada 
para todos los gustos y todas las edades.
        */