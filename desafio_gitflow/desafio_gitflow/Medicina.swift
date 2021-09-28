//
//  Medicina.swift
//  desafio_gitflow
//
//  Created by Paula Matsumoto on 25/09/21.
//

import Foundation

class Medicina: Profissao {

    let  bonusMensal: Double
    
    init(descricao: String, pessoas: [Pessoa], bonusMensal: Double) {
        self.bonusMensal = bonusMensal
        super.init(descricao: descricao, pessoas: pessoas)
    }
    
    override func calculaSalario(valorHora: Double, quantidadeHoras: Double) -> Double {
        
        if valorHora <= 100 {
            return  valorHora * quantidadeHoras + bonusMensal
        } else {
            return valorHora * quantidadeHoras
        }
    }
    
}
