//
//  DetailView.swift
//  LiftofX
//
//  Created by SyberPoiint on 5/17/2022.
//

import SwiftUI

struct DetailView: View {
    
    let name: String
    
    var body: some View {
        Text(
            name
        )
//        WebView(urlString: <#T##String?#>: name)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(name: "https://www.google.com.ar")
    }
}

