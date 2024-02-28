import 'package:flutter/material.dart';
import 'package:novo_aifood/CustomWidgets/card.dart';
import 'package:novo_aifood/CustomWidgets/styles.dart';
import 'package:novo_aifood/dados/dados_card.dart';

class TelaBusca extends StatelessWidget {
  const TelaBusca({super.key});
  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: TextFormField(
          decoration:  InputDecoration(
            hintText: 'Buscar em todo o aiFood',
            border: const OutlineInputBorder(),
            contentPadding: const EdgeInsets.all(4),
            prefixIcon: const Icon(Icons.search, color: Colors.red),
            filled: true,
            fillColor: Colors.grey[80]
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Categorias', style: textNunitoBold(16)),
          ),
          Center(
            child: Wrap(
              children: DadosDosCards.infoCards
              .map((i) => card(i["largura"], i["altura"], i["cor"],
              i["texto"], i["imagem"]))
              .toList()),
          ),


              /* card(185, 80, Colors.red, 'Mercado', 'assets/mercado.png'),
              card(185, 80, Colors.brown, 'Farmacia', 'assets/farmacia.png'),
              card(185, 80, Colors.orange, 'Bebidas', 'assets/bebidas.png'),
              card(185, 80, Colors.green[900]!, 'Pet', 'assets/pet.png'),
              card(185, 80, Colors.purple, 'Acaí', 'assets/acai.png'),
              card(185, 80, Colors.yellow[50]!, 'Bolo', 'assets/bolo.png'),
              card(185, 80, Colors.orange, 'Sorvete', 'assets/sorvete.png'),
              card(185, 80, Colors.orange, 'Café', 'assets/cafe.png'),
              card(185, 80, Colors.orange, 'Lanches', 'assets/lanches.png'),
              card(185, 80, Colors.orange, 'Pizza', 'assets/pizza.png'),
              card(185, 80, Colors.red, 'Espetinho', 'assets/carnes.png'),
              card(185, 80, Colors.red, 'Peixes', 'assets/peixes.png'),
              card(185, 80, Colors.red, 'Hot Dog', 'assets/hotDog.png'),
              card(185, 80, Colors.red, 'Marmita', 'assets/marmita.png'),
              card(185, 80, Colors.red, 'Suco', 'assets/sucos.png'),
              card(185, 80, Colors.red, 'Sopas', 'assets/sopas.png'), */
            ],
          )
      );
  }
}