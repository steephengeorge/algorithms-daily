#include <iostream>
#include <vector>
#include <utility>


/* Given 2d binary matrix of size M[N-1][N-1].
 * Consider 1 as a path and 0 as dead end.
 * The person starts from M[0][0] and needs to reach
 * at point M[N-1][N-1] . He can either move forward
 * or down.
 * Calculate the path to reach the destination !
 *
*/

bool findMatrixPath(const std::vector<std::vector<int>> matrix, 
                          const int xStart, const int yStart, const int xEnd, const int yEnd,
                          std::vector<std::pair<int,int>> &path){

   if(xStart == xEnd && yStart == yEnd && matrix[xStart][yStart] == 1){
       path.push_back(std::pair<int, int>(xStart, yStart));
       return true;
   } 
   if(xStart >= 0 && xStart <= xEnd && yStart >= 0 && yStart <= yEnd && matrix[xStart][yStart] == 1){
       path.push_back(std::pair<int, int>(xStart, yStart));
       if (findMatrixPath(matrix, xStart , yStart + 1, xEnd, yEnd, path) ||
           findMatrixPath(matrix, xStart + 1, yStart , xEnd, yEnd, path)
       )
           return true;
   }
   return false;
}

int main(){
    std::vector<std::vector<int>> matrix = {
          {1, 0, 0, 0},
	  {1, 1, 0, 0},
	  {0, 1, 1, 0},
	  {1, 1, 1, 1}
    };
    std::vector<std::pair<int, int>> path;
    findMatrixPath(matrix, 0, 0, matrix.size() - 1, matrix[0].size() - 1, path); 
    for(const auto& val: path){
        std::cout << val.first << " " <<val.second << std::endl;
    }
}
