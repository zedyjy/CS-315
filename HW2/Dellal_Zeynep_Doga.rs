fn main() {
    println!("UNCONDITIONAL BREAK");
    let mut i = 1;
    while i < 5 {
        println!("{}", i);
        i = i + 1;
        break;
    }
    
    println!("UNCONDITIONAL CONTINUE");
    i = 1;
    while i < 5 {
        println!("{}", i);
        i = i + 1;
        continue;
    }
    
    println!("UNLABELED CONDITIONAL BREAK");
    i = 1;
    while i < 5 {
        if i == 3 {break;}
        println!("{}", i);
        i = i + 1;
    }
    
    println!("UNLABELED CONDITIONAL CONTINUE");
    i = 1;
    while i < 5 {
        i = i + 1;
        if i == 3 {continue;}
        println!("{}", i);
    }
    
     println!("LABELED BREAK");
    'label:for i in 1..8{ 
        println!("i is {}",i);
        for j in 3..8{
          if i==j {
            break 'label;
          }
      }
   }
   
    println!("LABELED CONTINUE");
    'labelforcontinue:for i in 1..5{ 
        for j in 1..5{
          if i==3 {
            continue 'labelforcontinue;
          }
      }
      println!("i is {}",i);
   }
}
