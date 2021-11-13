import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:probabilidades_brasileirao/model/menu/header_menu.dart';
import 'package:probabilidades_brasileirao/widgets/Menu.widget.dart';

void main() {

  testWidgets('primeiro teste', (WidgetTester tester) async {
    var headerMenu = HeaderMenu('Menu');
    var menuWidget = MenuWidget(
        menu: List.of([headerMenu])
    );

    await tester.pumpWidget(MaterialApp(home: menuWidget));

    var finder = find.text('Menu');

    expect(finder, findsOneWidget);
  });
}