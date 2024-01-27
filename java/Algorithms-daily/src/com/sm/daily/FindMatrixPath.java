
package com.sm.daily;

import java.util.ArrayList;
import java.util.List;

public class FindMatrixPath {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int[][] matrix = { 
				{1, 0, 0, 0},
				{1, 1, 1, 1},
				{1, 1, 1, 1},
				{1, 1, 1, 1}
		};
		List<List<Integer>> path= new ArrayList<>();
		findMatrixPath(matrix, 0, 0, matrix.length - 1, matrix[0].length - 1, path);
		path.stream().forEach(x -> System.out.println("x: "+ x.get(0) +" y: "+ x.get(1) + "\n"));

	}

	/* Given 2d binary matrix of size M[N-1][N-1].
	 * Consider 1 as a path and 0 as dead end.
	 * The person starts from M[0][0] and needs to reach 
	 * at point M[N-1][N-1] . He can either move forward 
	 * or down.
	 * Calculate the path to reach the destination !
	 *  
	 */
	public static boolean findMatrixPath(int[][] matrix, int xStart,
			int yStart, int xEnd, int yEnd, 
			List<List<Integer>> path){

		if(xStart == xEnd && yStart == yEnd && matrix[xStart][yStart] == 1) {			
			path.add(List.of(xStart, yStart));
			return true;
		}

		if(xStart >= 0 && xStart <= xEnd && yStart >= 0 && yStart <= yEnd && matrix[xStart][yStart] == 1) {
			path.add(List.of(xStart, yStart));				
			if(findMatrixPath(matrix, xStart + 1, yStart, xEnd, yEnd, path) || findMatrixPath(matrix, xStart, yStart + 1, xEnd, yEnd, path)) {					
				return true;
			}				
		}
		return false;
	}
}
