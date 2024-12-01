import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/main.dart'; // Adjust the import based on your actual file path.

void main() {
  testWidgets('Portfolio app test', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify if the AppBar title is 'Portfolio'.
    expect(find.text('Portfolio'), findsOneWidget);

    // Verify if the Drawer contains the correct text (e.g., "Home").
    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Profile'), findsOneWidget);
    expect(find.text('Settings'), findsOneWidget);
    expect(find.text('Contact Us'), findsOneWidget);

    // Tap the bottom navigation bar item and verify the changes.
    await tester.tap(find.byIcon(Icons.home));
    await tester.pumpAndSettle();
    expect(find.text('Portfolio'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.contact_mail));
    await tester.pumpAndSettle();
    expect(find.text('Contact Us Section'), findsOneWidget);
  });
}
