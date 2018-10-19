import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => new _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  //identifica qual item foi selecionado
  int itemSelect = 0;

  //cria o avatar com nome, email e imagem
  Widget _avatar() {
    return Padding(
      padding: EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.brown.shade800,
            child: Text('JM'),
          ),
          Container(height: 12.0,),
          Text("Jacob Moura", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black54),),
          Text("jacobaraujo7@gmail.com"),
        ],
      ),
    );
  }

//Cria uma listview com os itens do menu
  Widget _listMenu() {
    return ListView(
      children: <Widget>[
        _avatar(),
        _tiles("INÍCIO", Icons.home, 0, () {}),
        _tiles("NOVIDADES", Icons.add_location, 1, () {}),
        _tiles("PROMOÇÕES", Icons.grade, 2, () {}),
        Divider(),
        _tiles("SAIR", Icons.arrow_back, 3, () {}),
      ],
    );
  }

//cria cada item do menu
  Widget _tiles(String text, IconData icon, int item, Function onTap) {
    return ListTile(
      leading: Icon(icon),
      onTap: onTap,
      selected: item == itemSelect,
      title: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.amber,
          child: _listMenu()),
    );
  }
}
