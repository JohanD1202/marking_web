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
            height: size.height * 1.6,
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
                    //AromasScreenMobile(),
                    //HombreScreenMobile(),
                    //MujerScreenMobile(),
                    //NuevoScreen(),
                    //SaleScreenMobile(),
                    //HelpMobile(),
                  ],
                ),
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

