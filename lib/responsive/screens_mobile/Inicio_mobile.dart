import 'package:marking_web/exports.dart';
import 'dart:html' as html;


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
        height: 45,
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
            GestureDetector(
              onTap: () => _launchWhatsApp('573107312102'),
              child: Image.asset('assets/images/wha_white.png', height: 30, width: 30),
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