#include <iostream>
#include <unordered_map>
#include <string>

//Find first not repeatable char from a string
char findNonRepeatableChar(std::string str){
      std::unordered_map<char, int> cache;
      for(char c: str){
          if(cache.contains(c)) {
              cache[c] = ++cache.at(c);
              continue;
          }
          cache[c] = 1; 
      }
      for(char c: str){
          if(cache.at(c) == 1) return c;
      }
      return ' ';
}
int main(){
    std::cout << findNonRepeatableChar("abcbae") << std::endl;
}
