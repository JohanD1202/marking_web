import 'package:marking_web/exports.dart';
import 'dart:html' as html;




class SocialNetworks extends StatelessWidget {
  // ignore: use_super_parameters
  const SocialNetworks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Container(
        decoration: const BoxDecoration(color: Colors.black),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Nuestras Redes Sociales', style: styleTextFooter),
              ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () => _launchWhatsApp('573107312102'),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 15),
                    child: Image.asset('assets/images/whats.png', height: 45, width: 45),
                  ),
                ),
                GestureDetector(
                  onTap: _launchInstagram,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Image.asset('assets/images/instagr.png', height: 75, width: 95),
                  ),
                ),
              ],
            ),
          ],
        ),            
      ),
    );
  }
}

class Phones extends StatelessWidget {
  // ignore: use_super_parameters
  const Phones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Container(
        width: 200,
        height: 150,
        decoration: const BoxDecoration(color: Colors.black),
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text('Teléfonos', style: styleTextFooter),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => _launchWhatsApp('573026094603'),
                      child: Image.asset('assets/images/whats.png', height: 30, width: 30),
                    ),
                    GestureDetector(
                      onTap: () => _launchWhatsApp('573026094603'),
                      child: Text('(+57) 302 609 4603', style: styleTextCar)
                    )
                  ],
                ),
                const SizedBox(height: 20),/*
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => _launchWhatsApp('573104025062'),
                      child: Image.asset('assets/images/whats.png', height: 28, width: 28),
                    ),
                    GestureDetector(
                      onTap: () => _launchWhatsApp('573104025062'),
                      child: Text('(+57) 310 402 5062', style: styleTextCar)
                    )
                  ],
                )*/
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Comments extends StatelessWidget {

  final Widget? iconOrImage;
  final String text;

  // ignore: use_super_parameters
  const Comments({
    Key? key, 
    this.iconOrImage, 
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35),
      child: Container(
        height: 100,
        width: 230,
        decoration: const BoxDecoration(color: Colors.black),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (iconOrImage != null) iconOrImage!,
            Text(text, style: styleTextCar),
          ],
        ),
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