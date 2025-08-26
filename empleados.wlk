//Escribir aqui los objetos
object galvan {
    var sueldo = 15000
    var dinero = 0
    var deuda = 0

    method cambioSueldo(cantidad){
        sueldo = cantidad 
    }
    method sueldo(){
        return sueldo
    }
//cuando gasta, se le resta de su dinero
// si no le alcanza, aumenta la deuda 
//si sobra, se suma a su dinero
    method gastar(cantidad){
        if(cantidad > dinero){
            deuda = deuda + cantidad - dinero 
        }
        else{
            dinero = dinero - cantidad 
        }
    }
    method dinero(){
        return dinero
    }
    method deuda(){
        return deuda 
    }
}
object baigorria {
    //var sueldo = cantidadEmpanadasVendidas * 15
    var cantidadEmpanadasVendidas = 0  
    var totalCobrado = 0 

    method sueldo(){
        return cantidadEmpanadasVendidas * 15
    }

    method cantidadEmpanadasVendidas(){
        return cantidadEmpanadasVendidas
    }
    method venderEmpanadas(cantidad){
        cantidadEmpanadasVendidas = cantidadEmpanadasVendidas + cantidad
    }
    method cobrar(){
        totalCobrado = totalCobrado + self.sueldo()
        cantidadEmpanadasVendidas = 0 
    }
    method totalCobrado(){
        return totalCobrado 
    }

}
object gimenez {
    var fondoSueldos = 300000

    method pagarSueldo(empleado){
        fondoSueldos = fondoSueldos - empleado.sueldo()
    }
    method importeActual(){
        return fondoSueldos
    }
}