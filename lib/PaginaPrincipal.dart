import 'package:flutter/material.dart';
import 'package:gmail_ui/EmailElement.dart';
import 'package:gmail_ui/searchBar.dart';

class PaginaPricipal extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _PaginaPrincipal();

}

class _PaginaPrincipal extends State<PaginaPricipal>{
  List<IconData> _iconos=List.filled(5, Icons.star_border);
  List<Color> _colores=List.filled(5, Colors.grey);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchBar(),
        Container(
          margin: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
          alignment: Alignment.centerLeft,
          child: Text("Todas las bandejas".toUpperCase(),
            style: TextStyle(
              color: Colors.grey[500],
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
        ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemExtent: 80,
            itemCount: 5,
            itemBuilder: (context, index) =>
                ListTile(
                  title:Text("Titulo",style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Column(crossAxisAlignment:CrossAxisAlignment.start,children:[Text("Subtitulo",style: TextStyle(fontWeight: FontWeight.bold)),Text("descripcion")]),
                  leading: Icon(Icons.email_outlined),
                  trailing: GestureDetector(
                    child: Icon(_iconos[index],color: _colores[index],),
                    onTap: (){setState(() {
                      if(_iconos[index]!=Icons.star){
                      _iconos[index]=Icons.star;
                      _colores[index]=Colors.yellow[800];
                      }else{
                        _iconos[index]=Icons.star_border;
                        _colores[index]=Colors.grey;
                      }
                  });
                    },
                  ),
                  onTap: () {
                    print("LLEga");
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>EmailElement()));

                  },
                )
        ),
        /*ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                  itemExtent: 100,
                  itemCount: 5,
                    itemBuilder: (BuildContext ctxt, int index) => EmailElement()
                ),*/

      ],
    );
  }

}