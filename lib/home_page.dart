import 'package:flutter/material.dart';
import 'package:patiflix/components/my_appbar.dart';
import 'package:patiflix/components/drawer_item.dart';
import 'package:patiflix/components/list_item.dart';
import 'package:patiflix/description_page.dart';
import 'package:patiflix/models/filme.dart';
import 'package:patiflix/search_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Filme filme1 = Filme(
    nome: "A face do mal",
    ano: 2005,
    descricao: "Testeskjdfwsidjfnsd",
    imgFilme: "assets/film1.jpg",
  );
  Filme filme2 = Filme(
    nome: "A face do mal",
    ano: 2005,
    descricao: "Testeskjdfwsidjfnsd",
    imgFilme: "assets/film2.jpg",
  );
  Filme filme3 = Filme(
    nome: "A face do mal",
    ano: 2005,
    descricao: "Testeskjdfwsidjfnsd",
    imgFilme: "assets/film3.jpg",
  );
  Filme filme4 = Filme(
    nome: "A face do mal",
    ano: 2005,
    descricao: "Testeskjdfwsidjfnsd",
    imgFilme: "assets/film4.jpg",
  );

  List<Filme> listFilme = [];

  @override
  void initState(){
    super.initState();
    listFilme.add(filme1);
    listFilme.add(filme2);
    listFilme.add(filme3);
    listFilme.add(filme4);
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
            const SizedBox(height: 30,),
            DrawerItem(
              icon: Icons.edit, 
              text: "Gerenciar perfis",
              onTap: (){
                print("Clicou");
              }
              ),
            DrawerItem(
              icon: Icons.settings,
              text: "Configurações do aplicativo",
              onTap: (){
                print("Clicou");
              },
            ),
            DrawerItem(
              icon: Icons.person,
              text: "Conta",
              onTap: (){
                print("Clicou");
              }
            ),
            DrawerItem(
              icon: Icons.help_outline_outlined,
              text: "Ajuda",
              onTap: (){
                print("Clicou");
              }
            )    
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 2.0, top: 30.0),
            child: Text("Recomendações para você", style: Theme.of(context).textTheme.titleMedium,), 
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 250,
            child: ListView.builder(
              itemCount: listFilme.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      child: Image(image: AssetImage(listFilme[index].imgFilme!)),
                      onTap: () {

                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DescriptionPage(), 
/*                             settings: RouteSettings(
                              arguments: listFilme[index]
                            ) */));
                        
                      },
                    )
                    
                  ]
                );
              }
            ),
            /* ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ListItem(img: "assets/film1.jpg"),
              ListItem(img: "assets/film2.jpg"),
              ListItem(img: "assets/film3.jpg"),
              ListItem(img: "assets/film4.jpg"),
              ],
            ), */
          ),

          Padding(
            padding: EdgeInsets.only(left: 2.0, top: 20.0),
            child: Text("Continue assistindo", style: Theme.of(context).textTheme.titleMedium,), 
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
        )
    );
  }
}
