import 'package:flutter/material.dart';

void main() => runApp(AppTabBar());

class AppTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MiPaguinaInicio(),
    );
  }
}

class MiPaguinaInicio extends StatefulWidget {
  const MiPaguinaInicio({Key? key}) : super(key: key);

  @override
  State<MiPaguinaInicio> createState() => _MiPaguinaInicioState();
}

class _MiPaguinaInicioState extends State<MiPaguinaInicio> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBar Brandon Cristobal",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
          bottom: TabBar(tabs: [
            Tab(
              text: "unit",
              icon: Icon(Icons.ac_unit),
            ), //Texto Icons/
            Tab(
              text: "acessible",
              icon: Icon(Icons.accessible_forward_outlined),
            ), //Texto Icons, //Texto Icons/
            Tab(
              text: "padding",
              icon: Icon(Icons.padding),
            ), //Texto Icons
            Tab(
              text: "upcomin",
              icon: Icon(Icons.upcoming),
            ) //Texto Icons
          ]),
        ),
        body: TabBarView(children: const <Widget>[
          Center(
            child: Text("Alerta",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          ),
          Center(
            child: Text("Sicha de Ruedas",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          ),
          Center(
            child: Text("Padding",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          ),
          Center(
            child: Text("upcoming",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          ),
        ]),
      ),
    );
  } //Widget
}
