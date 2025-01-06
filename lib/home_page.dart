import 'package:flutter/material.dart';
import 'package:patiflix/login_account_page.dart';
import 'package:patiflix/components/my_appbar.dart';
import 'package:patiflix/components/drawer_item.dart';
import 'package:patiflix/components/list_item.dart';
import 'package:patiflix/description_page.dart';
import 'package:patiflix/models/movie.dart';
import 'package:patiflix/repository/movie_repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Movie> listMovie = [];
  MovieRepository movieRepository = MovieRepository();

  @override
  void initState() {
    super.initState();
    getMovies();
  }

  getMovies() async {
    List<Movie> temp = await movieRepository.getMovies();
    setState(() {
      listMovie = temp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        appBar: buildCustomAppBar(context),
        drawer: Drawer(
          backgroundColor: Theme.of(context).colorScheme.onPrimary,
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                icon: Icons.home,
                text: "Home",
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const HomePage())
                  );                  
                },
              ),
              DrawerItem(
                  icon: Icons.edit,
                  text: "Gerenciar perfis",
                  onTap: () {
                    print("Clicou");
                  }),
              DrawerItem(
                icon: Icons.settings,
                text: "Configurações do aplicativo",
                onTap: () {
                  print("Clicou");
                },
              ),
              DrawerItem(
                  icon: Icons.person,
                  text: "Conta",
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const LoginAccount())
                    );
                  }),
              DrawerItem(
                  icon: Icons.help_outline_outlined,
                  text: "Ajuda",
                  onTap: () {
                    print("Clicou");
                  })
            ],
          ),
        ),
        body: 
        SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 2.0, top: 30.0),
              child: Text(
                "Recomendações para você",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 300,
              child: ListView.builder(
                  itemCount: listMovie.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            child: Row(children: [
                              Image.network(
                                "https://image.tmdb.org/t/p/w200${listMovie[index].posterPath}",
                                fit: BoxFit.contain,
                              )
                            ]),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => DescriptionPage(
                                      filmeEscolhido: listMovie[index])));
                            },
                          )
                        ]);
                  }),
            ),
            Padding(
              padding: EdgeInsets.only(left: 2.0, top: 20.0),
              child: Text(
                "Continue assistindo",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ListItem(imgFilme: "assets/keepwatching1.jpeg"),
                  ListItem(imgFilme: "assets/keepwatching2.jpeg"),
                  ListItem(imgFilme: "assets/keepwatching3.jpeg"),
                ],
              ),
            ),
          ],
        ),
        )
        );
  }
}
