//
//  InfoView.swift
//  AutoPagerize X
//
//  Created by 茅根啓介 on 2023/02/13.
//

import SwiftUI
import StoreKit

struct InfoView: View {
    @Environment(\.requestReview) var requestReview
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading,spacing: 25) {
                    VStack(alignment: .leading,spacing: 5) {
                        Text("Copyrights")
                            .font(.title)
                            .bold()
                            .foregroundColor(.blue)
                        
                        HStack(alignment: .center) {
                            Text("AutoPagerize")
                                .font(.title2)
                            
                            Spacer()
                            
                            VStack(alignment: .trailing,spacing: 5) {
                                Text("© 2018 Youhei Sawada")
                            }
                        }
                        
                        Divider()
                        
                        HStack(alignment: .center) {
                            Text("App")
                                .font(.title2)
                            
                            Spacer()
                            
                            VStack(alignment: .trailing,spacing: 5) {
                                Text("© 2023 Keisuke Chinone")
                            }
                        }
                    }
                    
                    VStack(alignment: .leading,spacing: 5) {
                        Text("Source Code")
                            .font(.title)
                            .bold()
                            .foregroundColor(.blue)
                        
                        Text("Source Code Contents")
                        
                        Link("github.com",
                             destination: URL(string: "https://github.com/KC-2001MS/AutoPagerize-X")!)
                    }
                    
                    VStack(alignment: .leading,spacing: 5) {
                        Text("Cooperation and Contribution")
                            .font(.title)
                            .bold()
                            .foregroundColor(.blue)
                        
                        Text("Cooperation and Contribution Contents")
                        
                        HStack(alignment: .center) {
                            Text("AutoPagerize")
                                .font(.title2)
                            Spacer()
                            VStack(alignment: .trailing,spacing: 5) {
                                Link("Youhei Sawada",
                                     destination: URL(string: "http://autopagerize.net")!)
                            }
                        }
                        
                        Divider()
                        
                        HStack(alignment: .center) {
                            Text("Web Extention")
                                .font(.title2)
                            
                            Spacer()
                            
                            VStack(alignment: .trailing,spacing: 5) {
                                Link("Keisuke Chinone",
                                     destination: URL(string: "https://github.com/KC-2001MS")!)
                            }
                        }
                        
                        Divider()
                        
                        HStack(alignment: .center) {
                            Text("SwiftUI")
                                .font(.title2)
                            
                            Spacer()
                            
                            VStack(alignment: .trailing,spacing: 5) {
                                Link("Keisuke Chinone",
                                     destination: URL(string: "https://github.com/KC-2001MS")!)
                            }
                        }
                    }
                    
//                    VStack(alignment: .leading,spacing: 5) {
//                        Text("Share App")
//                            .font(.title)
//                            .bold()
//                            .foregroundColor(.blue)
//                        Text("Share App Contents")
//                        以下のURLは仮置きです。
//                        Link("AutoPagerize X App",
//                             destination: URL(string: "https://apps.apple.com/jp/app/%E3%81%B2%E3%82%88%E3%81%93%E3%83%95%E3%82%A3%E3%83%AB%E3%82%BF%E3%83%BC/id6443337009")!)
//                    }
                    
                    VStack(alignment: .leading,spacing: 5) {
                        Text("Feedback")
                            .font(.title)
                            .bold()
                            .foregroundColor(.blue)
                        
                        Text("Feedback Contents")
                        
                        Link("github.com",
                             destination: URL(string: "https://github.com/KC-2001MS/AutoPagerize-X")!)
                        
                        Link("iroiro.work1234@gmail.com",
                             destination: URL(string: NSLocalizedString("Feedback Mail", comment: ""))!)
                    }
                    
                    VStack(alignment: .leading,spacing: 5) {
                        Text("Review")
                            .font(.title)
                            .bold()
                            .foregroundColor(.blue)
                        
                        Text("Review Contents")
                        
                        Spacer()
                            .frame(height: 20)
                        
                        Button(action: {
                            requestReview()
                        }) {
                            Text("Submit")
                                .frame(maxWidth: .infinity)
                                .frame(height: 40)
                        }
                        .buttonStyle(.borderedProminent)
                    }
                }
                .padding()
            }
            .frame(alignment: .leading)
            .frame(maxWidth: .infinity)
            .navigationTitle("AutoPagerize X Info")
#if os(iOS)
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button(action: {
                        dismiss()
                    }) {
                        Text("Done")
                    }
                }
            }
#endif
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
