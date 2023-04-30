import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';
import 'package:widgets_app/presentation/widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {

  static const String name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final scaffodKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key:scaffodKey,
      appBar: AppBar(
        title: const Text(
          'Flutter + Material 3',
        ),
      ),
      body: const _HomeView(),
      drawer: SideMenu(scaffoldKey: scaffodKey,),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];

        // hice el snippet en la ruta command shift p usersnippets luego buscar dart
        // y pegar el codigo

        // "Color scheme": {
        //         "prefix":"theme-of-context",
        //         "body": [
        //             "final colors = Theme.of(context).colorScheme;",
        //         ],
        //         "description":"Create the reference to the colors"

        //     }

        // por lo que escribo theme ofy me aparece el snippet
        // luego accedo al color primario determinado por el color que maneja la app
        // de mi lista e colores creada

        final colors = Theme.of(context).colorScheme;

        return ListTile(
          title: Text(menuItem.title),
          subtitle: Text(menuItem.subTitle),
          leading: Icon(
            menuItem.icon,
            color: colors.primary,
          ),
          trailing: Icon(
            Icons.arrow_forward_ios_rounded,
            color: colors.primary,
          ),
          onTap: () {
            
            context.push(menuItem.link);
          },
        );
      },
      itemCount: appMenuItems.length,
    );
  }
}
