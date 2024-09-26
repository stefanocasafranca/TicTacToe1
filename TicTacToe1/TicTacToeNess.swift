//
//  TicTacToeNess.swift
//  TicTacToe1
//
//  Created by Stefano Casafranca Laos on 9/24/24.
//

import Foundation

let X = "X"
let O = "O"
let S = " "

enum TicToeNess{
    case NoTicTacToe
    case FirstRow, MiddleRow, BottomRow
    case LeftColumn, MiddleColumn, RightColumn
    case ForwardsDiagonal, BackwardDiagonal
}
struct Game {
    
    
    var topLeft = S
    var topMiddle = S
    var topRight = S
    var middleLeft = S
    var middleMiddle = S
    var middleRight = S
    var bottomLeft = S
    var bottomMiddle = S
    var bottomRight = S
    var turn = X
    
    
    mutating func restart(){
        topLeft = S
        topMiddle = S
        topRight = S
        middleLeft = S
        middleMiddle = S
        middleRight = S
        bottomLeft = S
        bottomMiddle = S
        bottomRight = S
        turn = X
    }
    
    
    
    
    func markPlacedAt (tag:Int)  -> String {
        switch tag {
        case 0: return topLeft
        case 1: return topMiddle
        case 2: return topRight
        case 3: return middleLeft
        case 4: return middleMiddle
        case 5: return middleRight
        case 6: return bottomLeft
        case 7: return bottomMiddle
        case 8: return bottomRight
        default: return S
        }
    }

    
    mutating func canPlaceMarkAt(tag:Int) -> Bool {
        switch tag {
        case 0: return topLeft == S
        case 1: return topMiddle == S
        case 2: return topRight == S
        case 3: return middleLeft == S
        case 4: return middleMiddle == S
        case 5: return middleRight == S
        case 6: return bottomLeft == S
        case 7: return bottomMiddle == S
        case 8: return bottomRight == S
        default: return false
        }
    }
    
    
    mutating func switchTurn(){
        turn = turn == X ? O : X // if turn == X turn O else turn X
    }
    
    
    mutating func placeMarkAt(tag: Int) {
        switch tag {
        case 0: topLeft = turn
        case 1: topMiddle = turn
        case 2: topRight = turn
        case 3: middleLeft = turn
        case 4: middleMiddle = turn
        case 5: middleRight = turn
        case 6: bottomLeft = turn
        case 7: bottomMiddle = turn
        case 8: bottomRight = turn
        default: break
        }
        switchTurn()
    }
    
    func haveTicTacToe(tag:Int) -> TicToeNess {
        let ticTacToeInX = "XXX"
        let ticTacToeInO = "OOO"
        //First Row
        var sequence = topLeft + topMiddle + topRight
        if sequence == ticTacToeInX || sequence == ticTacToeInO{
            return.FirstRow
        }
        //Middle Row
        sequence = middleLeft + middleMiddle + middleRight
        if sequence == ticTacToeInX || sequence == ticTacToeInO{
            return.MiddleRow
        }
        //Bottom Row
        sequence = bottomLeft + bottomMiddle + bottomRight
        if sequence == ticTacToeInX || sequence == ticTacToeInO{
            return.BottomRow
        }
        //Left Column
        sequence = topLeft + middleLeft + bottomLeft
        if sequence == ticTacToeInX || sequence == ticTacToeInO{
            return.LeftColumn
        }
        //Middle Column
        sequence = topMiddle + middleMiddle + bottomMiddle
        if sequence == ticTacToeInX || sequence == ticTacToeInO{
            return.MiddleColumn
        }
        //Right Column
        sequence = topRight + middleRight + bottomLeft
        if sequence == ticTacToeInX || sequence == ticTacToeInO{
            return.ForwardsDiagonal
        }
        //Forward Diagonal
        sequence = topLeft + middleRight + bottomRight
        if sequence == ticTacToeInX || sequence == ticTacToeInO{
            return.BackwardDiagonal
        }
        
        return .NoTicTacToe
    }

        
        func display(){
            let BAR = "|"
            let firstRow = S + topLeft + S + BAR + S + topMiddle + S + BAR + S + topRight
            let separator = "---+---+---"
            print (firstRow)
            print(separator)
            let secondRow = S + middleLeft + S + BAR + S + middleMiddle + S + BAR + S + middleRight
            print (secondRow)
            print(separator)
            let thirdRow = S + bottomLeft + S + BAR + S + bottomMiddle + S + BAR + S + bottomRight
            print(thirdRow )
        }
    }
    
    var myGame = Game()
    
    
