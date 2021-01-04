import Glibc
system("clear")
print("Bienvenido\nIngrese su nombre:")
var nombre = readLine()!
system("clear")
print()
var peso : Float = 0
var altura : Float = 0
var imc : Float = 0

func parseFloat(_ data: String)-> Float{
  return Float(data) ?? -1
}

func ifMinusOne(_ data: Float){
  if data == -1{
    print("Ingrese un valor valido (numerico y decimal separado por . )\nPRESIONA ENTER")
    readLine();
    system("clear")
    catchInput()
  }
}

func catchInput(){
    system("clear")
    print("Bienvenido \(nombre)\n\nIMC CALCULATOR\nIngrese su peso:")
    peso = parseFloat(readLine()!)
    system("clear")
    ifMinusOne(peso)
    print("Bienvenido \(nombre)\n\nIMC CALCULATOR\nIngrese su altura:")
    altura = parseFloat(readLine()!)
    system("clear")
    ifMinusOne(altura)
    imc = peso/(altura*altura)
    outputMessage()
}

func outputMessage(){
  if imc < 18.5 && imc > 0{
  print("\(nombre),\nSu IMC es de: \(imc)\nLo que indica que esta bajo peso")
  }else{
    if imc >= 18.5 && imc <= 24.9{
      print("\(nombre),\nSu IMC es de: \(imc)\nLo que indica que esta dentro de los valores normales ")
      exit(0)
    }
    else if imc >= 25 && imc <= 29.9{
      print("\(nombre),\nSu IMC es de: \(imc)\nLo que indica que tiene sobrepeso")
      exit(0)
    }
    else if imc > 30{
      print("\(nombre),\nSu IMC es de: \(imc)\nLo que indica que padece de obesidad")
      exit(0)
    }else{
      print("\n\(nombre),\nVerifica los datos ingresados\nPeso: \(peso)\nAltura: \(altura)\nPRESIONA ENTER")
      readLine()!
      system("clear")
      catchInput()
    }
  }
}

catchInput()