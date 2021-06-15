import 'package:flutter/material.dart';
import 'package:page_router/page_router.dart';

class AuthorizationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthorizationPageState();
  }
}

class _AuthorizationPageState extends State<AuthorizationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Authorization"),
      ),
      body: Container(
        child: Center(
            child: Form(
          child: Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter your username',
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Enter your password',
                  ),
                ),
                ElevatedButton(
                    child: Text(
                        "next".toUpperCase(),
                        style: TextStyle(fontSize: 14, color: Colors.black)
                    ),
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all<double>(5.0),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                side: BorderSide(color: Colors.black)
                            )
                        )
                    ),
                    onPressed: () {
                      PageRouter.of(context).pushNamed('/home');
                    }
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
