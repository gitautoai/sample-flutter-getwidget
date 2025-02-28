import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:getwidget/components/button/gf_button_bar.dart';

void main() {
  testWidgets('GFButtonBar renders children', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: GFButtonBar(
            children: [
              ElevatedButton(onPressed: () {}, child: Text('Button 1')),
              ElevatedButton(onPressed: () {}, child: Text('Button 2')),
            ],
          ),
        ),
      ),
    );

    expect(find.text('Button 1'), findsOneWidget);
    expect(find.text('Button 2'), findsOneWidget);
  });
}
