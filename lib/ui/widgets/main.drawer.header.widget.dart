import 'package:enset_app/bloc/theme.bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainDrawerHeader extends StatelessWidget {
  const MainDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.white, Theme.of(context).primaryColor])),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("images/avatar.jpeg"),
            radius: 50,
          ),
          IconButton(
              onPressed: () {
                context.read<ThemeBloc>().add(SwitchThemeEvent());
              },
              icon: Icon(Icons.settings))
        ],
      ),
    );
  }
}
