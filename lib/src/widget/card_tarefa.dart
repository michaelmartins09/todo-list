import 'package:flutter/material.dart';

class CardTarefa extends StatelessWidget {

  final String titulo;
  final String descricao;
  final Color color;
  final VoidCallback onActionFinalizado;
  final VoidCallback onActionDelete;

  CardTarefa(
    {@required this.titulo, 
    @required this.descricao, 
    @required this.color,
    @required this.onActionFinalizado, 
    @required this.onActionDelete}
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: <Widget>[
          Container(
            height: 50,
            width: 3,
            decoration: BoxDecoration(
              color: this.color,
              borderRadius: BorderRadius.circular(5)
            ),
          ),

          SizedBox(width: 10),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(this.titulo, style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                )),
                Text(this.descricao, style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey
                )),
              ],
            ),
          ),

          IconButton(
            onPressed: this.onActionFinalizado,
            icon: Icon(Icons.check, color: Colors.green),
          ),

          IconButton(
            onPressed: this.onActionDelete,
            icon: Icon(Icons.delete_forever, color: Colors.red),
          ),

        ],
      ),
    );
  }
}