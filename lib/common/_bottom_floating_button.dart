import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:Doge/status/global.dart';

class DogeBottomButton extends StatelessWidget {
  const DogeBottomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<GlobalModel>(
      builder: (ctx, g, _) => DogeBottomButtonBuilder.build(ctx, g),
    );
  }
}

class DogeBottomButtonBuilder {
  static Widget build(BuildContext ctx, GlobalModel g) {
    final isActive = g.isActivate;
    final theme = g.theme;

    return FloatingActionButton(
      onPressed: g.toggleActivate,
      backgroundColor: theme.selectedItemColor,
      shape: const CircleBorder(),
      elevation: 5.0,
      child: Icon(
        isActive ? Icons.stop : Icons.power_settings_new,
        size: 28,
        color: Colors.white,
      ),
    );
  }
}