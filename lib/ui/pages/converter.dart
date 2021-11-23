import 'package:flutter/material.dart';
import '../../ui/widgets/bin2dec.dart';
import '../../ui/widgets/dec2bin.dart';

class Converter extends StatefulWidget {
  @override
  _ConverterState createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  String _buttonText = "Binary -> Decimal";
  int _widgetID = 0;
  Widget _widget = Bin2Dec();

  void _swapWidget() {
    setState(() {
      switch (_widgetID) {
        case 0:
          _buttonText = "Decimal -> Binary";
          _widgetID = 1;
          _widget = Dec2Bin();
          break;
        case 1:
          _buttonText = "Binary -> Decimal";
          _widgetID = 0;
          _widget = Bin2Dec();
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0.00, 3.00),
                      color: Color(0xff000000).withOpacity(0.16),
                      blurRadius: 6,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(4.00),
                ),
                child: MaterialButton(
                    child: Text('$_buttonText'), onPressed: (){_swapWidget();}),
              ),
            ),
            Expanded(child: _widget),
          ]),
    );
  }
}
