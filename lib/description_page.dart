import "package:flutter/material.dart";
import "package:patiflix/components/my_appbar.dart";
import "package:patiflix/components/drawer_item.dart";
import "package:patiflix/models/filme.dart";
import "package:patiflix/home_page.dart";
import "package:patiflix/search_page.dart";

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key});

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
          Text("Teste")
        ],
      )
    );
  }
}