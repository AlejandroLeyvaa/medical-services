import 'package:flutter/material.dart';
import 'package:medical_services/widgets/custom_card.dart';
import 'package:medical_services/widgets/widgets.dart';

class PhysiotherapyServicesScreen extends StatelessWidget {
  const PhysiotherapyServicesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Physiotherapy Services'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCard(
                icon: Icons.medical_services,
                listTitleTile: 'Servicios Fisioterapeuticos',
                listSubTitleTile: 'Servicios Fisioterapeuticos',
                leftTextButton: 'Cancelar',
                rightTextButton: 'Agendar'),
          ],
        ));
  }
}
