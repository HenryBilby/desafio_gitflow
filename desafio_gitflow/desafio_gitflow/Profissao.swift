//
//  Profissao.swift
//  desafio_gitflow
//
//  Created by Paula Matsumoto on 24/09/21.
//

import Foundation

class Profissao {
    
    let descricao: String
    var pessoas : [Pessoa]
    
    init(descricao:String, pessoas : [Pessoa]) {
        self.descricao = descricao
        self.pessoas = pessoas
    }
    
    func calculaSalario(valorHora: Double, quantidadeHoras: Double) -> Double {
        return valorHora * quantidadeHoras
    }
    
    private func getProfissionalAleatorio() -> Pessoa {
        if let pessoaAleatoria = self.pessoas.randomElement() {
            return pessoaAleatoria
         }

         return Pessoa(nome: "")
    }
}
