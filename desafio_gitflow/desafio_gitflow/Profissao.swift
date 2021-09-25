//
//  Profissao.swift
//  desafio_gitflow
//
//  Created by Paula Matsumoto on 24/09/21.
//

import Foundation

class Profissao {
    let descricao: String
    
    init(descricao:String) {
        self.descricao = descricao
    }
    
    func calculaSalario(valorHora: Double, quantidadeHoras: Double) -> Double {
        return valorHora * quantidadeHoras
    }
}
