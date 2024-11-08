import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:patiflix/drawer_item.dart';
import 'package:patiflix/list_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool barraPesquisa = false;
  final TextEditingController searchController = TextEditingController(); //barra de pesquisa não está funcionando

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Patiflix", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            onPressed: (){
              setState(() {
                const Text("Espelhar");
              });
              
            }, 
            icon: const Icon(Icons.connected_tv),
            ),
          IconButton(
            onPressed: (){
              setState(() {
                barraPesquisa = !barraPesquisa;
                if (!barraPesquisa){
                  searchController.clear();
                }             
              });
            },
            icon: Icon(barraPesquisa ? Icons.close : Icons.search),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
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
          Visibility(
            visible: barraPesquisa,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: searchController,
              ),
              ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 2.0, top: 30.0),
            child: Text("Recomendações para você", style: TextStyle(color: Colors.white, fontSize: 20),), 
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

          const Padding(
            padding: EdgeInsets.only(left: 2.0, bottom: 20.0),
            child: Text("Continue assistindo", style: TextStyle(color: Colors.white, fontSize: 20),), 
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
