import 'package:flutter_test/flutter_test.dart';

import 'package:menu_app/main.dart';

void main() {
  testWidgets('Menu app shows the title and menu items', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MenuApp());

    expect(find.text('Coffee Menu'), findsOneWidget);
    expect(find.text('Cappuccino'), findsOneWidget);
  });
}
