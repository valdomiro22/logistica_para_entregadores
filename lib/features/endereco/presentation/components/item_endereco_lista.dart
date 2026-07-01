import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

class ItemEnderecoLista extends StatelessWidget {
  final String clienteNome;
  final String rua;
  final String numero;
  final String bairro;
  final String cidade;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const ItemEnderecoLista({
    super.key,
    required this.clienteNome,
    required this.rua,
    required this.numero,
    required this.bairro,
    required this.cidade,
    required this.onEdit,
    required this.onDelete,
  });

  String _getPrimeiraLetra(String clienteNome) {
    if (clienteNome.trim().isEmpty) {
      return '?';
    }
    return clienteNome.trim()[0].toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 12, bottom: 12, right: 4),
        child: Row(
          children: [
            // Avatar com a inicial do cliente
            CircleAvatar(
              radius: 30,
              backgroundColor: Theme.of(context).colorScheme.primaryContainer,
              child: Text(_getPrimeiraLetra(clienteNome)),
            ),
            const SizedBox(width: 16),

            // Informações do Endereço
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    clienteNome,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 6),

                  // Linha da Rua e Número (com ícone de localização)
                  Row(
                    children: [
                      const Icon(Icons.location_on, size: 14, color: Colors.grey),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Text(
                          '$rua, nº $numero',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),

                  // Linha do Bairro e Cidade (com ícone de mapa/subdivisão)
                  Row(
                    children: [
                      const Icon(Icons.map, size: 14, color: Colors.grey),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Text(
                          '$bairro - $cidade',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Menu de Opções (Editar / Excluir)
            PopupMenuButton<String>(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              color: Colors.brown.shade200,
              icon: const Icon(Icons.more_vert),
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(value: 'editar', child: Text('Editar')),
                  const PopupMenuItem(value: 'excluir', child: Text('Excluir')),
                ];
              },
              onSelected: (value) {
                if (value == 'editar') onEdit();
                if (value == 'excluir') onDelete();
              },
            ),
          ],
        ),
      ),
    );
  }
}

@Preview(name: 'item_endereco_lista')
Widget preview1() {
  return ItemEnderecoLista(
    clienteNome: "Valdomiro",
    rua: "Rua das neves",
    numero: "92",
    bairro: "Saldade",
    cidade: "Belem",
    onEdit: () {},
    onDelete: () {},
  );
}
