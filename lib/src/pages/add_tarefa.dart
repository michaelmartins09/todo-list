import 'package:flutter/material.dart';

class AddTarefa extends StatefulWidget {
  @override
  _AddTarefaState createState() => _AddTarefaState();
}

class _AddTarefaState extends State<AddTarefa> {

  TextEditingController controllerTitulo = TextEditingController();
  TextEditingController controllerDescricao = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Adicionar tarefa"),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[

              TextFormField(
                controller: controllerTitulo,
                decoration: InputDecoration(
                  labelText: "Título da tarefa"
                ),
              ),

              TextFormField(
                controller: controllerDescricao,
                decoration: InputDecoration(
                  labelText: "Descrição"
                ),
              ),

            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("titulo: ${controllerTitulo.text}\nDescrição: ${controllerDescricao.text}");
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
          child: Icon(Icons.check),
        ),
      ),
    );
  }
}