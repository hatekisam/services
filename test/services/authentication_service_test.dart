import 'package:flutter_test/flutter_test.dart';
import 'package:socialservices/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('AuthenticationServiceTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}