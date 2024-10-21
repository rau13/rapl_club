import 'dart:io';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

@RoutePage()
class ApplicationForMembershipScreen extends StatefulWidget {
  const ApplicationForMembershipScreen({super.key});

  @override
  State<ApplicationForMembershipScreen> createState() => _ApplicationForMembershipScreenState();
}

class _ApplicationForMembershipScreenState extends State<ApplicationForMembershipScreen> {
  String _gender = 'Male';
  DateTime? _birthDate; // Для хранения выбранной даты рождения
  TextEditingController _dateController = TextEditingController(); // Контроллер для поля ввода даты
  File? _image;

  Future getImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }
  @override
  void dispose() {
    _dateController.dispose(); // Очистка контроллера при уничтожении виджета
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Заявка на вступление'),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text('Личная информация', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0)),
            const Text('Для рассмотрения вашей заявки, заполните \nличную информацию о себе', style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 14.0
            )),
            const SizedBox(height: 10),
            buildTextField('Фамилия', 'Укажите фамилию'),
            buildTextField('Имя', 'Укажите имя'),
            buildTextField('Отчество', 'Укажите отчество'),
            const SizedBox(height: 10),
            const Text('Ваш пол'),
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    title: const Text('Мужской'),
                    leading: Radio<String>(
                      value: 'Male',
                      groupValue: _gender,
                      onChanged: (value) {
                        setState(() {
                          _gender = value!;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: const Text('Женский'),
                    leading: Radio<String>(
                      value: 'Female',
                      groupValue: _gender,
                      onChanged: (value) {
                        setState(() {
                          _gender = value!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            buildTextField('Дата рождения', 'Укажите дату', icon: Icons.calendar_today, controller: _dateController, isDateField: true),
            buildTextField('Город', 'Выберите город'),
            buildTextField('Электронная почта', 'Укажите почту'),
            buildTextField('Номер телефона', '+7 ___ ___ __ __'),
            InkWell(
              onTap: getImage,
              child: Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey, style: BorderStyle.solid),
                ),
                child: _image == null
                    ? const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add_a_photo, color: Colors.grey),
                    Text("Загрузить")
                  ],
                )
                    : ClipOval(
                  child: Image.file(_image!, fit: BoxFit.cover),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
              ),
              child: const Text('Далее'),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String label, String hint, {IconData? icon, TextEditingController? controller, bool isDateField = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          suffixIcon: icon != null ? Icon(icon) : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          filled: true,
          fillColor: Colors.white,
        ),
        readOnly: true,
        onTap: isDateField ? () => _selectDate(context) : null,
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _birthDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: const ColorScheme.light(
              primary: Colors.deepPurple, // цвет в заголовке
              onPrimary: Colors.white, // цвет текста в заголовке
              surface: Colors.white, // фоновый цвет компонентов
              onSurface: Colors.black, // цвет текста и других элементов на поверхности
            ),
            dialogBackgroundColor: Colors.white, // фоновый цвет самого диалога
          ),
          child: child!,
        );
      },
    );
    if (picked != null && picked != _birthDate) {
      setState(() {
        _birthDate = picked;
        _dateController.text = "${picked.day}.${picked.month}.${picked.year}"; // Обновляем текст в поле ввода
      });
    }
  }
}
