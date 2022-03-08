import 'package:bytebank/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../matchers/matchers.dart';
import '../mocks/mocks.dart';

void main() {
  testWidgets('Should display the main image on Dashboard',
      (WidgetTester tester) async {
    final mockContactDao = MockContactDao();
    await tester
        .pumpWidget(MaterialApp(home: Dashboard(contactDao: mockContactDao)));
    final mainImage = find.byType(Image);

    expect(mainImage, findsOneWidget);
  });

  testWidgets('Should display the transfer feature when Dashboard is opened',
      (tester) async {
    final mockContactDao = MockContactDao();
    await tester
        .pumpWidget(MaterialApp(home: Dashboard(contactDao: mockContactDao)));
    final transferFeatureItem = find.byWidgetPredicate((widget) {
      return featureItemMatcher(widget, 'Transfer', Icons.monetization_on);
    });
    expect(transferFeatureItem, findsOneWidget);
  });

  testWidgets(
      'Should display the transaction feed feature when Dashboard is opened',
      (tester) async {
    final mockContactDao = MockContactDao();
    await tester
        .pumpWidget(MaterialApp(home: Dashboard(contactDao: mockContactDao)));
    final transactionFeedFeatureIcon =
        find.byWidgetPredicate((widget) => featureItemMatcher(
              widget,
              'Transaction Feed',
              Icons.description,
            ));
    expect(transactionFeedFeatureIcon, findsOneWidget);
  });
}
