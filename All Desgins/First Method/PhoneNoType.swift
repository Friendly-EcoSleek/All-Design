//
//  PhoneNoType.swift
//  PhoneNumber
//
//  Created by Happy on 02/03/21.
//

import SwiftUI

struct PhoneNoType: View {
    @State var phoneNumber = ""
    @State var code = ""
    @ObservedObject var codeTextField = ObservableTextField()
    var body: some View {
        ZStack {
                RoundedRectangle(cornerRadius: 10).stroke()
                    .frame(width: 270, height: 50)
                HStack (spacing: 0) {
                    HStack (spacing: 0) {
                        Text(self.codeTextField.getCountryCode(codeTextField.value).isEmpty ? "🇦🇺" : "\(self.codeTextField.flag(country: self.codeTextField.getCountryCode(codeTextField.value)))")
                            .frame(width: 30, height: 50)
                        
                        TextField("+1", text: $codeTextField.value)
                            .keyboardType(.phonePad)
                            .frame(width: 40, height: 50)
                    }
                    .background(Color.secondary.opacity(0.2))
                    .cornerRadius(10)
                    
                    TextField("Phone Number", text: $phoneNumber)
                        .padding()
                        .frame(width: 200, height: 50)
                        .keyboardType(.phonePad)
                    
                }.padding()
        }
    }
}

struct PhoneNoType_Previews: PreviewProvider {
    static var previews: some View {
        PhoneNoType()
    }
}
