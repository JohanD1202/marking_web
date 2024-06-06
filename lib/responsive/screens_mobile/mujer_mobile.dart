import 'package:marking_web/exports.dart';
import 'package:marking_web/responsive/screens_mobile/section_mujer_mobile.dart';

class ImageOnHover extends StatefulWidget {

  final String imagePath;
  final String hoverImagePath;
  final double imageWidth;
  final double imageHeight;

  // ignore: use_super_parameters
  const ImageOnHover({
    Key? key, 
    required this.imagePath, 
    required this.hoverImagePath,
    required this.imageWidth,
    required this.imageHeight, 
  }) : super(key: key);

  @override
  State<ImageOnHover> createState() => _ImageOnHoverState();
}

class _ImageOnHoverState extends State<ImageOnHover> {

  late String currentImage;

  @override
  void initState() {
    super.initState();
    currentImage = widget.imagePath;
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _changeImage(true),
      onExit: (_) => _changeImage(false),
      child: Image.asset(currentImage, width: widget.imageWidth, height: widget.imageHeight),
    );
  }

  void _changeImage(bool hover) {
    setState(() {
      currentImage = hover ? widget.hoverImagePath : widget.imagePath;
    });
  }
}

class MujerScreenMobile extends StatelessWidget {

  // ignore: use_super_parameters
  const MujerScreenMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 1.35,
      width: size.width * 1,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Bienvenidos a la sección de Mujer', style: styleText3Mobile),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 10),
                            child: Text('''
Bienvenidos a nuestra sección dedicada 
a las mujeres sofisticadas y con estilo.
En Aromas Selectos, no solo te ofrecemos 
una exquisita variedad de fragancias
que reflejan tu esencia única, sino que 
también hemos seleccionado cuidadosamente 
una colección de bolsos, carteras y más
accesorios que realzarán tu look con
feminidad y originalidad.

Descubre tus aromas favoritos desde \$15.000.
¡No te pierdas esta maravillosa oportunidad 
De disfrutar de fragancias y accesorios de
primera calidad a un precio increíblemente
asequible!
''', style: texto),
                          ),
                          Text('Bolsos', style: styleText3Mobile)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SectionMujerMobile(),
            ],
          ),
        ),
      ),
    );
  }
}
