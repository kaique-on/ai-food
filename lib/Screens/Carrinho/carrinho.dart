import 'package:flutter/material.dart';
import 'package:novo_aifood/CustomWidgets/styles.dart';

class TelaCarrinho extends StatefulWidget {
  const TelaCarrinho({super.key});

  @override

 State<TelaCarrinho> createState() => _TelaCarrinhoState();
}

class _TelaCarrinhoState extends State<TelaCarrinho> {
int contagem = 1;
int contagem2 = 2;
double valor = 23.99;
double valor2 = 12.99;
double valorTotal1 = 23.99;
double valorTotal2 = 25.98;
double valorTotal = 49.97;

void aumentarContagem(){
  setState(() {
    contagem++;
            valorTotal1 = valor*contagem;
        valorTotal = valorTotal1 + valorTotal2;
  });
}

void diminuirContagem(){
  if(contagem > 0){
  setState(() {
    contagem--;
        valorTotal1 = valor*contagem;
        valorTotal = valorTotal1 + valorTotal2;
  });
  }
}

void aumentarContagem2(){
  setState(() {
    contagem2++;
            valorTotal2 = valor2*contagem2;
        valorTotal = valorTotal1 + valorTotal2;
  });
}

void diminuirContagem2(){
  if(contagem2 > 0){
  setState(() {
    contagem2--;
            valorTotal2 = valor2*contagem2;

        valorTotal = valorTotal1 + valorTotal2;
  });
  }
}

Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 56,
        backgroundColor: Colors.grey[80],
        title: new Center(child: new Text('SACOLA', textAlign: TextAlign.center)),      ),
      body:
      ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child:  Text("Total: R\$ $valorTotal", style: TextStyle(fontSize: 24),
              ), 
            ),
          ),

          /* Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Marmita de arroz com frango, dois ovos e salada:", style: TextStyle(fontSize: 13),),
                Text("Açaí com frutas 500ml: R\$ $valorTotal2", style: TextStyle(fontSize: 13),)

              ],
            ),
          ), */

          Padding(
            padding: const EdgeInsets.only(left: 56, right: 56, top: 0, bottom: 0),
            child: GestureDetector(
              onTap: () {
                // Adicione aqui o código para lidar com o evento de toque
              },
              child: Container(
                
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 22.0),
                child: const Text(
                  'Finalizar Compra', textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          
          Container(
            padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 8),
            child: Divider(
            height: 10,
            color: Colors.grey[80],
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 0),
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8)
              ),
              child: Card(
                color: Colors.grey[80],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Container(
                          width: 120, // Largura desejada para o contêiner (pode ser ajustada conforme necessário)
                          child: AspectRatio(
                            aspectRatio: 1.0, // Define uma proporção 1:1 para manter a imagem quadrada
                            child: Image.asset(
                              'assets/marmita.png', // Substitua pelo caminho da sua imagem
                              fit: BoxFit.cover, // Ajusta a imagem para preencher o contêiner mantendo a proporção
                            ),
                          ),
                        ),
                  
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(onPressed: diminuirContagem,icon: Icon(Icons.remove)),
                              Text('$contagem', style: textNunito300(12),),
                              IconButton(onPressed: aumentarContagem,icon: Icon(Icons.add_rounded)),
                              ],
                          ),
                        )
                              
                              
                        ],
                      ),
                  
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        
                        children: [
                          Text('Marmita de arroz com fr...', softWrap: true,),
                          Text('R\$ 23,99', style: textNunitoBold(16),),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Vendido por:'),
                              Text('Restaurante Barbosa', style: textNunitoBold(12),)
                            ],
                          ),
                          Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                              child: Text('Excluir item'),
                            ),
                          ),
                          
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8)
              ),
              child: Card(
                color: Colors.grey[80],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Container(
                          width: 120, // Largura desejada para o contêiner (pode ser ajustada conforme necessário)
                          child: AspectRatio(
                            aspectRatio: 1.0, // Define uma proporção 1:1 para manter a imagem quadrada
                            child: Image.asset(
                              'assets/acai.png', // Substitua pelo caminho da sua imagem
                              fit: BoxFit.cover, // Ajusta a imagem para preencher o contêiner mantendo a proporção
                            ),
                          ),
                        ),
                  
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(onPressed: diminuirContagem2,icon: Icon(Icons.remove)),
                              Text('$contagem2', style: textNunito300(12),),
                              IconButton(onPressed: aumentarContagem2,icon: Icon(Icons.add_rounded)),
                              ],
                          ),
                        )
                              
                              
                        ],
                      ),
                  
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        
                        children: [
                          Text('Açaí com frutas 500ml'),
                          Text('R\$ 12.99', style: textNunitoBold(16),),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Vendido por:'),
                              Text('Sorveteria Nascimento', style: textNunitoBold(12),)
                            ],
                          ),
                          Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                              child: Text('Excluir item'),
                            ),
                          ),
                          
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )  
          
    ]
    ),
    );
  }
} 

  