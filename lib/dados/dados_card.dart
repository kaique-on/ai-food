import 'package:flutter/material.dart';

class DadosDosCards{
  static List<Map<String, dynamic>> infoCards = [
    {
      "largura": 185,
      "altura": 80,
      "cor": Colors.red,
      "texto": "Mercado",
      "imagem": "assets/mercado.png"
    },

    {
      "largura": 185,
      "altura": 80,
      "cor": Colors.orange,
      "texto": "Farmácia",
      "imagem": "assets/farmacia.png"
    },
    
  ];

  List<Map<String, dynamic>> minhaLista(){
  return infoCards;
}
}