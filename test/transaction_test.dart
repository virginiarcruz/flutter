import 'package:bytebank/models/contact.dart';
import 'package:bytebank/models/transaction.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('should return the value when create a transaction', () {
    final transaction = Transaction(
      '223',
      200,
      Contact(12, 'name', 1234),
    );

    expect(transaction.value, 200);
  });

  test('should display error when transaction value was less than zero', () {
    expect(() => Transaction('223', 0, Contact(12, 'name', 1234)),
        throwsAssertionError);
  });
}
