class CustomVadicator {
  const CustomVadicator();

  String? passwordVadicator(String? value) {
    if (value!.isEmpty) {
      return 'Mật khẩu không được để trống';
    }
    if (!RegExp('.{6,}').hasMatch(value)) {
      return 'Mật khẩu phải tối thiểu 6 kí tự';
    }
    if (!RegExp('(?=.*?[!@#\$&*~])').hasMatch(value)) {
      return 'Cần ít nhất một kí tự đặc biệt';
    }
    if (!RegExp('(?=.*?[0-9])').hasMatch(value)) {
      return 'Cần ít nhất một số';
    }
    if (!RegExp('(?=.*[a-z])').hasMatch(value)) {
      return 'Cần ít nhất một chữ cái thường';
    }
    if (!RegExp('(?=.*[A-Z])').hasMatch(value)) {
      return 'Cần ít nhất một chữ cái viết hoa';
    }
    return null;
  }

  String? emailValicator(String? value) {
    if (value!.isEmpty) {
      return 'Email không được để trống';
    }
    if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]+.[.]com")
        .hasMatch(value)) {
      return 'Kiểm tra định dạng email';
    }
    return null;
  }
}
