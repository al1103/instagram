import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {
  const LoadingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FilledButton(
      onPressed: null,
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(StadiumBorder()),
      ),
      child: SizedBox(
        width: 20,
        height: 20,
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
