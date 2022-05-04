//
//  Tabuada.swift
//  Tabuando
//
//  Created by Caroline Stelitano on 19/04/22.
//

import Foundation

struct Tabuada{
    let multiplicando: Int
    let multiplicador: Int
    let produto: Int
    let resposta1: Int
    let resposta2: Int
    let resposta3: Int
    let fase: String
}

public class Desafios {
    static let tabuadaDoUm : [Tabuada] = [
        Tabuada(multiplicando: 1, multiplicador: 1, produto: 1, resposta1: 11,resposta2: 10,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 2, produto: 2,resposta1: 10,resposta2: 6,resposta3: 8,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 3, produto: 3,resposta1: 4,resposta2: 13,resposta3: 2,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 4, produto: 4,resposta1: 5,resposta2: 2,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 5, produto: 5,resposta1: 6,resposta2: 9,resposta3: 4,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 6, produto: 6,resposta1: 7,resposta2: 3,resposta3: 0,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 7, produto: 7,resposta1: 12,resposta2: 15,resposta3: 6,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 8, produto: 8,resposta1: 4,resposta2: 12,resposta3: 5,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 9, produto: 9,resposta1: 18,resposta2: 3,resposta3: 6,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 10, produto: 10,resposta1: 9,resposta2: 5,resposta3: 1,fase:"1x?")
    ]
    static let tabuadaDoDois : [Tabuada] = [
        Tabuada(multiplicando: 2, multiplicador: 1, produto: 2, resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 2, multiplicador: 2, produto: 4,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 2, multiplicador: 3, produto: 6,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 2, multiplicador: 4, produto: 8,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 2, multiplicador: 5, produto: 10,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 2, multiplicador: 6, produto: 12,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 2, multiplicador: 7, produto: 14,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 2, multiplicador: 8, produto: 16,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 2, multiplicador: 9, produto: 18,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 2, multiplicador: 10, produto: 20,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?")
    ]
    static let tabuadaDoTres : [Tabuada] = [
        Tabuada(multiplicando: 1, multiplicador: 1, produto: 1, resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 2, produto: 2,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 3, produto: 3,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 4, produto: 4,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 5, produto: 5,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 6, produto: 6,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 7, produto: 7,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 8, produto: 8,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 9, produto: 9,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 10, produto: 10,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?")
    ]
    static let tabuadaDoQuatro : [Tabuada] = [
        Tabuada(multiplicando: 1, multiplicador: 1, produto: 1, resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 2, produto: 2,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 3, produto: 3,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 4, produto: 4,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 5, produto: 5,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 6, produto: 6,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 7, produto: 7,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 8, produto: 8,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 9, produto: 9,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 10, produto: 10,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?")
    ]
    static let tabuadaDoCinco : [Tabuada] = [
        Tabuada(multiplicando: 1, multiplicador: 1, produto: 1, resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 2, produto: 2,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 3, produto: 3,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 4, produto: 4,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 5, produto: 5,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 6, produto: 6,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 7, produto: 7,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 8, produto: 8,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 9, produto: 9,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 10, produto: 10,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?")
    ]
    static let tabuadaDoSeis : [Tabuada] = [
        Tabuada(multiplicando: 1, multiplicador: 1, produto: 1, resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 2, produto: 2,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 3, produto: 3,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 4, produto: 4,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 5, produto: 5,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 6, produto: 6,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 7, produto: 7,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 8, produto: 8,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 9, produto: 9,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 10, produto: 10,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?")
    ]
    static let tabuadaDoSete : [Tabuada] = [
        Tabuada(multiplicando: 1, multiplicador: 1, produto: 1, resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 2, produto: 2,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 3, produto: 3,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 4, produto: 4,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 5, produto: 5,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 6, produto: 6,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 7, produto: 7,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 8, produto: 8,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 9, produto: 9,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 10, produto: 10,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?")
    ]
    static let tabuadaDoOito : [Tabuada] = [
        Tabuada(multiplicando: 1, multiplicador: 1, produto: 1, resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 2, produto: 2,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 3, produto: 3,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 4, produto: 4,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 5, produto: 5,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 6, produto: 6,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 7, produto: 7,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 8, produto: 8,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 9, produto: 9,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 10, produto: 10,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?")
    ]
    static let tabuadaDoNove : [Tabuada] = [
        Tabuada(multiplicando: 1, multiplicador: 1, produto: 1, resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 2, produto: 2,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 3, produto: 3,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 4, produto: 4,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 5, produto: 5,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 6, produto: 6,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 7, produto: 7,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 8, produto: 8,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 9, produto: 9,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 10, produto: 10,resposta1: 11,resposta2: 11,resposta3: 3,fase:"1x?")
    ]
    
//    mutating func checkAnswer(userAnswer: Int) -> Int {
//        if userAnswer == tabuadaDoUm[Tabuada].answer {
//            score += 1
//        }
    
}
