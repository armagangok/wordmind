import '../../../../../global/export/export.dart';
import '../controller/theme_controller.dart';

class ThemePickerWidget extends StatelessWidget {
  const ThemePickerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = ThemeController.instance;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.min,
      children: [
        FittedBox(
          child: Text(
            "Dark Mode",
            style: context.textTheme.headline1!
                .copyWith(fontSize: 20, fontWeight: FontWeight.normal),
            maxLines: 1,
          ),
        ),
        CupertinoSwitch(
          value: themeController.switchValue,
          onChanged: (value) {
            themeController.change(value);
            // ThemeService.instance.changeTheme();
          },
        ),
      ],
    );
  }
}
