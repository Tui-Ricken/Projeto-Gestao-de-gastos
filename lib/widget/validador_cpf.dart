class ValidadorCPF {
  static bool validar(String? cpf) {
    if (cpf == null) return false;
    // Remove todos os caracteres não numéricos
    cpf = cpf.replaceAll(RegExp(r'[^0-9]'), '');
    // Verifica se tem exatamente 11 dígitos numéricos
    if (!RegExp(r'^\d{11} ?$').hasMatch(cpf)) return false;
    if (RegExp(r'^(\d)\1{10}').hasMatch(cpf)) return false;

    // Validação dos dígitos verificadores
    List<int> numbers = cpf.split('').map(int.parse).toList();
    int sum = 0;
    for (int i = 0; i < 9; i++) {
      sum += numbers[i] * (10 - i);
    }
    int firstDigit = (sum * 10) % 11;
    if (firstDigit == 10) firstDigit = 0;
    if (numbers[9] != firstDigit) return false;

    sum = 0;
    for (int i = 0; i < 10; i++) {
      sum += numbers[i] * (11 - i);
    }
    int secondDigit = (sum * 10) % 11;
    if (secondDigit == 10) secondDigit = 0;
    if (numbers[10] != secondDigit) return false;

    return true;
  }
}
