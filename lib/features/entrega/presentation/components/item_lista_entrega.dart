import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:logistica_entregador/core/util/string_helper.dart';
import 'package:logistica_entregador/features/entrega/domain/entities/status_entrega.dart';

class ItemListaEntrega extends StatelessWidget {
  final DateTime dataEntrega;
  final String nomeCliente;
  final StatusEntrega statusEntrega;
  final VoidCallback onEdit;
  final VoidCallback onDelete;
  final VoidCallback onItemClick;

  const ItemListaEntrega({
    super.key,
    required this.dataEntrega,
    required this.onDelete,
    required this.onEdit,
    required this.nomeCliente,
    required this.statusEntrega,
    required this.onItemClick,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    final dia = somenteDia(dataEntrega);

    final mes = DateFormat.MMM('pt_BR').format(dataEntrega).toUpperCase().replaceAll('.', '');

    return Card(
      elevation: 2,
      color: colorScheme.surface,
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      clipBehavior: Clip.antiAlias,
      child: IntrinsicHeight(
        child: InkWell(
          onTap: onItemClick,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Bloco da data
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                color: colorScheme.primaryContainer,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      mes,
                      style: textTheme.labelMedium?.copyWith(
                        color: colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      dia.day.toString().padLeft(2, '0'),
                      style: textTheme.headlineMedium?.copyWith(
                        color: colorScheme.onPrimaryContainer,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),

              // Conteúdo central
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        nomeCliente,
                        style: textTheme.titleMedium?.copyWith(
                          color: colorScheme.onSurface,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 8),

                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'STATUS',
                                style: textTheme.labelSmall?.copyWith(
                                  color: colorScheme.onSurfaceVariant,
                                ),
                              ),
                              Text(
                                statusEntrega.text,
                                style: textTheme.bodyMedium?.copyWith(
                                  color: colorScheme.primary,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(width: 24),

                          statusEntrega == StatusEntrega.pendente
                              ? _entregaPendente(colorScheme, textTheme, dataEntrega)
                              : _entregue(colorScheme, textTheme, dataEntrega),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              // Ações - editar e deletar
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
        )
      ),
    );
  }
}

Widget _entregaPendente(ColorScheme colorScheme, TextTheme textTheme, DateTime data) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('ENTREGAR', style: textTheme.labelSmall?.copyWith(color: colorScheme.onSurfaceVariant)),
      Text(
        DateFormat('HH:mm').format(data),
        style: textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
      ),
    ],
  );
}

Widget _entregue(ColorScheme colorScheme, TextTheme textTheme, DateTime data) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'ENTREGUE EM',
        style: textTheme.labelSmall?.copyWith(color: colorScheme.onSurfaceVariant),
      ),
      Text(
        DateFormat('HH:mm').format(data),
        style: textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
      ),
    ],
  );
}
