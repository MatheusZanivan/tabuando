//
//  acertos.swift
//  Tabuando
//
//  Created by Matheus Zanivan on 08/05/22.
//

class Modelo {
    private var valor: Int
    
    init(){
        valor = 0
    }
    
    func obter_valor() -> Int{
        return valor
    }
    
    func aumentar(){
        valor += 1
    }
}
