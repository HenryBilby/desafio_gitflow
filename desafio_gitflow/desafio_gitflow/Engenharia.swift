//
//  Engenharia.swift
//  desafio_gitflow
//
//  Created by Henry Bilby on 25/09/21.
//

import Foundation

let salarioMinimo : Double = 1100.00

class Engenharia : Profissao {
    
    let pessoas : [Pessoa]

    init(descricao: String, pessoas: [Pessoa]) {
        self.pessoas = pessoas
        super.init(descricao: descricao)
    }
    
    override func calculaSalario(valorHora: Double, quantidadeHoras: Double) -> Double {
        
        if quantidadeHoras == 6 {
            return 6*salarioMinimo;
        }
        
        if quantidadeHoras == 8 {
            return 9*salarioMinimo;
        }
        
        return 0.0
    }
}
