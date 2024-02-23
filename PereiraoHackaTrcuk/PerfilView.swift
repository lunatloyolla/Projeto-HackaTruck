//
//  PerfilView.swift
//  PereiraoHackaTrcuk
//
//  Created by Turma01-11 on 07/02/24.
//

import SwiftUI

struct PerfilView: View {
    var teste = 0
    @State var fillValue: Double = 0
    @State var fillValue2: Double = 0
    @State var fillValue3: Double = 0
    @State var fillValue4: Double = 0
    @State var fillValue5: Double = 0
    
    @StateObject var instancia = ViewModel()
    @State private var search=""
    
    
    @State private var apertaUm = false
    @State private var apertaDois = false
    @State private var apertaTres = false
    @State private var apertaQuatro = false
    @State private var apertaCinco = false
    
    var perfil: dados
    
    var body: some View {
        ZStack{
            VStack{
                HStack {
                    
                    VStack{
                        Image("logoicon").resizable().scaledToFill().frame(width: 200.0, height: 103.0)
                        
                        
                    }
                }
                
                
                ScrollView{
                    VStack{
                        
                        VStack{
                            
                            ZStack{
                                
                                AsyncImage(url: URL(string: perfil.img!)){
                                    image in image.resizable()
                                        .scaledToFill()
                                        .frame(width: 150.0, height: 150.0)
                                        .cornerRadius(10)
                                        .clipShape(Circle())
                                    
                                }placeholder: {
                                    ProgressView()
                                }
                                
                                
                                
                                
                            }
                            
                        }
                        
                        
                        //Estrelas não mexa
                        HStack{
                            HStack{
                                ForEach(0..<1) { _ in
                                    GeometryReader { geometry in
                                        ZStack(alignment: .leading) {
                                            Rectangle()
                                            Rectangle()
                                                .fill(Color.orange)
                                                .frame(width: geometry.size.width * fillValue2)
                                        }
                                    }
                                    .mask(
                                        Image(systemName: "star.fill")
                                            .resizable()
                                    )
                                    .aspectRatio(1, contentMode: .fit)
                                }.onTapGesture {
                                    apertaDois.toggle()
                                    if apertaDois {
                                        fillValue2 = 1.0
                                        
                                    } else {
                                        fillValue2 = 0.0
                                    }
                                }
                            }.frame(width: 40.0, height: 40.0)
                            
                            
                            
                            //Estrelas não mexa
                            HStack{
                                ForEach(0..<1) { _ in
                                    GeometryReader { geometry in
                                        ZStack(alignment: .leading) {
                                            Rectangle()
                                            Rectangle()
                                                .fill(Color.orange)
                                                .frame(width: geometry.size.width * fillValue3)
                                        }
                                    }
                                    .mask(
                                        Image(systemName: "star.fill")
                                            .resizable()
                                    )
                                    .aspectRatio(1, contentMode: .fit)
                                }.onTapGesture {
                                    apertaTres.toggle()
                                    if apertaTres {
                                        fillValue3 = 1.0
                                        
                                    } else {
                                        fillValue3 = 0.0
                                    }
                                }
                            }.frame(width: 40.0, height: 40.0)
                            
                            
                            
                            
                            //Estrelas não mexa
                            HStack{
                                ForEach(0..<1) { _ in
                                    GeometryReader { geometry in
                                        ZStack(alignment: .leading) {
                                            Rectangle()
                                            Rectangle()
                                                .fill(Color.orange)
                                                .frame(width: geometry.size.width * fillValue4)
                                        }
                                    }
                                    .mask(
                                        Image(systemName: "star.fill")
                                            .resizable()
                                    )
                                    .aspectRatio(1, contentMode: .fit)
                                }.onTapGesture {
                                    apertaQuatro.toggle()
                                    if apertaQuatro {
                                        fillValue4 = 1.0
                                        
                                    } else {
                                        fillValue4 = 0.0
                                    }
                                }
                                
                            }.frame(width: 40.0, height: 40.0)
                            
                            
                            
                            
                            //Estrelas não mexa
                            HStack{
                                ForEach(0..<1) { _ in
                                    GeometryReader { geometry in
                                        ZStack(alignment: .leading) {
                                            Rectangle()
                                            Rectangle()
                                                .fill(Color.orange)
                                                .frame(width: geometry.size.width * fillValue5)
                                        }
                                    }
                                    .mask(
                                        Image(systemName: "star.fill")
                                            .resizable()
                                    )
                                    .aspectRatio(1, contentMode: .fit)
                                }.onTapGesture {
                                    apertaCinco.toggle()
                                    if apertaCinco {
                                        fillValue5 = 1.0
                                        
                                    } else {
                                        fillValue5 = 0.0
                                    }
                                }
                                
                            }.frame(width: 40.0, height: 40.0)
                            
                            
                            
                            
                            
                            //Estrelas não mexa
                            HStack{
                                ForEach(0..<1) { _ in
                                    GeometryReader { geometry in
                                        ZStack(alignment: .leading) {
                                            Rectangle()
                                            Rectangle()
                                                .fill(Color.orange)
                                                .frame(width: geometry.size.width * fillValue)
                                        }
                                    }
                                    .mask(
                                        Image(systemName: "star.fill")
                                            .resizable()
                                    )
                                    .aspectRatio(1, contentMode: .fit)
                                }.onTapGesture {
                                    apertaUm.toggle()
                                    if apertaUm {
                                        fillValue = 1.0
                                        
                                    } else {
                                        fillValue = 0.0
                                    }
                                }
                            }.frame(width: 40.0, height: 40.0)
                        }
                        //Estrelas não mexa
                        
                        
                        Text(perfil.nome!).font(.title).fontWeight(.heavy).foregroundColor(Color.white).padding(1.0)
                        Text(perfil.descricao_categoria!)
                            .font(.callout)
                            .fontWeight(.regular)
                            .foregroundColor(Color("cinzaclaro"))
                            .multilineTextAlignment(.center).padding(.horizontal, 60.0)
                        
                    }.frame(width: 400, height: 400).background(Color("roxo"))
                    
                    Spacer()
                    
                    VStack{
                        Text("Serviços Prestados: ").font(.title).fontWeight(.heavy).foregroundColor(Color("roxo")).padding(1.0)
                        
                        Text(perfil.descricao_servico!)
                            .font(.callout)
                            .fontWeight(.regular)
                            .foregroundColor(Color("roxo"))
                            .multilineTextAlignment(.center).padding()
                        
                        Spacer()
                        
                        ZStack{
                            Rectangle().foregroundColor(Color("roxo")).frame(width: 160.0, height: 40.0).cornerRadius(15)
                            
                            
                            
                            NavigationLink(destination: ChatView(empregado: perfil, conversas: ["Olá, Boa tarde!", "Boa Tarde", "Gostaria de saber qual o valor para um reparo simples no meu telhado", "Depende do tipo de problema, podemos agendar um orcamento", "Estou disponivel na segunda", "Pode ser então"])){
                                ZStack{
                                    Rectangle()
                                        .foregroundColor(Color("roxo"))
                                        .frame(width: 153.0, height: 30.0)
                                        .cornerRadius(15)
                                    
                                    Text("Contratar")
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color("cinzaclaro"))
                                    
                                }
                            }
                            Spacer()
                        }
                    }
                }.onAppear(){
                    instancia.BaixarDados(query: search)
                }
            }
            
        }
    }
    
    struct PerfilView_Previews: PreviewProvider {
        static var previews: some View {
            PerfilView(perfil: dados(cpf: "", nome: "", sobrenome: "", tipo: "", telefone: "", categoria_servico: "", descricao_servico: "", descricao_categoria: "", img: ""))
        }
    }
}
