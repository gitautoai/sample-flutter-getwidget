import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:getwidget/getwidget.dart';

void main() {
  testWidgets('GFIconBadge widget test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: GFIconBadge(
          child: Icon(Icons.star),
          counterChild: Text('3', style: TextStyle(color: Colors.white, fontSize: 12)),
          position: GFBadgePosition.topRight,
          badgeColor: Colors.red,
        ),
      ),
    ));

    expect(find.byType(GFIconBadge), findsOneWidget);
    expect(find.byIcon(Icons.star), findsOneWidget);
    expect(find.text('3'), findsOneWidget);
  });
}
