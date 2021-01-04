import Glibc

print("Bienvenido\nIngrese su nombre:")
var nombre = readLine()!
print()
var peso : Float = 0
var altura : Float = 0
var imc : Float = 0

func catchInput(){
    print("IMC CALCULATOR\nIngrese su peso:")
    peso = Float(readLine()!)!
    print("Ingrese su altura:")
    altura = Float(readLine()!)!
    imc = peso/(altura*altura)
    outputMessage()
}

func outputMessage(){
  if imc < 18.5 && imc > 0{
  print("\(nombre),\nSu IMC es de: \(imc)\nLo que indica que esta bajo peso")
  }else{
    if imc >= 18.5 && imc <= 24.9{
      print("\(nombre),\nSu IMC es de: \(imc)\nLo que indica que esta dentro de los valores normales ")
    }
    else if imc >= 25 && imc <= 29.9{
      print("\(nombre),\nSu IMC es de: \(imc)\nLo que indica que tiene sobrepeso")
    }
    else if imc > 30{
      print("\(nombre),\nSu IMC es de: \(imc)\nLo que indica que padece de obesidad")
    }else{
      print("\n\(nombre),\nVerifica los datos ingresados\nPeso: \(peso)\nAltura\(altura)\nPRESIONA ENTER")
      readLine()!
      system("clear")
      print("Bienvenido \(nombre)\n")
      catchInput()
    }
  }
}

catchInput()