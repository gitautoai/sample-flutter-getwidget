import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:getwidget/getwidget.dart';

void main() {
  testWidgets('GFButtonBadge renders correctly', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: GFButtonBadge(
            onPressed: () {},
            text: 'Badge Button',
          ),
        ),
      ),
    );
    expect(find.text('Badge Button'), findsOneWidget);
    expect(find.byType(GFButtonBadge), findsOneWidget);
  });
}
