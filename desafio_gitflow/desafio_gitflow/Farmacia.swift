//
//  Farmacia.swift
//  desafio_gitflow
//
//  Created by Henry Bilby on 29/09/21.
//

import Foundation

class Farmacia : Profissao {
    let  pisoSalarial: Double
    
    init(descricao: String, pessoas: [Pessoa], pisoSalarial: Double) {
        self.pisoSalarial = pisoSalarial
        super.init(descricao: descricao, pessoas: pessoas)
    }
    
    override func calculaSalario(valorHora: Double, quantidadeHoras: Double) -> Double {
        
        let salario = valorHora * quantidadeHoras
        
        return salario < pisoSalarial ? pisoSalarial : salario
    }
}
