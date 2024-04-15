import 'package:marking_web/exports.dart';


class GuiaAromas extends StatelessWidget {

  // ignore: use_super_parameters
  const GuiaAromas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 1,
      width: size.width * 1,
      child: const Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text('HOLA MUNDO')
            ],
          ),
        ),
      ),
    );
  }
}