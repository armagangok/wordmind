



import '../../../feature/export/export.dart';


class ThemePickerWidget extends StatelessWidget {
  const ThemePickerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.put(ThemeController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text("Dark Mode"),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Obx(
            () {
              return CupertinoSwitch(
                value: themeController.switchValue.value,
                onChanged: (value) {
                  themeController.change(value);
                  ThemeService().changeTheme();
                },
              );
            },
          ),
        ),
      ],
    );
  }
}