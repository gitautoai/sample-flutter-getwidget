import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:getwidget/getwidget.dart';

void main() {
  testWidgets('GFButton renders correctly', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: GFButton(
            onPressed: () {},
            text: 'Test Button',
          ),
        ),
      ),
    );
    expect(find.text('Test Button'), findsOneWidget);
    expect(find.byType(GFButton), findsOneWidget);
  });
}
