import 'package:applua/core/theme/theme_colors.dart';
import 'package:applua/core/utils/media_query.dart';
import 'package:flutter/material.dart';

class Createaccount extends StatefulWidget {
  const Createaccount({super.key});

  @override
  State<Createaccount> createState() => _CreateaccountState();
}

class _CreateaccountState extends State<Createaccount> {
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _confirmPassWord = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.secundary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: context.height * 0.08,
              horizontal: context.width * 0.09,
            ),
            margin: EdgeInsets.zero, //
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Criar conta", style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700)),
                  Text(
                    "Preencha seus dados para continuar",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),

                  SizedBox(height: 50),
                  Form(
                    key: _formKey,
                    //
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Nome Completo",
                          style: TextStyle(fontSize: 19, fontWeight: FontWeight.w800),
                        ),
                        SizedBox(height: 6),

                        TextFormField(
                          controller: _name,
                          keyboardType: TextInputType.name,
                          obscureText: false,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                        ),

                        SizedBox(height: 20),

                        Text("E-mail", style: TextStyle(fontSize: 19, fontWeight: FontWeight.w800)),
                        SizedBox(height: 6),
                        TextFormField(
                          controller: _email,
                          keyboardType: TextInputType.emailAddress,
                          obscureText: false,
                          decoration: const InputDecoration(
                            // errorText: "E-mail invalido",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                        ),

                        SizedBox(height: 20),

                        Text("Senha", style: TextStyle(fontSize: 19, fontWeight: FontWeight.w800)),
                        SizedBox(height: 6),
                        TextFormField(
                          controller: _password,
                          keyboardType: TextInputType.text,
                          obscureText: _obscurePassword,

                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscurePassword ? Icons.visibility_off : Icons.visibility,
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscurePassword = !_obscurePassword;
                                });
                              },
                            ),
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                        ),

                        SizedBox(height: 20),

                        Text(
                          "Confirmar senha",
                          style: TextStyle(fontSize: 19, fontWeight: FontWeight.w800),
                        ),
                        SizedBox(height: 6),
                        TextFormField(
                          controller: _confirmPassWord,
                          keyboardType: TextInputType.text,
                          obscureText: _obscurePassword,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscurePassword ? Icons.visibility_off : Icons.visibility,
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscurePassword = !_obscurePassword;
                                });
                              },
                            ),
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                        ),

                        SizedBox(height: 40),

                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 3,
                            backgroundColor: ThemeColors.primary,
                            minimumSize: const Size(double.infinity, 56),
                            maximumSize: const Size(double.infinity, double.infinity),
                            alignment: Alignment.center,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                          ),

                          onPressed: () {},
                          child: Text(
                            "Criar conta",
                            style: TextStyle(
                              color: ThemeColors.secundary,
                              fontSize: 19,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ), //
                  ),

                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Já tem uma conta?",
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/login");
                        },
                        child: Text(
                          "Entrar",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: ThemeColors.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
