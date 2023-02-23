import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ExampleProvider extends StatefulWidget {
  const ExampleProvider({super.key});

  @override
  State<ExampleProvider> createState() => _ExampleProviderState();
}

class _ExampleProviderState extends State<ExampleProvider> {
  @override
  Widget build(BuildContext context) {
    final testProvider = Provider.of<TestModal>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(testProvider.InitialValue),
            ElevatedButton(
              onPressed: () {
                testProvider.updateTestValue("Mathi");
              },
              child: Text("Press it"),
            ),
          ],
        ),
      ),
    );
  }
}

/// Modal class;

class TestModal with ChangeNotifier {
  String InitialValue = "Hello";

  void updateTestValue(String updatedVal) {
    InitialValue = updatedVal;
    notifyListeners();
  }
}
