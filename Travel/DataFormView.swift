//
//  DataFormView.swift
//  Travel
//
//  Created by Andrea Nascimento on 11/05/25.
//

import SwiftUI

struct DataFormView: View {
    
    @State private var nome: String = ""
    @State private var idadeTexto: String = ""
    @State private var viajantes: [Viajante] = []
    
    
    var body: some View {
        NavigationView{
            VStack{
                Form {
                    Section(header: Text("Informções do viajante")){
                        TextField("Nome", text: $nome)
                        TextField("Idade", text: $idadeTexto)
                            .keyboardType(.numberPad)

                            .keyboardType(.numberPad)
                        
                        Button(action: {
                            if let idade = Int(idadeTexto) {
                                let novoViajante = Viajante(nome: nome, idade: idade)
                                viajantes.append(novoViajante)
                                nome = ""
                                idadeTexto = ""
                            }
                            
                        }) {
                            Text("Salvar")
                                .frame(maxWidth: .infinity)
                        }
                        .disabled(nome.isEmpty || idadeTexto.isEmpty)
                    }
                }
                
                List(viajantes) { viajante in
                    VStack(alignment: .leading){
                        Text("Nome\(viajante.nome)")
                        Text("Idade\(viajante.idade)")
                            .foregroundColor(.gray)
                    }
                    
                }
            }
            .navigationTitle("Cadastro de Viagem")
        }
    }
}

#Preview {
    DataFormView()
}
