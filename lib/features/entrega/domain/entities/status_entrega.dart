enum StatusEntrega {
  pendente(id: 1, text: 'PENDENTE'),
  entregue(id: 2, text: 'ENTREGUE'),
  problema(id: 3, text: 'PROBLEMA');

  const StatusEntrega({required this.id, required this.text});

  final int id;
  final String text;

  /// Recupera o Enum com base no ID
  static StatusEntrega fronId(int id) {
    return StatusEntrega.values.firstWhere(
      (value) => value.id == id,
      orElse: () => throw Exception('Id de status de entrega inválido: $id'),
    );
  }

  /// Recupera o Enum com base no TEXT
  static StatusEntrega fromText(String text) {
    return StatusEntrega.values.firstWhere(
      (value) => value.text == text,
      orElse: () => throw Exception('Texto de status de entrega inválido: $text'),
    );
  }
}
