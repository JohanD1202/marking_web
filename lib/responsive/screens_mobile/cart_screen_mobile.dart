import 'package:marking_web/exports.dart';

class CartScreenMobile extends StatefulWidget {

  const CartScreenMobile({
    super.key,
  });

  @override
  State<CartScreenMobile> createState() => _CartScreenMobileState();
}

class _CartScreenMobileState extends State<CartScreenMobile> {
  
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 0.6,
      width: size.width * 1,
      child: Scaffold(
        body: Consumer<CartModel>(
          builder: (context, cart, child) {
            if (cart.items.isEmpty) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/logo_pr1.jpg', width: 200, fit: BoxFit.cover),
                    const SizedBox(height: 20),
                    Text('Tu Carrito de Compras está vacío', style: title2Mobile),
                  ],
                ),
              );
            } else {
              return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 15, bottom: 15),
                  child: Text('Mi Carrito de Compras', style: titleMobile),
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
                                padding: const EdgeInsets.only(left: 30, right: 15),
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
                                    child: Text(product.name, style: styleTextBolsosMobile)
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Text('${product.onzas ?? "1"} fl oz', style: styleTextBolsosMobile),
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
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text('\$${product.priceDescuento}.000', style: styleTextPriceMobile2),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Text('Cantidad: ${product.cantidad}', style: styleTextBolsosMobile),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: IconButton(
                                  icon: const Icon(Icons.delete_rounded, color: Colors.black, size: 22),
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
  final fullMessage = 'Hola, quiero comprar estos productos:\n$message\nTotal: \$${cart.totalPrice}.000';
  final whatsappUrl = Uri.parse("https://wa.me/$phoneNumber?text=${Uri.encodeComponent(fullMessage)}");

  if (await canLaunchUrl(whatsappUrl)) {
    await launchUrl(whatsappUrl);
  } else {
    throw 'Could not launch $whatsappUrl';
  }
} 
