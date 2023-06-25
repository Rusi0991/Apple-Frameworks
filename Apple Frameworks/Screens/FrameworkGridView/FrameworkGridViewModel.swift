//
//  FrameworkGridViewModel.swift
//  Apple Frameworks
//
//  Created by Ruslan Ismayilov on 6/22/23.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
//    var selectedframework : Framework?{
//        didSet { isShowingDetailView = true }
//    }
//    @Published var isShowingDetailView  : Bool = false
    
    let column : [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
