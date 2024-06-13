import 'package:marking_web/exports.dart';
import 'dart:html' as html;




class SocialNetworksMobile extends StatelessWidget {
  // ignore: use_super_parameters
  const SocialNetworksMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.black),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Nuestras Redes Sociales', style: styleTextFooterMobile),
            ]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => _launchWhatsApp('573107312102'),
                child: Image.asset('assets/images/whats.png', height: 40, width: 40),
              ),
              GestureDetector(
                onTap: _launchInstagram,
                child: Image.asset('assets/images/instagr.png', height: 70, width: 90),
              ),
            ],
          ),
        ],
      ),            
    );
  }
}


class PhonesMobile extends StatelessWidget {
  // ignore: use_super_parameters
  const PhonesMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 150,
      decoration: const BoxDecoration(color: Colors.black),
      child: Column(
        children: [
          Column(
            children: [
              Text('Teléfonos', style: styleTextFooterMobile),
            ],
          ),
          const SizedBox(height: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Spacer(),
                  GestureDetector(
                    onTap: () => _launchWhatsApp('573026094603'),
                    child: Image.asset('assets/images/whats.png', height: 30, width: 30),
                  ),
                  GestureDetector(
                    onTap: () => _launchWhatsApp('573026094603'),
                    child: Text('(+57) 302 609 4603', style: styleTextCa)
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 20),/*
              Row(
                children: [
                  const Spacer(),
                  GestureDetector(
                    onTap: () => _launchWhatsApp('573104025062'),
                    child: Image.asset('assets/images/whats.png', height: 30, width: 30),
                  ),
                  GestureDetector(
                    onTap: () => _launchWhatsApp('573104025062'),
                    child: Text('(+57) 310 402 5062', style: styleTextCa)
                  ),
                  const Spacer(),
                ],
              )*/
            ],
          )
        ],
      ),
    );
  }
}

class CommentsMobile extends StatelessWidget {

  final Widget? iconOrImage;
  final String text;

  // ignore: use_super_parameters
  const CommentsMobile({
    Key? key, 
    this.iconOrImage, 
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Container(
        height: 100,
        width: 170,
        decoration: const BoxDecoration(color: Colors.black),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (iconOrImage != null) iconOrImage!,
            Text(text, style: styleTextCa),
          ],
        ),
      ),
    );
  }
}

void _launchWhatsApp(String phoneNumber) async {

  String url;
  if(phoneNumber == '573026094603') {
    url = 'https://wa.me/$phoneNumber';
  } /*else if (phoneNumber == '573104025062') {
    url = 'https://wa.me/$phoneNumber';
  }*/ else {
    throw 'Número de teléfono no válido: $phoneNumber';
  }

  html.window.open(url, 'WhatsApp');

}

void _launchInstagram() async {
  
  const url = 'https://www.instagram.com/aromasselectos_co/';
  
  html.window.open(url, 'Instagram');
  
}