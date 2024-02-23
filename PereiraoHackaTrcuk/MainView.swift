//
//  MainView.swift
//  PereiraoHackaTrcuk
//
//  Created by Turma01-11 on 07/02/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            
            ContentView()
                .tabItem{
                    Label("Home", systemImage: "house")
                        
                }
            
            TelaMapa()
                .tabItem{
                    Label("Mapa", systemImage: "map")
                }
            
            ChatView(empregado: dados(cpf: "", nome: "", sobrenome: "", tipo: "", telefone: "", categoria_servico: "", descricao_servico: "", descricao_categoria: "", img: ""))
                .tabItem{
                    Label("Chat", systemImage: "message")
                }
                            
        }.tint(Color("roxo"))


    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
