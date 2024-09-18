import 'package:flutter/material.dart';
import 'package:prova/views/form_views.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),  
      home:  FormTasks(),
      routes: {
        '/Form_view': (context) => FormTasks(),
        '/Tela_Inicial': (context) => MyWidget(),
      }
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Inicial")
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('João Vitor', style: TextStyle(fontSize: 24)), 
              accountEmail: Text ("joaovitor@email.com")),
              ListTile(
                leading:Icon(Icons.output),
                title: Text('Sair'),
                onTap: () {
                  Navigator.pushNamed(context, '/Form_view');
                },
              )
          ],
        )),
        body: Align(
          child: Column(
            children: [
              Text('Bem-vindo a Tela Incial', 
              style: TextStyle(
                fontSize: 24,
                color: Colors.blue,
                ))],
          )),
    );
}
}