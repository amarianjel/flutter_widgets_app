import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];

        return _CustomListTile(menuItem: menuItem);
        // return _CustomListTile(menuItem: menuItem);
      },
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({ required this.menuItem });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon( menuItem.icon, color: colors.primary ),
      trailing: Icon( Icons.arrow_forward_ios_rounded, color:colors.primary ),
      title: Text(menuItem.title),
      subtitle: Text( menuItem.subTitle ),
      onTap: () {
        // README: Navegar a otras pantallas
        
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => const ButtonsScreen(),
        //   ),
        // );
        // Navigator.pushNamed(context, menuItem.link );

        // context.pushNamed( CardsScreen.name );
        context.push( menuItem.link );  //+ Route por basico para leer
      },
    );
  }
}