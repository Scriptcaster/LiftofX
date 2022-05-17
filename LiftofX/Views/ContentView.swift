//
//  ContentView.swift
//  LiftofX
//
//  Created by SyberPoiint on 5/17/2022.
//

import SwiftUI

struct ContentView: View {
    
//    init() {
        //Use this if NavigationBarTitle is with Large Font
//        UINavigationBar.appearance().largeTitleTextAttributes = [.font : UIFont(name: "Georgia-Bold", size: 40)!]
//    }
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.mission){ mission in
                NavigationLink(destination: DetailView(name: mission.name)) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text(
                                mission.name
                            )
                                .font(.headline)
                            Text(
                                networkManager.formatDate(date: mission.date_local
                            ))
                            .font(.system(size: 14, weight: .light, design: .default))
                        }
                        .padding([.top, .bottom, .trailing], 7)
                    }
                }
            }
            .navigationTitle("LiftofX")
            .navigationBarTitleDisplayMode(.inline)
            .listStyle(.plain)
            
        }
        .navigationViewStyle(.stack)
        .padding(.all)
        .onAppear{
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewInterfaceOrientation(.portraitUpsideDown)
            ContentView()
                .previewInterfaceOrientation(.portraitUpsideDown)
        }
    }
}
