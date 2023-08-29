import java.util.Date;

public class Teacher {
    int teacherID;
    String teacherName;
    Date birthDay;
    Gender gender;
    String country;
    float salary;
    void teach() {
        System.out.println("Giảng dạy, truyền tải kiến thức cho sinh viên");
    }
    void management() {
        System.out.println("Quản lí sinh viên, tiến độ học phần");
    }
}
