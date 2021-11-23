import 'package:demo_app/domain/models/provider/convertion_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Dec2Bin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final calculator = Convertion(context);
    return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Consumer<ConvertionModel>(
              builder: (context, calculator, child) {
                return Container(
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.centerRight,
                  child: Text(
                    calculator.decimal,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).accentColor,
                        fontSize: 35),
                  ),
                );
              },
            ),
            Consumer<ConvertionModel>(
              builder: (context, calculator, child) {
                return Container(
                  padding: const EdgeInsets.all(8.0),
                  alignment: Alignment.centerRight,
                  child: Text(
                    calculator.binary,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).accentColor,
                        fontSize: 35),
                  ),
                );
              },
            ),
            Expanded(
                child: Container(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  keyPadButton(1, context),
                  keyPadButton(2, context),
                  keyPadButton(3, context),
                ],
              ),
            )),
            Expanded(
                child: Container(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  keyPadButton(4, context),
                  keyPadButton(5, context),
                  keyPadButton(6, context),
                ],
              ),
            )),
            Expanded(
                child: Container(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  keyPadButton(7, context),
                  keyPadButton(8, context),
                  keyPadButton(9, context),
                ],
              ),
            )),
            Expanded(
                child: Container(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                      flex: 2,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: MaterialButton(
                          color: Theme.of(context).accentColor,
                          onPressed: () => Provider.of<ConvertionModel>(context,
                                  listen: false)
                              .reset(),
                          child: Text(
                            "Reset",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )),
                  keyPadButton(0, context),
                ],
              ),
            )),
          ]),
    );
  }

  Widget keyPadButton(number, context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: MaterialButton(
          color: Theme.of(context).primaryColor,
          child: Text(
            number.toString(),
            style: new TextStyle(
              color: Colors.white,
            ),
          ),
          onPressed: () => Provider.of<ConvertionModel>(context, listen: false)
              .updateDecimal(number),
        ),
      ),
    );
  }
}
