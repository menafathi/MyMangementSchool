CREATE TABLE Employees
(
    id_emploey int AUTO_INCREMENT,
    username VARCHAR(90),
    password VARCHAR(90),
    price int,
    Rank VARCHAR(90),
	image_emploey VARCHAR(700),
    CONSTRAINT PK_id_emploey PRIMARY KEY(id_emploey)
);
CREATE TABLE Teachers
(
    id_Teacher int AUTO_INCREMENT,
    image_Teacher VARCHAR(800),
    price int,
    num_emploey int,
	name_Teacher VARCHAR(600),
    CONSTRAINT PK_id_Teacher PRIMARY KEY(id_Teacher),
    CONSTRAINT FK_num_emploey FOREIGN KEY(num_emploey) REFERENCES  Employees(id_emploey)
);
CREATE TABLE Students
(
    id_Student int AUTO_INCREMENT,
    name_Student VARCHAR(90),
    Lavel_Student int,
    Image_Student VARCHAR(700),
    price int,
    num_emploey1 int,
    num_Teacher int,
    CONSTRAINT PK_id_Student PRIMARY KEY(id_Student),
    CONSTRAINT FK_num_emploey1 FOREIGN KEY(num_emploey1) REFERENCES  Employees(id_emploey),
    CONSTRAINT FK_num_Teacher FOREIGN KEY(num_Teacher) REFERENCES  Teachers(id_Teacher)
);
CREATE TABLE Outlay
(
    id_Outlay int AUTO_INCREMENT,
    name_Student VARCHAR(800),
    Level_Student int ,
    Price int,
    num_emploey2 int,
	image_Student VARCHAR(800),
	Data VARCHAR(500),
    CONSTRAINT PK_id_Outlay PRIMARY KEY(id_Outlay),
    CONSTRAINT FK_num_emploey2 FOREIGN kEY(num_emploey2) REFERENCES Employees(id_emploey)
);
CREATE TABLE Salary_emploey 
(
    id_Salary_emploey int AUTO_INCREMENT,
    name_Emploey VARCHAR(90),
    Price int,
    Rank VARCHAR(100),
    data VARCHAR(100),
    num_emploey3 int,
    CONSTRAINT PK_id_Salary_emploey PRIMARY KEY(id_Salary_emploey),
    CONSTRAINT FK_num_emploey3 FOREIGN KEY(num_emploey3) REFERENCES Employees(id_emploey)
);
CREATE TABLE Salary_Teacher
(
    id_Salary_Teacher int AUTO_INCREMENT,
    name_Teacher VARCHAR(100),
    price int,
    num_emploey4 int,
	Data VARCHAR(300),
    CONSTRAINT PK_id_Salary_Teacher PRIMARY KEY(id_Salary_Teacher),
    CONSTRAINT FK_num_emploey4 FOREIGN KEY(num_emploey4) REFERENCES Employees(id_emploey)
);
INSERT INTO Employees(username,password,price,Rank,image_emploey)VALUES("mena","mena","2000","Mangment","D:\image\222650--950x0-1.JPG");
