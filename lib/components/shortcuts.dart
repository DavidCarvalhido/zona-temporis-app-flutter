import 'package:quick_actions/quick_actions.dart';

class ShortcutItems {
  static final items = <ShortcutItem>[
    actionTimeZone,
    actionCalendar,
  ];

  static final actionTimeZone = const ShortcutItem(
    type: 'action_time_zone',
    localizedTitle: 'Time Zone',
    icon: null, // Alterar o nome do icon
  );

  static final actionCalendar = const ShortcutItem(
    type: 'action_calendar',
    localizedTitle: 'Add New Event',
    icon: null, // Alterar o nome do icon
  );
}
