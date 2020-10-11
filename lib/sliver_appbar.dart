import 'package:flutter/material.dart';

class SliverAppBarPage extends StatefulWidget {
  @override
  _SliverAppBarPageState createState() => _SliverAppBarPageState();
}

class _SliverAppBarPageState extends State<SliverAppBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 200,
            backgroundColor: Colors.indigoAccent,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Ping Solutions'),
              background: Image.asset('images/myimage.jpeg',fit: BoxFit.cover,),

            ),
          ),
          SliverList(delegate: SliverChildListDelegate(<Widget>[
            addDetails('Asad', 'Developer'),
            addDetails('Mahbub', 'QA Engineer'),
            addDetails('Lalon', 'BusinessMan'),
            addDetails('Kamal', 'IT Expert'),
            addDetails('Ismail', 'BusinessMan'),
            addDetails('Mahbub', 'QA Engineer'),
            addDetails('Lalon', 'BusinessMan'),
            addDetails('Kamal', 'IT Expert'),
            addDetails('Ismail', 'BusinessMan'),
          ]),)
        ],
      ),
    );
  }
}


Widget addDetails(String name, String description,){
  return ListTile(
    title: Text(name),
    subtitle: Text(description),
    leading: CircleAvatar(
      child: Text(name[0]),
    ),
  );
}