import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:healthboxopd_provider/utils/formatters.dart';
import 'package:healthboxopd_provider/widgets/status_badge.dart';

void main() {
  test('formatINR formats Indian rupees without decimals', () {
    expect(formatINR(1299), '₹1,299');
    expect(formatINR(0), '₹0');
    expect(formatINR(null), '₹0');
  });

  test('formatUniqueId formats role-prefixed IDs', () {
    expect(formatUniqueId('DR1234567890'), 'DR 12345 67890');
    expect(formatUniqueId('PT9876543210'), 'PT 98765 43210');
    expect(formatUniqueId(''), '—');
  });

  test('normalizeMobile accepts valid 10-digit mobile', () {
    expect(normalizeMobile('9876543210'), '9876543210');
    expect(normalizeMobile('+91 98765 43210'), '9876543210');
    expect(normalizeMobile('12345'), '');
  });

  test('identifierToEmail maps mobile to synthetic mailbox', () {
    expect(identifierToEmail('9876543210'), '919876543210@mobile.healthboxopd.in');
    expect(identifierToEmail('user@example.com'), 'user@example.com');
  });

  testWidgets('StatusBadge renders label', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: StatusBadge(status: 'paid'))),
    );
    expect(find.text('Paid'), findsOneWidget);
  });
}
