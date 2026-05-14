//
//  FormPage.swift
//  Frontend
//
//  Created by Amit Raj on 14/05/26.
//

import SwiftUI

struct FormPage: View {
    @State var firstName : String = ""
    @State var LastName : String? = nil
    var body: some View {
        VStack(alignment: .leading){
            Text("What's Your name ?")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .fontDesign(.rounded)
            TextField("First Name", text: $firstName)
                .fontDesign(.rounded)
                Rectangle()
                .frame(height: 4)
                .padding(.bottom, 10)
            TextField("Last Name", text: $firstName)
                .fontDesign(.rounded)
                Rectangle()
                .frame(height: 4)
            Text("Last Name is Optional")
                .foregroundStyle(.secondary)
                .font(.footnote)
        }
        .padding()
        
    }
}

#Preview {
    FormPage()
}
