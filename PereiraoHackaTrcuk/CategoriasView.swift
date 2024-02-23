//
//  CategoriasView.swift
//  PereiraoHackaTrcuk
//
//  Created by Turma01-11 on 07/02/24.
//

import SwiftUI

struct CategoriasView: View {
    @State private var search=""
    @StateObject var instancia = ViewModel()
    var categoria_escolhida: String
    
    var body: some View {
        
        NavigationStack{
            VStack{
                
                ZStack{
                    Rectangle()
                        .foregroundColor(Color("roxo"))
                        .cornerRadius(20) // ajuste conforme necessário
                        .padding(.vertical, -20)
                        .ignoresSafeArea()
                    
                    VStack {
                        Image("logoiconbranco").resizable().scaledToFill().frame(width: 200.0, height: 103.0).padding(.bottom, 28.0)
                        
                        HStack{
                            TextField("Serviço especifico?", text: $search).frame(width: 200.0).font(.title2).foregroundColor(Color("preto"))
                            
                            Image(systemName: "magnifyingglass").foregroundColor(Color("preto"))
                            
                            
                        }//hstacktextfield
                        .foregroundColor(.white)
                        .padding(10)
                        .background(Color("cinzaclaro"))
                        .cornerRadius(10)
                        .padding(.horizontal, 50.0)
                        
                        HStack{
                            
                            Image(systemName: "wrench.and.screwdriver")
                            Text(categoria_escolhida).font(.title2).bold()
                            
                            
                        }//hstack
                        .padding()
                        .foregroundColor(.white)
                        
                        ScrollView{
                            
                            ForEach(searchResults, id: \.self){ index in
                                if index.tipo==categoria_escolhida{
                                    ZStack {
                                        Rectangle()
                                            .frame(width: 353.0, height: 184.0)
                                            .cornerRadius(37)
                                            .foregroundColor(Color("cinzaclaro"))
                                        
                                        VStack {
                                            Text(index.categoria_servico!)
                                                .font(.custom("Poppins", size: 20))
                                                .fontWeight(.bold)
                                                .foregroundColor(Color("preto"))
                                            
                                            HStack {
                                                Image("estrelas")
                                                    .resizable()
                                                    .frame(width: 20, height: 20)
                                                    .scaledToFit()
                                                    .padding(.trailing, 5)
                                                
                                                Image("estrelas")
                                                    .resizable()
                                                    .frame(width: 20, height: 20)
                                                    .scaledToFit()
                                                    .padding(.trailing, 5)
                                                
                                                Image("estrelas")
                                                    .resizable()
                                                    .frame(width: 20, height: 20)
                                                    .scaledToFit()
                                                    .padding(.trailing, 5)
                                                
                                                Image("estrelas")
                                                    .resizable()
                                                    .frame(width: 20, height: 20)
                                                    .scaledToFit()
                                                    .padding(.trailing, 5)
                                                
                                                Image("estrelas")
                                                    .resizable()
                                                    .frame(width: 20, height: 20)
                                                    .scaledToFit()
                                            }
                                            
                                            HStack {
                                                ZStack{
                                                    Circle()
                                                        .frame(width: 80.0, height: 80.0).foregroundColor(Color("roxo"))
                                                    
                                                    AsyncImage(url: URL(string: index.img!)){
                                                        image in image.resizable()
                                                            .scaledToFill()
                                                            .frame(width: 70.0, height: 70.0)
                                                            .cornerRadius(10)
                                                            .clipShape(Circle())
                                                        
                                                    }placeholder: {
                                                        ProgressView()
                                                    }
                                                }
                                                
                                                
                                                
                                                VStack(alignment: .leading, spacing: 5) {
                                                    Text(index.nome!+" "+index.sobrenome!)
                                                        .font(.custom("Poppins", size: 15))
                                                        .fontWeight(.bold)
                                                    
                                                    /*   Text(usuario.descricao_servico!)
                                                     .font(.custom("Poppins", size: 10))
                                                     .foregroundColor(Color("preto"))*/
                                                    
                                                    Text(index.descricao_categoria!)
                                                        .font(.custom("Poppins", size: 10))
                                                        .foregroundColor(Color("preto"))
                                                    
                                                }
                                                
                                                Spacer()
                                            }.padding(.horizontal, 42.0)
                                            
                                            NavigationLink(destination: PerfilView(perfil:index)){
                                                ZStack{
                                                    Rectangle()
                                                        .foregroundColor(Color("roxo"))
                                                        .frame(width: 153.0, height: 30.0)
                                                        .cornerRadius(15)
                                                    
                                                    Text("Contratar")
                                                        .foregroundColor(Color("cinzaclaro"))
                                                    
                                                }
                                            }
                                        }
                                        
                                        
                                    }
                                }// else {Text("ai e foda")}
                                
                                
                            }//foreach
                            
                        }
                        
                        
                    }.padding()
                    
                }
                
            }//Usuarios
            
            
        }.onAppear(){
            instancia.BaixarDados(query: search)
        }
        //.searchable(text: $search)
    }
    
    var searchResults: [dados] {
          if search.isEmpty {
              return instancia.chars
          } else {
              let searchKeywords = search.lowercased().split(separator: " ").map { String($0) }
              return instancia.chars.filter { usuario in
                  guard let descricao = usuario.categoria_servico?.lowercased() else { return false }
                  return searchKeywords.allSatisfy { descricao.contains($0) }
              }
          }
      }
}


struct CategoriasView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriasView(categoria_escolhida: "Assistência Técnica")
    }
}
