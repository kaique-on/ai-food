import 'package:flutter/material.dart';
import 'package:novo_aifood/CustomWidgets/styles.dart';

Container card(double largura, double altura, Color color, String texto, String img){
  return Container(
    width: largura,
    height: altura,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
    ),
    child: Card(
      color: color,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(texto, style: textNunitoBoldWhite(16)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(img, width: 48, height: 48,),
          ),
        ],
      ),
    ),
  );
}

Container cardDois(double largura, double altura, Color color, String texto, String img){
  return Container(
    width: largura,
    height: altura,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
    ),
    child: Card(
      color: color,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(img, width: 32, height: 32,),
          ),
          Padding(
            padding: EdgeInsets.all(4.0),
            child: Text(texto, style: textNunitoBold(13)),
          ),
          
        ],
      ),
    ),
  );
  }

  Container cardTres(double largura, double altura, Color color, String texto, String img){
  return Container(
    width: largura,
    height: altura,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
    ),
    child: Card(
      color: color,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(img, width: 32, height: 32,),
          ),
          Padding(
            padding: EdgeInsets.all(4.0),
            child: Text(texto, style: textNunitoBold(13)),
          ),
          
        ],
      ),
    ),
  );
  }