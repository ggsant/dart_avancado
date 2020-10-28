class AnimalFactory {
  static final AnimalFactory intancia = AnimalFactory._contructNamed('vazio');
  String name;
  factory AnimalFactory() => intancia;
  AnimalFactory._contructNamed(this.name) {
    //* configurações iniciais ou atributos
  }
}
