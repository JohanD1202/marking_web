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
          height: size.height * 2.9,
          child: Column(
            children: [
              Material(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 171, 15)
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
                            backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 255, 171, 15)),
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
            Row(
              children: [
                SizedBox(
                  width: 180,
                  height: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacer(),
                      Image.asset('assets/images/aromas_selectos_10.jpg')
                    ],
                  ),
                ),
                Material(
                  child: Container(
                    width: 1050,           //MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Spacer(),
                        //const MyButton(),
                        const SearchhBar(),
                        const Spacer(),
                        Material(
                          type: MaterialType.transparency,
                          child: IconButton(
                            hoverColor: Colors.transparent,
                            onPressed: () {},
                            icon: const Icon(Icons.shopping_bag_outlined, size: 35, color: Color.fromARGB(255, 255, 171, 15)),
                          ),
                        ),
                        const Spacer()
                      ],
                    ),
                  )
                ),
              ],
            ),
          Row(
            children: [
              const Spacer(flex: 1),
              Padding(
                padding: const EdgeInsets.only(left: 100, bottom: 30),
                child: ButtonTextBar(
                  buttonText: 'Inicio', 
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 0;                       
                    });
                  }
                ),
              ),
              //const Spacer(),
              const SizedBox(width: 50),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: ButtonTextBar(
                  buttonText: 'Aromas Selectos', 
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                  }
                ),
              ),
              /*Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: ButtonTextBar(
                  buttonText: 'Estampados', 
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 2;
                    });
                  }
                ),
              ),*/
              //const Spacer(),
              const SizedBox(width: 50),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: ButtonTextBar(
                  buttonText: 'Nuevo', 
                  onPressed: () {
                    setState(() {
                          
                    });
                  }
                ),
              ),
              const SizedBox(width: 50),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: ButtonTextBar(
                  buttonText: 'Hombre', 
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 3;
                    });
                  }
                ),
              ),
              const SizedBox(width: 50),
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
                padding: const EdgeInsets.only(bottom: 30),
                child: ButtonTextBar(
                  buttonText: 'Mujer', 
                  onPressed: () {
                
                    setState(() {
                      _selectedIndex = 4;
                    });
                  }
                ),
              ),
              const SizedBox(width: 50),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: ButtonTextBar(
                  buttonText: 'Sale', 
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 6;
                    });
                  }
                ),
              ),
              const Spacer(flex: 1),
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
            visible: _selectedIndex == 0, 
            child: inicio,
          ),
          Visibility(
            visible: _selectedIndex == 1, 
            child: aromas,
          ),
          /*Visibility(
            visible: _selectedIndex == 2, 
            child: estampados,
          ),*/
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
                          width: 200.5,
                          decoration: const BoxDecoration(color: Colors.black),
                          child: Column(
                            children: [
                              Text('Categorías', style: styleTextFooter),
                              const SizedBox(height: 40),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ButtonTextFooter(
                                    buttonText: 'Aromas               Selectos', 
                                    onPressed: () {
                                      setState(() {
                                         _selectedIndex = 1;//(_selectedIndex + 1) % 3;
                                      });
                                    }
                                  ),
                                ],
                              ),
                              const SizedBox(height: 30),
                              Row(
                                children: [
                                  //const Spacer(),
                                  ButtonTextFooter(
                                    buttonText: 'Hombre', 
                                    onPressed: () {
                                      setState(() {
                                         _selectedIndex = 3;  
                                      });
                                    }
                                  ),
                                  const Spacer(),
                                  ButtonTextFooter(
                                    buttonText: 'Mujer', 
                                    onPressed: () {
                                      setState(() {
                                        _selectedIndex = 4;     //(_selectedIndex + 1) % 3;
                                      });
                                    }
                                  ),
                                  //const Spacer(),
                                ],
                              ),
                              const SizedBox(height: 30),
                              Row(
                                children: [
                                  //const Spacer(),
                                  ButtonTextFooter(
                                    buttonText: 'Nuevo', 
                                    onPressed: () {
                                      setState(() {
                                         //_selectedIndex = 1;
                                      });
                                    }
                                  ),
                                  const Spacer(),
                                  ButtonTextFooter(
                                    buttonText: 'Sale', 
                                    onPressed: () {
                                      setState(() {
                                        //_selectedIndex = 1;//(_selectedIndex + 1) % 3;
                                      });
                                    }
                                  ),
                                  //const Spacer(),
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
                                _selectedIndex = 5;
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
                        const SizedBox(width: 10),
                        Image.asset('assets/images/pse.png', height: 25, width: 25),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset('assets/images/efecty.jpg', height: 25, width: 82)
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