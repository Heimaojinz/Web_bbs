package Big_project.ssm;


import java.lang.reflect.Field;

class BaseModel {
    @Override
    public String toString() {
        Field[] fields = this.getClass().getDeclaredFields();

//         (Todo:
//         id: 1
//         content: 5555
//         completed: true
//        )
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        sb.append(this.getClass().getSimpleName() + ":\n");

        for (Field f :fields) {
            try {
                Object v = f.get(this);
                String kv = String.format("%s: %s\n", f.getName(), v);
                sb.append(kv);
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            }
        }
        sb.append(")");
        return sb.toString();
    }
}

 class Todo  extends  BaseModel{
    public Integer id;
    public String content;
    public Boolean completed;

    public Todo() {

    }

     public static void log(String format, Object... args) {
         System.out.println(String.format(format, args));
     }



}

class Weibo extends  BaseModel{
    public Integer id;
    public String content;

    public Weibo() {

    }

}


public class Reflection {
    public static void log(String format, Object... args) {
        System.out.println(String.format(format, args));
    }


    public static void main(String[] args) {
        Todo t = new Todo();
        t.id = 1;
        t.content = "ee";

        log("todo %s", t);

        Weibo w = new Weibo();
        w.id = 2;
        w.content = "weibo";
        log("weibo %s", w);


    }
}
