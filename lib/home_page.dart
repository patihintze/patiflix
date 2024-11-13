import 'package:flutter/material.dart';
import 'package:patiflix/drawer_item.dart';
import 'package:patiflix/list_item.dart';
import 'package:patiflix/search_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      appBar: AppBar(
        title: Text("Patiflix", style: Theme.of(context).textTheme.titleMedium,),
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        iconTheme: Theme.of(context).iconTheme,
        actions: [
          IconButton(
            onPressed: (){
              showDialog(
                context: context, 
                builder: (BuildContext context){
                  return AlertDialog(
                    title: Text("Erro"),
                    content: Text("Não foi possível conectar ao Wi-Fi, verifique sua conexão."),
                    actions: [
                      TextButton(
                        child: Text("OK"),
                        onPressed: (){
                          Navigator.of(context).pop();
                        },)
                    ],
                  );
                },
              );
            }, 
            icon: const Icon(Icons.connected_tv),
          ),
          IconButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>const SearchPage()
                )
              );

            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
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
            child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ListItem(img: "assets/film1.jpg"),
              ListItem(img: "assets/film2.jpg"),
              ListItem(img: "assets/film3.jpg"),
              ListItem(img: "assets/film4.jpg"),
              ],
            ),
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
              ListItem(img: "assets/keepwatching1.jpeg"),
              ListItem(img: "assets/keepwatching2.jpeg"),
              ListItem(img: "assets/keepwatching3.jpeg"),
              ],
            ),
          ),

          ],
        )
    );
  }
}
