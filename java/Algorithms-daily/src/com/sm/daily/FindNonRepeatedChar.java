package com.sm.daily;

import java.util.LinkedHashMap;
import java.util.Map;

//Find the first non-repeated character in a string of characters
public class FindNonRepeatedChar {
	public static void main(String[] args) {
		System.out.println(findNonRepeatedChar("abcbae"));
	}
	public static Character findNonRepeatedChar(String str) {

		//input -> abcbae
		Map<Character, Integer> storage = new LinkedHashMap<>();
		for( char c: str.toCharArray()){
			if(storage.containsKey(c)){
				storage.put(c, storage.get(c) + 1);
				continue;
			}
			storage.put(c, 1);
		}
       for(var pair : storage.entrySet() ){
			if(pair.getValue() ==1){
				return pair.getKey();
			}
	   }
		return null;
	}
}
