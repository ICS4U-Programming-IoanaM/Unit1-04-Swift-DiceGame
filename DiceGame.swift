import Foundation
//  DiceGame.swift
//
//  Created by Ioana Marinescu
//  Created on 2024/03/06
//  Version 1.0
//  Copyright (c) 2024 Ioana Marinescu. All rights reserved.
//
//  A program that makes the user guess a number until they get it right.

// variable declaration
let min = 1
let max = 6
var counter = 0
var userNum = 0
var diceNum = 0

// display introduction message
print("Welcome to the Dice Game! You will have to guess the number on the dice in order to win!")

// generates random number
diceNum = Int.random(in: min...max)

// do while that loops until user guesses correctly
repeat {
  // getting user input for user's guess
  print("Enter a number (1-6):")
  guard let input = readLine(), let num = Int(input) else {
    print("Please enter a valid integer from 1 to 6.")
  }
  userNum = num

  // checks if user input is between 1 and 6
  if userNum < 1 || userNum > 6 {
    print("Number must be between 1 and 6")

    // checks if user is higher than dice number
  } else if userNum > diceNum {
    print("The dice rolled lower. Guess again!")

  // checks if user is lower than dice number
  } else if userNum < diceNum {
    print("The dice rolled higher. Guess again!")
  }

  // counter increment
  counter += 1
} while userNum != diceNum

// displays result to console
print("Congrats! You guessed correctly! It took you \(counter) guesses.")
