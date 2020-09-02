

class Register {
  static Set<Register> _registers = Set();

  void Function() initializer;
  Register(this.initializer);

  void call() {
    if (!_registers.contains(this)) {
      _registers.add(this);
      initializer();
    }
  }
}