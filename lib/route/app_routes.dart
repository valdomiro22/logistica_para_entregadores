import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:logistica_entregador/features/assinatura/tela_assinatura_screen.dart';
import 'package:logistica_entregador/features/cliente/presentation/screens/adicionar/adicionar_cliente_screen.dart';
import 'package:logistica_entregador/features/cliente/presentation/screens/editar/editar_cliente_screen.dart';
import 'package:logistica_entregador/features/cliente/presentation/screens/listar/lista_clientes_screen.dart';
import 'package:logistica_entregador/features/comprovante/presentation/screens/adicionar/adicionar_comprovante_screen.dart';
import 'package:logistica_entregador/features/comprovante/presentation/screens/detalhes/detalhes_comprovante_screen.dart';
import 'package:logistica_entregador/features/comprovante/presentation/screens/editar/editar_comprovante_screen.dart';
import 'package:logistica_entregador/features/comprovante/presentation/screens/listar/lista_comprovantes_screen.dart';
import 'package:logistica_entregador/features/endereco/presentation/screens/adicionar/adicionar_endereco_screen.dart';
import 'package:logistica_entregador/features/endereco/presentation/screens/editar/editar_endereco_screen.dart';
import 'package:logistica_entregador/features/endereco/presentation/screens/listar/lista_enderecos_screen.dart';
import 'package:logistica_entregador/features/entrega/presentation/screens/adicionar/adicionar_entrega_screen.dart';
import 'package:logistica_entregador/features/entrega/presentation/screens/editar/editar_entrega_screen.dart';
import 'package:logistica_entregador/features/gerarpdf/visualizar_pdf_screen.dart';
import 'package:logistica_entregador/features/home/home_screen.dart';
import 'package:logistica_entregador/features/foto/tirar_foto_screen.dart';

import '../features/entrega/presentation/screens/listaentregasporstatus/lista_entregas_concluidas_screen.dart';
import '../features/entrega/presentation/screens/listarentregasporcliente/lista_entregas_por_cliente_screen.dart';
import 'app_routes_names.dart';

class AppRoutes {
  static final List<RouteBase> routes = [
    GoRoute(path: AppRoutesNames.home, builder: (context, state) => HomeScreen()),

    // Cliente -------------------------------------------------------------------------------------
    GoRoute(path: AppRoutesNames.listaClientes, builder: (context, state) => ListaClientesScreen()),

    GoRoute(
      path: AppRoutesNames.adicionarCliente,
      builder: (context, state) => AdicionarClienteScreen(),
    ),

    GoRoute(
      path: '${AppRoutesNames.editarCliente}/:clienteId',
      builder: (context, state) {
        final clienteId = state.pathParameters['clienteId']!;
        return EditarClienteScreen(clienteId: clienteId);
      },
    ),

    // Endereco ------------------------------------------------------------------------------------
    GoRoute(
      path: '${AppRoutesNames.listaEnderecos}/:clienteId',
      builder: (context, state) {
        final clienteId = state.pathParameters['clienteId']!;
        return ListaEnderecosScreen(clienteId: clienteId);
      },
    ),

    GoRoute(
      path: '${AppRoutesNames.adicionarEndereco}/:clienteId',
      builder: (context, state) {
        final clienteId = state.pathParameters['clienteId']!;
        return AdicionarEnderecoScreen(clienteId: clienteId);
      },
    ),

    GoRoute(
      path: '${AppRoutesNames.editarEndereco}/:enderecoId/:clienteId',
      builder: (context, state) {
        final enderecoId = state.pathParameters['enderecoId']!;
        final clienteId = state.pathParameters['clienteId']!;

        return EditarEnderecoScreen(enderecoId: enderecoId, clienteId: clienteId);
      },
    ),

    // Entrega -------------------------------------------------------------------------------------
    GoRoute(
      path: '${AppRoutesNames.listaEntregasPorCliente}/:clienteId',
      builder: (context, state) {
        final clienteId = state.pathParameters['clienteId']!;
        return ListaEntregasPorClienteScreen(clienteId: clienteId);
      },
    ),

    GoRoute(
      path: '${AppRoutesNames.adicionarEntrega}/:clienteId',
      builder: (context, state) {
        final clienteId = state.pathParameters['clienteId']!;
        return AdicionarEntregaScreen(clienteId: clienteId);
      },
    ),

    GoRoute(
      path: '${AppRoutesNames.editarEntrega}/:entregaId',
      builder: (context, state) {
        final entregaId = state.pathParameters['entregaId']!;

        return EditarEntregaScreen(entregaId: entregaId);
      },
    ),

    GoRoute(
      path: AppRoutesNames.listaEntregasPorStatus,
      builder: (context, state) => ListaEntregasConcluidasScreen(),
    ),

    // Entrega -------------------------------------------------------------------------------------
    GoRoute(
      path: '${AppRoutesNames.adicionarComprovante}/:entregaId/:clienteId',
      builder: (context, state) {
        final entregaId = state.pathParameters['entregaId']!;
        final clienteId = state.pathParameters['clienteId']!;
        return AdicionarComprovanteScreen(entregaId: entregaId, clienteId: clienteId,);
      },
    ),

    GoRoute(
      path: '${AppRoutesNames.listaComprovantes}/:entregaId/clienteId',
      builder: (context, state) {
        final entregaId = state.pathParameters['entregaId']!;
        final clienteId = state.pathParameters['clienteId']!;
        return ListaComprovantesScreen(entregaId: entregaId, clienteId: clienteId,);
      },
    ),

    GoRoute(
      path: '${AppRoutesNames.editarComprovante}/:comprovanteId',
      builder: (context, state) {
        final comprovanteId = state.pathParameters['comprovanteId']!;
        return EditarComprovanteScreen(comprovanteId: comprovanteId);
      },
    ),

    GoRoute(
      path: AppRoutesNames.adicionarAssinatura,
      builder: (context, state) => TelaAssinaturaScreen(),
    ),

    GoRoute(
      path: AppRoutesNames.tirarFoto,
      builder: (context, state) => TirarFotoScreen(),
    ),

    GoRoute(
      path: '${AppRoutesNames.detalhesComprovante}/:comprovanteId',
      builder: (context, state) {
        final comprovanteId = state.pathParameters['comprovanteId']!;
        return DetalhesComprovanteScreen(comprovanteId: comprovanteId);
      },
    ),

    GoRoute(
      path: AppRoutesNames.visualizarPdf,
      builder: (context, state) => VisualizarPdfScreen(),
    ),
    // GoRoute(
    //   path: AppRoutesNames.adicionarProduto,
    //   builder: (context, state) => AdicionarProdutoScreen(),
    // ),

    // GoRoute(
    //   path: '${AppRoutesNames.detalhesProduto}/:clienteId',
    //   builder: (context, state) {
    //     final clienteId = state.pathParameters['clienteId']!;
    //     return DetalhesProdutoScreen(clienteId: clienteId);
    //   },
    // ),

    // // Movimentações--------------------------------------------------------------------------------
    // GoRoute(
    //   path: '${AppRoutesNames.listaMovimentacoesProduto}/:clienteId',
    //   builder: (context, state) {
    //     final clienteId = state.pathParameters['clienteId']!;
    //     return ListaMovimentacoesProdutoScreen(clienteId: clienteId);
    //   },
    // ),

    // // Categoria------------------------------------------------------------------------------------
    // GoRoute(
    //   path: AppRoutesNames.listaCategorias,
    //   builder: (context, state) => ListaCategoriasScreen(),
    // ),

    // GoRoute(
    //   path: AppRoutesNames.adicionarCategoria,
    //   builder: (context, state) => AdicionarCategoriaScreen(),
    // ),

    // GoRoute(
    //   path: '${AppRoutesNames.editarCategoria}/:categoriaId',
    //   builder: (context, state) {
    //     final categoriaId = state.pathParameters['categoriaId']!;
    //     return EditarCategoriaScreen(categoriaId: categoriaId);
    //   },
    // ),

    // GoRoute(
    //   path: '${AppRoutesNames.configuracoes}/:contadorId',
    //   builder: (context, state) {
    //     final contadorId = state.pathParameters['contadorId']!;

    //     return ConfiguracoesScreen(contadorId: contadorId);
    //   },
    // ),

    // GoRoute(
    //   path: AppRoutesNames.criarContador,
    //   builder: (context, state) => AdicionarContadorScreen(),
    // ),

    // GoRoute(
    //   path: '${AppRoutesNames.home}/:contadorId',
    //   builder: (context, state) {
    //     final contadorId = state.pathParameters['contadorId']!;

    //     return HomeContadorScreen(contadorId: contadorId);
    //   },
    // ),

    // GoRoute(
    //   path: '${AppRoutesNames.listaQuantidades}/:contadorId',
    //   builder: (context, state) {
    //     final contadorId = state.pathParameters['contadorId']!;

    //     return ListaQuantidadesScreen(contadorId: contadorId);
    //   },
    // ),

    // GoRoute(
    //   path: '${AppRoutesNames.detalhesContador}/:contadorId',
    //   builder: (context, state) {
    //     final contadorId = state.pathParameters['contadorId']!;

    //     return DetalhesContadorScreen(contadorId: contadorId);
    //   },
    // ),
  ];
}

// Provider
final appRoutesProvider = Provider<GoRouter>((ref) {
  return GoRouter(initialLocation: AppRoutesNames.home, routes: AppRoutes.routes);
});
