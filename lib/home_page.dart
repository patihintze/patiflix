import 'package:flutter/material.dart';
import 'package:patiflix/components/my_appbar.dart';
import 'package:patiflix/components/drawer_item.dart';
import 'package:patiflix/components/list_item.dart';
import 'package:patiflix/description_page.dart';
import 'package:patiflix/models/filme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Filme filme1 = Filme(
    nome: "A face do mal",
    ano: 2013,
    descricao: "Um jovem se muda para uma casa nova com a família e começa a namorar a vizinha, mas essa paixão adolescente acaba abrindo as portas de uma nova dimensão.",
    imgFilme: "assets/film1.jpg",
  );
  Filme filme2 = Filme(
    nome: "O chamado do mal",
    ano: 2018,
    descricao: "Um professor universitário e sua esposa, que estão prestes a ter um bebê, são os responsáveis por um ato com consequências horrendas: eles liberam, involuntariamente, uma entidade maligna com pretenções perigosas.",
    imgFilme: "assets/film2.jpg",
  );
  Filme filme3 = Filme(
    nome: "A substancia",
    ano: 2024,
    descricao: "Elisabeth Sparkle, renomada por um programa de aeróbica, enfrenta um golpe devastador quando seu chefe a demite. Em meio ao seu desespero, um laboratório lhe oferece uma substância que promete transformá-la em uma versão aprimorada.",
    imgFilme: "assets/film3.jpg",
  );
  Filme filme4 = Filme(
    nome: "O corvo",
    ano: 2024,
    descricao: "As almas gêmeas Eric Draven e Shelly Webster são brutalmente assassinadas quando os demônios de seu passado sombrio os alcançam. Atravessando os mundos dos vivos e dos mortos, Draven retorna em busca de vingança sangrenta contra os assassinos.",
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
                            builder: (context) => DescriptionPage(filmeEscolhido: listFilme[index])
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
