import 'package:carrito_compras/pages/home_page.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        
        appBar: AppBar(title: const Text('Iniciar Sesión')),
        body: cuerpo());
  }
}

class cuerpo extends StatefulWidget {
  const cuerpo({
    super.key,
  });

  @override
  State<cuerpo> createState() => _cuerpoState();
}

class _cuerpoState extends State<cuerpo> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _textoController = TextEditingController(text: "");
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: NetworkImage("https://scontent.feoh4-3.fna.fbcdn.net/v/t39.30808-6/241434762_393591038919803_8625888116311340571_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=a26aad&_nc_ohc=deOdyHOP6wIAX8uoU4u&_nc_ht=scontent.feoh4-3.fna&oh=00_AfDe97tF0SvpaFu4qOhXXWsCkGE0e2omTiPvbGL9xWNDNQ&oe=644F255F"),
        fit: BoxFit.cover),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            titulo(),
            Container(
            padding: const EdgeInsets.all(20),
              child: TextField(
                controller: _textoController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    fillColor: Colors.grey[300],
                    filled: true,
                    hintText: "Ingrese informacion"),
              )),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  HomePage(_textoController.text)));
                },
                child: const Text('Entrar')),

          ],
          
        ),
        
      ),
    );
  }
}

class _textoController {
}

Widget titulo(){
  return const Text(
    'Ingresa Tu Nombre',
    style: TextStyle(color: Color.fromARGB(255, 54, 54, 54), fontSize:30,fontWeight: FontWeight.bold),
  );
}
/*
Widget campoUsuario(){
  return Container(padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
  child: const TextField(
    controller: _textoController,
    decoration: InputDecoration(
      hintText: "Usuario",
      fillColor: Colors.white,
      filled: true,
    ),
  ),
  );
}

 Widget campoContrasena(){
  return Container(
    padding: const EdgeInsetsDirectional.symmetric(horizontal: 15, vertical: 15),
    child: const TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Contraseña",
        fillColor:Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget botonEntrar(){
  return Container(
    
  );

} */