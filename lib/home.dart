import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List _listaViagem = [
    "Coliseu",
    "Avenida Paulista",
    "Machu Picchu",
    "Grande Muralha da China"
  ];

  void _abrirMapa(){}
  void _excluirViagem(){}
  void _adcionarLocal(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Minhas Viagens"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
        backgroundColor: Color(0XFF0066CC),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                itemCount: _listaViagem.length,
                itemBuilder: (context, index){
                 return GestureDetector(
                   onTap: _abrirMapa,
                   child: Card(
                     child: ListTile(
                       title: Text(_listaViagem[index]),
                       trailing: Row(
                         mainAxisSize: MainAxisSize.min,
                         children: [
                           GestureDetector(
                               onTap: _excluirViagem,
                               child: Padding(
                                 padding: EdgeInsets.all(8),
                                 child:  Icon(Icons.remove_circle, color: Colors.red),
                               )
                           )
                         ],
                       ),
                     ),
                   ),
                 );
                }
              )
          )
        ],
      ),
    );
  }
}
