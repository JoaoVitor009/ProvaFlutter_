import 'package:flutter/material.dart';

class FormTasks extends StatefulWidget {
  const FormTasks({super.key});

  @override
  State<FormTasks> createState() => _FormTasksState();
}

class _FormTasksState extends State<FormTasks> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _titleController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
),
body: Form (
  key: _formKey,
  child: Column(
    children: [
      Padding(
      padding: EdgeInsets.all(10),
      child: TextFormField(
        controller: _descriptionController,
        validator: (value){
          if(value == null || value.isEmpty){
            return '*Email não preenchido';
          }
          return null;
        },
        decoration: InputDecoration(
          label:Text('Email'),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)))),
      ),

      Padding(padding: EdgeInsets.all(10),
      child: TextFormField(
        controller: _descriptionController,
        validator: (value){
          if(value == null||value.isEmpty){
            return '*Senha não preenchida!';
          }
          return null;
        },
        
        decoration: InputDecoration(
          label:Text('Senha'),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )))),


          ElevatedButton(onPressed: (

          ) {
            Navigator.pushNamed(context, '/Tela_Inicial');
            if(_formKey.currentState!.validate()){}
              String title = _titleController.text;
              String description = _descriptionController.text;
          }, 
          child: Text('Entrar'))
          ],

    )));
  }
} 
