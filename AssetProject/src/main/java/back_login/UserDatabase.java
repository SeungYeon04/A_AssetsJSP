package back_login;

import java.util.HashMap;

// 디비 만들기 전 임시 디비 

public class UserDatabase {
    public static HashMap<String, String> users = new HashMap<>();

    public static boolean register(String id, String pw) {
        if (users.containsKey(id)) return false;
        users.put(id, pw);
        return true;
    }

    public static boolean login(String id, String pw) {
    	System.out.println("입력된 id: " + id);
    	System.out.println("입력된 pw: " + pw);
    	System.out.println("저장된 users: " + users);
    	
    	return users.containsKey(id) && users.get(id).equals(pw);
    }
}
