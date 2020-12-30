
fn main(){
    let mut st = String::from("Apple is a great company");
    conv_pig_latin(&mut st)
}
/*
Convert strings to pig latin. The first consonant of each word is moved to 
the end of the word and “ay” is added, so “first” becomes “irst-fay.” 
Words that start with a vowel have “hay” added to the end instead 
(“apple” becomes “apple-hay”). Keep in mind the details about UTF-8 encoding!

*/
fn conv_pig_latin(st: &mut str){
    let words :Vec<&str> = st.split(' ').into_iter().collect();
    let mut result :Vec<String> = Vec::new();
    for word in words{
        println!("{}", word);
        let word_char:Vec<char> = word.chars().collect();
        let mut res = word.to_string();

        match word_char[0]{
             'a' => res.push_str("_hay"),
             'A' => res.push_str("_hay"),
             'e' => res.push_str("_hay"),
             'E' => res.push_str("_hay"),
             'i' => res.push_str("_hay"),
             'I' => res.push_str("_hay"),
             'o' => res.push_str("_hay"),
             'O' => res.push_str("_hay"),
             'u' => res.push_str("_hay"),
             'U' => res.push_str("_hay"),
             _  => {
                      res.push('_');
                      res.push(word_char[0]);
                      res.remove(0);
                      res.push_str("ay");
             } 
        }
        result.push(res);
    }
    for word in result{
        println!("{} ", word);
    }
}
