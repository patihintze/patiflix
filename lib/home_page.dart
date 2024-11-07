import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                TextField();
              });
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 30.0),
            ),
            Row(
            children: [
              IconButton(
                onPressed: (){
                  Text("Teste");
                },
                icon: Icon(Icons.edit, color: Colors.white,),
              ),
              Text("Gerenciar perfis", style: TextStyle(color: Colors.white),),
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: (){
                  Text("Teste");
                },
                icon: Icon(Icons.settings, color: Colors.white,),
              ),
              Text("Configurações do aplicativo", style: TextStyle(color: Colors.white),),
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: (){
                  Text("Teste");
                },
                icon: Icon(Icons.person, color: Colors.white,),
              ),
              Text("Conta", style: TextStyle(color: Colors.white),),
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: (){
                  Text("Teste");
                },
                icon: Icon(Icons.help_outline, color: Colors.white,),
              ),
              Text("Ajuda", style: TextStyle(color: Colors.white),),
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: (){
                  Text("Teste");
                },
                icon: Icon(Icons.exit_to_app, color: Colors.white,),
              ),
              Text("Sair", style: TextStyle(color: Colors.white),),
            ],
          ),
        ],
      )  
    ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                Row(
                  children: [
                  Container(
                    padding: const EdgeInsets.all(2),
                    width: 150,
                    height: 300,
                    child: 
                    const Image(image: AssetImage('assets/film1.jpg'))
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    width: 150,
                    height: 300,
                    child: 
                    const Image(image: AssetImage('assets/film2.jpg'))
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    width: 150,
                    height: 300,
                    child: 
                    const Image(image: AssetImage('assets/film3.jpg'))
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    width: 150,
                    height: 300,
                    child: 
                    const Image(image: AssetImage('assets/film4.jpg'))
                  )
                    ],
                  ),
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
                Row(
                  children: [
                    Container(
                    padding: const EdgeInsets.all(2),
                    width: 150,
                    height: 280,
                    child: 
                    const Image(image: AssetImage('assets/keepwatching1.jpeg'))
                    ),
                    Container(
                    padding: const EdgeInsets.all(2),
                    width: 150,
                    height: 300,
                    child: 
                    const Image(image: AssetImage('assets/keepwatching2.jpeg'))
                    ),
                    Container(
                    padding: const EdgeInsets.all(2),
                    width: 150,
                    height: 300,
                    child: 
                    const Image(image: AssetImage('assets/keepwatching3.jpeg'))
                    ),
                  ],
                )
              ],

            ),
          )

          ],
        )
    );
  }
}
