import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping/blocs/user.bloc.dart';
import 'package:shopping/models/authenticate-user.model.dart';
import 'package:shopping/ui/android/pages/account.page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldMessengerState>();
  var username = '';
  var password = '';
  @override
  Widget build(BuildContext context) {
    var bloc = Provider.of<UserBloc>(context);

    return ScaffoldMessenger(
      key: _scaffoldKey,
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "Usuário",
                    labelStyle: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).primaryColor,
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Digite um usuário';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    username = value;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).primaryColor,
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Digite uma senha';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    password = value;
                  },
                ),
                TextButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      _formKey.currentState.save();
                      authenticate(context, bloc);
                    }
                  },
                  child: Text("Entrar"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  authenticate(BuildContext context, UserBloc bloc) async {
    var user = await bloc.authenticate(
      new AuthenticateModel(
        username: username,
        password: password,
      ),
    );

    if (user != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AccountPage(),
        ),
      );
      return;
    }

    final snackBar = SnackBar(content: Text('Usuário ou senha inválidos'));
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }
}
