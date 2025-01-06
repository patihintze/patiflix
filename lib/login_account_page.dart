import 'package:flutter/material.dart';
import 'package:patiflix/components/drawer_item.dart';
import 'package:patiflix/components/my_appbar.dart';
import 'package:patiflix/create_account_page.dart';
import 'package:patiflix/home_page.dart';

class LoginAccount extends StatefulWidget {
  const LoginAccount({super.key});

  @override
  State<LoginAccount> createState() => _LoginAccountState();
}

class _LoginAccountState extends State<LoginAccount> {
  @override
  Widget build(BuildContext context) {
    bool _isObscured = true;
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
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const HomePage()));
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
              "Login",
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
              style: TextStyle(
                decoration: TextDecoration.none,
              ),
              decoration: InputDecoration(
                label: Text(
                  "Telefone, e-mail ou usuário",
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
              child: StatefulBuilder(builder: (context, setState) {
                return TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: _isObscured,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                  ),
                  decoration: InputDecoration(
                      label: Text(
                        "Senha",
                        style: TextStyle(
                          color: Color(0xFFBDC1C6),
                        ),
                      ),
                      border: InputBorder.none,
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _isObscured = !_isObscured;
                            });
                          },
                          icon: Icon(
                            _isObscured
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Color(0xFFBDC1C6),
                          ))),
                );
              })),
          SizedBox(height: 40),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text(
                  "Ainda não tem uma conta? ",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                TextButton(
                  onPressed: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const CreateAccount())
                    );
                  }, 
                  child: Text(
                    "Criar",
                     style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    decoration: TextDecoration.underline
                    ), 
                  )
                )
              ])
            ],
          )
        ],
      ))),
    );
  }
}
