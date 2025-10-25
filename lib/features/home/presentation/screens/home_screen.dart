import 'package:flutter/material.dart';
import 'package:qoot/core/common/widgets/custom_loading.dart';
import 'package:qoot/core/common/widgets/show_custom_snack_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          const Center(child: Text('Welcome to the Home Screen!')),
          CustomLoading(size: 50),
          ElevatedButton(
            onPressed: () {
              showCustomSnackBar(context, 'This is a custom snackbar message!');
            },
            child: const Text('Show Snackbar'),
          ),
        ],
      ),
    );
  }
}
