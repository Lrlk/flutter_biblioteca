import 'package:flutter/material.dart';
import 'package:flutter_biblioteca/models/book_model.dart';
import 'package:flutter_biblioteca/models/opinion_model.dart';

class BookScreen extends StatelessWidget {
  BookScreen({super.key});

  final BookModel bookModel = BookModel(
      id: "001",
      name: "Senhor dos Anéis",
      author: "J.R.R. Tolkien",
      synopsis: "Uma sinopse ai");
  final List<OpinionModel> listOpinion = [
    OpinionModel(id: "001", opinion: "Maravilhoso", date: "2024-05-29"),
    OpinionModel(id: "002", opinion: "Top de mais", date: "2024-01-12")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${bookModel.name} / ${bookModel.author}")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("clicado");
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
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
            Text(bookModel.synopsis),
            const Divider(),
            const Text(
              "O que eu achei:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(listOpinion.length, (index) {
                OpinionModel opinionLast = listOpinion[index];
                return Text(opinionLast.opinion);
              }),
            )
          ],
        ),
      ),
    );
  }
}
