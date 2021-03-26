public class DeserializationDemo {
    public static void testDeserialization () {
        String str = '';
      	WrapperTest obj1 = new WrapperTest();
        obj1.name = 'munna';
        obj1.classNumber = 10;
       
        String JSONString = JSON.serialize(obj1);
         system.debug(JSONString);
        WrapperTest obj = (WrapperTest)JSON.deserializeStrict(JSONString, WrapperTest.class);
        system.debug(obj);
            }
    
}