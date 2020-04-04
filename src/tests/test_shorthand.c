int main() 
{ 
    // This line is same as 
    // int array[10] = {1, 1, 1, 1, 0, 0, 2, 2, 2, 2}; 
    int array[10] = {[0 ... 3]1, [6 ... 9]2}; 
  
    for (int i = 0; i < 10; i++) 
        printf("%d ", array[i]); 
    return 0; 
} 
