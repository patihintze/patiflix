import 'package:flutter/material.dart';
import 'package:patiflix/components/drawer_item.dart';
import 'package:patiflix/components/my_appbar.dart';
import 'package:patiflix/home_page.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
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
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomePage()));
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
                  print("Clicou");
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
      body: SingleChildScrollView(
         child: Center(
              child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30.0),
            child: Text(
              "Criar conta",
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.all(5),
            width: 350,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 28, 28, 28),
              border: Border.all(width: 1, color: Color(0xFFE4E8EE)),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: TextFormField(
              keyboardType: TextInputType.name,
              style: TextStyle(
                decoration: TextDecoration.none,
              ),
              decoration: InputDecoration(
                label: Text(
                  "Nome completo",
                  style: TextStyle(
                    color: Color(0xFFBDC1C6),
                  ),
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
              padding: EdgeInsets.all(5),
              width: 350,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 28, 28, 28),
                border: Border.all(width: 1, color: Color(0xFFE4E8EE)),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                decoration: TextDecoration.none,
              ),
              decoration: InputDecoration(
                label: Text(
                  "E-mail",
                  style: TextStyle(
                    color: Color(0xFFBDC1C6),
                  ),
                ),
                border: InputBorder.none,
              ),
              ),
          )
        ]
      ))
    ));
  }
}