import 'package:flutter/material.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Senhor dos Anéis")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("clicado");
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text("Enviar capa"),
            ),
            const Text(
              "Sinopse",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const Text("Livro escrito por J.R.R.Tolkien"),
            const Divider(),
            const Text(
              "O que eu achei:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const Text("História ótima")
          ],
        ),
      ),
    );
  }
}
