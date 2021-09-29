//
//  Diretor.swift
//  desafio_gitflow
//
//  Created by Maycon Anderson on 29/09/21.
//

import Foundation

let  cd4: Double = 6421.26

class Diretor: Profissao {
    
    var pessoas : [Pessoa]
    
    init(descricao: String, pessoas: [Pessoa]) {
        self.pessoas = pessoas
        super.init(descricao: descricao)
    
    }
    override func calculaSalario(valorHora: Double, quantidadeHoras: Double) -> Double {
        var salario = valorHora * quantidadeHoras
        if salario < cd4, salario + (cd4 * 0.6) < cd4 {
            
            salario = cd4
            return salario
        }
        
        return salario + (cd4 * 0.6)
    }
    
}
