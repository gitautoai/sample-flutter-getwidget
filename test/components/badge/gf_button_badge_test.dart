import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:getwidget/getwidget.dart';

void main() {
  testWidgets('GFButtonBadge displays text when text is provided', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: GFButtonBadge(
            onPressed: () {},
            text: 'Button Badge',
          ),
        ),
      ),
    );
    expect(find.text('Button Badge'), findsOneWidget);
  });

  testWidgets('GFButtonBadge displays icon when icon is provided', (WidgetTester tester) async {
    const iconKey = Key('icon_key');
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: GFButtonBadge(
            onPressed: () {},
            icon: Icon(Icons.add, key: iconKey),
          ),
        ),
      ),
    );
    expect(find.byKey(iconKey), findsOneWidget);
  });
}
