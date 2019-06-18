public class StringArrayTest {
    public static list<String> generateStringArray(Integer n){
        List<String> arr=new List<String>();
        for(Integer i=0;i<n;i++){
            arr.add('Test '+i);
            system.debug(arr[i]);
        }
        return arr;
    }

}