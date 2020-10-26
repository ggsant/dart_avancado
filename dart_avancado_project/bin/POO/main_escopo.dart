double res; //* escopo global
void main() {
  // double res; //* escopo local da main
  sum(5545687869.0, 56456456.0);

  print(res);
}

void sum(double a, double b) {
  // double res; //* escopo local da soma

  res = a + b;
}

//* o escopo local é sempre priorizado!
