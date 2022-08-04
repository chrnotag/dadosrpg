class Dates {
  String _Dados;
  String _ValorTotal;

  String get daDos => _Dados;

  set Dados(String dados) {
    _Dados = dados;
  }

  String get valorTotal => _ValorTotal;

  set valorTotal(String Valortotal) {
    _ValorTotal = Valortotal;
  }

  Dates(this._Dados, this._ValorTotal);
}
