import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:getwidget/getwidget.dart';

import 'package:getwidget/components/badge/gf_button_badge.dart';

void main() {
  testWidgets('GFButtonBadge widget displays text and icon', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: GFButtonBadge(
            onPressed: () {},
            text: 'Test Badge',
            icon: Icon(Icons.add),
            size: 50.0,
          ),
        ),
      ),
    );

    expect(find.text('Test Badge'), findsOneWidget);
    expect(find.byIcon(Icons.add), findsOneWidget);
  });
}
