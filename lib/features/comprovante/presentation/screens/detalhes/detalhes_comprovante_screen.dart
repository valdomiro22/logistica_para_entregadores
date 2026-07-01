import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logistica_entregador/features/cliente/presentation/screens/providers/get_one_cliente_por_id.dart';
import 'package:logistica_entregador/features/comprovante/presentation/screens/detalhes/detalhes_comprovante_notifier.dart';

class DetalhesComprovanteScreen extends ConsumerWidget {
  final String comprovanteId;

  const DetalhesComprovanteScreen({super.key, required this.comprovanteId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final state = ref.watch(detalhesComprovanteProvider(comprovanteId));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes do Comprovante'),
        centerTitle: true,
      ),
      body: state.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              error.toString().replaceFirst('Exception: ', ''),
              style: const TextStyle(color: Colors.red, fontSize: 16),
              textAlign: double.infinity == 0 ? TextAlign.start : TextAlign.center,
            ),
          ),
        ),
        data: (comprovante) {
          final clienteState = ref.watch(getOneClientePorIdProvider(comprovante.clienteId));

          final nomeCliente = clienteState.when(
            loading: () => 'Carregando cliente...',
            error: (error, stackTrace) => 'Erro ao buscar cliente',
            data: (cliente) => cliente.nome,
          );

          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Card de Informações Gerais
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          nomeCliente,
                          style: theme.textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: theme.primaryColor,
                          ),
                        ),
                        const Divider(height: 24),
                        Row(
                          children: [
                            const Icon(Icons.calendar_today, size: 18, color: Colors.grey),
                            const SizedBox(width: 8),
                            Text(
                              'Data de entrega: 12/12/2026', // Idealmente viria do seu model 'comprovante'
                              style: theme.textTheme.bodyMedium?.copyWith(color: Colors.grey[700]),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(Icons.comment, size: 18, color: Colors.grey),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                'Observação: Entrega realizada sem problemas.', // Mude para comprovante.observacao se houver
                                style: theme.textTheme.bodyMedium?.copyWith(color: Colors.grey[700]),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Seção da Foto da Entrega
                _buildImageSection(
                  context,
                  title: 'Foto do Local / Pacote',
                  filePath: comprovante.foto,
                ),
                const SizedBox(height: 16),

                // Seção da Assinatura
                _buildImageSection(
                  context,
                  title: 'Assinatura do Recebedor',
                  filePath: comprovante.assinatura,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildImageSection(BuildContext context, {required String title, required String filePath}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4, bottom: 8),
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Card(
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          clipBehavior: Clip.antiAlias,
          child: Image.file(
            File(filePath),
            height: 220,
            width: double.infinity,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                height: 220,
                color: Colors.grey[200],
                child: const Center(
                  child: Icon(Icons.broken_image, size: 48, color: Colors.grey),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

}