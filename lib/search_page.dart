import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        iconTheme: Theme.of(context).iconTheme,
        title: TextField(
          controller: searchController,
          decoration: InputDecoration(
            icon: Icon(Icons.search),
            hintText: "Busque por filmes, séries, jogos...",
            hintStyle: TextStyle(fontSize: 15, color: Colors.grey[700]),
          ),
        ),
      ),
    );
  }
}
