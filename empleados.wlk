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
    method deuda(){
        return deuda 
    }
    method dinero(){
        return dinero 
    }
//cuando gasta, se le resta de su dinero
// si no le alcanza, aumenta la deuda 
//si sobra, se suma a su dinero
    method gastar(cantidad){
        if (cantidad >= dinero){
            deuda = deuda + cantidad - dinero
            dinero = 0
        }
        else {
            dinero = dinero - cantidad 
        }
    }
    method cobrar(){
        dinero = dinero + sueldo 
        self.pagarDeuda()
    }
    method pagarDeuda(){
        if (deuda >= dinero){
            deuda = deuda - dinero 
            dinero = 0
        }
        else{
            dinero = dinero - deuda 
            deuda = 0 
        }
    }
   
}
object baigorria {
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
        self.validarPago(empleado)
        fondoSueldos = fondoSueldos - empleado.sueldo()
        empleado.cobrar()
    }
    method fondoActual(){
        return fondoSueldos
    }

//se usara un setter para cambiar los fondos de gimenez, solamente para hacer la validacion 
    method fondosGimenez(cantidad){
        fondoSueldos = cantidad 
    }
    method impuestos(){
        fondoSueldos = 0
    }
//validacion 
    method validarPago(empleado){
        if(empleado.sueldo() > self.fondoActual()){
            self.error("No puede pagar " + empleado.sueldo() + " no hay dinero suficiente")
        }
    }
}