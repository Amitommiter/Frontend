//
//  ContentView.swift
//  Frontend
//
//  Created by Amit Raj on 14/05/26.
//

import SwiftUI

struct ContentView: View {
    @State var isShow : Bool = false
    var body: some View {
        NavigationStack {
            Image("HomePageImage")
                .resizable()
                .scaledToFill()
                . ignoresSafeArea()
                .offset(x:-20)
                .overlay(alignment: .bottom){
                    VStack(alignment: . leading){
                        Text("Your Daily Store")
                            . font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundStyle(.white)
                            .padding(.bottom , 10)
                        Text("This is our short Desciption. I want it to be crisp and punchy")
                            .font(.title3)
                            .fontWeight(.medium)
                            .foregroundStyle(.secondary)
                        if !isShow {
                            NavigationLink{
                                FormPage()
                            } label: {
                                VStack{
                                    Text("Create Account")
                                        .foregroundStyle(.white)
                                        .fontWeight(.medium)
                                        .font(.title2)
                                }
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(.green, in: .capsule)
                                
                            }
                            .padding(.vertical, 10)
                            HStack{
                                Button {
                                    
                                } label: {
                                    VStack{
                                        Text("Browse the app")
                                            .tint(.gray)
                                            .font(.title2)
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding(.vertical)
                                    .background(.ultraThinMaterial.opacity(0.3), in:.capsule)
                                    .tint(.secondary)
                                }
                                Button {
                                    withAnimation {
                                        isShow.toggle()
                                    }
                                } label: {
                                    VStack{
                                        Text("Sign In")
                                            .tint(.gray)
                                            .font(.title2)
                                    }
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(.ultraThinMaterial.opacity(0.3), in:.capsule)
                                    .tint(.secondary)
                                }
                            }
                        }else{
                            VStack{
                                signInButtons()
                            }
                            .transition(.blurReplace)
                        }
                    }
                    .padding(40)
                    
                    
                }
        }
    }
    @ViewBuilder
    func signInButtons()->some View{
        Button {
            
        } label: {
            HStack{
                Image(systemName: "apple.logo")
                    .foregroundStyle(.black)
                    .font(.title2)
                Text("Sign In With Apple")
                    .font(.title2)
                    .foregroundStyle(.black)
                    .fontWeight(.medium)
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(.white, in: .capsule)
        }
        Button {
            
        } label: {
            HStack{
                Image("Google")
                    .resizable()
                    .frame(width : 28,height: 28)
                    .foregroundStyle(.black)
                    .font(.title2)
                Text("Sign In With Google")
                    .font(.title2)
                    .foregroundStyle(.black)
                    .fontWeight(.medium)
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(.white, in: .capsule)
        }
        Button {
            
        } label: {
            HStack{
                
                Text("Sign In With Phone Number")
                    .font(.title2)
                    .foregroundStyle(.black)
                    .fontWeight(.medium)
                
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(.green, in: .capsule)
        }
        Button("Back") {
            withAnimation {
                isShow.toggle()
            }
            
        }
        .tint(.black)
    }
}


#Preview {
    ContentView()
}
