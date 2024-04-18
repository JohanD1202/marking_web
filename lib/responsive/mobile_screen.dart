import 'package:flutter/material.dart';
import 'package:marking_web/exports.dart';
//import 'package:marking_web/presentation/screens/home_screen.dart';
import 'dart:html' as html;

import 'package:marking_web/presentation/widgets/style_button.dart';


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
                    //AromasScreen(),
                    //HombreScreen(),
                    //MujerScreen(),
                    //NuevoScreen(),
                    //SaleScreen(),
                    //Help(),
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
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
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
            ListTile(
              title: Text('Aromas Selectos', style: styleText),
              onTap: () {},
            ),
            ListTile(
              title: Text('Hombre', style: styleText),
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
    );
  }
}

class InicioMobile extends StatefulWidget {

  // ignore: use_super_parameters
  const InicioMobile({Key? key}) : super(key: key);

  @override
  State<InicioMobile> createState() => _InicioMobileState();
}

class _InicioMobileState extends State<InicioMobile> {

  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const Screen1Mobile(),
    const Screen2Mobile(),
    const Screen3Mobile(),
    const Screen4Mobile(),
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
            const Spacer(),
            IconButton(
              onPressed: _prev,    
              icon: const Icon(Icons.arrow_back_ios_rounded),
              iconSize: 30,
              color: Colors.black,
            ),
            IconButton(
              onPressed: _next,
              icon: const Icon(Icons.arrow_forward_ios_rounded),
              iconSize: 30,
              color: Colors.black,
            ),
            const Spacer(),
          ],
        ),
      ]      
    );
  }
}

class FloatingBar extends StatelessWidget {

  final Function() onPressedHome;
  final Function() onPressedSearch;
  final Function() onPressedMenu;
  final Function() onPressedChat;
  final Function() onPressedCarShop;
  // ignore: use_super_parameters
  const FloatingBar({
    Key? key, 
    required this.onPressedHome, 
    required this.onPressedSearch, 
    required this.onPressedMenu, 
    required this.onPressedChat, 
    required this.onPressedCarShop
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 20),
            IconButton(
              icon: const Icon(Icons.home_filled),
              color: Colors.black,
              iconSize: 30,
              onPressed: onPressedHome,
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.search_rounded),
              color: Colors.black,
              iconSize: 30,
              onPressed: onPressedSearch
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.menu_rounded),
              color: Colors.black,
              iconSize: 30,
              onPressed: onPressedMenu,
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.chat_bubble_outlined),
              color: Colors.black,
              iconSize: 30,
              onPressed: onPressedChat
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.shopping_cart_rounded),
              color: Colors.black,
              iconSize: 30,
              onPressed: onPressedCarShop
            ),
            const SizedBox(width: 20),
          ],
        ),
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