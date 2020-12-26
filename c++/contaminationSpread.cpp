#include <iostream>
#include <vector>
#include <algorithm>


/*
 * Given n number of persons in a park. One of them is having a virus. But we don't know whom. 
 * Also, the position of all persons is given. A contaminated person can spread it up to d distance.
 *  When the best case (Spread is minimum) and the worst case(Spread is maximum) would occur?e.g.
   N=5
   Position=[1, 3, 5, 9, 14]
   d=5
   Remark: There is vagueness in question, position does not mean distance.
   If we consider position as distance, what is the reference point for this distance.
   So lets assume people are in line in park and each position meant the unit of measure from the origin. 
 */ 

void contaminationSpread(std::vector<int> pos, int distance){
    
    std::vector<int> spread;
    for(int i = 0; i < pos.size() - 1; ++i){
        int spreadCount = 0;
        for(int j = i+1; j < pos.size() ; ++j){
            if(std::abs(pos[i] - pos[j]) <= distance){
                ++spreadCount;
            }
        }
        spread.push_back(spreadCount);
    } 
    std::cout << "Max spread :" << *std::max_element(spread.begin(), spread.end()) << std::endl;
    std::cout << "Min spread :" << *std::min_element(spread.begin(), spread.end()) << std::endl;
}

int main(){
    std::vector<int> v{1, 3, 5, 9, 14};
    contaminationSpread(v, 5); 
}
