//
//  ContentView.swift
//  AutoPagerize X
//
//  Created by 茅根啓介 on 2023/02/12.
//

import SwiftUI

struct ContentView: View {
    @State var isOpenInfo = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading,spacing: 25) {
                    VStack(alignment: .leading,spacing: 15) {
                        Text("AutoPagerize X")
                            .frame(maxWidth: .infinity,alignment: .leading)
                            .font(.title)
                            .bold()
                            .foregroundColor(.blue)
                        Text("About AutoPagerize X App")
                            .foregroundColor(.gray)
                        
                        VStack(alignment: .leading,spacing: 5) {
                            HStack {
                                Text("Function1")+Text("\u{00B9}")
                            }
                            .font(.title2)
                            .bold()
                            .foregroundColor(.blue)
                            Text("Function1 Contents")
                        }
                        
                        Text("1 Contents")
                            .font(.caption)
                    }
                    
                    VStack(alignment: .leading,spacing: 15) {
                        Text("How to Acitvate")
                            .font(.title)
                            .bold()
                            .foregroundColor(.blue)
                        VStack(alignment: .leading,spacing: 5) {
                            Text("Step1 Title")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.blue)
                            Text("Step1 Contents")
                        }
                        VStack(alignment: .leading,spacing: 5) {
                            Text("Step2 Title")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.blue)
                            Text("Step2 Contents")
                            
                        }
                        VStack(alignment: .leading,spacing: 5) {
                            Text("Step3 Title")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.blue)
                            Text("Step3 Contents")
                        }
                        
                        VStack(alignment: .leading,spacing: 5) {
                            Text("Step4 Title")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.blue)
                            Text("Step4 Contents")
                        }
                        
                        Text("※ Contents")
                            .foregroundColor(.orange)
                    }
                    
                    VStack(alignment: .leading,spacing: 15) {
                        Text("Extension Source")
                            .font(.title)
                            .bold()
                            .foregroundColor(.blue)
                        Text("Extension Source Contents")
                    }
                }
                .padding()
            }
            .frame(alignment: .leading)
            .frame(maxWidth: .infinity)
            .navigationTitle("Welcome")
            #if os(iOS)
            .sheet(isPresented: $isOpenInfo) {
                InfoView()
            }
            .toolbar(id:"toolbar") {
                ToolbarItem(id: "info",placement: .primaryAction) {
                    Button(action: {
                        isOpenInfo = true
                    }) {
                        Image(systemName: "info.circle")
                    }
                }
            }
#elseif os(macOS)
            .frame(minWidth: 400,idealWidth: 600,minHeight: 300, idealHeight: 400)
#endif
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
