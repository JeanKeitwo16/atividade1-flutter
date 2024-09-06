import 'package:flutter/material.dart';

class tela1 extends StatefulWidget {
  const tela1({super.key});

  @override
  State<tela1> createState() => _tela1State();
}

class _tela1State extends State<tela1> {
  bool passwordVisible=false;
  @override 
    void initState(){ 
      super.initState(); 
      passwordVisible=true; 
    } 
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage(
            "https://static.vecteezy.com/system/resources/thumbnails/001/840/618/small/picture-profile-icon-male-icon-human-or-people-sign-and-symbol-free-vector.jpg",
          ),
        ),
        Container(
          width: 320,
          child: Column(
            children: [
              TextField(
                //TextFieldUsuario
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                  labelText: 'Usuário',
                ),
              ),
              TextField(obscureText: passwordVisible, //TextFieldUsuario
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(60),
            ),
            labelText: 'Senha',
            suffixIcon: IconButton( 
                      icon: Icon(passwordVisible 
                          ? Icons.visibility 
                          : Icons.visibility_off), 
                      onPressed: () { 
                        setState( 
                          () { 
                            passwordVisible = !passwordVisible; 
                          }, 
                        ); 
                      }, 
                    ),
          ),
        ),
            ],
          ),
        ),
        ElevatedButton(
            onPressed: () {},
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text("Login", style: TextStyle(fontSize: 20.0))))
      ],
    ));
  }
}
