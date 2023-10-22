import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BrasilFieldsPage extends StatefulWidget {
  const BrasilFieldsPage({super.key});

  @override
  State<BrasilFieldsPage> createState() => _BrasilFieldsPageState();
}

class _BrasilFieldsPageState extends State<BrasilFieldsPage> {
  var controllerCEP = TextEditingController();
  var controllerCPF = TextEditingController();
  var controllerCentavos = TextEditingController();
  var controllerTelefone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("CEP"),
            TextFormField(
              controller: controllerCEP,
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                CepInputFormatter(),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("CPF"),
            TextFormField(
              controller: controllerCPF,
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                CpfInputFormatter()
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("Centavos"),
            TextFormField(
              controller: controllerCentavos,
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                CentavosInputFormatter(moeda: true),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text("Telefone"),
            TextFormField(
              controller: controllerTelefone,
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                TelefoneInputFormatter(),
              ],
            ),
            Center(
                child: TextButton(
                    onPressed: () {
                      debugPrint(
                          CPFValidator.isValid(controllerCPF.text).toString());
                      debugPrint(CPFValidator.isValid(CPFValidator.generate())
                          .toString());
                      Navigator.pop(context);
                    },
                    child: const Text("Continuar")))
          ],
        ),
      ),
    );
  }
}
