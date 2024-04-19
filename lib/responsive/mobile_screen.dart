import 'package:flutter/material.dart';
import 'package:marking_web/exports.dart';
//import 'package:marking_web/presentation/screens/home_screen.dart';
import 'dart:html' as html;

import 'package:marking_web/presentation/widgets/style_button.dart';
import 'package:marking_web/responsive/screens_mobile/Inicio_mobile.dart';
import 'package:marking_web/responsive/screens_mobile/aromas_screen_mobile.dart';
import 'package:marking_web/responsive/screens_mobile/help_mobile.dart';
import 'package:marking_web/responsive/screens_mobile/hombre_mobile.dart';
import 'package:marking_web/responsive/screens_mobile/mujer_mobile.dart';
import 'package:marking_web/responsive/screens_mobile/sale_mobile.dart';
import 'package:marking_web/responsive/screens_mobile/widgets_footer_mobile.dart';


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
            height: size.height * 3.12,
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
        
                IndexedStack(
                  index: indiceWidget,
                  children: const [
                    InicioMobile(),
                    AromasScreenMobile(),
                    HombreScreenMobile(),
                    MujerScreenMobile(),
                    //NuevoScreen(),
                    SaleScreenMobile(),
                    HelpMobile(),
                  ],
                ),
                //TODO: FOOTER
                Material(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 1.57,
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
                          const Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Categories(),
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
                                    /*setState(() {
                                      indiceWidget = 5;
                                    });*/
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
                                const SizedBox(width: 10),
                                Image.asset('assets/images/pse.png', height: 20, width: 20),
                                Image.asset('assets/images/efecty.jpg', height: 18.5, width: 61.5),
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
                          const Spacer()
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
            onPressedHome: () {},
            onPressedSearch: () {}, 
            onPressedMenu: () {
              _scaffoldKey.currentState?.openDrawer();
            }, 
            onPressedChat: () {},
            onPressedCarShop:() {},
          ),
        )
       ]
      ),
      drawer: Drawer(
        width: 250,
        child: SizedBox(
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
                        color: Colors.black,
                        width: 1
                      )
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text('CATEGORÍAS', style: styleText),
                  ),
                ),
              ),
              ListTile(
                title: const Text('Aromas Selectos'),
                onTap: () {
                  indiceWidget = 1;
                },
              ),
              ListTile(
                title: const Text('Hombre'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Mujer'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Nuevo'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Sale'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Centro de Ayuda'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

