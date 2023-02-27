extension CelciusToFarenheit on double{
  double get celciusFarenheit {
      return this*(9/5)+32;
  }

  double get farenheitCelcius {
    return (this-32)*5/9;
  }
}