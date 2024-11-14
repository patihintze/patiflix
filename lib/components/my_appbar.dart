import 'package:flutter/material.dart';
import 'package:patiflix/search_page.dart';

AppBar buildCustomAppBar(BuildContext context){
  return AppBar(
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
  );
}