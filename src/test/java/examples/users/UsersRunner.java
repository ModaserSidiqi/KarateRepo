package examples.users;

import com.intuit.karate.junit5.Karate;
import java.lang.*;


class UsersRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("users").relativeTo(getClass());
    }    

}
//TODO add more code here in the future
