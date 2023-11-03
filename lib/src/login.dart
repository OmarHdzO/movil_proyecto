import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  late String _usuario;
  late String _contra;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 90.0,
        ),
        children: <Widget> [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100.0,
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage('images/logoedificio.jpg'),
              ),
              Text(
                'login',
                style: TextStyle(
                  fontFamily: 'Agbalumo',
                  fontSize: 60.0,
                  color: Colors.black),
              ),
              Text(
                'Apartment',
                style: TextStyle(
                  fontFamily: 'Agbalumo',
                  fontSize: 20.0,
                  color: Colors.black),
              ),
              SizedBox(
                height: 100,
                width: 300,
                child: Divider(
                  color: Colors.blueAccent,
                  
                ),
              ),
              TextField(
                enableInteractiveSelection: false,
                autofocus: true,
                textCapitalization: TextCapitalization.characters,
                decoration: const InputDecoration(
                  
                  labelText: "Usuario",
                  hintText: "Digite el usuario",
                  suffixIcon: Icon(
                    Icons.verified_user_outlined
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))
                  )
                ),
                onSubmitted: (valor){
                  _usuario= valor;
                  print("El usuario es$_usuario");
                },
              ),
              SizedBox(
                height: 18,
              ),
              TextField(
                enableInteractiveSelection: false,
                obscureText: true,
                decoration: const InputDecoration(
                  
                  labelText: "Contraseña",
                  hintText: "Digite la contraseña",
                  suffixIcon: Icon(
                    Icons.lock
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))
                  )
                ),
                onSubmitted: (valor){
                  _contra= valor;
                  print("La contraseña es$_contra");
                },

              ),
              Divider(
                height: 30,
                color: Colors.transparent,
              ),
              SizedBox(
                
                child: TextButton(
                  
                  onPressed: (){},
                  
                  child: const Text('Iniciar Sesion',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 30,
                    fontFamily: 'Agbalumo'
                  ),
                  
                  ),
                 
                  ),
              ),

            ],
          )
        ],
      )
    );
  }
}