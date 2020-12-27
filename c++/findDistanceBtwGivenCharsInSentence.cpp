#include <iostream>
#include <string>

/* find distance between given chars in a agiven sentence
 * Assumptions: 
 * 1. First char will be present in sentence before second char
 * 2. Both given chars will be different
 * 3. 
 */
int findDistanceBtwCharsInSentence(std::string &str, char first, char second){
   
    size_t firstIdx = str.find_first_of(first);
    size_t secondIdx = str.find_first_of(second);
    return secondIdx - firstIdx;  
}
int main(){
    std::string str("Davis is here");
    std::cout << findDistanceBtwCharsInSentence(str, 'a', 'h') << std::endl;
}
