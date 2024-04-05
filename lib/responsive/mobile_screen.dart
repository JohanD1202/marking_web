import 'package:flutter/material.dart';


class MobileScreen extends StatelessWidget {

  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      /*width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Material(
            elevation: 8,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 90,
              decoration: BoxDecoration(
                color: Colors.black,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 1,
                    offset: const Offset(0, 3)
                  )
                ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo_rifas.png'),
                  const Text('⏰Nuevos Lanzamientos con 10% off',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30
                  ),
                ),
                const SizedBox(width: 150),
                SizedBox(
                  height: 35,
                  width: 130,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: const BorderSide(color: Colors.white)
                        )
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Inscribirme', 
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.2
                      ),
                    ),
                  )
                )
               ],
              ),
            )
          ),
          
        ],
      ),*/
    );
  }
}