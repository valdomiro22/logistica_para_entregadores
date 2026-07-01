import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:go_router/go_router.dart';
import 'package:logistica_entregador/core/util/string_helper.dart';
import 'package:logistica_entregador/route/app_routes_names.dart';

class ItemListaComprovante extends StatelessWidget {
  final String clienteNome;
  final DateTime data;
  final String status;
  final VoidCallback onEdit;
  final VoidCallback onDelete;
  final VoidCallback onItemClick;

  const ItemListaComprovante({
    super.key,
    required this.clienteNome,
    required this.data,
    required this.status,
    required this.onEdit,
    required this.onDelete,
    required this.onItemClick,
  });

  String _getPrimeiraLetra(String nome) {
    if (nome.trim().isEmpty) {
      return '?';
    }
    return nome.trim()[0].toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: onItemClick,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10, right: 2),
          child: Row(
            children: [
              // Avatar com a inicial do cliente
              CircleAvatar(
                radius: 26,
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                child: Text(
                  _getPrimeiraLetra(clienteNome),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                ),
              ),
              const SizedBox(width: 16),

              // Informações do Comprovante
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
                    Divider(),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.calendar_today, size: 14, color: Colors.grey),
                                const SizedBox(width: 6),
                                Text(
                                  formatarData(data),
                                  style: const TextStyle(color: Colors.grey, fontSize: 13),
                                ),
                              ],
                            ),
                            const SizedBox(height: 4),

                            Row(
                              children: [
                                const Icon(
                                  Icons.check_circle_outline,
                                  size: 14,
                                  color: Colors.green,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  status,
                                  style: const TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ],
                        ),

                        IconButton(
                          onPressed: () {
                            context.push(AppRoutesNames.visualizarPdf);
                          },
                          tooltip: 'Gerar Comprovante', // Excelente para acessibilidade
                          icon: Icon(
                            Icons.picture_as_pdf,
                            size: 24,
                            color: Theme.of(context).colorScheme.primary, // Usa a cor do seu app em vez de um azul fixo
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
                icon: const Icon(Icons.more_vert, color: Colors.grey),
                itemBuilder: (context) {
                  return [
                    const PopupMenuItem(
                      value: 'editar',
                      child: Row(
                        children: [
                          Icon(Icons.edit, size: 18, color: Colors.black54),
                          SizedBox(width: 8),
                          Text('Editar'),
                        ],
                      ),
                    ),
                    const PopupMenuItem(
                      value: 'excluir',
                      child: Row(
                        children: [
                          Icon(Icons.delete, size: 18, color: Colors.red),
                          SizedBox(width: 8),
                          Text('Excluir', style: TextStyle(color: Colors.red)),
                        ],
                      ),
                    ),
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
      ),
    );
  }
}

@Preview(name: 'item_comprovante_lista', brightness: Brightness.light)
Widget preview1() {
  return Material(
    child: ItemListaComprovante(
      clienteNome: "Valdomiro Silva",
      data: DateTime.now(),
      status: "Entregue",
      onEdit: () {},
      onDelete: () {},
      onItemClick: () {},
    ),
  );
}
