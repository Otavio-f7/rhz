

import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final Icon leading;
  final String title;
  final GestureTapCallback? onTap;
  final bool selected;
  const CustomListTile({super.key, required this.leading, required this.title, required this.onTap, required this.selected, });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: Text(title, style: const TextStyle(color: Colors.white),),
      onTap: onTap,
      selected: selected,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(50),
          bottomRight: Radius.circular(50),
        )
      ),
      selectedTileColor: Theme.of(context).primaryColor.withOpacity(0.75),
    );
  }
}