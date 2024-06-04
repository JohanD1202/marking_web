import 'package:flutter/material.dart';
import 'package:marking_web/exports.dart';

class CartScreen extends StatelessWidget {
  
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 1.35,
      width: size.width * 1,
      child: Scaffold(
        body: Consumer<CartModel>(
          builder: (context, cart, child) {
            return Column(
              children: [
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
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text(product.name, style: styleTextLocion),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text(product.onzas, style: styleTextLocion),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Text('\$${product.price}.000', style: styleTextPrice),
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
                          const SizedBox(height: 10)
                        ],
                      );
                    }
                  )
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text('Total: \$${cart.totalPrice}'),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}