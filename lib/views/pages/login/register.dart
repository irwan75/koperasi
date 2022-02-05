import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koperasi/views/pages/login/notif_register.dart';
import 'package:koperasi/views/widgets/form_input.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        centerTitle: true,
        backgroundColor: Colors.green[700],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          width: Get.width,
          child: Column(
            children: [
              formText("Nama Lengkap", "Nama Lengkap (Sesuai di KTP)", 1),
              formText("No Identitas (KTP)", "No Identitas (KTP)", 1),
              formText("Tempat Lahir", "Tempat Lahir", 1),
              DropdownButton(
                isExpanded: true,
                isDense: true,
                underline: Container(),
                value: "Laki-laki",
                items: ["Laki-laki", "Perempuan"].map((e) {
                  return DropdownMenuItem(
                    child: Text(e),
                    value: e,
                  );
                }).toList(),
                onChanged: (value) {},
              ),
              SizedBox(height: 10),
              formText("Alamat", "Alamat", 2),
              formText("Nomor Telepon", "Nomor Telepon", 1),
              formText("Email", "Email", 1),
              formText("Agama", "Agama", 1),
              formText("Pekerjaan", "Pekerjaan", 1),
              formText("Nama Perusahaan", "Nama Perusahaan", 1),
              formText("Alamat", "Alamat", 1),
              formText("Telpon Kantor", "Telpon Kantor", 1),
              formText("Masa Kerja", "Masa Kerja", 1),
              formText("Pendidikan Satpam", "Pendidikan Satpam", 1),
              formText("Pendidikan Formal Terakhir",
                  "Pendidikan Formal Terakhir", 1),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: DropdownButton(
                      isExpanded: true,
                      underline: Container(),
                      value: "Bujangan",
                      items: ["Bujangan", "Berkeluarga"].map((e) {
                        return DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        );
                      }).toList(),
                      onChanged: (value) {},
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: formText("Jumlah Anak", "Jumlah Anak", 1),
                  ),
                ],
              ),
              formText("Nama Istri/Suami", "Nama Istri/Suami", 1),
              formText("Pekerjaan Istri/Suami", "Pekerjaan Istri/Suami", 1),
              formText("Nama Teman Dekat atau Keluarga",
                  "Nama Teman Dekat atau Keluarga", 1),
              Text("Bila ada yang sudah menjadi anggota koperasi ini"),
              Container(
                width: Get.width,
                child: Material(
                  color: Colors.green[700],
                  child: InkWell(
                    splashColor: Colors.grey,
                    onTap: () {
                      Get.off(NotifRegister());
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                          child: Text(
                        "Selesai Registrasi",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
