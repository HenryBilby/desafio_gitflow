//
//  Medicina.swift
//  desafio_gitflow
//
//  Created by Paula Matsumoto on 25/09/21.
//

import Foundation

let  bonusMensal: Double = 500

class Medicina: Profissao {
    
    var pessoas : [Pessoa]
    
    init(descricao: String, pessoas: [Pessoa]) {
        self.pessoas = pessoas
        super.init(descricao: descricao)
    
    }
    override func calculaSalario(valorHora: Double, quantidadeHoras: Double) -> Double {
        
        if valorHora <= 100 {
            return  valorHora * quantidadeHoras + bonusMensal
        }
        
        return 0.0
    }
    
}
