import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _CustomDrawer();
}
//Realizar seleccion en color
class _CustomDrawer extends State<CustomDrawer>{

  selccionarTile(int posicion){
    isSelected=List.filled(24, false);
    isSelected[posicion]=true;
  }

  List<bool> isSelected=List.filled(24, false);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      /*child: ListView.builder(itemBuilder: (BuildContext context, i) {
      return new ListTile(
        selected: isSelected[i],
        selectedTileColor: Colors.red[50],
        leading: Icon(Icons.inbox,color: isSelected[i]?Colors.red:Colors.grey,),
        title: Text('Todas las bandejas',style: TextStyle(color: isSelected[i]?Colors.red:Colors.black,),),
        onTap: () {
          setState(() {
            selccionarTile(i);
          });
          // Update the state of the app.
          // ...
        },
      );}));*/
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: 80,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: DrawerHeader(
              child: Text('Gmail',style: TextStyle(color:Colors.red,fontSize: 18),),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
          ),
          Divider(),
          ListTile(
              selected: isSelected[0],
              selectedTileColor: Colors.red[50],
              leading: Icon(Icons.inbox,color: isSelected[0]?Colors.red:Colors.grey,),
              title: Text('Todas las bandejas',style: TextStyle(color: isSelected[0]?Colors.red:Colors.black,),),
              onTap: () {
                setState(() {
                  selccionarTile(0);
                });
                  // Update the state of the app.
                  // ...
          },
          ),
          Divider(),
          ListTile(
            selected: isSelected[1],
            selectedTileColor: Colors.red[50],
            leading: Icon(Icons.inbox,color: isSelected[1]?Colors.red:Colors.grey,),
            title: Text('Recibidos',style: TextStyle(color: isSelected[1]?Colors.red:Colors.black,),),
            onTap: () {
              setState(() {
                selccionarTile(1);
              });
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            selected: isSelected[2],
            selectedTileColor: Colors.red[50],
            leading: Icon(Icons.email_outlined),
            title: Text('No leidos'),
            onTap: () {
              // Update the state of the app.
              // ...
              setState(() {
                selccionarTile(0);
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical:10 ),
            child: Text("TODAS LAS ETIQUETAS",style: TextStyle(color: Colors.grey[700],fontSize: 12),),
          ),
          ListTile(
            selected: isSelected[3],
            selectedTileColor: Colors.red[50],
            leading: Icon(Icons.star_border),
            title: Text('Destacados'),
            onTap: () {
              // Update the state of the app.
              // ...
              setState(() {
                selccionarTile(0);
              });
            },
          ),
          ListTile(
            selected: isSelected[4],
            selectedTileColor: Colors.red[50],
            leading: Icon(Icons.access_time_outlined),
            title: Text('Pospuestos'),
            onTap: () {
              // Update the state of the app.
              // ...
              setState(() {
                selccionarTile(0);
              });
            },
          ),
          ListTile(
            selected: isSelected[5],
            selectedTileColor: Colors.red[50],
            leading: Icon(Icons.label_important_outline),
            title: Text('Importantes'),
            onTap: () {
              // Update the state of the app.
              // ...
              setState(() {
                selccionarTile(0);
              });
            },
          ),
          ListTile(
            selected: isSelected[6],
            selectedTileColor: Colors.red[50],
            leading: Icon(Icons.send),
            title: Text('Importantes'),
            onTap: () {
              // Update the state of the app.
              // ...
              setState(() {
                selccionarTile(0);
              });
            },
          ),
          ListTile(
            selected: isSelected[7],
            selectedTileColor: Colors.red[50],
            leading: Icon(Icons.send),

            title: Text('Enviados'),
            onTap: () {
              // Update the state of the app.
              // ...
              setState(() {
                selccionarTile(0);
              });
            },
          ),
          ListTile(
            selected: isSelected[8],
            selectedTileColor: Colors.red[50],
            leading: Icon(Icons.schedule_send),
            title: Text('Programados'),
            onTap: () {
              // Update the state of the app.
              // ...
              setState(() {
                selccionarTile(0);
              });
            },
          ),
          ListTile(
            selected: isSelected[9],
            selectedTileColor: Colors.red[50],
            leading: Icon(Icons.outbox),

            title: Text('Bandeja de salida'),
            onTap: () {
              // Update the state of the app.
              // ...
              setState(() {
                selccionarTile(0);
              });
            },
          ),
          ListTile(
            selected: isSelected[10],
            selectedTileColor: Colors.red[50],
            leading: Icon(Icons.insert_drive_file_outlined),

            title: Text('Borradores'),
            onTap: () {
              // Update the state of the app.
              // ...
              setState(() {
                selccionarTile(0);
              });
            },
          ),
          ListTile(
            selected: isSelected[11],
            selectedTileColor: Colors.red[50],
            leading: Icon(Icons.all_inbox),

            title: Text('Todos'),
            onTap: () {
              // Update the state of the app.
              // ...
              setState(() {
                selccionarTile(0);
              });
            },
          ),
          ListTile(
            selected: isSelected[12],
            selectedTileColor: Colors.red[50],
            leading: Icon(Icons.warning_amber_rounded),

            title: Text('Spam'),
            onTap: () {
              // Update the state of the app.
              // ...
              setState(() {
                selccionarTile(0);
              });
            },
          ),
          ListTile(
            selected: isSelected[13],
            selectedTileColor: Colors.red[50],
            leading: Icon(Icons.delete),
            title: Text('Papelera'),
            onTap: () {
              // Update the state of the app.
              // ...
              setState(() {
                selccionarTile(0);
              });
            },
          ),
          ListTile(
            selected: isSelected[14],
            selectedTileColor: Colors.red[50],
            leading: Icon(Icons.label_outline_rounded),
            title: Text('Elementos enviados'),
            onTap: () {
              // Update the state of the app.
              // ...
              setState(() {
                selccionarTile(0);
              });
            },
          ),
          ListTile(
            selected: isSelected[15],
            selectedTileColor: Colors.red[50],
            leading: Icon(Icons.label_outline_rounded),
            title: Text('Notes'),
            onTap: () {
              // Update the state of the app.
              // ...
              setState(() {
                selccionarTile(0);
              });
            },
          ),
          ListTile(
            selected: isSelected[16],
            selectedTileColor: Colors.red[50],
            leading: Icon(Icons.label_outline_rounded),
            title: Text('Personal'),
            onTap: () {
              // Update the state of the app.
              // ...
              setState(() {
                selccionarTile(0);
              });
            },
          ),
          ListTile(
            selected: isSelected[1],
            selectedTileColor: Colors.red[50],
            leading: Icon(Icons.label_outline_rounded),
            title: Text('Recibidos'),
            onTap: () {
              // Update the state of the app.
              // ...
              setState(() {
                selccionarTile(0);
              });
            },
          ),
          ListTile(
            selected: isSelected[17],
            selectedTileColor: Colors.red[50],
            leading: Icon(Icons.label_outline_rounded),
            title: Text('Trabajo'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            selected: isSelected[18],
            selectedTileColor: Colors.red[50],
            leading: Icon(Icons.label_outline_rounded),
            title: Text('Viaje'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical:10 ),
            child: Text("APLICACIONES DE GOOGLE",style: TextStyle(color: Colors.grey[700],fontSize: 12),),
          ),
          ListTile(
            selected: isSelected[19],
            selectedTileColor: Colors.red[50],
            leading: Icon(Icons.calendar_today_rounded),
            title: Text('Calendar'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            selected: isSelected[20],
            selectedTileColor: Colors.red[50],
            leading: Icon(Icons.perm_contact_calendar_rounded),
            title: Text('Contactos'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          Divider(),
          ListTile(
            selected: isSelected[21],
            selectedTileColor: Colors.red[50],
            leading: Icon(Icons.settings),
            title: Text('Ajustes'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            selected: isSelected[22],
            selectedTileColor: Colors.red[50],
            leading: Icon(Icons.help_outline_outlined),
            title: Text('Ayuda y comentarios'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
  }

}

