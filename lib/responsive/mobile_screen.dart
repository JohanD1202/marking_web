import 'package:aromas_selectos/exports.dart';
import 'package:aromas_selectos/presentation/widgets/style_button.dart';
import 'package:aromas_selectos/responsive/screens_mobile/arabes_screen_mobile.dart';
import 'package:aromas_selectos/responsive/screens_mobile/cart_screen_mobile.dart';
import 'package:aromas_selectos/responsive/screens_mobile/crea_tu_locion_screen_mobile.dart';
import 'package:aromas_selectos/responsive/screens_mobile/help_mobile.dart';
import 'package:aromas_selectos/responsive/screens_mobile/women_screen_mobile.dart';


class MobileScreen extends StatefulWidget {


  // ignore: use_super_parameters
  const MobileScreen({Key? key}) : super(key: key);

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  int indiceWidget = 0;
  

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      key: _scaffoldKey,
      body: Stack(
        children: [ 
          SingleChildScrollView(
          child: SizedBox(
            width: size.width * 1,
            height: size.height * 2.3,
            child: Column(
              children: [
                Material(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.grey[350]
                    ),
                    child: Row(
                      children: [
                        const Spacer(),
                        Text('ENVÍO GRATIS POR COMPRAS DESDE \$200.000', style: styleTextHeaderMobile),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
                Image.asset('assets/images/logo_pr1.jpg', height: 111.25, width: 121.25),
                Column(
                  children: [
                    if (indiceWidget == 0) const InicioMobile(),
                    if (indiceWidget == 1) const ArabesScreenMobile(),
                    if (indiceWidget == 2) const MenScreenMobile(),
                    if (indiceWidget == 3) const WomenScreenMobile(),
                    if (indiceWidget == 4) const CreaTuLocionMobile(),
                    if (indiceWidget == 5) const SaleScreenMobile(),
                    if (indiceWidget == 6) const HelpMobile(),
                    if (indiceWidget == 7) const PreguntasFrecuentesMobile(),
                    if (indiceWidget == 8) const GuiaAromasMobile(),
                    if (indiceWidget == 9) const SearchhBarMobile(),
                    if (indiceWidget == 10) const CartScreenMobile(),
                  ],
                ),
                const SizedBox(height: 30),
                //TODO: FOOTER
                Material(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: size.height * 1.7,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Column(
                      children: [
                          const Row(
                            children: [
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: SocialNetworksMobile(),
                              ),
                              Spacer(),
                            ],
                          ),
                          SizedBox(
                            width: 330,
                            child: Divider(
                              color: Colors.grey[700],
                              thickness: 1,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Container(
                              height: 200,
                              width: 302,
                              decoration: const BoxDecoration(color: Colors.black),
                              child: Column(
                                children: [
                                  Text('Categorías', style: styleTextFooterMobile),
                                  const SizedBox(height: 20),
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
                                  const SizedBox(height: 15),
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
                                  const SizedBox(height: 15),
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
                                  ),
                                  const SizedBox(height: 15),
                                ],
                              ),
                            )
                          ),
                          SizedBox(
                            width: 330,
                            child: Divider(
                              color: Colors.grey[700],
                              thickness: 1,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: PhonesMobile(),
                          ),
                          SizedBox(
                            width: 330,
                            child: Divider(
                              color: Colors.grey[700],
                              thickness: 1,
                            ),
                          ),
                          Row(
                            children: [
                              const Spacer(),
                              CommentsMobile(
                                iconOrImage: IconButton(
                                  color: Colors.white,
                                  onPressed: () {},
                                  icon: const Icon(Icons.key_rounded, size: 40),
                                ),
                                text: 
'''Compra 100%
      Segura''',
                              ),
                              const Spacer(),
                              CommentsMobile(
                                iconOrImage: IconButton(
                                  color: Colors.white,
                                  onPressed: () {},
                                  icon: const Icon(Icons.wallet_rounded, size: 40),
                                ),
                                text: 
'''Paga en línea 
o en efectivo''',
                              ),
                              const Spacer(),
                            ],
                          ),
                          Row(
                            children: [
                              const Spacer(),
                              CommentsMobile(
                                iconOrImage: Image.asset('assets/images/camion.png', height: 60, width: 60),
                                text: 
'''    Envío gratis desde 
           \$200.000''',
                              ),
                              const Spacer(),
                              CommentsMobile(
                                iconOrImage: IconButton(
                                  icon: const Icon(Icons.info_outline_rounded), 
                                  onPressed: () {
                                    setState(() {
                                      indiceWidget = 6;
                                    });
                                  },
                                  color: Colors.white, 
                                  iconSize: 40
                                ),
                                text: 'Centro de Ayuda',
                              ),
                              const Spacer(),
                            ],
                          ),
                          SizedBox(
                            width: 330,
                            child: Divider(
                              color: Colors.grey[700],
                              thickness: 1,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20, top: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Spacer(),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset('assets/images/nequi1.png', height: 18.5, width: 56)
                                ),
                                Container(
                                  height: 18.5,
                                  width: 75,
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
                          SizedBox(
                            width: 330,
                            child: Divider(
                              color: Colors.grey[700],
                              thickness: 1,
                            ),
                          ),
                          Row(
                            children: [
                              const Spacer(),
                              Text('© 2024 | Todos los Derechos Reservados Aromas Selectos', style: styleTextCarMobile),
                              const Spacer(),
                            ],
                          ),
                          const SizedBox(height: 5)
                        ],
                      ),
                  ),
                )
                //TODO: TERMINA EL FOOTER
              ],
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: FloatingBar(
            onPressedHome: () {
              setState(() {
                indiceWidget = 0;
              });
            },
            onPressedInfo: () {
              setState(() {
                indiceWidget = 6;
              });
            }, 
            onPressedMenu: () {
              _scaffoldKey.currentState?.openDrawer();
            }, 
            onPressedChat: () {},
            onPressedCarShop:() {
              setState(() {
                indiceWidget = 10;
              });
            },
          ),
        )
       ]
      ),
      //TODO: DRAWER
      drawer: Drawer(
        width: 250,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 90,
                child: DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 1.5
                      )
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text('CATEGORÍAS', style: styleText),
                  ),
                ),
              ),
              ButtonTextMobile(
                buttonText: 'Aromas Árabes', 
                padding: const EdgeInsets.only(right: 110),
                onPressed: () {
                  setState(() {
                    indiceWidget = 1;
                  });
                }
              ),
              const SizedBox(height: 15),
              ButtonTextMobile(
                buttonText: 'Aromas Hombre',
                padding: const EdgeInsets.only(right: 105),
                onPressed: () {
                  setState(() {
                    indiceWidget = 2;
                  });
                }
              ),
              const SizedBox(height: 15),
              ButtonTextMobile(
                buttonText: 'Aromas Mujer',
                padding: const EdgeInsets.only(right: 120),
                onPressed: () {
                  setState(() {
                    indiceWidget = 3;
                  });
                }
              ),
              const SizedBox(height: 15),
              ButtonTextMobile(
                buttonText: 'Crea Tu Loción',
                padding: const EdgeInsets.only(right: 115),
                onPressed: () {
                  setState(() {
                    indiceWidget = 4;
                  });
                }
              ),
              const SizedBox(height: 15),
              ButtonTextMobile(
                buttonText: 'Sale',
                padding: const EdgeInsets.only(right: 185),
                onPressed: () {
                  setState(() {
                    indiceWidget = 5;
                  });
                }
              ),
              const SizedBox(height: 10),
              ButtonTextMobile(
                buttonText: 'Centro de Ayuda', 
                padding: const EdgeInsets.only(right: 105),
                onPressed: () {
                  setState(() {
                    indiceWidget = 6;
                  });
                }
              ),
              const SizedBox(height: 15),
              ButtonTextMobile(
                buttonText: 'Preguntas Frecuentes', 
                padding: const EdgeInsets.only(right: 70),
                onPressed: () {
                  setState(() {
                    indiceWidget = 7;
                  });
                }
              ),
              const SizedBox(height: 15),
              ButtonTextMobile(
                buttonText: 'Guía de Aromas', 
                padding: const EdgeInsets.only(right: 110),
                onPressed: () {
                  setState(() {
                    indiceWidget = 8;
                  });
                }
              ),
              const SizedBox(height: 15),
              ButtonTextMobile(
                buttonText: 'Mi Carrito', 
                padding: const EdgeInsets.only(right: 150),
                onPressed: () {
                  setState(() {
                    indiceWidget = 10;
                  });
                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}

