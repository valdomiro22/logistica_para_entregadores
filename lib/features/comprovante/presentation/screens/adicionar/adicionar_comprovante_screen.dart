import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:logistica_entregador/common/components/custom_buttom_component.dart';
import 'package:logistica_entregador/common/components/mensagem_erro_component.dart';
import 'package:logistica_entregador/features/comprovante/presentation/screens/adicionar/adicionar_comprovante_notifier.dart';
import 'package:logistica_entregador/route/app_routes_names.dart';

class AdicionarComprovanteScreen extends ConsumerStatefulWidget {
  final String entregaId;
  final String clienteId;

  const AdicionarComprovanteScreen({super.key, required this.entregaId, required this.clienteId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AdicionarComprovanteScreenState();
}

class _AdicionarComprovanteScreenState extends ConsumerState<AdicionarComprovanteScreen> {

  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      ref.read(adicionarComprovanteProvider.notifier).onClienteIdChanged(widget.clienteId);
      ref.read(adicionarComprovanteProvider.notifier).onEntregaIdChanged(widget.entregaId);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(adicionarComprovanteProvider);
    final notifier = ref.read(adicionarComprovanteProvider.notifier);

    ref.listen(adicionarComprovanteProvider, (previous, next) {
      if (next.isSuccess) {
        ref.read(adicionarComprovanteProvider.notifier).limpar();

        if (context.canPop()) {
          context.pop();
        }
      }
    });

    return Scaffold(
      appBar: AppBar(title: Text('Adicionar Comprovante')),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            children: [
              const SizedBox(height: 6),
              CustomButtonComponent(
                text: 'Assinatura',
                onClick: () => context.push(AppRoutesNames.adicionarAssinatura),
              ),
              if (state.assinaturaErro != null) MensagemErroComponent(mensagem: state.assinaturaErro),
              const SizedBox(height: 16),

              CustomButtonComponent(
                text: 'Tirar foto',
                onClick: () => context.push(AppRoutesNames.tirarFoto),
              ),
              if (state.fotoErro != null) MensagemErroComponent(mensagem: state.fotoErro),
              const SizedBox(height: 16),

              CustomButtonComponent(text: 'Salvar', onClick: () => notifier.adicionarComprovante()),
            ],
          ),
        ),
      ),
    );
  }
}
