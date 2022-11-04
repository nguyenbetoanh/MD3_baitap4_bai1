-- 	Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất
select subId,subName, max(credit)
from subject;
-- Hiển thị các thông tin môn học có điểm thi lớn nhất. 
SELECT * FROM QuanLySinhVien.Mark;
select markid, max(mark)
from mark 
group by markid;
-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần 
SELECT * FROM Student;
select st.studentid, st.StudentName, avg(mark)
from student st inner join mark m on st.studentid= m.studentid
group by st.studentid, st.studentname
order by avg(mark) DESC