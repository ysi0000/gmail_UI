import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _CustomDrawer();
}
//Realizar seleccion en color
class _CustomDrawer extends State<CustomDrawer>{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
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
            leading: Icon(Icons.inbox),
            title: Text('Todas las bandejas'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.inbox),
            title: Text('Recibidos'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: Icon(Icons.email_outlined),
            title: Text('No leidos'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical:10 ),
            child: Text("TODAS LAS ETIQUETAS",style: TextStyle(color: Colors.grey[700],fontSize: 12),),
          ),
          ListTile(
            leading: Icon(Icons.star_border),
            title: Text('Destacados'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: Icon(Icons.access_time_outlined),
            title: Text('Pospuestos'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: Icon(Icons.label_important_outline),
            title: Text('Importantes'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: Icon(Icons.send),
            title: Text('Importantes'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: Icon(Icons.send),

            title: Text('Enviados'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(

            leading: Icon(Icons.schedule_send),
            title: Text('Programados'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: Icon(Icons.outbox),

            title: Text('Bandeja de salida'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: Icon(Icons.insert_drive_file_outlined),

            title: Text('Borradores'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: Icon(Icons.all_inbox),

            title: Text('Todos'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: Icon(Icons.warning_amber_rounded),

            title: Text('Spam'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: Icon(Icons.delete),
            title: Text('Papelera'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: Icon(Icons.label_outline_rounded),
            title: Text('Elementos enviados'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: Icon(Icons.label_outline_rounded),
            title: Text('Notes'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: Icon(Icons.label_outline_rounded),
            title: Text('Personal'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: Icon(Icons.label_outline_rounded),
            title: Text('Recibidos'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: Icon(Icons.label_outline_rounded),
            title: Text('Trabajo'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
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
            leading: Icon(Icons.calendar_today_rounded),
            title: Text('Calendar'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: Icon(Icons.perm_contact_calendar_rounded),
            title: Text('Contactos'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Ajustes'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
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

