//
//  sellReducer.swift
//  i2020_03_10_ReSwift
//
//  Created by George Karakyklas on 4/6/20.
//  Copyright © 2020 Bradford, Phillip. All rights reserved.
//

import ReSwift

func sellReducer(action: Action, state: AppState?) -> AppState {
    
    var state = state ?? AppState()
       
       switch action {
        
       case myActions.sellCoordinator(let  sellCoordinatorData):
            state.counter = 0
            state.sellCoordinatorState.myInt = sellCoordinatorData!.numberOfUnits
            state.sellCoordinatorState.myString = sellCoordinatorData!.packingLabel
        
       case myActions.accountCoordinator(let accountCoordinatorData):
        state.accountCoordinatorState.accountName = accountCoordinatorData!.packingLabel
            
       default:
        break
       }
    
    return state
}

