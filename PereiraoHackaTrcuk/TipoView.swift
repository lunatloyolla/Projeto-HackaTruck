//
//  TipoView.swift
//  PereiraoHackaTrcuk
//
//  Created by Turma01-11 on 05/02/24.
//

import Foundation


struct dados: Decodable, Hashable {
  //  var id: Int?
    var cpf: String?
    var nome: String?
    var sobrenome: String?
    var tipo: String?
    var telefone: String?
    var categoria_servico: String?
    var descricao_servico: String?
    var descricao_categoria: String?
    var img: String?
    
}

