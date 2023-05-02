import 'package:carrito_compras/pages/galery_page.dart';
import 'package:carrito_compras/pages/images_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String texto;
  const HomePage(
    this.texto, {
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Container(
            color: Colors.blue,
            child: Column(children: [
              Container(
                width: 100,
                height: 200,
                //margin: const EdgeInsets.all(40),
                child: Image.asset('assets/user.png'),
              ),
              Center(
                child: Text(widget.texto,
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                  child: Container(
                color: Color.fromARGB(255, 216, 214, 214),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    SizedBox(
                      height: 30,
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => GaleryPage()));
                          },
                          child: Text('Galeria')),
                    )
                  ],
                ),
              )),
              SizedBox(
                height: 30,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Cerrar')),
              )
            ]),
          ),
        ),
        appBar: AppBar(
            title: Text('Bienvenid@ ' + widget.texto),
            centerTitle: true,
            actions: [
              PopupMenuButton(
                shape: 
                OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                  itemBuilder: (context) => [
                        PopupMenuItem(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Text('Salir')),
                      ])
            ]),
        body: contenido(widget: widget));
  }
}

class contenido extends StatelessWidget {
  const contenido({
    super.key,
    required this.widget,
  });

  final HomePage widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://scontent.feoh4-3.fna.fbcdn.net/v/t39.30808-6/301406919_730563674842221_7657126343416008826_n.png?_nc_cat=103&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=qohEV5YmlcwAX8hTazT&_nc_ht=scontent.feoh4-3.fna&oh=00_AfA_Yx8JlSqicirArDS1JvOr8bBQBLfkVAcuCGYpQGcsQg&oe=644E1E54"))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(10),
              child: Text(
                  'Ojos de VALENTÍA es un emprendimiento creado para ofrecerte una manera innovadora de conectarte con tus proyectos y de materializarlos con herramientas que lo faciliten. Sabemos que eres único y por eso queremos que tu producto también lo sea; conecta tu creatividad a la nuestra y juntos hagamos de tu inversión algo que vaya con tu esencia y te identifique. ¡Un sueño se anhela, un proyecto se trabaja! 🙌🏻👀💙',
                  style: TextStyle(
                      color: Color.fromARGB(255, 54, 54, 54),
                      fontSize: 13.5,
                      fontWeight: FontWeight.bold)),
            ),
          )
        ],
      ),
    );
  }
}
