import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:logistica_entregador/common/components/custom_buttom_component.dart';
import 'package:logistica_entregador/route/app_routes_names.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            CustomButtonComponent(
              text: 'Lista de Clientes',
              onClick: () => context.push(AppRoutesNames.listaClientes),
            ),
            SizedBox(height: 16),

            CustomButtonComponent(
              text: 'Lista por status',
              onClick: () => context.push(AppRoutesNames.listaEntregasPorStatus),
            ),
            SizedBox(height: 16),

            CustomButtonComponent(
              text: 'Tela de Assinatura',
              onClick: () => context.push(AppRoutesNames.adicionarAssinatura),
            ),
            SizedBox(height: 16),

            CustomButtonComponent(
              text: 'Tirar foto',
              onClick: () => context.push(AppRoutesNames.tirarFoto),
            ),
            SizedBox(height: 16),

            CustomButtonComponent(
              text: 'Visualizar PDF',
              onClick: () => context.push(AppRoutesNames.visualizarPdf),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
