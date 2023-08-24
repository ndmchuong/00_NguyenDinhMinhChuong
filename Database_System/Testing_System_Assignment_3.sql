/*Question1*/
INSERT INTO `department` (Department_Name) 
VALUES 
('Marketing'),
('Purchasing'), 
('Human Resources'), 
('Shipping'), 
('IT'), 
('Public Relations'), 
('Sales'), 
('Executive'), 
('Finance'), 
('Corporate Tax');

INSERT INTO `position` (Position_name) 
VALUES 
('Marketing Assistant'), 
('Buyer'), 
('Human Resources Assistant'), 
('Stocking'), 
('Developer'), 
('PR Agency'), 
('Sales'), 
('Customer Services'), 
('Finance Assistant'), 
('Tax Accountant');

INSERT INTO `account` (Email, User_name, Full_name, Create_date, Department_ID, Position_ID) 
VALUES 
('chau.nguyen@vti.vn', 'ChauNguyen', 'Nguyen Chau', '2019-12-01', 1, 1),
('xuan.le@vti.vn', 'XuanLe', 'Le Xuan', '2019-12-01', 2, 2),
('tin.truong@vti.vn', 'TinTruong', 'Truong Tin', '2019-12-01', 3, 3),
('cuong.nguyen@vti.vn', 'CuongNguyen', 'Nguyen Cuong', '2019-12-01', 4, 4),
('chuong.nguyen@vti.vn', 'ChuongNguyen', 'Nguyen Chuong', '2019-12-01', 5, 5),
('loan.kim@vti.vn', 'LoanKim', 'Kim Loan', '2019-12-02', 6, 6),
('quan.nguyen@vti.vn', 'QuanNguyen', 'Nguyen Quan', '2019-12-02', 7, 7),
('trinh.nguyen@vti.vn', 'TrinhNguyen', 'Nguyen Trinh', '2019-12-02', 8, 8),
('trang.phan@vti.vn', 'TrangPhan', 'Phan Trang', '2019-12-02', 9, 9),
('linh.tran@vti.vn', 'LinhTran', 'Tran Linh', '2019-12-02', 10, 10),
('chau.le@vti.vn', 'ChauLe', 'Le Chau', '2019-12-03', 1, 1),
('huynh.tran@vti.vn', 'HuynhTran', 'Huynh Tran', '2019-12-03', 2, 2),
('tram.nguyen@vti.vn', 'TramNguyen', 'Nguyen Tram', '2019-12-03', 3, 3),
('thuy.bui@vti.vn', 'ThuyBui', 'Bui Thuy', '2019-12-03', 4, 4),
('an.le@vti.vn', 'AnLe', 'Le An', '2019-12-03', 5, 5),
('danh.nguyen@vti.vn', 'DanhNguyen', 'Nguyen Danh', '2019-12-04', 6, 6),
('thien.ngo@vti.vn', 'ThienNgo', 'Ngo Thien', '2019-12-04', 7, 7),
('khoa.tran@vti.vn', 'KhoaTran', 'Tran Khoa', '2019-12-04', 8, 8),
('duy.nguyen@vti.vn', 'DuyNguyen', 'Nguyen Duy', '2019-12-05', 9, 9),
('nhut.nguyen@vti.vn', 'NhutNguyen', 'Nguyen Nhut', '2019-12-05', 10, 10),
('cao.dang@vti.vn', 'CaoDang', 'Dang Cao', '2019-12-01', 5, 5),
('raphael.varane@vti.vn', 'R.Varane', 'Raphael Varane', '2019-12-01', 5, 5),
('lisandro.martinez@vti.vn', 'L.Martinez', 'Lisandro Martinez', '2019-12-01', 5, 5),
('dean.mario@vti.vn', 'D.Mario', 'Dean Mario', '2019-12-01', 5, 5);

INSERT INTO `group` (group_name, creator_ID, create_date)
VALUES 
('C_D 18-12', 1, '2019-12-18'),
('C_D 19-12', 5, '2019-12-19'),
('C_D 20-12', 9, '2019-12-20'),
('C_D 21-12', 13, '2019-12-21'),
('C_D 22-12', 17, '2019-12-22'),
('C_D 23-12', 21, '2019-12-23');

INSERT INTO `group_account` (group_ID, account_ID, join_date)
VALUES
(1, 1, '2019-12-18'),
(1, 2, '2019-12-18'), 
(1, 3, '2019-12-18'),
(1, 4, '2019-12-18'),
(2, 5, '2019-12-19'),
(2, 6, '2019-12-19'),
(2, 7, '2019-12-19'),
(2, 8, '2019-12-19'),
(3, 9, '2019-12-20'),
(3, 10, '2019-12-20'),
(3, 11, '2019-12-20'),
(3, 12, '2019-12-20'),
(4, 13, '2019-12-21'),
(4, 14, '2019-12-21'),
(4, 15, '2019-12-21'),
(4, 16, '2019-12-21'),
(5, 17, '2019-12-22'),
(5, 18, '2019-12-22'),
(5, 19, '2019-12-22'),
(5, 20, '2019-12-22'),
(6, 21, '2019-12-23'),
(6, 22, '2019-12-23'),
(6, 23, '2019-12-23'),
(6, 24, '2019-12-24');

INSERT INTO `type_question` (type_name) 
VALUES 
('Multiple-Choice'), ('Essay');

INSERT INTO `category_question` (category_name)
VALUES 
('Word'),
('Excel'),
('Power Point'),
('Java'),
('SQL'),
('HTML'),
('CSS'),
('Network'),
('Python'),
('Photoshop');

INSERT INTO `question` (content, category_ID, type_ID, creator_ID, create_date)
VALUES 
('Edit\Select all tương ứng với phím tắt nào', 1, 1, 10, '2019-12-05'),
('Câu hỏi: khi đang làm việc với Excel, tổ hợp phím nào cho phép ngay lập tức đưa con trỏ về ô đầu tiên (ô A1) của bảng tính', 2, 1, 2, '2019-12-05'),
('Câu hỏi: Khi đang làm việc với PowerPoint, để chèn thêm một Slide mới, ta thực hiện', 3, 1, 6, '2019-12-06'),
('Từ khóa static trong Java là gì?', 4, 2, 5, '2019-12-05'),
('Khóa chính (Primary Key) trong Database là gì?', 5, 2, 2, '2019-12-06'),
('Element trong HTML là gì?', 6, 2, 1, '2019-12-07'),
('Câu hỏi: Làm thế nào để đưa CSS vào trong một trang web', 7, 2, 5, '2019-12-05'),
('Trong khi soạn thảo email nếu muốn gửi kèm file chúng ta bấm vào nút', 8, 1, 5, '2019-12-07'),
('Kiểu dữ liệu mutable trong Python', 9, 2, 5, '2019-12-05'),
('Bạn thường sử dụng phần mềm thiết kế nào', 10, 2, 1, '2019-12-05');

INSERT INTO `answer` (content, question_ID, is_Correct)
VALUES
('CTRL-A', 1, 'True'),
('CTRL-L', 1, 'False'),
('CTRL-K', 1, 'False'),
('CTRL-C', 1, 'False'),
('CTRL-F', 1, 'False'),
('CTRL-A', 1, 'True'),
('SHIFT + HOME', 2, 'False'),
('ALT + HOME', 2, 'False'),
('CTRL + HOME', 2, 'True'),
('EDIT - NEW SLIDE', 3, 'False'),
('FILE - NEW SLIDE', 3, 'False'),
('INSERT - NEW SLIDE', 3, 'True'),
('Static trong Java là từ khóa dùng để quản lý bộ nhớ và truy cập trực tiếp thông qua lớp khi không cần khởi tạo.', 4, 'True'),
('Khóa chính dùng để định danh Duy nhất mỗi record trong table của cơ sở dữ liệu', 5, 'True'),
('Trong HTML, Element hay một phần tử đại diện cho một phần riêng biệt của tài liệu và được xác định bởi một cặp thẻ', 6, 'True'),
('CSS nội tuyến, CSS nội bộ, CSS ngoài', 7, 'True'),
('Attachment', 8, 'True'),
('Send', 8, 'False'),
('Mutable là những kiểu dữ liệu mà giá trị của dữ liệu có thể thay đổi được, bao gồm: List, Set, Dictionary.', 9, 'True'),
('Photoshop, Illustrator, Premiere Pro, ...', 10, 'True');

INSERT INTO `exam` (`code`, `title`, category_ID, duration, creator_ID, create_date)
VALUES
('EX01', 'Word', 1, 45, 10, '2019-12-12'),
('EX02', 'Excel', 2, 45, 2, '2019-12-12'),
('EX03', 'PowerPoint', 3, 45, 6, '2019-12-12'),
('EX04', 'Java', 4, 90, 5, '2019-12-05'),
('EX05', 'SQL', 5, 90, 2, '2019-12-06'),
('EX06', 'HTML', 6, 90, 1, '2019-12-07'),
('EX07', 'CSS', 7, 90, 5, '2019-12-05'),
('EX08', 'Network', 8, 45, 5, '2019-12-21'),
('EX09', 'Python', 9, 90, 5, '2019-12-05'),
('EX10', 'Photoshop', 10, 90, 1, '2019-12-05');

/*Question2*/
SELECT * FROM `department`;

/*Question3*/
SELECT `department_ID` FROM `department` WHERE `department_name` = 'Sales';

/*Question4*/ 
SELECT * FROM `account` WHERE length(full_name) = (SELECT max(length(full_name)) from `account`);

/*Question 5*/
SELECT * FROM `account` WHERE `department_ID` = 3 ORDER BY length(full_name) DESC LIMIT 1;

/*Question6*/
SELECT `group_name` FROM `group` WHERE `create_date` < '2019-12-20';

/*Question7*/ 
SELECT `question_ID` FROM `answer` GROUP BY `question_ID` HAVING count(`question_ID`) >= 4;

/*Question 8*/
SELECT `code` FROM `exam` WHERE `duration` >= 60 AND `create_date` < '2019-12-20';

/*Question9*/
SELECT * FROM `group` ORDER BY create_date DESC LIMIT 5;

/*Question 10*/
SELECT count(`department_ID`) FROM `account` WHERE `department_ID` = 2;

/*Question 11*/
SELECT * FROM `account` WHERE full_name LIKE 'D%O';

/*Question 12*/
DELETE FROM `exam` WHERE `create_date` < '2019-12-20';

/*Question 13*/ 
SET FOREIGN_KEY_CHECKS = 0;
DELETE FROM `question` WHERE (SUBSTRING_INDEX(`content`, ' ', 2)) = 'Câu hỏi:';
SET FOREIGN_KEY_CHECKS = 1;

/*Question 14*/
UPDATE `account` 
SET 
`full_name` = 'Nguyễn Bá Lộc',
`email` = 'loc.nguyenba@vti.com.vn'
WHERE `account_ID` = 5;
/*Question 15*/
UPDATE `group_account`
SET
`group_ID` = 4
WHERE `account_ID` = 5;



