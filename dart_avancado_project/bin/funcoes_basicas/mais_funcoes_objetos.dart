void main() {
  var centimetersToMeters = converter;
  var metersTokm = converter;
  print('centimetros para metros: ${centimetersToMeters(200, 100)} m');
  print('metros para km: ${metersTokm(5000, 1000)} km');
}

num converter(num number, num scale) {
  return number / scale;
}
