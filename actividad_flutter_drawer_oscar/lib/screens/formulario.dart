import 'package:actividad_flutter_oscarluque/screens/drawer.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class FormularioPersonalizado extends StatefulWidget {
  const FormularioPersonalizado({super.key});

  @override
  State<FormularioPersonalizado> createState() =>
      _FormularioPersonalizadoState();
}

class _FormularioPersonalizadoState extends State<FormularioPersonalizado> {
  final _claveFormulario = GlobalKey<FormState>();
  final TextEditingController _controladorFecha = TextEditingController();
  final TextEditingController _controladorNumero = TextEditingController();
  String? _generoSeleccionado;

  final int _numeroObjetivo = Random().nextInt(100) + 1;
  String _mensaje = 'Introduce un número entre 1 y 100';

  void _validarNumero() {
    if (_claveFormulario.currentState!.validate()) {
      int numeroIntroducido = int.parse(_controladorNumero.text);
      setState(() {
        if (numeroIntroducido < _numeroObjetivo) {
          _mensaje = 'El número es mayor';
        } else if (numeroIntroducido > _numeroObjetivo) {
          _mensaje = 'El número es menor';
        } else {
          _mensaje = '¡Felicidades! Adivinaste el número';
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Formulario"),
      ),
      drawer: const MenuLateral(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _claveFormulario,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Campo de texto
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Nombre',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    prefixIcon: const Icon(Icons.person),
                  ),
                  validator: (valor) {
                    if (valor == null || valor.isEmpty) {
                      return 'El nombre no puede estar vacío';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // Campo de email
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Correo electrónico',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    prefixIcon: const Icon(Icons.email),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (valor) {
                    if (valor == null || valor.isEmpty) {
                      return 'El correo no puede estar vacío';
                    } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(valor)) {
                      return 'Introduce un correo válido';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // Campo de contraseña
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Contraseña',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    prefixIcon: const Icon(Icons.lock),
                  ),
                  validator: (valor) {
                    if (valor == null || valor.length < 6) {
                      return 'La contraseña debe tener al menos 6 caracteres';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // Campo de género
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: 'Género',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  value: _generoSeleccionado,
                  items: const [
                    DropdownMenuItem(
                      value: 'Masculino',
                      child: Text('Masculino'),
                    ),
                    DropdownMenuItem(
                      value: 'Femenino',
                      child: Text('Femenino'),
                    ),
                    DropdownMenuItem(
                      value: 'Otro',
                      child: Text('Otro'),
                    ),
                  ],
                  onChanged: (valor) {
                    setState(() {
                      _generoSeleccionado = valor;
                    });
                  },
                  validator: (valor) {
                    if (valor == null) {
                      return 'Por favor selecciona un género';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // Campo de fecha
                TextFormField(
                  controller: _controladorFecha,
                  decoration: InputDecoration(
                    labelText: 'Fecha de nacimiento',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    prefixIcon: const Icon(Icons.calendar_today),
                  ),
                  readOnly: true,
                  onTap: () async {
                    DateTime? fechaSeleccionada = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime.now(),
                    );
                    if (fechaSeleccionada != null) {
                      String fechaFormateada =
                          '${fechaSeleccionada.day}/${fechaSeleccionada.month}/${fechaSeleccionada.year}';
                      _controladorFecha.text = fechaFormateada;
                    }
                  },
                  validator: (valor) {
                    if (valor == null || valor.isEmpty) {
                      return 'Por favor selecciona una fecha';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 32),

                // Sección del juego "Adivina el Número"
                Text(
                  _mensaje,
                  style: const TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _controladorNumero,
                  decoration: const InputDecoration(
                    labelText: 'Tu número',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  validator: (valor) {
                    if (valor == null || valor.isEmpty) {
                      return 'Por favor introduce un número';
                    }
                    int? numero = int.tryParse(valor);
                    if (numero == null || numero < 1 || numero > 100) {
                      return 'Introduce un número válido entre 1 y 100';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _validarNumero,
                  child: const Text('Comprobar'),
                ),
                const SizedBox(height: 32),

                // Botón para enviar el formulario completo
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (_claveFormulario.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Formulario válido')),
                        );
                      }
                    },
                    child: const Text('Enviar'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
