import 'package:marking_web/exports.dart';
import 'package:flutter_share_me/flutter_share_me.dart';
import 'package:url_launcher/url_launcher.dart';

class CartScreen extends StatefulWidget {

  const CartScreen({
    super.key,
  });

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 1.35,
      width: size.width * 1,
      child: Scaffold(
        body: Consumer<CartModel>(
          builder: (context, cart, child) {
            if (cart.items.isEmpty) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/logo_pr1.jpg', width: 300, fit: BoxFit.cover),
                    const SizedBox(height: 20),
                    Text('Tu Carrito de Compras está vacío', style: title2),
                  ],
                ),
              );
            } else {
              return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 60, top: 20, bottom: 20),
                  child: Text('Mi Carrito de Compras', style: title),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: cart.items.length,
                    itemBuilder: (context, index) {
                      final product = cart.items[index];
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 60, right: 20),
                                child: SizedBox(
                                  width: product.imageWidth,
                                  height: product.imageHeight,
                                  child: Image.asset(product.image, fit: BoxFit.cover),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Text(product.name, style: styleTextLocion),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Text('${product.onzas ?? "1"} fl oz', style: styleTextLocion),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Text(
                                      product.price != null && product.price! > 0 
                                          ? '\$${product.price}.000' 
                                          : '',
                                      style: styleTextSale2,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Text('\$${product.priceDescuento}.000', style: styleTextPrice),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Text('Cantidad: ${product.cantidad}', style: styleTextLocion),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 30),
                                child: IconButton(
                                  icon: const Icon(Icons.delete_rounded, color: Colors.black, size: 30),
                                  onPressed: () {
                                    cart.removeProduct(product);
                                  },
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                        ],
                      );
                    }
                  )
                ),
                Row(
                  children: [
                    const Spacer(),
                    Text('Total: \$${cart.totalPrice}.000', style: styleTextPrice),
                    const Spacer(),
                  ],
                ),
                Row(
                  children: [
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 30),
                      child: FilledButton(
                        onPressed: () {
                          _launchWhatsApp('573026094603', cart);
                        },
                        style: styleText300,
                        child: Text('FINALIZAR COMPRA', style: styleTextCar),
                      ),
                    ),
                    const Spacer(),
                  ],
                )
              ],
            );
           }
          },
        ),
      ),
    );
  }
}

void _launchWhatsApp(String phoneNumber, CartModel cart) async {
  final message = cart.items.map((product) => '${product.name} - ${product.onzas ?? "1"} fl oz - Cantidad: ${product.cantidad} - \$${product.priceDescuento}.000').join('\n');
  final whatsappUrl = Uri.parse("https://wa.me/$phoneNumber?text=${Uri.encodeComponent('Hola, quiero comprar estos productos:\n$message')}");

  if (await canLaunchUrl(whatsappUrl)) {
    await launchUrl(whatsappUrl);
  } else {
    throw 'Could not launch $whatsappUrl';
  }
} 
