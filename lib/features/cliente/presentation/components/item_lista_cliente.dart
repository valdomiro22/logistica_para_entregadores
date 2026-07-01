import 'package:flutter/material.dart';

class ItemListaCliente extends StatelessWidget {
  final String nome;
  final String telefone;
  final String email;
  final VoidCallback onEdit;
  final VoidCallback onDelete;
  final VoidCallback onCardClick;

  const ItemListaCliente({
    super.key,
    required this.nome,
    required this.telefone,
    required this.email,
    required this.onEdit,
    required this.onDelete,
    required this.onCardClick,
  });

  String _getPrimeiraLetra(String nome) {
    if (nome.trim().isEmpty) return '?';
    return nome.trim()[0].toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: onCardClick,
        child: Padding(
          padding: const EdgeInsets.only(left: 16, top: 12, bottom: 12, right: 4),
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                child: Text(_getPrimeiraLetra(nome)),
              ),
              const SizedBox(width: 16),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      nome,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        const Icon(Icons.phone, size: 14, color: Colors.grey),
                        const SizedBox(width: 6),
                        Text(telefone),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        const Icon(Icons.email, size: 14, color: Colors.grey),
                        const SizedBox(width: 6),
                        Expanded(child: Text(email, maxLines: 1, overflow: TextOverflow.ellipsis)),
                      ],
                    ),
                  ],
                ),
              ),

              PopupMenuButton(
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
      )
    );
  }
}
