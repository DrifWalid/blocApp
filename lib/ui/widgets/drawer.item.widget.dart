import 'package:flutter/material.dart';

class DrawerItemWidget extends StatelessWidget {
  final String title;
  final IconData leadingIcon;
  final IconData trailingIcon;
  final Function onAction;

  const DrawerItemWidget(
      {super.key,
      required this.title,
      required this.leadingIcon,
      required this.trailingIcon,
      required this.onAction});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => onAction(),
      leading: Icon(leadingIcon, color: Theme.of(context).iconTheme.color),
      trailing: Icon(trailingIcon, color: Theme.of(context).iconTheme.color),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
