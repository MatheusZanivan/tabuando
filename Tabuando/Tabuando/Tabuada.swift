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
    let resposta: Int
    let respostaErrada1: Int
    let respostaErrada2: Int
    let respostaErrada3: Int
}

class Desafios {
    static let tabuadaDoUm : [Tabuada] = [
        Tabuada(multiplicando: 1, multiplicador: 1, resposta: 1, respostaErrada1: 11,respostaErrada2: 10,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 2, resposta: 2,respostaErrada1: 10,respostaErrada2: 6,respostaErrada3: 8),
        Tabuada(multiplicando: 1, multiplicador: 3, resposta: 3,respostaErrada1: 4,respostaErrada2: 13,respostaErrada3: 2),
        Tabuada(multiplicando: 1, multiplicador: 4, resposta: 4,respostaErrada1: 5,respostaErrada2: 2,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 5, resposta: 5,respostaErrada1: 6,respostaErrada2: 9,respostaErrada3: 4),
        Tabuada(multiplicando: 1, multiplicador: 6, resposta: 6,respostaErrada1: 7,respostaErrada2: 3,respostaErrada3: 0),
        Tabuada(multiplicando: 1, multiplicador: 7, resposta: 7,respostaErrada1: 12,respostaErrada2: 15,respostaErrada3: 6),
        Tabuada(multiplicando: 1, multiplicador: 8, resposta: 8,respostaErrada1: 4,respostaErrada2: 12,respostaErrada3: 5),
        Tabuada(multiplicando: 1, multiplicador: 9, resposta: 9,respostaErrada1: 18,respostaErrada2: 3,respostaErrada3: 6),
        Tabuada(multiplicando: 1, multiplicador: 10, resposta: 10,respostaErrada1: 9,respostaErrada2: 5,respostaErrada3: 1)
    ]
    static let tabuadaDoDois : [Tabuada] = [
        Tabuada(multiplicando: 2, multiplicador: 1, resposta: 2, respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 2, multiplicador: 2, resposta: 4,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 2, multiplicador: 3, resposta: 6,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 2, multiplicador: 4, resposta: 8,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 2, multiplicador: 5, resposta: 10,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 2, multiplicador: 6, resposta: 12,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 2, multiplicador: 7, resposta: 14,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 2, multiplicador: 8, resposta: 16,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 2, multiplicador: 9, resposta: 18,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 2, multiplicador: 10, resposta: 20,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3)
    ]
    static let tabuadaDoTres : [Tabuada] = [
        Tabuada(multiplicando: 1, multiplicador: 1, resposta: 1, respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 2, resposta: 2,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 3, resposta: 3,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 4, resposta: 4,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 5, resposta: 5,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 6, resposta: 6,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 7, resposta: 7,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 8, resposta: 8,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 9, resposta: 9,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 10, resposta: 10,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3)
    ]
    static let tabuadaDoQuatro : [Tabuada] = [
        Tabuada(multiplicando: 1, multiplicador: 1, resposta: 1, respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 2, resposta: 2,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 3, resposta: 3,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 4, resposta: 4,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 5, resposta: 5,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 6, resposta: 6,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 7, resposta: 7,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 8, resposta: 8,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 9, resposta: 9,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 10, resposta: 10,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3)
    ]
    static let tabuadaDoCinco : [Tabuada] = [
        Tabuada(multiplicando: 1, multiplicador: 1, resposta: 1, respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 2, resposta: 2,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 3, resposta: 3,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 4, resposta: 4,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 5, resposta: 5,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 6, resposta: 6,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 7, resposta: 7,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 8, resposta: 8,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 9, resposta: 9,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 10, resposta: 10,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3)
    ]
    static let tabuadaDoSeis : [Tabuada] = [
        Tabuada(multiplicando: 1, multiplicador: 1, resposta: 1, respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 2, resposta: 2,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 3, resposta: 3,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 4, resposta: 4,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 5, resposta: 5,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 6, resposta: 6,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 7, resposta: 7,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 8, resposta: 8,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 9, resposta: 9,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 10, resposta: 10,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3)
    ]
    static let tabuadaDoSete : [Tabuada] = [
        Tabuada(multiplicando: 1, multiplicador: 1, resposta: 1, respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 2, resposta: 2,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 3, resposta: 3,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 4, resposta: 4,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 5, resposta: 5,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 6, resposta: 6,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 7, resposta: 7,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 8, resposta: 8,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 9, resposta: 9,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 10, resposta: 10,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3)
    ]
    static let tabuadaDoOito : [Tabuada] = [
        Tabuada(multiplicando: 1, multiplicador: 1, resposta: 1, respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 2, resposta: 2,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 3, resposta: 3,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 4, resposta: 4,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 5, resposta: 5,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 6, resposta: 6,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 7, resposta: 7,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 8, resposta: 8,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 9, resposta: 9,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 10, resposta: 10,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3)
    ]
    static let tabuadaDoNove : [Tabuada] = [
        Tabuada(multiplicando: 1, multiplicador: 1, resposta: 1, respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 2, resposta: 2,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 3, resposta: 3,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 4, resposta: 4,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 5, resposta: 5,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 6, resposta: 6,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 7, resposta: 7,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 8, resposta: 8,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 9, resposta: 9,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3),
        Tabuada(multiplicando: 1, multiplicador: 10, resposta: 10,respostaErrada1: 11,respostaErrada2: 11,respostaErrada3: 3)
    ]
}
