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
      backgroundColor: Colors.purple[300],
      appBar: AppBar(title: Text("${bookModel.name} / ${bookModel.author}")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("clicado");
        },
        child: const Icon(Icons.add),
      ),
      body: Container(
        margin: const EdgeInsets.all(9),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Enviar capa"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Tirar foto"),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "Sinopse",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(bookModel.synopsis),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                color: Colors.black,
              ),
            ),
            const Text(
              "O que eu achei:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(listOpinion.length, (index) {
                OpinionModel opinionLast = listOpinion[index];
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(opinionLast.opinion),
                  subtitle: Text(opinionLast.date),
                  leading: const Icon(Icons.double_arrow),
                  trailing: IconButton(
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    onPressed: () {
                      print("Deletar ${opinionLast.opinion}");
                    },
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
