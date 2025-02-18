import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:getwidget/getwidget.dart';

void main() {
  testWidgets('GFButtonBadge displays text when text property is provided', (WidgetTester tester) async {
    bool pressed = false;
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: GFButtonBadge(
            onPressed: () { pressed = true; },
            text: 'Button Badge',
          ),
        ),
      ),
    );

    expect(find.text('Button Badge'), findsOneWidget);

    await tester.tap(find.text('Button Badge'));
    await tester.pump();
    expect(pressed, isTrue);
  });

  testWidgets('GFButtonBadge displays icon when icon property is provided', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: GFButtonBadge(
            onPressed: () {},
            icon: Icon(Icons.add),
          ),
        ),
      ),
    );

    expect(find.byIcon(Icons.add), findsOneWidget);
  });
}
