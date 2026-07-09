//
//  RepoForm.swift
//  GithubClient
//
//  Created by Usuario invitado on 8/7/26.
//

import SwiftUI

struct RepoForm: View {
    @State private var repoName: String = ""
    @State private var repodescriptionName: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField(
                    "",
                    text: $repoName,
                    prompt: Text("Nombre del repositorio")
                        .foregroundStyle(.accent.opacity(0.6))
                    )
                    .textFieldStyle(.roundedBorder)
                    .padding(.vertical)
                
                TextField(
                    "",
                    text: $repodescriptionName,
                    prompt: Text("Descrpcion del repositorio")
                        .foregroundStyle(.accent.opacity(0.6))
                    )
                    .textFieldStyle(.roundedBorder)
                    .lineLimit(4...10)
                    .padding(.vertical)
                
                Button(action: {
                    print("Boton aplastado")
                }){
                    Label("Crear repo",systemImage:
                           "square.and.arrow.down")
                    .padding(.all,8)
                }
                .buttonStyle(.borderedProminent)
            }
            .navigationTitle("Formulario de repositorio")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    RepoForm()
}
