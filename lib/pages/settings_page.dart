import 'package:flutter/material.dart';
import '../themes/dark_mode.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _notificationsEnabled = true;
  bool _darkModeEnabled = false;
  String _selectedLanguage = 'English';
  ThemeData _currentTheme = ThemeData.light();

  @override
  void initState() {
    super.initState();
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _notificationsEnabled = prefs.getBool('notifications') ?? true;
      _darkModeEnabled = prefs.getBool('darkMode') ?? false;
      _selectedLanguage = prefs.getString('language') ?? 'English';
      _currentTheme = _darkModeEnabled ? darkMode : ThemeData.light();
    });
  }

  void _toggleDarkMode(bool value) async {
    setState(() {
      _darkModeEnabled = value;
      _currentTheme = _darkModeEnabled ? darkMode : ThemeData.light();
    });
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('darkMode', _darkModeEnabled);
  }

  void _toggleNotifications(bool value) async {
    setState(() {
      _notificationsEnabled = value;
    });
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('notifications', _notificationsEnabled);
  }

  void _changeLanguage(String? value) async {
    if (value != null) {
      setState(() {
        _selectedLanguage = value;
      });
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('language', _selectedLanguage);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: _currentTheme,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'General',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SwitchListTile(
                title: const Text('Notifications'),
                value: _notificationsEnabled,
                onChanged: _toggleNotifications,
              ),
              SwitchListTile(
                title: const Text('Dark Mode'),
                value: _darkModeEnabled,
                onChanged: _toggleDarkMode,
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Language',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              DropdownButtonFormField<String>(
                value: _selectedLanguage,
                items: const [
                  DropdownMenuItem(value: 'English', child: Text('English')),
                  DropdownMenuItem(value: 'Español', child: Text('Español')),
                  DropdownMenuItem(value: '中文', child: Text('中文')),
                ],
                onChanged: _changeLanguage,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

