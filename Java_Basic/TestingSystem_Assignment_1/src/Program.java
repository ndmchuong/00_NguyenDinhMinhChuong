import java.util.Date;

public class Program {
    public static void main(String[] args) {

        // create department
        // department1
        Department department1 = new Department();
        department1.departmentID = 1;
        department1.departmentName = "Marketing";
        // department2
        Department department2 = new Department();
        department2.departmentID = 2;
        department2.departmentName = "IT";
        // department3
        Department department3 = new Department();
        department3.departmentID = 3;
        department3.departmentName = "Finance";

        // create position
        // position1
        Position position1 = new Position();
        position1.positionID = 1;
        position1.positionName = "Marketing Assistant";
        // position2
        Position position2 = new Position();
        position2.positionID = 2;
        position2.positionName = "Developer";
        // position 3
        Position position3 = new Position();
        position3.positionID = 3;
        position3.positionName = "Finance Assistant";

        // create account
        // account1
        Account account1 = new Account();
        account1.accountID = 1;
        account1.email = "chau.nguyen@vti.vn";
        account1.userName = "ChauNguyen";
        account1.fullName = "Nguyen Chau";;
        account1.departmentID = department1;
        account1.positionID = position1;
        account1.createDate = new Date("2019/12/01");
        // account2
        Account account2 = new Account();
        account2.accountID = 2;
        account2.email = "xuan.le@vti.vn";
        account2.userName = "XuanLe";
        account2.fullName = "Le Xuan";;
        account2.departmentID = department2;
        account2.positionID = position2;
        account2.createDate = new Date("2019/12/01");
        // account3
        Account account3 = new Account();
        account3.accountID = 3;
        account3.email = "tin.truong@vti.vn";
        account3.userName = "TinTruong";
        account3.fullName = "Truong Tin";;
        account3.departmentID = department3;
        account3.positionID = position3;
        account3.createDate = new Date("2019/12/01");

        // create group
        // group1
        Group group1 = new Group();
        group1.groupID = 1;
        group1.groupName = "C_D 18-12";
        group1.creatorID = account1;
        group1.createDate = new Date("2019/12/18");
        // group2
        Group group2 = new Group();
        group2.groupID = 2;
        group2.groupName = "C_D 19-12";
        group2.creatorID = account2;
        group2.createDate = new Date("2019/12/19");
        // group3
        Group group3 = new Group();
        group3.groupID = 3;
        group3.groupName = "C_D 20-12";
        group3.creatorID = account3;
        group3.createDate = new Date("2019/12/20");

        // create groupAccount
        // groupAccount1
        GroupAccount groupAccount1 = new GroupAccount();
        groupAccount1.groupID = group1;
        groupAccount1.accountID = account1;
        groupAccount1.joinDate = new Date("2019/12/18");
        // groupAccount2
        GroupAccount groupAccount2 = new GroupAccount();
        groupAccount2.groupID = group2;
        groupAccount2.accountID = account2;
        groupAccount2.joinDate = new Date("2019/12/19");
        // groupAccount3
        GroupAccount groupAccount3 = new GroupAccount();
        groupAccount3.groupID = group3;
        groupAccount3.accountID = account3;
        groupAccount3.joinDate = new Date("2019/12/20");

        // create typeQuestion
        // typeQuestion1
        TypeQuestion typeQuestion1 = new TypeQuestion();
        typeQuestion1.typeID = 1;
        typeQuestion1.typeName = TypeQuestionName.ESSAY;
        // typeQuestion2
        TypeQuestion typeQuestion2 = new TypeQuestion();
        typeQuestion2.typeID = 2;
        typeQuestion2.typeName = TypeQuestionName.MULTIPLE_CHOICE;

        // create categoryQuestion
        // categoryQuestion1;
        CategoryQuestion categoryQuestion1 = new CategoryQuestion();
        categoryQuestion1.categoryID = 1;
        categoryQuestion1.categoryName = "Java";
        // categoryQuestion2;
        CategoryQuestion categoryQuestion2 = new CategoryQuestion();
        categoryQuestion2.categoryID = 2;
        categoryQuestion2.categoryName = "SQL";
        // categoryQuestion3;
        CategoryQuestion categoryQuestion3 = new CategoryQuestion();
        categoryQuestion3.categoryID = 3;
        categoryQuestion3.categoryName = "HTML";

        // create question
        // question1
        Question question1 = new Question();
        question1.questionID = 1;
        question1.content = "Từ khóa static trong Java là gì?";
        question1.categoryID = categoryQuestion1;
        question1.typeID = typeQuestion1;
        question1.creatorID = account1;
        question1.createDate = new Date("2019/12/05");
        // question2
        Question question2 = new Question();
        question2.questionID = 2;
        question2.content = "Khóa chính (Primary Key) trong Database là gì?";
        question2.categoryID = categoryQuestion2;
        question2.typeID = typeQuestion1;
        question2.creatorID = account2;
        question2.createDate = new Date("2019/12/06");
        // question3
        Question question3 = new Question();
        question3.questionID = 3;
        question3.content = "Element trong HTML là gì?";
        question3.categoryID = categoryQuestion3;
        question3.typeID = typeQuestion1;
        question3.creatorID = account3;
        question3.createDate = new Date("2019/12/07");

        // create answer
        // answer1
        Answer answer1 = new Answer();
        answer1.answerID = 1;
        answer1.content = "Static trong Java là từ khóa dùng để quản lý bộ nhớ và truy cập trực tiếp thông qua lớp khi không cần khởi tạo.";
        answer1.questionID = question1;
        answer1.isCorrect = true;
        // answer2
        Answer answer2 = new Answer();
        answer2.answerID = 2;
        answer2.content = "Khóa chính dùng để định danh Duy nhất mỗi record trong table của cơ sở dữ liệu";
        answer2.questionID = question2;
        answer2.isCorrect = true;
        // answer3
        Answer answer3 = new Answer();
        answer3.answerID = 3;
        answer3.content = "Trong HTML, Element hay một phần tử đại diện cho một phần riêng biệt của tài liệu và được xác định bởi một cặp thẻ";
        answer3.questionID = question3;
        answer3.isCorrect = true;

        // create exam
        // exam1
        Exam exam1 = new Exam();
        exam1.examID = 1;
        exam1.code = "EX01";
        exam1.title = "Java";
        exam1.categoryID = categoryQuestion1;
        exam1.duration = 60;
        exam1.creatorID = account1;
        exam1.createDate = new Date("2019/12/19");
        // exam2
        Exam exam2 = new Exam();
        exam2.examID = 2;
        exam2.code = "EX02";
        exam2.title = "SQL";
        exam2.categoryID = categoryQuestion2;
        exam2.duration = 60;
        exam2.creatorID = account2;
        exam2.createDate = new Date("2019/12/20");
        // exam3
        Exam exam3 = new Exam();
        exam3.examID = 3;
        exam3.code = "EX03";
        exam3.title = "HTML";
        exam3.categoryID = categoryQuestion3;
        exam3.duration = 60;
        exam3.creatorID = account3;
        exam3.createDate = new Date("2019/12/21");

        // create examQuestion
        // examQuestion1
        ExamQuestion examQuestion1 = new ExamQuestion();
        examQuestion1.examID = exam1;
        examQuestion1.questionID = question1;
        // examQuestion2
        ExamQuestion examQuestion2 = new ExamQuestion();
        examQuestion2.examID = exam2;
        examQuestion2.questionID = question2;
        // examQuestion3
        ExamQuestion examQuestion3 = new ExamQuestion();
        examQuestion3.examID = exam3;
        examQuestion3.questionID = question3;

        // PRINT VALUE
        System.out.println("Thông tin phòng ban " + department1.departmentID);
        System.out.println("ID: " + department1.departmentID);
        System.out.println("Name: " + department1.departmentName);
        System.out.println("\n");
        System.out.println("Thông tin chức vụ " + position2.positionID);
        System.out.println("ID: " + position2.positionID);
        System.out.println("Name: " + position2.positionName);
        System.out.println("\n");
        System.out.println("Thông tin Account " + account2.accountID);
        System.out.println("ID " + account2.accountID);
        System.out.println("Email: " + account2.email);
        System.out.println("Username: " + account2.userName);
        System.out.println("Fullname: " + account2.fullName);
        System.out.println("ID phòng ban: " + account2.departmentID.departmentID);
        System.out.println("ID chức vụ: " + account2.positionID.positionID);
        System.out.println("\n");
        System.out.println("Thông tin nhóm " + group3.groupID);
        System.out.println("ID nhóm: " + group3.groupID);
        System.out.println("Name: " + group3.groupName);
        System.out.println("ID người tạo nhóm: " + group3.creatorID.accountID);
        System.out.println("Ngày tạo nhóm: " + group3.createDate);
        System.out.println("\n");
        System.out.println("Thông tin User trong nhóm " + groupAccount1.groupID.groupID);
        System.out.println("ID của User: " + groupAccount1.accountID.accountID);
        System.out.println("Ngày User tham gia nhóm: " + groupAccount1.joinDate);
        System.out.println("\n");
        System.out.println("Loại câu hỏi");
        System.out.println("ID: " + typeQuestion1.typeID);
        System.out.println("Name: " + typeQuestion1.typeName);
        System.out.println("\n");
        System.out.println("Chủ đề câu hỏi");
        System.out.println("ID: " + categoryQuestion1.categoryID);
        System.out.println("Name: " + categoryQuestion1.categoryName);
        System.out.println("\n");
        System.out.println("Câu hỏi số " + question2.questionID);
        System.out.println("ID: " + question2.questionID);
        System.out.println("Nội dung: " + question2.content);
        System.out.println("ID chủ đề câu hỏi: " + question2.categoryID.categoryID);
        System.out.println("ID loại câu hỏi: " + question2.typeID.typeID);
        System.out.println("ID người tạo câu hỏi: " + question2.creatorID.accountID);
        System.out.println("Ngày tạo câu hỏi: " + question2.createDate);
        System.out.println("\n");
        System.out.println("Câu trả lời số " + answer2.answerID);
        System.out.println("ID câu trả lời: " + answer2.answerID);
        System.out.println("Nội dung câu trả lời: " + answer2.content);
        System.out.println("ID câu hỏi: " + answer2.questionID.questionID);
        System.out.println("Câu trả lời đúng hay sai: " + answer2.isCorrect);
        System.out.println("\n");
        System.out.println("Đề thi số " + exam3.examID);
        System.out.println("Mã đề thi: " + exam3.code);
        System.out.println("Tiêu đề: " + exam3.title);
        System.out.println("ID chủ đề thi: " + exam3.categoryID.categoryID);
        System.out.println("Thời gian thi: " + exam3.duration + "(phút)");
        System.out.println("ID người tạo đề thi: " + exam3.creatorID.accountID);
        System.out.println("Ngày tạo đề thi: " + exam3.createDate);
    }
}
