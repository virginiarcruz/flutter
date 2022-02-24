import 'package:bytebank/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Should display the main image on Dashboard',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: Dashboard()));
    final mainImage = find.byType(Image);

    expect(mainImage, findsOneWidget);
  });

  testWidgets('Should display the transfer feature when Dashboard is opened',
      (tester) async {
    await tester.pumpWidget(MaterialApp(home: Dashboard()));
    final transferFeatureItem = find.byWidgetPredicate((widget) {
      return _featureItemMatcher(widget, 'Transfer', Icons.monetization_on);
    });
    expect(transferFeatureItem, findsOneWidget);
  });

  testWidgets(
      'Should display the transaction feed feature when Dashboard is opened',
      (tester) async {
    await tester.pumpWidget(MaterialApp(home: Dashboard()));
    final transactionFeedFeatureIcon =
        find.byWidgetPredicate((widget) => _featureItemMatcher(
              widget,
              'Transaction Feed',
              Icons.description,
            ));
    expect(transactionFeedFeatureIcon, findsOneWidget);
  });
}

bool _featureItemMatcher(Widget widget, String name, IconData icon) {
  if (widget is FeatureItem) {
    return widget.name == name && widget.icon == icon;
  }
  return false;
}
