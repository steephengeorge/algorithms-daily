package main

import "fmt"

func main(){
    matrix := make([][]int, 4)
    matrix[0] = []int {1, 0, 0, 0}
    matrix[1] = []int {1, 1, 1, 1}
    matrix[2] =	[]int {1, 1, 1, 1}
    matrix[3] = []int {1, 1, 1, 1} 
    var path [][]int 
    findMatrixPath(&matrix, 0, 0, len(matrix) - 1, len(matrix[0]) - 1, &path)
    for _, v := range path{
        fmt.Printf("x: %d y:  %d \n" , v[0], v[1])
    }
}

func findMatrixPath(matrix *[][]int, xStart int, yStart int, xEnd int, yEnd int,path *[][]int ) bool{
     if xStart == xEnd && yStart == yEnd && (*matrix)[xStart][yStart] == 1{
         *path = append(*path, []int{xStart, yStart})
         return true
     }      
     if xStart >= 0 && xStart <= xEnd && yStart >= 0 && yStart <= yEnd && (*matrix)[xStart][yStart] == 1 {
         *path = append(*path, []int{xStart, yStart})
         if findMatrixPath(matrix, xStart, yStart + 1, xEnd, yEnd, path) || findMatrixPath(matrix, xStart + 1, yStart, xEnd, yEnd, path) {
             return true
         }
     }
     return false
}
