import 'dart:io';

class Launch {
  final String payday =
      // 'R:\\MS Games\\Forza Motorsport\\Content\\forza_gaming.desktop.x64_release_final\\forza_gaming.desktop.x64_release_final.exe';
      'L:\\GamesMS\\Payday 3\\Content\\PAYDAY3\\Binaries\\WinGDK\\PAYDAY3Client-WinGDK-Shipping.exe';

  void launchGame() {
    try {
      Process.start(payday, []);
    } catch (e) {
      print('Erro ao abrir o jogo: $e');
    }
  }

  void closeExplorer() {
    try {
      Process.run('taskkill', ['/f', '/im', 'explorer.exe']);
    } catch (e) {
      print('Erro ao fechar o Explorer.exe: $e');
    }
  }

  void restartExplorer() {
    try {
      Process.start('explorer.exe', []);
    } catch (e) {
      print('Erro ao reiniciar o Explorer.exe: $e');
    }
  }
}
