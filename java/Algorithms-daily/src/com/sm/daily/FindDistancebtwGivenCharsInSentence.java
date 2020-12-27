package com.sm.daily;

public class FindDistancebtwGivenCharsInSentence {

	public static void main(String[] args) {
		System.out.println(findDistancebtwGivenCharsInSentence("Davis is here", 'a', 'h'));
	}
	/* find distance between given chars in a agiven sentence
	 * Assumptions: 
	 * 1. First char will be present in sentence before second char
	 * 2. Both given chars will be different
	 * 3. 
	 */
	public static int findDistancebtwGivenCharsInSentence(String str, char first, char second) {
		int firstIdx = str.indexOf(first);
		int secondIdx = str.indexOf(second);
		return  secondIdx - firstIdx; 
	}
}
