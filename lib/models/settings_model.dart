class SettingsModel {
  final String pause;
  final String resume;
  final String timer;
  final String lockScreen;
  final String exit;

  SettingsModel(
      {this.exit, this.lockScreen, this.pause, this.resume, this.timer});
}

List<SettingsModel> dummyData = [
  new SettingsModel(
    exit: 'Exit',
    lockScreen: 'Lock Screen',
    pause: 'Pause on headset',
    resume: 'Resume on headset',
    timer: 'Timer',
  ),
];
