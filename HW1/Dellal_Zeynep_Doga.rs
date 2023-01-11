use std::collections::HashMap;

fn foo(key:&str,value:&str){
    println!("Key : {}, value : {}" , key , value);
}

fn main() {
      // Initialize
    let mut assoc_arr: HashMap<&str, &str> =
    [("color", "purple"), 
                ("number", "2"),
                ("city", "ankara"),
                ("class", "CS-315")].iter().cloned().collect();
println!("{:?}", assoc_arr);
    // Get the value for a given key
    println!("\nGetting the value of color: {:?}", assoc_arr.get("color").unwrap());

    // Add a new element
    assoc_arr.insert("language","rust");
   

    // Remove an element 
    assoc_arr.remove("class");

    // Modify the value of an existing element
    *assoc_arr.get_mut("number").unwrap() = "13";

    // Search for the existence of a key
    println!("Searching if color key exists: {:?}", assoc_arr.contains_key("color"));
    println!("Searching if name key exists: {:?}", assoc_arr.contains_key("name"));

    // Search for the existence of a value
    println!("Searching if ankara value exists: {:?}", assoc_arr.values().any(|&value| value == "ankara"));
    println!("Searching if ankara value exists: {:?}", assoc_arr.values().any(|&value| value == "istanbul" ));

    // Loop through an associative array, apply a function, called foo, which simply prints the key-value pair
     for (k, v) in &assoc_arr {
        foo(k,v);
    }
    
}