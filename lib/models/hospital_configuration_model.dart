class AvailableSwitchModel {
  final String Provider;
  final String InvoicePublicKey;
  final String DepositPublicKey;
  AvailableSwitchModel(
      {required this.Provider,
      required this.DepositPublicKey,
      required this.InvoicePublicKey});
}

class HospitalConfigurationModel {
  final String HospitalId;
  final String Name;
  final List<AvailableSwitchModel> AvailableSwitches;
  HospitalConfigurationModel(
      {required this.HospitalId,
      required this.Name,
      required this.AvailableSwitches});
}
