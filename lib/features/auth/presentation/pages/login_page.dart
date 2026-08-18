import 'package:applua/core/theme/theme_colors.dart';
import 'package:applua/core/utils/media_query.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _obscurePassword = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _subForm() {
    // Agora você consegue acessar o _formKey sem problemas!
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Login realizado com sucesso: ${_emailController.text}')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.secundary,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            vertical: context.height * 0.04,
            horizontal: context.width * 0.09,
          ),
          child: Center(
            child: Column(
              children: [
                const Image(
                  image: AssetImage(
                    "assets/images/imageLogin.png", //
                  ),
                ),
                const Text(
                  "Que bom te ver de novo!",
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                const Text(
                  "Faça login para continuar",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),

                SizedBox(height: 37),
                _buildLoginUser(),
                Align(
                  alignment: AlignmentGeometry.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Esqueceu sua senha?",
                      style: TextStyle(
                        color: ThemeColors.primary,
                        fontSize: 15.3,
                        fontWeight: FontWeight.w600,
                      ), //
                    ),
                  ),
                ),
                SizedBox(height: 10),
                _buildButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoginUser() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("E-mail", style: TextStyle(fontSize: 19)),
          SizedBox(height: 4),
          TextFormField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email_outlined),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            ),
            validator: (String? value) {
              if (value == null || value.trim().isEmpty) {
                return "O e-mail não pode ser vazio";
              }
              if (value.length < 5) {
                return "O E-mail é muito curto";
              }
              if (!value.contains("@")) {
                return "O E-mail não e valido!";
              }
              return null;
            },
          ),
          SizedBox(height: 20),
          Text("Senha", style: TextStyle(fontSize: 19)),
          SizedBox(height: 4),
          TextFormField(
            keyboardType: TextInputType.text,
            controller: _passwordController,
            obscureText: _obscurePassword,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock_outline),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _obscurePassword = !_obscurePassword;
                  });
                },
                icon: Icon(_obscurePassword ? Icons.visibility_off : Icons.visibility),
              ),

              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return "Por favor digite a senha!";
              } else {
                return null;
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _buildButtons() {
    return Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: ThemeColors.primary,
            maximumSize: const Size(double.infinity, 50),
            minimumSize: Size(double.infinity, 50),
            shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(14)),
          ),
          onPressed: () {
            Navigator.pushNamed(context, "/tutorial");
          },
          child: Text(
            "Entrar", //
            style: TextStyle(color: ThemeColors.secundary, fontSize: 20),
          ),
        ),

        SizedBox(height: 20),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Divider(color: Colors.grey, thickness: 1)),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 12), child: Text("ou")),
            Expanded(child: Divider(color: Colors.grey, thickness: 1)),
          ],
        ),

        SizedBox(height: 20),

        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 13),
            shape: RoundedRectangleBorder(
              //
              borderRadius: BorderRadiusGeometry.all(Radius.circular(14)),
            ),
          ),
          onPressed: () {}, //

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //
              Image.asset("assets/icons/google.png", width: context.width * 0.058),
              SizedBox(width: 20),
              Text(
                "Continuar com Google",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  wordSpacing: 1,
                  letterSpacing: 0.2,
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 14),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Ainda não tem uma conta?", style: TextStyle(fontSize: 14)),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, "/createAccount"),
              child: Text(
                "Criar conta",
                style: TextStyle(
                  color: ThemeColors.primary,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
