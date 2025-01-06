import "package:flutter/material.dart";
import "package:patiflix/components/my_appbar.dart";
import "package:patiflix/models/movie.dart";
import "package:patiflix/repository/movie_repository.dart";

class DescriptionPage extends StatefulWidget {
  final Movie filmeEscolhido;
  const DescriptionPage({Key? key, required this.filmeEscolhido})
      : super(key: key);

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      appBar: buildCustomAppBar(context),
      body: SingleChildScrollView(
        child: Center(
        child: Column(
          children: [
            SizedBox(height: 8),
            Text(widget.filmeEscolhido.title!,
                style: Theme.of(context).textTheme.titleLarge),
            SizedBox(height: 8),
            Image.network(
                "https://image.tmdb.org/t/p/w500${widget.filmeEscolhido.backropPath}"),
            SizedBox(height: 8),
            Text(
              widget.filmeEscolhido.description!,
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      )
      ,
    );
  }
}
