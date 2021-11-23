import 'package:demo_app/ui/app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'domain/models/provider/convertion_model.dart';

void main() => runApp(
    // Agrega el método ChangeNotifierProvider
    // ChangeNotifierProvider es el widget que proporciona
    // una instancia de un ChangeNotifier a sus descendientes.
    // Viene del paquete provider.

    App()
    );
