package com.sm.daily;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

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
public class ContaminationSpread {

	public static void main(String[] args) {
		List<Integer> positions = List.of(1, 3, 5, 9, 14);
		findMinMaxSpread(positions, 5);
	}
	
	public static void findMinMaxSpread(List<Integer> pos, int distance) {
		List<Integer> spread = new ArrayList<>();
		for(int i = 0; i < pos.size() - 1; ++i) {
			int spreadCount = 0;
			for(int j = i + 1; j < pos.size(); ++j) {
				if(Math.abs(pos.get(i) - pos.get(j)) <= distance) {
					++spreadCount;
				}
			}
			spread.add(spreadCount);
		}
		System.out.println("max possible spread:" + Collections.max(spread));
		System.out.println("min possible spread: " + Collections.min(spread));
	}
}
