//
//  ContentView.swift
//  Travel
//
//  Created by Andrea Nascimento on 30/04/25.
//

import SwiftUI

struct FullScreenImageView : View {
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                Image("travel")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .opacity(0.5)
                
                VStack(spacing: 10.0){
                    Text("Descubra\nnovos destinos!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding()
                        .fontWeight(.bold)
                        .background(Color.black.opacity(0.4))
                        .cornerRadius(10)
                        .padding()
                    
                    Spacer()
                    
                    Button(action:{
                        print("Botão clicado: explorar agora")
                    }) {
                        Text("Explorar agora")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: geometry.size.width * 0.5)
                            .background(Color.orange)
                            .cornerRadius(10)
                            .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: 3)
                    }
                    .padding(.bottom, 20)
                }
                .padding(.top, 40)
            }
        }
    }
}

#Preview {
    FullScreenImageView()
}
