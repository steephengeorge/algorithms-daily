package com.sm.daily;

import java.util.Iterator;
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
		for(int i = 0; i < str.length(); ++i) {
			storage.merge(str.charAt(i), 1, (v1, v2) ->  v1 + v2);
		}
        Iterator<Character> keySetIterator = storage.keySet().iterator();
		
		while(keySetIterator.hasNext()) {
			Character key = (Character) keySetIterator.next();
			Integer val = storage.get(key);
			if(val == 1) return key;
		}
		return null;

	}
}
