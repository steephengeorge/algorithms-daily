/* 
 I have a road block here. Let me go back to text book and celebrate my failure

*/



use std::convert::TryInto;

fn main() {
    let width = 4;
    let height = 4;

    let mut array = vec![vec![0; width]; height];   
    array =[vec![1, 0, 0, 0],
	    vec![1, 1, 1, 1],
	    vec![1, 1, 1, 1],
	    vec![1, 1, 1, 1]].to_vec();
    find_matrix_path(&array, 0, 0, array.len().try_into().unwrap(), array[0].len().try_into().unwrap());
    
}
fn find_matrix_path(&array :&[i32][i32], xStart :i32, yStart :i32, xEnd :i32, yEnd :i32){

    let slice_outer_len = len(array);
    let slice_inner_len = len(array[0]);
    for i in 0..slice_outer_len {
        for j in i + 1..slice_inner_len{
              println!(array[i][j])          
        }
    }

}


