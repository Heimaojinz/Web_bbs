package Big_project.ssm.model;

import java.lang.reflect.Field;
import java.util.List;

public class BaseModel {
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        Field[] fields = this.getClass().getDeclaredFields();

        sb.append("(");
        for (Field f: fields) {
            try {
                f.setAccessible(true);
                Object v = f.get(this);
                String s = String.format("%s: %s, ", f.getName(), v);
                sb.append(s);
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            }
        }

        sb.append(")");
        return sb.toString();
    }


}

