print("Bienvenido/nIngrese su nombre:")
var nombre = readLine()!
print("IMC CALCULATOR\nIngrese su peso:")
var peso = Float(readLine()!)!
print("Ingrese su altura:")
var altura = Float(readLine()!)!
var imc = peso/(altura*altura)
print(imc)
if imc < 18.5{
  print("\(nombre),\nSu IMC es de: \(imc)\nLo que indica que esta bajo peso")
}else{
  if imc >= 18.5 && imc <= 24.9{
    print("\(nombre),\nSu IMC es de: \(imc)\nLo que indica que esta dentro de los valores normales ")
  }
  if imc >= 25 && imc <= 29.9{
    print("\(nombre),\nSu IMC es de: \(imc)\nLo que indica que tiene sobrepeso")
  }else{
    print("\(nombre),\nSu IMC es de: \(imc)\nLo que indica que padece de obesidad")
  }
}