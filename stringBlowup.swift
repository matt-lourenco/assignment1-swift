//
//  stringBlowup.swift
//  This program takes a string and scans for any integers. If it
//      finds and integers it will replace them with the next character
//      multiplied by the value of the integer
//
//  Created by Matthew Lourenco on 16/02/18.
//  Copyright © 2018 MTHS. All rights reserved.
//

import Foundation

var input: String?
var userString: String = ""
var finalString: String = ""
var character: Character
var nextCharacter: Character

//Get user input
print("Enter a string: ")
input = readLine(strippingNewline: true)
if input != nil {
	userString = input!
} else {
	print("The blown up string is: ")
}

//check length of string
if userString.count > 1 {
	//search string
	for checkCharacter in 0...(userString.count - 2) {
		//check for integers
		character = userString[userString.index(userString.startIndex, offsetBy: checkCharacter)]
		nextCharacter = userString[userString.index(userString.startIndex, offsetBy: checkCharacter + 1)]
		if character >= "0" && character <= "9" {
			//Duplicate the characters
			for duplicateCharacters in 0..<Int(String(character))! {
				finalString = finalString + String(nextCharacter)
			}
		} else {
			finalString = finalString + String(character)
		}
	}
	//check if last character is digit
	let lastCharacter = userString.index(userString.endIndex, offsetBy: -1)
	if userString[lastCharacter] >= "0" && userString[lastCharacter] <= "9" {
		//do nothing
	} else {
		finalString = finalString + String(userString[lastCharacter])
	}
	print("The blown up string is: \(finalString)")
} else if userString.count == 1 {
	//check if character is digit
	if Character(userString) >= "0" && Character(userString) <= "9" {
		//do nothing
	} else {
		finalString = userString
	}
	print("The blown up string is: \(finalString)")
} else {
	print("The blown up string is: ")
}