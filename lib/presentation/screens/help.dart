import 'package:marking_web/exports.dart';


class Help extends StatelessWidget {

  const Help({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 1,
      width: size.width * 1,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Bienvenido al Centro de Ayuda de Marking', style: styleText3),
                              const SizedBox(height: 15),
                              const TextHelpWidget(TextHelp.helpText, TextStyle(fontSize: 18, fontWeight: FontWeight.w200)),
                              const SizedBox(height: 12),
                              FilledButton(
                                onPressed: () {},
                                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black)),
                                child: const Text('Preguntas Frecuentes', style: TextStyle(fontSize: 17, color: Colors.white)),
                              ),
                            ],
                          ),
                       ),
                       const SizedBox(width: 10),
                       Padding(
                         padding: const EdgeInsets.all(6),
                         child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.circular(15)),
                          child: Image.asset('assets/images/logo_principal_1.png', width: 200, height: 130, fit: BoxFit.cover)),
                       )
                    ],
                  ),  
                 )
               ] 
             ),
        ),
      ),
    );
    
  }
}

