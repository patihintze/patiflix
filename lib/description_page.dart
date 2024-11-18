import "package:flutter/material.dart";
import "package:patiflix/components/my_appbar.dart";
import "package:patiflix/components/drawer_item.dart";
import "package:patiflix/models/filme.dart";
import "package:patiflix/home_page.dart";
import "package:patiflix/search_page.dart";

class DescriptionPage extends StatelessWidget {
  final Filme filmeEscolhido;
  const DescriptionPage({super.key, required this.filmeEscolhido});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      appBar: buildCustomAppBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(image: AssetImage(filmeEscolhido.imgFilme!), fit: BoxFit.fill,),
          SizedBox(height: 8),
          Text(filmeEscolhido.nome!, style: Theme.of(context).textTheme.titleMedium,),
          SizedBox(height: 8),
          Text(filmeEscolhido.ano.toString(), style: Theme.of(context).textTheme.titleMedium,),
          SizedBox(height: 8),
          Text(filmeEscolhido.descricao!, style: Theme.of(context).textTheme.titleSmall,)
        ],
      ),
    );
  }
}

/* class DescriptionPage extends StatefulWidget {
  /* const DescriptionPage(String? nome, String? descricao, int? ano, {super.key}); */
  final Filme filmeEscolhido;
  const DescriptionPage({Key? key, required this.filmeEscolhido}) : super(key: key);

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      appBar: buildCustomAppBar(context),
      body: Column(
        children: [
          Image(image: AssetImage(filmeEscolhido.imgFilme)),
          Text(""),
        ],
      )
    );
  }
} */