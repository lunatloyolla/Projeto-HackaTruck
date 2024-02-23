//
//  ContentView.swift
//  TelaChat
//
//  Created by Turma01-14 on 06/02/24.
//

import SwiftUI

struct ChatView: View {
    var empregado: dados
    
    var conversas = ["Olá, Boa tarde!", "Boa Tarde", "Gostaria de saber qual o valor para um reparo simples no meu telhado", "Depende do tipo de problema, podemos agendar um orcamento", "Estou disponivel na segunda", "Pode ser então"]
    
    
    
    var body: some View {
        VStack{
            ZStack{
                Rectangle()
                    .foregroundColor(Color("roxo"))
                    .frame(width: 400, height: 90)
                
                HStack{
                    
                    AsyncImage(url: URL(string: empregado.img!)){
                        image in image.resizable()
                            .scaledToFill()
                            .frame(width: 60.0, height: 60.0)
                            .cornerRadius(10)
                            .clipShape(Circle())
                        
                    }placeholder: {
                        ProgressView()
                    }
                    
                    Text(empregado.nome!)
                        .foregroundColor(Color("cinzaclaro"))
                        .fontWeight(.bold)
                        .font(.title)
                        .multilineTextAlignment(.center)
                }
            }
            ScrollView{
                
                VStack{
                    HStack{
                        Spacer()
                        Text("\(conversas[0])")
                            .padding()
                            .background(Color("roxo"))
                            .foregroundStyle(.white)
                            .font(.system(size: 20))
                            .cornerRadius(100)
                    }
                    ForEach(1...2, id: \.self){_ in
                        Spacer()
                    }
                    
                    HStack{
                        Spacer()
                        AsyncImage(url: URL(string: empregado.img!)){
                            image in image.resizable()
                                .scaledToFill()
                                .frame(width: 60.0, height: 60.0)
                                .cornerRadius(10)
                                .clipShape(Circle())
                            
                        }placeholder: {
                            ProgressView()
                        }
                        
                        Text("\(conversas[1])")
                            .padding()
                            .background(Color("cinzaclaro"))
                            .foregroundStyle(.black)
                            .font(.system(size: 20))
                            .cornerRadius(100)
                        
                        ForEach(1...10, id: \.self){_ in
                            Spacer()
                        }
                        
                    }
                    
                    
                    HStack{
                        Spacer()
                        Text("\(conversas[2])")
                            .padding()
                            .background(Color("roxo"))
                            .foregroundStyle(.white)
                            .cornerRadius(100)
                            .font(.system(size: 20))
                    }
                    ForEach(1...2, id: \.self){_ in
                        Spacer()
                    }
                    
                    HStack{
                        Spacer()
                        AsyncImage(url: URL(string: empregado.img!)){
                            image in image.resizable()
                                .scaledToFill()
                                .frame(width: 60.0, height: 60.0)
                                .cornerRadius(10)
                                .clipShape(Circle())
                            
                        }placeholder: {
                            ProgressView()
                        }
                        
                        Text("\(conversas[3])")
                            .padding()
                            .background(Color("cinzaclaro"))
                            .foregroundStyle(.black)
                            .font(.system(size: 20))
                            .cornerRadius(100)
                        Spacer()
                    }
                    ForEach(1...2, id: \.self){_ in
                        Spacer()
                    }
                    
                    HStack{
                        Spacer()
                        Text("\(conversas[4])")
                            .padding()
                            .background(Color("roxo"))
                            .foregroundStyle(.white)
                            .font(.system(size: 20))
                            .cornerRadius(100)
                    }
                }
                    HStack{
                        Spacer()
                        AsyncImage(url: URL(string: empregado.img!)){
                            image in image.resizable()
                                .scaledToFill()
                                .frame(width: 60.0, height: 60.0)
                                .cornerRadius(10)
                                .clipShape(Circle())
                            
                        }placeholder: {
                            ProgressView()
                        }
                        
                        Text("\(conversas[5])")
                            .padding()
                            .background(Color("cinzaclaro"))
                            .foregroundStyle(.black)
                            .font(.system(size: 20))
                            .cornerRadius(100)
                        ForEach(1...10, id: \.self){_ in
                            Spacer()
                        }
                    }
                    
                }
            
                ZStack{
                    Rectangle()
                        .foregroundColor(Color("cinzaclaro"))
                        .frame(width:400, height: 80)
                        .padding(.bottom, 10.0)
                    
                    
                    HStack{
                        RoundedRectangle(cornerRadius: 100)
                            .stroke(Color("roxo"), lineWidth: 2)
                            .foregroundColor(Color("cinzaclaro"))
                            .frame(width: 250.0, height: 55.0)
                        
                        Image("setaMensagem")
                            .resizable()
                            .frame(width: 45.0, height: 45.0)
                            .foregroundColor(Color("roxo"))
                        
                  }
                }
            
            
        }
    }
}
struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(empregado: dados(cpf: "", nome: "Fulano de Tal", sobrenome: "", tipo: "", telefone: "", categoria_servico: "", descricao_servico: "", descricao_categoria: "", img: "https://tm.ibxk.com.br/2017/06/22/22100428046161.jpg?img=1920x780"))
    }
}
