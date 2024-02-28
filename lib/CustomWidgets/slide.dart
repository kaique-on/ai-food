import 'dart:async';

import 'package:flutter/material.dart';

class Slide extends StatefulWidget {
  const Slide({super.key});

  @override
  State<Slide> createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  PageController pageController = PageController();
  List<double> progresso = [0.0, 0.0, 0.0, 0.0];
  int qtdPaginas = 4;
  int paginaAtual = 0;
  
  Timer? timer;

@override
  void initState(){
    super.initState();
    nextPage();
    iniciarProgresso();
  }
 
 nextPage(){  
    timer = Timer.periodic(const Duration(seconds: 5), (timer) { 
      int proximaPagina = paginaAtual + 1;
      if (proximaPagina >= qtdPaginas){
        proximaPagina = 0;
      }

      pageController.animateToPage(proximaPagina, duration: Duration(milliseconds: 500), curve: Curves.linear).then((_)
      {
        setState(() {
        paginaAtual  = proximaPagina;
        reset();
      });
      } );
  
 });
 }
  void iniciarProgresso(){
    timer = Timer.periodic(const Duration(milliseconds: 50), (timer) {
      setState(() {
        if (progresso[paginaAtual] <= 1){
          progresso[paginaAtual] += 0.0125;
        } else {
          timer.cancel();
        }
      });
     });
  }

  void reset(){
    for(int i = 0; i < qtdPaginas; i++){
      progresso[i] = 0.0;
    }
    iniciarProgresso();
  }

  List<Widget> buildIndicator(){
    List<Widget> lista = [];
    for(int i = 0; i < qtdPaginas; i++){
      lista.add(Container(
        width: 50,
        height: 5,
        margin: const EdgeInsets.all(8),
        child: LinearProgressIndicator(
          borderRadius: BorderRadius.circular(8),
          value: progresso[i],
          backgroundColor: Colors.grey,
          valueColor: AlwaysStoppedAnimation<Color>(paginaAtual == i? Colors.white :Colors.grey),
        ),
      ));
    }
    return lista;
  }

  @override
  void dispose() {
    super.dispose();
    timer!.cancel();
  }

  @override
  Widget build(BuildContext context) { 
    return Container(
      margin: const EdgeInsets.all(8),
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          PageView(
            controller: pageController,
        children: [
          Container(
            width: double.infinity,
            height: double.minPositive,
            color: Colors.red[900],
            child: Image.asset('assets/pizza.gif')
            ),
            Container(
            width: double.infinity,
            height: double.minPositive,
            color: Colors.black,
            child: Image.asset('assets/carne.gif')
            ),
            Container(
            width: double.infinity,
            height: double.minPositive,
            color: Colors.black,
            child: Image.asset('assets/massa.gif'),
            ),
            Container(
            width: double.infinity,
            height: double.minPositive,
            color: Colors.black,
            child: Image.asset('assets/sanduiche.gif')
            )
            ]
            ),
            Padding(padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: buildIndicator(),
            ),)
        ]
      ),
    );
  }
}
