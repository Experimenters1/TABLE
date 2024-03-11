# TABLE
## TABLE <br><br>
https://gemini.google.com/app/7d5f574ef57dbe70


### How UITableView works (Cơ chế hoạt động của UITableView)
#### 1.Concept: (Khái Niệm)
+ ) UITableView là một lớp **giao diện người dùng(interface)** trong iOS dùng để hiển thị dữ liệu dạng bảng. <br><br>
+ ) Nó bao gồm các ô (cell) được sắp xếp thành các hàng và cột. <br><br>
+ ) Mỗi ô có thể chứa nội dung khác nhau như văn bản, hình ảnh, video, v.v. <br><br>

#### 2.Mechainism (Cách thức hoạt động) <br><br>
+ ) **UITableView** hoạt động dựa trên 3 thành phần chính: <br><br>
    **1.Datasource:** Cung cấp dữ liệu cho tableview. <br><br>
    **2.Delegate:** Xử lý các hành động của người dùng trên tableview. <br><br>
    **3.Cell:** Các ô hiển thị nội dung dữ liệu. <br><br>

### 3. Working process(Quá trình hoạt động:) 
+ ) Khi **tableview** được khởi tạo, nó sẽ yêu cầu **datasource** cung cấp dữ liệu. <br><br>
+ ) **Datasource** sẽ trả về số lượng các **section** và số lượng các **row** trong mỗi **section.** <br><br> 
+ ) **Tableview** sẽ sử dụng thông tin này để tạo ra các ô và hiển thị chúng trên màn hình. <br><br>
+ ) Khi người dùng tương tác với **tableview (nhấn, vuốt, v.v.), delegate** sẽ được thông báo và xử lý các hành động tương ứng.  <br><br>

### 4. cell reuse( Tái sử dụng )
+ ) Để tối ưu hóa hiệu suất, **tableview** sử dụng cơ chế tái sử dụng ô. <br><br>
+ ) Khi một ô không còn hiển thị trên màn hình, nó sẽ được lưu vào bộ nhớ **cache.** <br><br>
+ ) Khi cần hiển thị một ô mới, tableview sẽ kiểm tra bộ nhớ cache và sử dụng lại ô đã lưu trữ nếu có. <br><br>
+ ) Việc tái sử dụng ô giúp giảm thiểu việc tạo và hủy các ô, **thereby improving performance.** <br><br>





![Screenshot 2023-04-18 at 14 03 40](https://user-images.githubusercontent.com/64000769/232697947-a4ec27a9-9102-4ab0-9fcc-09275a0ee5e4.png) <br><br>
