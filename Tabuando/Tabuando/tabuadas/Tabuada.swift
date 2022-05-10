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
    let resposta4: Int
    let fase: String
}

class Desafios {
    static let tabuadaDoUm : [Tabuada] = [
        Tabuada(multiplicando: 1, multiplicador: 1, produto: 1, resposta1: 11,resposta2: 10,resposta3: 3,resposta4: 1,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 2, produto: 2,resposta1: 10,resposta2: 2,resposta3: 8,resposta4: 4,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 3, produto: 3,resposta1: 4,resposta2: 13,resposta3: 3,resposta4: 0,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 4, produto: 4,resposta1: 4,resposta2: 2,resposta3: 8,resposta4: 6,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 5, produto: 5,resposta1: 6,resposta2: 5,resposta3: 15,resposta4: 3,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 6, produto: 6,resposta1: 6,resposta2: 3,resposta3: 9,resposta4: 12,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 7, produto: 7,resposta1: 14,resposta2: 5,resposta3: 6,resposta4: 7,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 8, produto: 8,resposta1: 4,resposta2: 12,resposta3: 5,resposta4: 8,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 9, produto: 9,resposta1: 9,resposta2: 3,resposta3: 6,resposta4: 18,fase:"1x?"),
        Tabuada(multiplicando: 1, multiplicador: 10, produto: 10,resposta1: 9,resposta2: 5,resposta3: 10,resposta4: 0,fase:"1x?")
    ]
    static let tabuadaDoDois : [Tabuada] = [
        Tabuada(multiplicando: 2, multiplicador: 1, produto: 2, resposta1: 2,resposta2: 12,resposta3: 4,resposta4: 10,fase:"2x?"),
        Tabuada(multiplicando: 2, multiplicador: 2, produto: 4,resposta1: 10,resposta2: 8,resposta3: 4,resposta4: 0,fase:"2x?"),
        Tabuada(multiplicando: 2, multiplicador: 3, produto: 6,resposta1: 6,resposta2: 9,resposta3: 3,resposta4: 8,fase:"2x?"),
        Tabuada(multiplicando: 2, multiplicador: 4, produto: 8,resposta1: 11,resposta2: 7,resposta3: 13,resposta4: 8,fase:"2x?"),
        Tabuada(multiplicando: 2, multiplicador: 5, produto: 10,resposta1: 15,resposta2: 11,resposta3: 3,resposta4: 10,fase:"2x?"),
        Tabuada(multiplicando: 2, multiplicador: 6, produto: 12,resposta1: 12,resposta2: 10,resposta3: 16,resposta4: 24,fase:"2x?"),
        Tabuada(multiplicando: 2, multiplicador: 7, produto: 14,resposta1: 7,resposta2: 21,resposta3: 14,resposta4: 24,fase:"2x?"),
        Tabuada(multiplicando: 2, multiplicador: 8, produto: 16,resposta1: 12,resposta2: 16,resposta3: 18,resposta4: 8,fase:"2x?"),
        Tabuada(multiplicando: 2, multiplicador: 9, produto: 18,resposta1: 18,resposta2: 11,resposta3: 3,resposta4: 6,fase:"2x?"),
        Tabuada(multiplicando: 2, multiplicador: 10, produto: 20,resposta1: 12,resposta2: 10,resposta3: 20,resposta4: 0,fase:"2x?")
    ]
    static let tabuadaDoTres : [Tabuada] = [
        Tabuada(multiplicando: 3, multiplicador: 1, produto: 3, resposta1: 3,resposta2: 2,resposta3: 6,resposta4: 0,fase:"3x?"),
        Tabuada(multiplicando: 3, multiplicador: 2, produto: 6,resposta1: 8,resposta2: 3,resposta3: 9,resposta4: 6,fase:"3x?"),
        Tabuada(multiplicando: 3, multiplicador: 3, produto: 9,resposta1: 11,resposta2: 6,resposta3: 9,resposta4: 13,fase:"3x?"),
        Tabuada(multiplicando: 3, multiplicador: 4, produto: 12,resposta1: 12,resposta2: 9,resposta3: 13,resposta4: 14,fase:"3x?"),
        Tabuada(multiplicando: 3, multiplicador: 5, produto: 15,resposta1: 3,resposta2: 12,resposta3: 5,resposta4: 15,fase:"3x?"),
        Tabuada(multiplicando: 3, multiplicador: 6, produto: 18,resposta1: 11,resposta2: 18,resposta3: 3,resposta4: 6,fase:"3x?"),
        Tabuada(multiplicando: 3, multiplicador: 7, produto: 21,resposta1: 14,resposta2: 11,resposta3: 7,resposta4: 21,fase:"3x?"),
        Tabuada(multiplicando: 3, multiplicador: 8, produto: 24,resposta1: 24,resposta2: 3,resposta3: 4,resposta4: 8,fase:"3x?"),
        Tabuada(multiplicando: 3, multiplicador: 9, produto: 27,resposta1: 9,resposta2: 21,resposta3: 27,resposta4: 1,fase:"3x?"),
        Tabuada(multiplicando: 3, multiplicador: 10, produto: 30,resposta1: 13,resposta2: 30,resposta3: 3,resposta4: 0,fase:"3x?")
    ]
    static let tabuadaDoQuatro : [Tabuada] = [
        Tabuada(multiplicando: 4, multiplicador: 1, produto: 4, resposta1: 4,resposta2: 12,resposta3: 2,resposta4: 8,fase:"4x?"),
        Tabuada(multiplicando: 4, multiplicador: 2, produto: 8,resposta1: 18,resposta2: 4,resposta3: 3,resposta4: 8,fase:"4x?"),
        Tabuada(multiplicando: 4, multiplicador: 3, produto: 12,resposta1: 3,resposta2: 12,resposta3: 7,resposta4: 4,fase:"4x?"),
        Tabuada(multiplicando: 4, multiplicador: 4, produto: 16,resposta1: 8,resposta2: 12,resposta3: 4,resposta4: 16,fase:"4x?"),
        Tabuada(multiplicando: 4, multiplicador: 5, produto: 20,resposta1: 10,resposta2: 20,resposta3: 14,resposta4: 15,fase:"4x?"),
        Tabuada(multiplicando: 4, multiplicador: 6, produto: 24,resposta1: 16,resposta2: 4,resposta3: 24,resposta4: 20,fase:"4x?"),
        Tabuada(multiplicando: 4, multiplicador: 7, produto: 28,resposta1: 28,resposta2: 18,resposta3: 27,resposta4: 7,fase:"4x?"),
        Tabuada(multiplicando: 4, multiplicador: 8, produto: 32,resposta1: 30,resposta2: 32,resposta3: 8,resposta4: 16,fase:"4x?"),
        Tabuada(multiplicando: 4, multiplicador: 9, produto: 36,resposta1: 32,resposta2: 9,resposta3: 3,resposta4: 36,fase:"4x?"),
        Tabuada(multiplicando: 4, multiplicador: 10, produto: 40,resposta1: 40,resposta2: 14,resposta3: 4,resposta4: 10,fase:"4x?")
    ]
    static let tabuadaDoCinco : [Tabuada] = [
        Tabuada(multiplicando: 5, multiplicador: 1, produto: 5, resposta1: 1,resposta2: 10,resposta3: 3,resposta4: 5,fase:"5x?"),
        Tabuada(multiplicando: 5, multiplicador: 2, produto: 10,resposta1: 10,resposta2: 15,resposta3: 5,resposta4: 12,fase:"5x?"),
        Tabuada(multiplicando: 5, multiplicador: 3, produto: 15,resposta1: 8,resposta2: 12,resposta3: 3,resposta4: 15,fase:"5x?"),
        Tabuada(multiplicando: 5, multiplicador: 4, produto: 20,resposta1: 14,resposta2: 15,resposta3: 20,resposta4: 30,fase:"5x?"),
        Tabuada(multiplicando: 5, multiplicador: 5, produto: 25,resposta1: 15,resposta2: 25,resposta3: 16,resposta4: 10,fase:"5x?"),
        Tabuada(multiplicando: 5, multiplicador: 6, produto: 30,resposta1: 31,resposta2: 12,resposta3: 30,resposta4: 0,fase:"5x?"),
        Tabuada(multiplicando: 5, multiplicador: 7, produto: 35,resposta1: 30,resposta2: 35,resposta3: 15,resposta4: 3,fase:"5x?"),
        Tabuada(multiplicando: 5, multiplicador: 8, produto: 40,resposta1: 13,resposta2: 16,resposta3: 44,resposta4: 40,fase:"5x?"),
        Tabuada(multiplicando: 5, multiplicador: 9, produto: 45,resposta1: 45,resposta2: 9,resposta3: 14,resposta4: 40,fase:"5x?"),
        Tabuada(multiplicando: 5, multiplicador: 10, produto: 50,resposta1: 11,resposta2: 15,resposta3: 3,resposta4: 50,fase:"5x?")
    ]
    static let tabuadaDoSeis : [Tabuada] = [
        Tabuada(multiplicando: 6, multiplicador: 1, produto: 6, resposta1: 12,resposta2: 6,resposta3: 3,resposta4: 0,fase:"6x?"),
        Tabuada(multiplicando: 6, multiplicador: 2, produto: 12,resposta1: 2,resposta2: 6,resposta3: 9,resposta4: 12,fase:"6x?"),
        Tabuada(multiplicando: 6, multiplicador: 3, produto: 18,resposta1: 18,resposta2: 16,resposta3: 3,resposta4: 9,fase:"6x?"),
        Tabuada(multiplicando: 6, multiplicador: 4, produto: 24,resposta1: 46,resposta2: 24,resposta3: 64,resposta4: 20,fase:"6x?"),
        Tabuada(multiplicando: 6, multiplicador: 5, produto: 30,resposta1: 65,resposta2: 36,resposta3: 56,resposta4: 30,fase:"6x?"),
        Tabuada(multiplicando: 6, multiplicador: 6, produto: 36,resposta1: 26,resposta2: 46,resposta3: 36,resposta4: 16,fase:"6x?"),
        Tabuada(multiplicando: 6, multiplicador: 7, produto: 42,resposta1: 42,resposta2: 40,resposta3: 67,resposta4: 52,fase:"6x?"),
        Tabuada(multiplicando: 6, multiplicador: 8, produto: 48,resposta1: 42,resposta2: 48,resposta3: 54,resposta4: 68,fase:"6x?"),
        Tabuada(multiplicando: 6, multiplicador: 9, produto: 54,resposta1: 54,resposta2: 14,resposta3: 96,resposta4: 56,fase:"6x?"),
        Tabuada(multiplicando: 6, multiplicador: 10, produto: 60,resposta1: 16,resposta2: 30,resposta3: 36,resposta4: 60,fase:"6x?")
    ]
    static let tabuadaDoSete : [Tabuada] = [
        Tabuada(multiplicando: 7, multiplicador: 1, produto: 7, resposta1: 1,resposta2: 17,resposta3: 1,resposta4: 7,fase:"7x?"),
        Tabuada(multiplicando: 7, multiplicador: 2, produto: 14,resposta1: 11,resposta2: 9,resposta3: 14,resposta4: 2,fase:"7x?"),
        Tabuada(multiplicando: 7, multiplicador: 3, produto: 21,resposta1: 11,resposta2: 21,resposta3: 7,resposta4: 10,fase:"7x?"),
        Tabuada(multiplicando: 7, multiplicador: 4, produto: 28,resposta1: 11,resposta2: 14,resposta3: 28,resposta4: 10,fase:"7x?"),
        Tabuada(multiplicando: 7, multiplicador: 5, produto: 35,resposta1: 35,resposta2: 36,resposta3: 57,resposta4: 45,fase:"7x?"),
        Tabuada(multiplicando: 7, multiplicador: 6, produto: 42,resposta1: 67,resposta2: 15,resposta3: 37,resposta4: 42,fase:"7x?"),
        Tabuada(multiplicando: 7, multiplicador: 7, produto: 49,resposta1: 57,resposta2: 14,resposta3: 49,resposta4: 70,fase:"7x?"),
        Tabuada(multiplicando: 7, multiplicador: 8, produto: 56,resposta1: 52,resposta2: 56,resposta3: 63,resposta4: 45,fase:"7x?"),
        Tabuada(multiplicando: 7, multiplicador: 9, produto: 63,resposta1: 16,resposta2: 9,resposta3: 69,resposta4: 62,fase:"7x?"),
        Tabuada(multiplicando: 7, multiplicador: 10, produto: 70,resposta1: 63,resposta2: 56,resposta3: 7,resposta4: 70,fase:"7x?")
    ]
    static let tabuadaDoOito : [Tabuada] = [
        Tabuada(multiplicando: 8, multiplicador: 1, produto: 8, resposta1: 4,resposta2: 1,resposta3: 3,resposta4: 8,fase:"8x?"),
        Tabuada(multiplicando: 8, multiplicador: 2, produto: 16,resposta1: 16,resposta2: 8,resposta3: 2,resposta4: 10,fase:"8x?"),
        Tabuada(multiplicando: 8, multiplicador: 3, produto: 24,resposta1: 11,resposta2: 18,resposta3: 16,resposta4: 24,fase:"8x?"),
        Tabuada(multiplicando: 8, multiplicador: 4, produto: 32,resposta1: 12,resposta2: 20,resposta3: 32,resposta4: 30,fase:"8x?"),
        Tabuada(multiplicando: 8, multiplicador: 5, produto: 40,resposta1: 45,resposta2: 40,resposta3: 13,resposta4: 58,fase:"8x?"),
        Tabuada(multiplicando: 8, multiplicador: 6, produto: 48,resposta1: 68,resposta2: 14,resposta3: 48,resposta4: 86,fase:"8x?"),
        Tabuada(multiplicando: 8, multiplicador: 7, produto: 56,resposta1: 87,resposta2: 16,resposta3: 78,resposta4: 56,fase:"8x?"),
        Tabuada(multiplicando: 8, multiplicador: 8, produto: 64,resposta1: 46,resposta2: 64,resposta3: 36,resposta4: 16,fase:"8x?"),
        Tabuada(multiplicando: 8, multiplicador: 9, produto: 72,resposta1: 56,resposta2: 63,resposta3: 72,resposta4: 27,fase:"8x?"),
        Tabuada(multiplicando: 8, multiplicador: 10, produto: 80,resposta1: 80,resposta2: 18,resposta3: 56,resposta4: 10,fase:"8x?")
    ]
    static let tabuadaDoNove : [Tabuada] = [
        Tabuada(multiplicando: 9, multiplicador: 1, produto: 9, resposta1: 3,resposta2: 19,resposta3: 9,resposta4: 90,fase:"9x?"),
        Tabuada(multiplicando: 9, multiplicador: 2, produto: 18,resposta1: 11,resposta2: 15,resposta3: 32,resposta4: 18,fase:"9x?"),
        Tabuada(multiplicando: 9, multiplicador: 3, produto: 27,resposta1: 23,resposta2: 26,resposta3: 27,resposta4: 39,fase:"9x?"),
        Tabuada(multiplicando: 9, multiplicador: 4, produto: 32,resposta1: 32,resposta2: 13,resposta3: 49,resposta4: 23,fase:"9x?"),
        Tabuada(multiplicando: 9, multiplicador: 5, produto: 45,resposta1: 54,resposta2: 45,resposta3: 67,resposta4: 19,fase:"9x?"),
        Tabuada(multiplicando: 9, multiplicador: 6, produto: 54,resposta1: 54,resposta2: 69,resposta3: 39,resposta4: 50,fase:"9x?"),
        Tabuada(multiplicando: 9, multiplicador: 7, produto: 63,resposta1: 36,resposta2: 63,resposta3: 16,resposta4: 54,fase:"9x?"),
        Tabuada(multiplicando: 9, multiplicador: 8, produto: 72,resposta1: 89,resposta2: 17,resposta3: 72,resposta4: 70,fase:"9x?"),
        Tabuada(multiplicando: 9, multiplicador: 9, produto: 81,resposta1: 81,resposta2: 18,resposta3: 83,resposta4: 72,fase:"9x?"),
        Tabuada(multiplicando: 9, multiplicador: 10, produto: 90,resposta1: 19,resposta2: 87,resposta3: 91,resposta4: 90,fase:"9x?")
    ]
}
