//
//  Engenharia.swift
//  desafio_gitflow
//
//  Created by Henry Bilby on 25/09/21.
//

import Foundation

class Engenharia : Profissao {
    
    let salarioMinimo : Double

    init(descricao: String, pessoas: [Pessoa], salarioMinimo : Double) {
        self.salarioMinimo = salarioMinimo
        super.init(descricao: descricao, pessoas: pessoas)
    }
    
    override func calculaSalario(valorHora: Double, quantidadeHoras: Double) -> Double {
        
        if quantidadeHoras == 6 {
            return 6*salarioMinimo;
        } else if quantidadeHoras == 8 {
            return 9*salarioMinimo;
        } else {
            return valorHora*quantidadeHoras
        }
    }
}
