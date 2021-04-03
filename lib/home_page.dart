import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: ClipOval(
                    //borderRadius: BorderRadius.circular(40),
                    child: Image.asset('assets/imagens/eu.jpg')),
                accountName: Text('Tatiana Pacheco'),
                accountEmail: Text('tatiana@gmail.com'),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Inicio'),
                subtitle: Text('tela de início'),
                onTap: () {
                  print('home');
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Sair'),
                subtitle: Text('finalizar sessão'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Home Page'),
          actions: [CustomSwitcher()],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipOval(
                    child: Container(
                      width: 20,
                      height: 20,
                      color: Colors.green,
                    ),
                  ),
                  Container(
                    child: Text('Siga em frente, não desista'),
                    //color: Colors.blue,
                  ),
                  ClipOval(
                    child: Container(
                      width: 20,
                      height: 20,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                counter++;
              });
            }));
  }
}

class CustomSwitcher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppControler.instance.dartTheme,
        onChanged: (value) {
          AppControler.instance.changeTheme();
        });
  }
}
