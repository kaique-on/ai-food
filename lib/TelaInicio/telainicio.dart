import 'package:flutter/material.dart';
import 'package:novo_aifood/CustomWidgets/card.dart';
import 'package:novo_aifood/CustomWidgets/slide.dart';

class TelaInicio extends StatefulWidget {
  const TelaInicio({super.key});

  @override
  State<TelaInicio> createState() => _TelaInicioState();
}

class _TelaInicioState extends State<TelaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('R. Ari Barroso, 330'),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(Icons.notifications, color: Colors.red,),
          )
          ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                card(200, 80, Colors.purple, "Restaurantes", 'assets/lanches.png'),
                card(200, 80, Colors.purple, "Mercados", 'assets/mercado.png'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                cardDois(100, 120, Colors.grey[100]!, "Marmitas", 'assets/marmita.png'),
                cardDois(100, 120, Colors.grey[100]!, "Sorvetes", 'assets/sorvete.png'),
                cardDois(100, 120, Colors.grey[100]!, "Peixes", 'assets/peixes.png'),
                cardDois(100, 120, Colors.grey[100]!, "Farmácias", 'assets/farmacia.png'),
              ]
            ),
          ),

        const Slide(),
        ],
      ),
    );
  }
}