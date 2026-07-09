//
//  RepoItem.swift
//  GithubClient
//
//  Created by Usuario invitado on 9/7/26.
//

import SwiftUI

struct RepoItem: View {
    var body: some View {
        HStack {
            Image (uiImage: .githubLogo)
                .resizable()
                .frame(width: 80, height: 80)
            VStack (alignment: .leading){
                Text("nombre del repo")
                    .font(.title)
                Text("lorem ipsum description of repo here and more info about repo and stuff and stuff")
                    .font(.caption)
                    .padding(.top, 0.1)
                HStack {
                    Text("Lenguaje")
                        .fontWeight(.bold)
                    Spacer()
                    Text("Swift")
                }
                .font(.caption)
                .padding(.top, 0.1)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    RepoItem()
}
