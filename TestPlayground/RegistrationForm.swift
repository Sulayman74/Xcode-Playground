//
//  RegistrationForm.swift
//  TestPlayground
//
//  Created by Sirikone KEOHAVONG on 29/12/2023.
//

import SwiftUI

struct RegistrationForm: View {
    @State var firstname = ""
    @State var lastname = ""
    @State var email = ""
    @State var password = ""
    var body: some View {
        Form {
            
            Section(header: Text("Informations personnelles")) {
                TextField("Prénom", text: $firstname)
                           TextField("Nom", text: $lastname)
                       }
            Section(header: Text("Coordonnées")) {
                TextField("Email", text: $email).textContentType(.emailAddress)

                            SecureField("Mot de passe", text: $password)
                        }
            Section {
                HStack {
                           Spacer() // Ajoutez un espace flexible à gauche pour pousser le bouton vers la droite
                           Button(action: {
                               print("Nom: \(firstname)")
                               print("Prénom: \(lastname)")
                               print("Email: \(email)")
                               print("Mot de passe: \(password)")
                           }) {
                               Text("S'inscrire")
                                   .frame(maxWidth: 200)
                                   .padding()
                                   .foregroundColor(.white)
                                   .background(Color.blue)
                                   .cornerRadius(5)
                           }
                           .buttonStyle(PlainButtonStyle())
                           .disabled(email.isEmpty || password.isEmpty)
                       }
                   }
        }.padding()
        
        
    }
}

#Preview {
    RegistrationForm()
}
