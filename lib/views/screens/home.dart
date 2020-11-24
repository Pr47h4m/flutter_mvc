import 'package:flutter/material.dart';
import 'package:flutter_general/views/components/app_drawer.dart';

class Home extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    bool isWideScreen = mediaQueryData.size.width > 700;
    return Row(
      children: [
        if (isWideScreen) AppDrawer(),
        Expanded(
          child: DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                title: Text("Flutter_MVC"),
                elevation: 0,
                bottom: TabBar(
                  tabs: [
                    Tab(icon: Icon(Icons.dashboard)),
                    Tab(icon: Icon(Icons.star)),
                  ],
                ),
                automaticallyImplyLeading: (isWideScreen) ? false : true,
              ),
              drawer: (!isWideScreen) ? AppDrawer() : null,
              body: TabBarView(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Form(
                          key: _formKey,
                          child: TextFormField(
                            controller: _name,
                            decoration: InputDecoration(labelText: "Name"),
                            validator: (val) =>
                                val.isEmpty ? "Please Enter Name" : null,
                          ),
                        ),
                      ),
                      RaisedButton(
                        child: Text(
                          "Check",
                          style: Theme.of(context).textTheme.button,
                        ),
                        onPressed: () {
                          _formKey.currentState.validate();
                        },
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AlertDialogButton(),
                      SnackbarButton(),
                    ],
                  ),
                ],
              ),
              floatingActionButton: FloatingActionButton(
                child: Tooltip(
                  message: "Add",
                  child: Icon(
                    Icons.add,
                    color: IconTheme.of(context).color,
                  ),
                ),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (_) => Column(),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class AlertDialogButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        "Alert Dialog",
        style: Theme.of(context).textTheme.button.copyWith(color: Colors.white),
      ),
      color: Theme.of(context).colorScheme.primary,
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Alert Dialog"),
            content: Text("This Is An Alert Dialog"),
            actions: [
              FlatButton(
                child: Text(
                  "Close",
                  style: Theme.of(context)
                      .textTheme
                      .button
                      .copyWith(color: Theme.of(context).colorScheme.primary),
                ),
                onPressed: () => Navigator.pop(context),
              )
            ],
          ),
        );
      },
    );
  }
}

class SnackbarButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        final snackBar = SnackBar(
          behavior: SnackBarBehavior.floating,
          content: const Text('Text label'),
          action: SnackBarAction(
            label: 'Action',
            onPressed: () {},
            textColor: Theme.of(context).colorScheme.primary,
          ),
        );
        Scaffold.of(context).showSnackBar(snackBar);
      },
      color: Theme.of(context).colorScheme.primary,
      child: Text(
        'Show SnackBar',
        style: Theme.of(context).textTheme.button.copyWith(color: Colors.white),
      ),
    );
  }
}
