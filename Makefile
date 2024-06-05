clean:
	@echo "╠ Cleaning project..."
	flutter clean
	@echo "╠ Get dependencies..."
	flutter pub get

gen:
	@echo "╠ Running generator..."
	dart run build_runner build --delete-conflicting-outputs

gen_l10n:
	@echo "╠ Generating translations..."
	dart run intl_utils:generate

fix:
	@echo "╠ Applying fix..."
	dart fix

fix_gen:
	@echo "╠ Fixing gen..."
	mkdir ./.dart_tool/flutter_gen
	echo "version: 1.0.0" > ./.dart_tool/flutter_gen/pubspec.yaml

gen_test:
	@echo "╠ Running tests..."
	flutter test test/app_test.dart