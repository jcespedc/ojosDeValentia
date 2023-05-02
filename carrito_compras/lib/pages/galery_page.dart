import 'package:carrito_compras/data/images_data.dart';
import 'package:flutter/material.dart';
import 'package:carrito_compras/pages/images_page.dart';

class GaleryPage extends StatefulWidget {
  const GaleryPage({super.key});

  @override
  State<GaleryPage> createState() => _GaleryPageState();
}

class _GaleryPageState extends State<GaleryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nuestra Galeria"),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 150.0,
        padding: const EdgeInsets.all(5),
        mainAxisSpacing: 5, //separacion filas
        crossAxisSpacing: 5, //separacion Columnas,
        children: _imagesList,
      ),
    );
  }

  List<Widget> get _imagesList {
    List<Widget> _listImages = [];

    for (var image in images) {
      _listImages.add(GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ImagePage(url: image)));
          },
          child: Image.network(
            image,
            fit: BoxFit.cover,
          )));
    }
    return _listImages;
  }
}
