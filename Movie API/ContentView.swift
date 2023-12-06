//
//  ContentView.swift
//  Movie API
//
//  Created by Leticia Rios on 11/21/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack (spacing: 20) {
            Image("cat")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Rectangle())
            //placeholder for movie poster
            Text("Movie Title")
                .bold()
                .font(.largeTitle)
            //plscehodler for Movie Title
            Text("Small description for the movie")
                .font(.subheadline)
            //placeholder for description i am coming back and forth from my sleep.
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

