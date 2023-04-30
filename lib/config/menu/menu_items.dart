import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

 const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[

     MenuItem(
    title: 'Counter Screen',
    subTitle: 'Contador con Riverpod',
    link: '/counter',
    icon: Icons.add,
  ),
  MenuItem(
    title: 'Botones',
    subTitle: 'Varios botones en Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),

    MenuItem(
    title: 'Tarjetas',
    subTitle: 'Un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card,
  ),
    MenuItem(
    title: 'Progress Indicator',
    subTitle: 'Generales y controladores',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
    MenuItem(
    title: 'SnackBars y dialogos',
    subTitle: 'Indicadores en pantalla',
    link: '/snackbars',
    icon: Icons.info_outline,
  ),
    MenuItem(
    title: 'Animated container',
    subTitle: 'Stateful widget animado',
    link: '/animated',
    icon: Icons.check_box_outline_blank_rounded,
  ),
    MenuItem(
    title: 'Ui controls + Tiles',
    subTitle: 'Stateful widget animado',
    link: '/ui-controls',
    icon: Icons.car_rental_outlined,
  ),
    MenuItem(
    title: 'Introducción a la aplicación',
    subTitle: 'Stateful widget animado',
    link: '/tutorial',
    icon: Icons.accessibility_rounded,
  ),
    MenuItem(
    title: 'Infinite-Scroll y Pull',
    subTitle: 'Listas infinitas y pull to Refresh',
    link: '/infinite',
    icon: Icons.list_alt_rounded,
  ),
    MenuItem(
    title: 'Theme-Changer',
    subTitle: 'Cambiar de tema',
    link: '/theme-change',
    icon: Icons.color_lens_outlined,
  ),
 
];
