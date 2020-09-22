void main(){

    List numbers = [2,4,5,7,8,9,12,14,17,19,22,25,27,28,33,37];
    int high = 16;
    int low = 0;
    int needle = 25;

    var result =  binary_search(numbers, low, high, needle);

    if (result != false) {
        print('Element at index $result : from recur method');
    } else {
        print('Element Not Found : from recur method');
    }

    var result_2 = binary_itera_search(numbers, low, high, needle);

    if(result_2 != -1) {
      print('Element at index $result_2 : from Iterative method');
      }
    else {
      print('Element Not Found :  from Itera method');
      }

// print('result');
}

/// Binary search Recursive method [@params] [data as array], [needle as target] ,
/// [left as low] and [high as right] 
/// All arguments must not be null
dynamic binary_search(List data, low, high, neeedle){

        if(low > high){
          return false;
        }else {

          var mid = (low + high) ~/ 2;

          if(data[mid] == neeedle) {
                return mid;
          }else if(data[mid] > neeedle) {
                return binary_search(data, low, mid -1, neeedle);
          }else {
            return binary_search(data, mid+1, high, neeedle);
          }
        }
} 


/// Binary search Iterative Method [@params] [data as array], [needle as target] ,
/// [left as low] and [high as right]  
/// All arguments must not be null
int binary_itera_search(List data, int low, int high, int neeedle){

        while (low <= high) {

          // divide the total of low and high with 2 usign bitwise operator not (without remainder)
            var mid = (low + high) ~/ 2; 

            if(data[mid] == neeedle) {
              return mid;
            } // if mid equals to target return mid as index
            else if(data[mid] < neeedle){
                low = mid + 1;
              } // ignore the right half and check the left half
            else {
                high = mid - 1;
            } // ignore the left half and check ther right half
        }

        return -1;
}






