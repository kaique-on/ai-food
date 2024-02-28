import 'package:flutter/material.dart';
import 'package:novo_aifood/CustomWidgets/menuInferior.dart';
import 'package:novo_aifood/Screens/Busca/search_screen.dart';
import 'package:novo_aifood/Screens/Carrinho/carrinho.dart';
import 'package:novo_aifood/Screens/Profile/profile_screen.dart';
import 'package:novo_aifood/TelaInicio/telainicio.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int itemSelecionado = 0;

  //ir para o próximo item
  void nextStation(int posicao){
    setState(() {
      itemSelecionado = posicao;
    });
  }
  //lista de páginas
  List<Widget> telas = const [
    TelaInicio(),
    TelaBusca(),
    TelaCarrinho(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:telas.elementAt(itemSelecionado),
      bottomNavigationBar: bottomNavigationBar(itemSelecionado, nextStation),
    );
  }
}


