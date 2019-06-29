import 'package:flutter/material.dart';
import 'package:todo_list/src/widget/card_tarefa.dart';

import 'add_tarefa.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.deepPurple[300],
                Colors.purple[900]
              ]
            )
          ),
          child: Center(
            child: Text("Lista de Tarefas", style: TextStyle(
              color: Colors.white, fontSize: 40
            ),)
          )
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: CardTarefa(
              titulo: "Fazer café",
              descricao: "Sem açucar pq o gugu não gosta",
              onActionFinalizado: (){  },
              onActionDelete: () {  },
              color: Colors.teal,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) => AddTarefa()
          ));
        },
        child: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Colors.deepPurple[300],
                Colors.purple[900]
              ]
            )
          ),
          child: Icon(Icons.add),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 10,
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            children: <Widget>[
              Icon(Icons.list, size: 40, color: Colors.deepPurple,),
              SizedBox(width: 20),
              Text("0 Tarefas", style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 25
              ),)
            ],
          ),
        ),
      ),
    );
  }
}