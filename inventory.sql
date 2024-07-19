-- Create Categories Table
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(255) NOT NULL,
    Description TEXT,
    CreatedDate DATE,
    UpdatedDate DATE
);

-- Create Suppliers Table
CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    SupplierName VARCHAR(255) NOT NULL,
    ContactName VARCHAR(255),
    ContactEmail VARCHAR(255),
    PhoneNumber VARCHAR(50),
    Address TEXT
);

-- Create Products Table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255) NOT NULL,
    CategoryID INT,
    SupplierID INT,
    Price DECIMAL(10, 2),
    StockQuantity INT,
    Description TEXT,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID),
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);

-- Create Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    Email VARCHAR(255),
    PhoneNumber VARCHAR(50),
    Address TEXT
);

-- Create Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    ShippingDate DATE,
    ShippingAddress TEXT,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Create OrderDetails Table
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(10, 2),
    TotalPrice DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);



-- Insert values into Categories table
INSERT INTO `Categories` (`CategoryID`, `CategoryName`, `Description`, `CreatedDate`, `UpdatedDate`) VALUES
(1, 'Electronics', 'Devices and gadgets', 2023-01-01, 2023-01-03),
(2, 'Clothing', 'Apparel and accessories', 2023-02-01, 2023-02-03),
(3, 'Home Appliances', 'Household gadgets and appliances', 2023-03-01, 2023-03-03),
(4, 'Books', 'Printed and electronic books', 2023-04-01, 2023-04-03),
(5, 'Sports', 'Sports equipment and apparel', 2023-05-01, 2023-05-03);

-- Insert values into Suppliers table
INSERT INTO `Suppliers` (`SupplierID`, `SupplierName`, `ContactName`, `ContactEmail`, `PhoneNumber`, `Address`) VALUES

(1, 'Shetty PLC', 'Adira Reddy', 'adira.reddy@Shetty.com', '+916483149884', '35/147
Bassi Marg, Gulbarga-874018'),

(2, 'Chad-Gour', 'Miraan Aggarwal', 'miraan.aggarwal@Chad-Gour.com', '3014105899', '81, Kata Chowk, Chittoor 998533'),

(3, 'Tank-Gulati', 'Vivaan Madan', 'vivaan.madan@Tank-Gulati.com', '03855602659', '12, Saraf Circle, Nellore-358052'),

(4, 'Bhakta-Dua', 'Nayantara Bhattacharyya', 'nayantara.bhattacharyya@Bhakta-Dua.com', '+918532154294', '587
Basak Path, Kanpur-131279'),

(5, 'Reddy Inc', 'Nirvaan Maharaj', 'nirvaan.maharaj@Reddy.com', '05594211692', '90/18, Subramanian Zila
Jaunpur-121068'),

(6, 'Khurana LLC', 'Sahil Thaman', 'sahil.thaman@Khurana.com', '04448619765', '82/701
Bali Zila
Hindupur-452087'),

(7, 'Kara-Gaba', 'Raghav Thaker', 'raghav.thaker@Kara-Gaba.com', '+911774586900', '715, Kale Marg, Eluru 191861'),

(8, 'Chahal Ltd', 'Anvi Chana', 'anvi.chana@Chahal.com', '00472482973', '09/35, Krishna, Raebareli 980057'),

(9, 'Balakrishnan, Aggarwal and Buch', 'Himmat Deep', 'himmat.deep@Balakrishnan,.com', '6074426208', '64
Kohli Zila, Bhatpara-453640'),

(10, 'Dada-Banik', 'Dishani Sharma', 'dishani.sharma@Dada-Banik.com', '+916656782447', '97/907
Mangal Nagar
Bhilai-612232'),

(11, 'Salvi, Ghosh and Batra', 'Anya Sura', 'anya.sura@Salvi,.com', '+918399964713', '700, Sheth Chowk
Hindupur 921740'),

(12, 'Dasgupta LLC', 'Hunar Shroff', 'hunar.shroff@Dasgupta.com', '05850945405', '33/834, Rao, Bongaigaon-212523'),

(13, 'Kothari-Badal', 'Ira Kala', 'ira.kala@Kothari-Badal.com', '0377573348', '48
De Marg
Hospet-776206'),

(14, 'Chhabra, Ray and Devi', 'Aaryahi Gera', 'aaryahi.gera@Chhabra,.com', '+913640909549', '94
Din Circle, Gorakhpur 119076'),

(15, 'Barad-Chacko', 'Advika Sood', 'advika.sood@Barad-Chacko.com', '4334906600', '373
Warrior Nagar
Bihar Sharif 762701'),

(16, 'Shetty PLC', 'Tejas Bora', 'tejas.bora@Shetty.com', '08003574422', '18/338, Ramachandran Zila
Kulti-065150'),

(17, 'Chad-Gour', 'Indranil Maharaj', 'indranil.maharaj@Chad-Gour.com', '5197916357', '99/044
Rastogi Zila
Jorhat-580904'),

(18, 'Tank-Gulati', 'Yakshit Dua', 'yakshit.dua@Tank-Gulati.com', '+912598173077', '86/28, Aurora
Ambarnath-314862'),

(19, 'Bhakta-Dua', 'Zain Chakraborty', 'zain.chakraborty@Bhakta-Dua.com', '05441968532', 'H.No. 319, Wali Zila
Secunderabad-255639'),

(20, 'Reddy Inc', 'Samar Chowdhury', 'samar.chowdhury@Reddy.com', '8009876146', '99, Iyer Path
Vasai-Virar 997429'),

(21, 'Khurana LLC', 'Samarth Golla', 'samarth.golla@Khurana.com', '+916367924363', 'H.No. 89
Kakar Path, Chandigarh 589909'),

(22, 'Kara-Gaba', 'Priyansh Guha', 'priyansh.guha@Kara-Gaba.com', '+911332478766', '82/380, Bir Marg, Parbhani-005268'),

(23, 'Chahal Ltd', 'Zaina Kari', 'zaina.kari@Chahal.com', '4177777684', '19
Bora Nagar
Khammam 458373'),

(24, 'Balakrishnan, Aggarwal and Buch', 'Chirag Sundaram', 'chirag.sundaram@Balakrishnan,.com', '0556522874', 'H.No. 141
Doshi
Alappuzha-410612'),

(25, 'Dada-Banik', 'Shalv Aggarwal', 'shalv.aggarwal@Dada-Banik.com', '0220261428', '53/04, Comar Path, Danapur-465329'),

(26, 'Salvi, Ghosh and Batra', 'Mehul Bajwa', 'mehul.bajwa@Salvi,.com', '+912463660833', 'H.No. 320
Bakshi Ganj, Dehradun 030425'),

(27, 'Dasgupta LLC', 'Tejas Soman', 'tejas.soman@Dasgupta.com', '5160816581', '842
Sampath Chowk
Medininagar-297612'),

(28, 'Kothari-Badal', 'Suhana Talwar', 'suhana.talwar@Kothari-Badal.com', '2172654651', '69/791
Bora Road, Aurangabad-264376'),

(29, 'Chhabra, Ray and Devi', 'Arhaan Ganesh', 'arhaan.ganesh@Chhabra,.com', '+917039134466', 'H.No. 34
Sura Nagar, Shahjahanpur-706062'),

(30, 'Barad-Chacko', 'Jhanvi Karpe', 'jhanvi.karpe@Barad-Chacko.com', '0612001565', '74/63, Arora Path
Saharanpur 069977'),

(31, 'Shetty PLC', 'Aayush Kumar', 'aayush.kumar@Shetty.com', '06499389819', '45/200
Ghose Zila, Bellary-320132'),

(32, 'Chad-Gour', 'Kiara Mandal', 'kiara.mandal@Chad-Gour.com', '+912876277731', 'H.No. 96, Kota Road, Amroha-304186'),

(33, 'Tank-Gulati', 'Samaira Balay', 'samaira.balay@Tank-Gulati.com', '+915532149071', 'H.No. 671
Bajaj Road, Ludhiana-858494'),

(34, 'Bhakta-Dua', 'Kiaan Wagle', 'kiaan.wagle@Bhakta-Dua.com', '+916122822687', '37/155
Gole, Tumkur 277019'),

(35, 'Reddy Inc', 'Mehul Varghese', 'mehul.varghese@Reddy.com', '3552869370', '64/85, Sehgal Marg
Bally 331666'),

(36, 'Khurana LLC', 'Aradhya Lanka', 'aradhya.lanka@Khurana.com', '9338484417', '62/990, Lalla Circle, Kharagpur 331081'),

(37, 'Kara-Gaba', 'Stuvan Ratti', 'stuvan.ratti@Kara-Gaba.com', '+912799558466', 'H.No. 688, Krishnan Nagar
Gwalior-807098'),

(38, 'Chahal Ltd', 'Sana Kulkarni', 'sana.kulkarni@Chahal.com', '4133906371', '78/06
Luthra Ganj, Kochi-250316'),

(39, 'Balakrishnan, Aggarwal and Buch', 'Veer Dasgupta', 'veer.dasgupta@Balakrishnan,.com', '+914408053667', 'H.No. 996
Dugal Road
Thane-548397'),

(40, 'Dada-Banik', 'Zain Venkataraman', 'zain.venkataraman@Dada-Banik.com', '7020132705', '58, Sidhu Path, Sri Ganganagar-106658'),

(41, 'Salvi, Ghosh and Batra', 'Vidur Guha', 'vidur.guha@Salvi,.com', '07764978884', 'H.No. 479, Divan Road, Bhavnagar-432907'),

(42, 'Dasgupta LLC', 'Indrans Sura', 'indrans.sura@Dasgupta.com', '00330646458', 'H.No. 974, Setty Circle
Jabalpur-777881'),

(43, 'Kothari-Badal', 'Ojas Sule', 'ojas.sule@Kothari-Badal.com', '01618217905', '44, Virk Road, Thane 337686'),

(44, 'Chhabra, Ray and Devi', 'Madhup Bassi', 'madhup.bassi@Chhabra,.com', '2096358581', '71/36
Anand Nagar
Kamarhati 093603'),

(45, 'Barad-Chacko', 'Divit Gill', 'divit.gill@Barad-Chacko.com', '3200590334', '03/01, Goel Chowk
Sri Ganganagar-029501'),

(46, 'Shetty PLC', 'Amira Cherian', 'amira.cherian@Shetty.com', '+919732712747', 'H.No. 936
Sur Road, Sangli-Miraj & Kupwad 624912'),

(47, 'Chad-Gour', 'Kabir Bath', 'kabir.bath@Chad-Gour.com', '5614919924', '28/860
Jhaveri Zila
Raiganj 591992'),

(48, 'Tank-Gulati', 'Nirvi Bhagat', 'nirvi.bhagat@Tank-Gulati.com', '04026209512', '42/868, Sundaram Nagar, Karimnagar 854484'),

(49, 'Bhakta-Dua', 'Vaibhav Magar', 'vaibhav.magar@Bhakta-Dua.com', '03233103427', '37
Buch Road, Karawal Nagar-368824'),

(50, 'Reddy Inc', 'Mishti Ratti', 'mishti.ratti@Reddy.com', '2523141470', 'H.No. 669
Trivedi Ganj, Rajahmundry-983201'),

(51, 'Khurana LLC', 'Alia Sanghvi', 'alia.sanghvi@Khurana.com', '3223851002', '306, Varghese Circle, Hajipur 915737'),

(52, 'Kara-Gaba', 'Mamooty Babu', 'mamooty.babu@Kara-Gaba.com', '07744791102', '42/772, Soni Chowk, Nellore 188598'),

(53, 'Chahal Ltd', 'Rania Banik', 'rania.banik@Chahal.com', '+916481236425', '17, Garg Road, Bhatpara-274444'),

(54, 'Balakrishnan, Aggarwal and Buch', 'Reyansh Edwin', 'reyansh.edwin@Balakrishnan,.com', '07873787379', 'H.No. 34
Vohra Ganj, Kadapa-004045'),

(55, 'Dada-Banik', 'Vedika Kaul', 'vedika.kaul@Dada-Banik.com', '07705583586', '09
Andra Marg
Jalandhar-238952'),

(56, 'Salvi, Ghosh and Batra', 'Saksham Krish', 'saksham.krish@Salvi,.com', '7552460978', '907, Lanka Circle, Haldia 201570'),

(57, 'Dasgupta LLC', 'Ivan Subramanian', 'ivan.subramanian@Dasgupta.com', '3906165773', '83/03, Badal Path, Rampur 471414'),

(58, 'Kothari-Badal', 'Miraya Sandal', 'miraya.sandal@Kothari-Badal.com', '08090809518', 'H.No. 31, Andra Path
Baranagar 615651'),

(59, 'Chhabra, Ray and Devi', 'Drishya Sane', 'drishya.sane@Chhabra,.com', '3977516469', 'H.No. 996
Mahajan Zila
Thrissur-342442'),

(60, 'Barad-Chacko', 'Trisha Hegde', 'trisha.hegde@Barad-Chacko.com', '8424058896', '002
Johal Ganj
Srikakulam 755380'),

(61, 'Shetty PLC', 'Renee Basu', 'renee.basu@Shetty.com', '4312751819', '64
Kapur Circle
Begusarai 496270'),

(62, 'Chad-Gour', 'Inaaya  Agarwal', 'inaaya..agarwal@Chad-Gour.com', '1037464408', 'H.No. 267, Khare, Naihati 608772'),

(63, 'Tank-Gulati', 'Azad Shah', 'azad.shah@Tank-Gulati.com', '08396641605', '40/30
Mall Road
Kakinada-063134'),

(64, 'Bhakta-Dua', 'Samarth Kurian', 'samarth.kurian@Bhakta-Dua.com', '07071183557', 'H.No. 12, Uppal Road
Phagwara 431736'),

(65, 'Reddy Inc', 'Stuvan Kalita', 'stuvan.kalita@Reddy.com', '+916205276212', '26/016
Ganesh Road
Tiruppur 702009'),

(66, 'Khurana LLC', 'Bhavin Walla', 'bhavin.walla@Khurana.com', '+913707847962', '87/82, Kuruvilla Chowk
Etawah 707102'),

(67, 'Kara-Gaba', 'Bhavin Bora', 'bhavin.bora@Kara-Gaba.com', '+916504463137', 'H.No. 498
Lalla Chowk, Bangalore 667504'),

(68, 'Chahal Ltd', 'Hazel Bahl', 'hazel.bahl@Chahal.com', '03371139059', 'H.No. 350
Anand Circle
Surendranagar Dudhrej-042123'),

(69, 'Balakrishnan, Aggarwal and Buch', 'Mahika Ramachandran', 'mahika.ramachandran@Balakrishnan,.com', '08647530972', '51, Kata Street
Hosur-145083'),

(70, 'Dada-Banik', 'Drishya Vyas', 'drishya.vyas@Dada-Banik.com', '1954832171', 'H.No. 42, Krish, Rajkot 396004'),

(71, 'Salvi, Ghosh and Batra', 'Navya Dugal', 'navya.dugal@Salvi,.com', '7510935098', 'H.No. 033
Ranganathan, Yamunanagar 708028'),

(72, 'Dasgupta LLC', 'Kavya Soni', 'kavya.soni@Dasgupta.com', '5622205058', 'H.No. 69, Raju Marg, Bally 671766'),

(73, 'Kothari-Badal', 'Jiya Randhawa', 'jiya.randhawa@Kothari-Badal.com', '1747411936', 'H.No. 03
Ganesh Street, Adoni 536797'),

(74, 'Chhabra, Ray and Devi', 'Saira Chopra', 'saira.chopra@Chhabra,.com', '7318759566', '20/370
Manda Street, Giridih-394855'),

(75, 'Barad-Chacko', 'Gatik Sagar', 'gatik.sagar@Barad-Chacko.com', '+916994574269', 'H.No. 71
Kaul Street
Mysore 897224'),

(76, 'Shetty PLC', 'Stuvan Shukla', 'stuvan.shukla@Shetty.com', '8614176512', 'H.No. 140
Hegde Road, Rohtak 133229'),

(77, 'Chad-Gour', 'Diya Goswami', 'diya.goswami@Chad-Gour.com', '+913190501846', '90/19
Dara Circle, Bhiwani-968940'),

(78, 'Tank-Gulati', 'Riya Tata', 'riya.tata@Tank-Gulati.com', '+911812830531', 'H.No. 09
Dhar Road
Karnal 737029'),

(79, 'Bhakta-Dua', 'Armaan Dhar', 'armaan.dhar@Bhakta-Dua.com', '6517030950', '26/46
Hora Chowk, Noida 477874'),

(80, 'Reddy Inc', 'Yuvraj  Bains', 'yuvraj..bains@Reddy.com', '06570541928', 'H.No. 67
Sanghvi Road, Bhilai-589279'),

(81, 'Khurana LLC', 'Alisha Chacko', 'alisha.chacko@Khurana.com', '+914220931945', '78/47, Chokshi Zila
Ramgarh-714220'),

(82, 'Kara-Gaba', 'Nitara Chahal', 'nitara.chahal@Kara-Gaba.com', '+917006501443', '69/09, Bakshi Nagar, Sirsa-592771'),

(83, 'Chahal Ltd', 'Renee Chowdhury', 'renee.chowdhury@Chahal.com', '+911594526689', '94/93
Dutta Path, Rajkot 821967'),

(84, 'Balakrishnan, Aggarwal and Buch', 'Vidur Chawla', 'vidur.chawla@Balakrishnan,.com', '+918687367657', 'H.No. 66, Kothari
Anantapur 196589'),

(85, 'Dada-Banik', 'Nitya Tata', 'nitya.tata@Dada-Banik.com', '+917361483122', '29
Sampath Ganj, Orai-043408'),

(86, 'Salvi, Ghosh and Batra', 'Ayesha Goyal', 'ayesha.goyal@Salvi,.com', '03231783639', 'H.No. 399, Bhardwaj Marg
Guna 864034'),

(87, 'Dasgupta LLC', 'Pihu Ghosh', 'pihu.ghosh@Dasgupta.com', '+913640252149', 'H.No. 562, Sehgal Ganj, Thane 674942'),

(88, 'Kothari-Badal', 'Madhav Jayaraman', 'madhav.jayaraman@Kothari-Badal.com', '0193764494', '76/435, Sankaran Road, Belgaum 049931'),

(89, 'Chhabra, Ray and Devi', 'Tiya Konda', 'tiya.konda@Chhabra,.com', '00737942517', '38, Ram Ganj, Jaipur-051745'),

(90, 'Barad-Chacko', 'Miraya Hegde', 'miraya.hegde@Barad-Chacko.com', '3857303406', '64/53, Batra Nagar, Secunderabad-278835'),

(91, 'Shetty PLC', 'Dishani Subramaniam', 'dishani.subramaniam@Shetty.com', '02626660358', '11/72
Dalal Nagar
Gandhinagar 600998'),

(92, 'Chad-Gour', 'Armaan Chad', 'armaan.chad@Chad-Gour.com', '02441888887', 'H.No. 04, Bobal Circle, Bathinda 565148'),

(93, 'Tank-Gulati', 'Diya Manne', 'diya.manne@Tank-Gulati.com', '05316998773', '33/38, Talwar Circle, Kochi-653725'),

(94, 'Bhakta-Dua', 'Kiara Sami', 'kiara.sami@Bhakta-Dua.com', '03695016802', 'H.No. 854, Balan, Ajmer-585136'),

(95, 'Reddy Inc', 'Dhruv Devi', 'dhruv.devi@Reddy.com', '+911442030729', '87/76, Goel Ganj, Ramagundam-682784'),

(96, 'Khurana LLC', 'Hunar Butala', 'hunar.butala@Khurana.com', '8203288464', '05/25, Deshmukh Zila
Tirunelveli 526720'),

(97, 'Kara-Gaba', 'Gokul Wable', 'gokul.wable@Kara-Gaba.com', '+917862317479', 'H.No. 28
Bali Chowk, Bokaro 108421'),

(98, 'Chahal Ltd', 'Bhavin Deo', 'bhavin.deo@Chahal.com', '6000940772', '801, Shetty Circle, Kirari Suleman Nagar-530949'),

(99, 'Balakrishnan, Aggarwal and Buch', 'Piya Khalsa', 'piya.khalsa@Balakrishnan,.com', '7245275551', '27/52, Garg Street, Navi Mumbai-735640'),

(100, 'Dada-Banik', 'Ishita Kala', 'ishita.kala@Dada-Banik.com', '8353844343', '53
Ghose Street
Tezpur-204038');



-- Insert values into Products table
INSERT INTO `Products` (`ProductID`, `ProductName`, `CategoryID`, `SupplierID`, `Price`, `StockQuantity`, `Description`) VALUES

(1, 'iPhone 13', 1, 96, 2828.00, 836, 'From Apple Inc.'),

(2, 'Ninja BL610', 3, 34, 1067.00, 76, 'High-speed blender from Ninja'),

(3, 'Nike Strike', 5, 46, 4379.00, 931, 'Standard size football by Nike'),

(4, 'The Great Gatsby', 4, 84, 1798.00, 691, 'Written by F. Scott Fitzgerald'),

(5, 'Batman: Year One', 4, 93, 7308.00, 653, 'Popular superhero comic book by Frank Miller'),

(6, 'Vivo V21', 1, 96, 4228.00, 675, 'From Vivo'),

(7, 'How to Win Friends and Influence People', 4, 84, 9203.00, 297, 'Personal development book by Dale Carnegie'),

(8, 'Columbia Sun Hat', 2, 43, 6966.00, 786, 'Sun hat from Columbia'),

(9, 'Philips AC2887', 3, 18, 7493.00, 418, 'HEPA filter air purifier from Philips'),

(10, 'Dell XPS 13', 1, 90, 8620.00, 332, 'Laptop from Dell'),

(11, 'The Great Gatsby', 4, 84, 2620.00, 381, 'Written by F. Scott Fitzgerald'),

(12, 'Vivo V21', 1, 25, 8712.00, 668, 'From Vivo'),

(13, 'Bosch WAT28400UC', 3, 18, 2068.00, 692, 'Front load washing machine from Bosch'),

(14, 'Wilson Pro Staff RF97', 5, 16, 7397.00, 795, 'Professional tennis racket by Wilson'),

(15, 'Lonely Planet: India', 4, 14, 7735.00, 102, 'Travel tips and guides by Lonely Planet'),

(16, 'Samsung RF28R7351SG', 3, 99, 8183.00, 919, 'Double door refrigerator from Samsung'),

(17, 'Nike Windrunner', 2, 43, 7602.00, 864, 'Jacket from Nike'),

(18, 'Percy Jackson', 4, 14, 3682.00, 400, 'Written by Rick Riordan'),

(19, 'The Odyssey', 4, 14, 9723.00, 916, 'Collection of poems by Homer'),

(20, 'Philips AC2887', 3, 18, 5215.00, 675, 'HEPA filter air purifier from Philips'),

(21, 'Panasonic NN-SN966S', 3, 34, 3812.00, 460, 'Compact microwave oven from Panasonic'),

(22, 'Philips AC2887', 3, 99, 6022.00, 379, 'HEPA filter air purifier from Philips'),

(23, 'Columbia Sun Hat', 2, 27, 2836.00, 289, 'Sun hat from Columbia'),

(24, 'Adidas Ultraboost', 2, 27, 770.00, 625, 'Running shoes from Adidas'),

(25, 'Physics Textbook', 4, 14, 6929.00, 188, 'Educational textbook by RD Sharma'),

(26, 'The Great Gatsby', 4, 14, 6794.00, 198, 'Written by F. Scott Fitzgerald'),

(27, 'Marvel Spidey', 2, 27, 4367.00, 963, 'T-shirt from Puma'),

(28, 'Dyson V11', 3, 99, 6529.00, 964, 'High suction power vacuum cleaner from Dyson'),

(29, 'Adidas Ultraboost', 2, 27, 9605.00, 874, 'Running shoes from Adidas'),

(30, 'Adidas Ultraboost', 2, 65, 8744.00, 203, 'Running shoes from Adidas'),

(31, 'Pixel 6', 1, 25, 1907.00, 744, 'From Google'),

(32, 'Vogue', 4, 14, 8386.00, 994, 'Monthly fashion magazine'),

(33, 'Panasonic NN-SN966S', 3, 99, 5703.00, 984, 'Compact microwave oven from Panasonic'),

(34, 'Harry Potter', 4, 93, 4345.00, 773, 'Written by JK Rowling'),

(35, 'MacBook Air', 1, 25, 8330.00, 82, 'Laptop from Apple Inc.'),

(36, 'Levi's 501', 2, 27, 4962.00, 58, 'Denim jeans from Levi's'),

(37, 'Marvel Spidey', 2, 43, 8767.00, 360, 'T-shirt from Puma'),

(38, 'Decathlon Yoga Mat', 5, 16, 3632.00, 214, 'Non-slip yoga mat by Decathlon'),

(39, 'Kookaburra Kahuna', 5, 46, 6170.00, 839, 'English willow cricket bat by Kookaburra'),

(40, 'Panasonic NN-SN966S', 3, 34, 6169.00, 41, 'Compact microwave oven from Panasonic'),

(41, 'Cosco Football', 5, 16, 2883.00, 240, 'Standard size football by Cosco'),

(42, 'Cosco Football', 5, 46, 5792.00, 538, 'Standard size football by Cosco'),

(43, 'Adidas Ultraboost', 2, 65, 3268.00, 984, 'Running shoes from Adidas'),

(44, 'Sadhu: The Birth of the Warrior Paperback', 4, 93, 8962.00, 741, 'Popular superhero comic book by Gotham Chopra'),

(45, 'Vivo V21', 1, 96, 130.00, 523, 'From Vivo'),

(46, 'MacBook Air', 1, 25, 5571.00, 769, 'Laptop from Apple Inc.'),

(47, 'How to Win Friends and Influence People', 4, 14, 3389.00, 304, 'Personal development book by Dale Carnegie'),

(48, 'Dyson V11', 3, 18, 3781.00, 820, 'High suction power vacuum cleaner from Dyson'),

(49, 'Columbia Sun Hat', 2, 43, 24.00, 475, 'Sun hat from Columbia'),

(50, 'Sony WH-1000XM4', 1, 90, 1460.00, 230, 'Wireless headphones from Sony'),

(51, 'Marvel Spidey', 2, 27, 9628.00, 649, 'T-shirt from Puma'),

(52, 'Kindle Paperwhite', 1, 96, 3115.00, 917, 'Digital book reader by Amazon'),

(53, 'Decathlon Yoga Mat', 5, 16, 310.00, 404, 'Non-slip yoga mat by Decathlon'),

(54, 'MacBook Air', 1, 96, 9469.00, 612, 'Laptop from Apple Inc.'),

(55, 'Wilson Pro Staff RF97', 5, 46, 8487.00, 357, 'Professional tennis racket by Wilson'),

(56, 'Liforme Yoga Mat', 5, 18, 2692.00, 58, 'Non-slip yoga mat by Liforme'),

(57, 'Realme 8', 1, 25, 354.00, 872, 'From Realme'),

(58, 'OnePlus 9', 1, 96, 285.00, 19, 'From OnePlus'),

(59, 'MacBook Air', 1, 96, 295.00, 466, 'Laptop from Apple Inc.'),

(60, 'Levi's 501', 2, 27, 6103.00, 963, 'Denim jeans from Levi's'),

(61, 'Shiva Trilogy', 4, 84, 8018.00, 767, 'Written by Amish Tripathi'),

(62, 'Adidas Ultraboost', 2, 43, 9734.00, 161, 'Running shoes from Adidas'),

(63, 'Columbia Sun Hat', 2, 43, 1162.00, 957, 'Sun hat from Columbia'),

(64, 'Nike Windrunner', 2, 27, 189.00, 836, 'Jacket from Nike'),

(65, 'Redmi Note 10', 1, 90, 2067.00, 848, 'From Xiaomi'),

(66, 'Cosco Football', 5, 46, 2012.00, 36, 'Standard size football by Cosco'),

(67, 'Galaxy S21', 1, 96, 3998.00, 123, 'From Samsung'),

(68, 'Ninja BL610', 3, 99, 4211.00, 324, 'High-speed blender from Ninja'),

(69, 'MacBook Air', 1, 90, 9862.00, 519, 'Laptop from Apple Inc.'),

(70, 'Wrogn Sneakers', 2, 27, 8881.00, 533, 'From Wrogn'),

(71, 'Adidas Ultraboost', 2, 43, 8048.00, 525, 'Running shoes from Adidas'),

(72, 'Galaxy S21', 1, 90, 2239.00, 134, 'From Samsung'),

(73, 'IFB Washing Machine', 3, 99, 4707.00, 248, 'Front load washing machine by IFB'),

(74, 'Sony WH-1000XM4', 1, 96, 9209.00, 383, 'Wireless headphones from Sony'),

(75, 'Wrogn Sneakers', 2, 65, 4019.00, 903, 'From Wrogn'),

(76, 'Vogue', 4, 93, 4990.00, 462, 'Monthly fashion magazine'),

(77, 'Columbia Sun Hat', 2, 65, 2154.00, 114, 'Sun hat from Columbia'),

(78, 'Dyson V11', 3, 18, 3395.00, 321, 'High suction power vacuum cleaner from Dyson'),

(79, 'Redmi Note 10', 1, 90, 8117.00, 632, 'From Xiaomi'),

(80, 'How to Win Friends and Influence People', 4, 93, 3306.00, 91, 'Personal development book by Dale Carnegie'),

(81, 'Spalding NBA Indoor/Outdoor Basketball', 5, 18, 3000.00, 897, 'Indoor basketball by Spalding'),

(82, 'Wrogn Sneakers', 2, 43, 5251.00, 653, 'From Wrogn'),

(83, 'How to Win Friends and Influence People', 4, 14, 7767.00, 447, 'Personal development book by Dale Carnegie'),

(84, 'Liforme Yoga Mat', 5, 18, 602.00, 554, 'Non-slip yoga mat by Liforme'),

(85, 'Samsung RF28R7351SG', 3, 34, 5445.00, 609, 'Double door refrigerator from Samsung'),

(86, 'Lonely Planet: India', 4, 93, 9048.00, 792, 'Travel tips and guides by Lonely Planet'),

(87, 'Realme 8', 1, 90, 5764.00, 530, 'From Realme'),

(88, 'Preethi Mixer Grinder', 3, 99, 9654.00, 99, 'High-speed mixer grinder by Preethi'),

(89, 'Levi's 501', 2, 65, 4919.00, 480, 'Denim jeans from Levi's'),

(90, 'Ninja BL610', 3, 99, 157.00, 532, 'High-speed blender from Ninja'),

(91, 'Decathlon Yoga Mat', 5, 46, 1892.00, 109, 'Non-slip yoga mat by Decathlon'),

(92, 'Steve Jobs', 4, 84, 2254.00, 846, 'Biography by Walter Isaacson'),

(93, 'Nike Windrunner', 2, 27, 3605.00, 66, 'Jacket from Nike'),

(94, 'Nike Strike', 5, 16, 9223.00, 126, 'Standard size football by Nike'),

(95, 'Panasonic NN-SN966S', 3, 18, 8728.00, 193, 'Compact microwave oven from Panasonic'),

(96, 'Shiva Trilogy', 4, 84, 7341.00, 303, 'Written by Amish Tripathi'),

(97, 'Pixel 6', 1, 96, 1204.00, 569, 'From Google'),

(98, 'Philips AC2887', 3, 18, 5882.00, 320, 'HEPA filter air purifier from Philips'),

(99, 'Nike Windrunner', 2, 65, 8649.00, 802, 'Jacket from Nike'),

(100, 'Dune', 4, 93, 3204.00, 995, 'Sci-fi novel by Frank Herbert');


-- Insert values into Customers table
INSERT INTO `Customers` (`CustomerID`, `FirstName`, `LastName`, `Email`, `PhoneNumber`, `Address`) VALUES
(1, 'Jiya', 'Agarwal', 'jiya.agarwal@example.com', '+917454921023', 'H.No. 900
Bhatnagar Path
Alwar-971180'),
(2, 'Ivan', 'Sood', 'ivan.sood@example.com', '02140809867', 'H.No. 88
Korpal Street
Motihari-056432'),
(3, 'Zara', 'Datta', 'zara.datta@example.com', '1341913071', '40/80
Swaminathan Circle
Kadapa-665539'),
(4, 'Kaira', 'Bath', 'kaira.bath@example.com', '0656131201', '82/849, Venkataraman Road
Ballia-024923'),
(5, 'Anahita', 'Lanka', 'anahita.lanka@example.com', '0258895941', '25/89
Srivastava Ganj
Kharagpur-665752'),
(6, 'Zoya', 'Shankar', 'zoya.shankar@example.com', '04913005617', '070
Shroff Circle
Tezpur-183164'),
(7, 'Kanav', 'Din', 'kanav.din@example.com', '1002504253', 'H.No. 362
Venkatesh
Ajmer 577088'),
(8, 'Jayesh', 'Maharaj', 'jayesh.maharaj@example.com', '+910575143087', 'H.No. 229
Khatri Street
Ozhukarai 358034'),
(9, 'Arhaan', 'Arya', 'arhaan.arya@example.com', '+913560156001', '23/995, Devi, Warangal 742170'),
(10, 'Kiara', 'Ramakrishnan', 'kiara.ramakrishnan@example.com', '00705260243', '59/48
Bora Road
Surendranagar Dudhrej-335283'),
(11, 'Indrans', 'Choudhury', 'indrans.choudhury@example.com', '+910090651993', 'H.No. 87
Arya Path, Nizamabad-153639'),
(12, 'Saksham', 'Rout', 'saksham.rout@example.com', '9079953798', '291
Gara Zila, Imphal 170048'),
(13, 'Abram', 'Ahluwalia', 'abram.ahluwalia@example.com', '03872301249', 'H.No. 134, Singh Street
Bhubaneswar 320432'),
(14, 'Badal', 'Ray', 'badal.ray@example.com', '03930280186', 'H.No. 91, Kibe Nagar, Bilaspur-846309'),
(15, 'Abram', 'Deshmukh', 'abram.deshmukh@example.com', '09998059375', '22, Sen Chowk, Bellary 289806'),
(16, 'Miraan', 'Salvi', 'miraan.salvi@example.com', '01362553363', '92, Sachdeva Path, Bokaro-335342'),
(17, 'Mehul', 'Sahota', 'mehul.sahota@example.com', '+915978433355', '34/030, Mannan Marg, Alappuzha 944422'),
(18, 'Kanav', 'Vig', 'kanav.vig@example.com', '+918966898752', 'H.No. 041
Virk Street, Ahmedabad-188160'),
(19, 'Hunar', 'Dhawan', 'hunar.dhawan@example.com', '06324229200', '350, Sinha Road
Junagadh-175993'),
(20, 'Vritika', 'Jaggi', 'vritika.jaggi@example.com', '+911572731949', 'H.No. 24, Wason Street
Mau-728382'),
(21, 'Nakul', 'Chaudry', 'nakul.chaudry@example.com', '5326525124', '36/789, Solanki Nagar
Bilaspur 997768'),
(22, 'Miraya', 'Som', 'miraya.som@example.com', '07209498379', 'H.No. 36
Gola Chowk
Sirsa 610971'),
(23, 'Priyansh', 'Chandran', 'priyansh.chandran@example.com', '3288181816', '745, Bakshi Ganj
Tezpur 755552'),
(24, 'Samiha', 'Kakar', 'samiha.kakar@example.com', '+913310523913', '07/645, Dhillon Zila
Amroha-136778'),
(25, 'Jayesh', 'Som', 'jayesh.som@example.com', '6014513856', 'H.No. 24, Sheth Path, Sasaram-197778'),
(26, 'Veer', 'Kapoor', 'veer.kapoor@example.com', '7015654320', '790
Edwin Marg, Gandhinagar 770213'),
(27, 'Kismat', 'Dixit', 'kismat.dixit@example.com', '6161659907', 'H.No. 249, Trivedi Marg
Vijayanagaram 259692'),
(28, 'Aaryahi', 'Bhasin', 'aaryahi.bhasin@example.com', '1412436943', '14/140, Bajwa Circle
Madhyamgram 109268'),
(29, 'Parinaaz', 'Jaggi', 'parinaaz.jaggi@example.com', '3090385818', '89/508, Sood Nagar
Karimnagar-033674'),
(30, 'Samaira', 'Chatterjee', 'samaira.chatterjee@example.com', '03687759856', '683, Sur Ganj
Gangtok 973335'),
(31, 'Hunar', 'Kulkarni', 'hunar.kulkarni@example.com', '00179495995', '75
Ravel Ganj, Jodhpur-419624'),
(32, 'Samarth', 'Kapur', 'samarth.kapur@example.com', '+916055688829', '589
Comar Road
Moradabad 175945'),
(33, 'Azad', 'Brar', 'azad.brar@example.com', '04857148946', '76, D Alia Zila
Hajipur 975833'),
(34, 'Lavanya', 'Gill', 'lavanya.gill@example.com', '3099086492', 'H.No. 21, Dhawan Street
Aurangabad-750107'),
(35, 'Jayesh', 'Dhingra', 'jayesh.dhingra@example.com', '+917931129133', 'H.No. 677, Sura Marg, Korba-995158'),
(36, 'Samar', 'Dayal', 'samar.dayal@example.com', '+912401669769', 'H.No. 728
Sheth
Bhimavaram 162296'),
(37, 'Jivika', 'Das', 'jivika.das@example.com', '9781350778', '62, Sarna Zila
Cuttack 165922'),
(38, 'Sumer', 'Gara', 'sumer.gara@example.com', '+910080021523', '767
Sarna Zila, Pudukkottai 885710'),
(39, 'Yuvraj ', 'Rege', 'yuvraj .rege@example.com', '04754606188', '42/535
Bava
Raurkela Industrial Township 605049'),
(40, 'Nitya', 'Dada', 'nitya.dada@example.com', '+916778026710', 'H.No. 96
Gill Street
Arrah-196598'),
(41, 'Jayant', 'Ranganathan', 'jayant.ranganathan@example.com', '6748862432', 'H.No. 75, Master Path
Tirunelveli 763167'),
(42, 'Siya', 'Baria', 'siya.baria@example.com', '2599369692', '47, Bandi Circle
Khora  128125'),
(43, 'Dhanuk', 'Sen', 'dhanuk.sen@example.com', '+911832986706', '56/10, Varughese Chowk
Maheshtala-029426'),
(44, 'Ela', 'Karpe', 'ela.karpe@example.com', '2264442266', '559
Bath Ganj
Proddatur-933843'),
(45, 'Shray', 'Sahota', 'shray.sahota@example.com', '06639243576', '55/96, Sundaram Zila, Bellary 313864'),
(46, 'Samar', 'Sant', 'samar.sant@example.com', '2869716377', '05/38, Ramaswamy, Aurangabad-589734'),
(47, 'Aarna', 'Karnik', 'aarna.karnik@example.com', '3446285816', 'H.No. 006, Batra Ganj, Kishanganj 300639'),
(48, 'Krish', 'Datta', 'krish.datta@example.com', '+910853983989', '44/036
Badal
Muzaffarnagar 337778'),
(49, 'Romil', 'Bhardwaj', 'romil.bhardwaj@example.com', '8047374344', '46/87
Kothari Nagar
Bidar 803573'),
(50, 'Kiara', 'Taneja', 'kiara.taneja@example.com', '+917507903027', 'H.No. 742
Tara Street
Khammam-420696'),
(51, 'Khushi', 'Shroff', 'khushi.shroff@example.com', '05096681169', 'H.No. 467, Mahal Street
Dehri 019720'),
(52, 'Manikya', 'Choudhry', 'manikya.choudhry@example.com', '5815593269', 'H.No. 993, Kaul Street, Noida 697946'),
(53, 'Hrishita', 'Baral', 'hrishita.baral@example.com', '0771978598', '75, Bhasin Path, Ludhiana-092379'),
(54, 'Indrajit', 'Biswas', 'indrajit.biswas@example.com', '+911548392845', '321, Goda, Pondicherry-493070'),
(55, 'Indrajit', 'Dash', 'indrajit.dash@example.com', '8420200412', '643
Agrawal Path
Maheshtala-008525'),
(56, 'Romil', 'Chakrabarti', 'romil.chakrabarti@example.com', '05609806443', 'H.No. 00, Kanda Chowk
Madurai 592499'),
(57, 'Raunak', 'Cheema', 'raunak.cheema@example.com', '+910811145676', '40/78
Issac Circle, Vellore-596805'),
(58, 'Damini', 'Karan', 'damini.karan@example.com', '+915194789166', '23/838
Raj Marg, Tiruppur-179403'),
(59, 'Ela', 'Rege', 'ela.rege@example.com', '+918832991342', '87/698
Varma Circle, Delhi 494854'),
(60, 'Kiaan', 'Mahajan', 'kiaan.mahajan@example.com', '3654969698', '86
Golla Nagar
Danapur 745941'),
(61, 'Indrajit', 'Bajwa', 'indrajit.bajwa@example.com', '3985283526', 'H.No. 77, Date Road
Nashik-201639'),
(62, 'Kaira', 'Lad', 'kaira.lad@example.com', '03573996098', '28/39, Sachdeva Road
Delhi 168932'),
(63, 'Armaan', 'Madan', 'armaan.madan@example.com', '+916401173865', '21
Bhat
Agartala-207469'),
(64, 'Vaibhav', 'Bath', 'vaibhav.bath@example.com', '6798468462', '85
Lall Circle
Narasaraopet-713908'),
(65, 'Arhaan', 'Chakraborty', 'arhaan.chakraborty@example.com', '+910402699391', '45/23, Mangat Nagar
Gandhinagar 311068'),
(66, 'Nirvaan', 'Sood', 'nirvaan.sood@example.com', '08393125667', 'H.No. 63
Tiwari Ganj
Howrah 392829'),
(67, 'Mahika', 'Sidhu', 'mahika.sidhu@example.com', '1928033905', 'H.No. 235
Sathe, Bijapur 580138'),
(68, 'Baiju', 'Jain', 'baiju.jain@example.com', '2419743559', '054, Kapadia Circle, Berhampur-672997'),
(69, 'Ira', 'Sabharwal', 'ira.sabharwal@example.com', '+918728105910', '244
Ganesan Chowk
Saharanpur-526781'),
(70, 'Siya', 'Din', 'siya.din@example.com', '7974333506', '15/06
Rattan Path
Bhubaneswar 839868'),
(71, 'Khushi', 'Sarraf', 'khushi.sarraf@example.com', '6627175552', 'H.No. 43, Bhavsar Marg
Haridwar 294073'),
(72, 'Ojas', 'Chaudhuri', 'ojas.chaudhuri@example.com', '+911678710837', 'H.No. 809
Hegde Nagar
Thane 273231'),
(73, 'Himmat', 'Divan', 'himmat.divan@example.com', '+911119784310', 'H.No. 97
Saraf Circle
Farrukhabad 995558'),
(74, 'Romil', 'Ranganathan', 'romil.ranganathan@example.com', '08248099730', '99, Roy Road, New Delhi 627895'),
(75, 'Saanvi', 'Karan', 'saanvi.karan@example.com', '8203396821', '158, Sridhar Path, Bhilwara 753962'),
(76, 'Drishya', 'Bhatia', 'drishya.bhatia@example.com', '6901285994', '440
Ramanathan Ganj
Madhyamgram 993021'),
(77, 'Gatik', 'Saraf', 'gatik.saraf@example.com', '2928309707', 'H.No. 135, Dhawan Marg, Jamshedpur-250894'),
(78, 'Pranay', 'Ganesan', 'pranay.ganesan@example.com', '+910050110272', '157, Sharaf Chowk
Salem 209262'),
(79, 'Advik', 'Sibal', 'advik.sibal@example.com', '3636448033', 'H.No. 932, Wason Path
Kadapa-793719'),
(80, 'Shlok', 'Dhawan', 'shlok.dhawan@example.com', '+910280135516', '18/084, Kibe Nagar, Kottayam-527669'),
(81, 'Alisha', 'Kata', 'alisha.kata@example.com', '+915299521619', '60/182
Deshmukh Street, Chennai-652579'),
(82, 'Seher', 'Lata', 'seher.lata@example.com', '+910905512082', 'H.No. 881, Dara
Berhampur-716107'),
(83, 'Rhea', 'Buch', 'rhea.buch@example.com', '6461688781', '235, Gupta Ganj
Thanjavur-291917'),
(84, 'Aarav', 'Ravi', 'aarav.ravi@example.com', '09960716906', '48/093, Chacko Street
Khandwa 487903'),
(85, 'Drishya', 'Mangal', 'drishya.mangal@example.com', '02174522552', '99
Loyal Nagar
Bidar 616828'),
(86, 'Parinaaz', 'Tripathi', 'parinaaz.tripathi@example.com', '06733684165', '90/335
Gandhi Chowk, Warangal-038129'),
(87, 'Nirvaan', 'Sant', 'nirvaan.sant@example.com', '01572764437', 'H.No. 32, Bahl Zila
Tumkur 295723'),
(88, 'Samar', 'Bhandari', 'samar.bhandari@example.com', '07353433999', '50, Swamy Ganj
Saharanpur 447279'),
(89, 'Yashvi', 'Gill', 'yashvi.gill@example.com', '+912020026950', 'H.No. 56
Suresh Circle
Tiruppur 173920'),
(90, 'Emir', 'Dara', 'emir.dara@example.com', '+913402856979', 'H.No. 759
Halder Chowk
Bikaner 168887'),
(91, 'Gokul', 'Mallick', 'gokul.mallick@example.com', '4376574205', 'H.No. 39
Seth Circle
Avadi 111462'),
(92, 'Bhamini', 'Subramanian', 'bhamini.subramanian@example.com', '8060365468', '632
Rau Nagar
Kharagpur 204215'),
(93, 'Sumer', 'Magar', 'sumer.magar@example.com', '09236287896', '10/98
Korpal Nagar, Hospet-782189'),
(94, 'Zoya', 'Borra', 'zoya.borra@example.com', '0679622810', '63
Dube
Shimoga-536290'),
(95, 'Elakshi', 'Wali', 'elakshi.wali@example.com', '+916787915205', '84/92
Malhotra, Dewas-601304'),
(96, 'Amira', 'Ramakrishnan', 'amira.ramakrishnan@example.com', '03499607163', 'H.No. 05, Saraf Nagar
Nagpur 187091'),
(97, 'Anay', 'Garg', 'anay.garg@example.com', '+916507567683', '888
Sodhi Ganj, Thane 013831'),
(98, 'Farhan', 'Sura', 'farhan.sura@example.com', '+917669078820', 'H.No. 78
Ratti Marg, Bardhaman 964733'),
(99, 'Dhanuk', 'Varghese', 'dhanuk.varghese@example.com', '4568896649', '47, Gulati Chowk, Muzaffarpur-651246'),
(100, 'Shray', 'Sen', 'shray.sen@example.com', '7371299169', '784, Kata Circle, Ahmedabad 002516');

-- Insert values into Orders table
INSERT INTO `Orders` (`OrderID`, `CustomerID`, `OrderDate`, `ShippingDate`, `ShippingAddress`, `TotalAmount`) VALUES


(1, 4, 2023-12-18, 2023-12-25, '45/210
Date Nagar
Dhule-267525', 6310.00),

(2, 99, 2023-10-19, 2023-10-20, '90, Bassi
Muzaffarpur 146271', 9397.00),

(3, 62, 2023-04-14, 2023-04-16, '82/327, Vohra Ganj, Sirsa 832060', 1412.00),

(4, 45, 2023-10-19, 2023-10-25, '83
Bansal Marg, Malegaon-408618', 9223.00),

(5, 33, 2023-12-18, 2023-12-19, '133, Goswami Ganj, Naihati 113852', 434.00),

(6, 99, 2023-05-24, 2023-05-31, '32/119, Badami, Anantapuram 382541', 8163.00),

(7, 86, 2023-04-13, 2023-04-20, '431, Vala Zila
Kolkata-913337', 8928.00),

(8, 10, 2023-04-14, 2023-04-16, 'H.No. 80
Ghosh Marg, Amaravati-447250', 7435.00),

(9, 76, 2023-02-14, 2023-02-16, '95/16, Kumer
Raurkela Industrial Township 774144', 1015.00),

(10, 77, 2023-08-08, 2023-08-09, '79/053, Ahluwalia Path, Nizamabad-021195', 7751.00),

(11, 23, 2023-03-11, 2023-03-15, 'H.No. 05
Halder Circle
Morbi-343891', 9357.00),

(12, 63, 2023-01-27, 2023-02-02, '88/850
Kale Chowk, Aligarh-062340', 6042.00),

(13, 55, 2023-04-12, 2023-04-15, '192
Khosla Ganj, Buxar 092369', 8641.00),

(14, 19, 2023-01-03, 2023-01-07, '39/746, Atwal Zila
Bidhannagar 650588', 1944.00),

(15, 86, 2023-10-20, 2023-10-21, 'H.No. 066, Jayaraman Chowk
Nanded 032600', 8742.00),

(16, 52, 2023-01-29, 2023-02-02, '01/506
Sunder Circle, Shimoga-440793', 4741.00),

(17, 72, 2023-02-21, 2023-02-23, 'H.No. 132, Kapoor Ganj
Ajmer-554663', 1737.00),

(18, 56, 2023-07-07, 2023-07-09, '37/989
Ganguly Street
Kumbakonam-908956', 6116.00),

(19, 8, 2023-10-07, 2023-11-02, '671, Banerjee Chowk
Shimla-751005', 5889.00),

(20, 50, 2023-11-15, 2023-11-20, 'H.No. 15
Gole Nagar, Jhansi-624774', 1912.00),

(21, 3, 2023-10-26, 2023-10-29, 'H.No. 88
Ramaswamy Road
Dindigul 498756', 9121.00),

(22, 14, 2023-02-07, 2023-02-10, 'H.No. 396
Saxena Path
Avadi 507896', 2112.00),

(23, 81, 2023-08-11, 2023-08-17, '71
De Street
Panchkula 899722', 5635.00),

(24, 50, 2023-05-22, 2023-05-26, '98
Banik Circle, Morena-742735', 521.00),

(25, 3, 2023-08-09, 2023-08-10, '13, Sachdev Chowk
Raebareli-355178', 3683.00),

(26, 50, 2023-11-05, 2023-11-07, 'H.No. 216, Kapoor Chowk, South Dumdum-629950', 2219.00),

(27, 72, 2023-07-22, 2023-07-24, 'H.No. 31
Bava Ganj
Nashik-516123', 7699.00),

(28, 99, 2023-11-01, 2023-11-02, '82/07
Sarna Ganj, Mangalore-543060', 9775.00),

(29, 50, 2023-01-30, 2023-02-05, 'H.No. 94
Rajagopalan Chowk, Jalandhar 705695', 3822.00),

(30, 20, 2023-09-19, 2023-09-20, 'H.No. 16, Contractor Road, Dindigul 140497', 1705.00),

(31, 71, 2023-09-12, 2023-09-13, '38/458
Randhawa
Parbhani 397241', 4988.00),

(32, 53, 2023-09-06, 2023-09-13, '56, Bal Marg, Muzaffarpur-253500', 5168.00),

(33, 4, 2023-11-14, 2023-11-18, 'H.No. 90
Basu Circle, Kurnool 073851', 1616.00),

(34, 88, 2023-12-18, 2024-01-14, '84
Sathe
Ramgarh 335702', 1086.00),

(35, 8, 2023-10-20, 2023-10-22, '01, Dugar Ganj, Siliguri 930159', 8300.00),

(36, 84, 2023-06-20, 2023-06-22, '113, Dave
Bhusawal-810810', 7291.00),

(37, 67, 2023-02-15, 2023-02-19, '19/11, Kothari Marg
Patiala 876668', 3244.00),

(38, 81, 2023-05-02, 2023-05-03, '950
Hari Road, Shahjahanpur-154461', 5504.00),

(39, 37, 2023-01-17, 2023-02-16, '90/46
Sanghvi Nagar
Bareilly-846022', 2049.00),

(40, 91, 2023-05-24, 2023-05-30, '30/21, Subramanian Zila, Indore 776123', 1237.00),

(41, 12, 2023-12-11, 2023-12-18, '46/500, Borde
Thrissur-622368', 8014.00),

(42, 89, 2023-08-30, 2023-09-06, '07/75
Doshi Path
Jalgaon 063689', 4580.00),

(43, 19, 2023-01-01, 2023-01-06, 'H.No. 919, Viswanathan, Alappuzha-399812', 6956.00),

(44, 20, 2023-10-22, 2023-10-23, '993, Sridhar Nagar
Hospet-878062', 734.00),

(45, 30, 2023-01-09, 2023-01-13, '88/622
Dave Zila, Vijayanagaram 437297', 3638.00),

(46, 52, 2023-06-16, 2023-06-17, '69/979
Kumar Ganj
Karawal Nagar-368415', 6446.00),

(47, 99, 2023-05-01, 2023-05-05, '61/863, Ratti Ganj
Alappuzha 216537', 9932.00),

(48, 50, 2023-01-08, 2023-01-11, '32
Shanker
Phagwara-239775', 5266.00),

(49, 97, 2023-04-03, 2023-04-04, '781, Apte Ganj, Alwar-794848', 5366.00),

(50, 50, 2023-04-22, 2023-04-24, '00/09, Kothari Road, Bikaner-472219', 1781.00),

(51, 4, 2023-10-05, 2023-10-11, '66/17, Master Chowk, Udupi 062692', 5562.00),

(52, 21, 2023-06-16, 2023-06-20, 'H.No. 621
Chaudhary Ganj, Dindigul-054132', 4892.00),

(53, 74, 2023-10-15, 2023-10-17, '686, Master Circle
Allahabad 702663', 1366.00),

(54, 59, 2023-11-10, 2023-11-11, '20/33, Kamdar Marg, Tirunelveli-537161', 6426.00),

(55, 72, 2023-06-20, 2023-06-26, 'H.No. 203
Sha Circle, Tadipatri-885253', 7407.00),

(56, 84, 2023-09-02, 2023-09-03, '07/39, Agate Zila
Deoghar 595975', 3503.00),

(57, 36, 2023-11-08, 2023-11-10, '62
Choudhry Ganj
Bongaigaon 014882', 5991.00),

(58, 67, 2023-09-29, 2023-10-05, '479
Behl Ganj, Bilaspur-141191', 8454.00),

(59, 74, 2023-04-26, 2023-04-30, '32/45, Viswanathan Zila, Panvel-764054', 8394.00),

(60, 50, 2023-06-23, 2023-06-27, 'H.No. 159, Thaman Chowk, Parbhani 574345', 2397.00),

(61, 72, 2023-05-15, 2023-05-22, 'H.No. 63, Sarkar
Guna-899615', 9032.00),

(62, 31, 2023-09-13, 2023-09-16, 'H.No. 394
Saran Chowk, Proddatur-930226', 1433.00),

(63, 42, 2023-05-07, 2023-05-13, '92
Sridhar Path, Salem-076851', 7527.00),

(64, 67, 2023-05-09, 2023-05-12, '34
Chad Road, Bhiwandi-877270', 6075.00),

(65, 68, 2023-02-06, 2023-02-09, 'H.No. 793
Balan Zila, Kulti 119828', 2257.00),

(66, 48, 2023-02-22, 2023-02-23, '433
Kant Chowk, Kavali 820578', 2852.00),

(67, 33, 2023-11-25, 2023-11-28, 'H.No. 27, Badami Path, Kottayam-882646', 7123.00),

(68, 13, 2023-03-28, 2023-04-01, 'H.No. 77
Kant Road
Dharmavaram 760907', 4600.00),

(69, 45, 2023-05-24, 2023-05-27, '172
Shankar Zila
Nandyal-370947', 2967.00),

(70, 45, 2023-06-24, 2023-06-29, 'H.No. 26, Gulati Nagar, Gandhidham 399661', 3308.00),

(71, 77, 2023-07-15, 2023-07-17, 'H.No. 758, Dash Nagar, Barasat 552246', 6666.00),

(72, 7, 2023-04-02, 2023-04-08, '41/73
Goyal Street, Rampur-826325', 9696.00),

(73, 40, 2023-06-05, 2023-06-09, 'H.No. 93, Bala Road
Barasat 810898', 7903.00),

(74, 54, 2023-02-11, 2023-02-16, '00, Madan Marg
Guna 309896', 6116.00),

(75, 50, 2023-02-05, 2023-02-08, 'H.No. 855
Mand Street
Tiruppur 568484', 1959.00),

(76, 32, 2023-01-02, 2023-01-06, 'H.No. 630
Viswanathan Road, Jamalpur-735512', 6280.00),

(77, 48, 2023-04-11, 2023-04-13, 'H.No. 177, Cherian
Bhilwara-427692', 6749.00),

(78, 53, 2023-01-03, 2023-02-02, 'H.No. 47, Thaker Marg
Bhiwandi 452167', 2456.00),

(79, 92, 2023-12-30, 2024-01-01, '64, Choudhury Zila, Orai 628836', 1617.00),

(80, 91, 2023-07-16, 2023-07-20, '378
Chhabra Street
Sambhal 704331', 54.00),

(81, 94, 2023-09-07, 2023-09-09, '19/21
Anne Ganj
Arrah 212627', 3726.00),

(82, 19, 2023-09-05, 2023-09-08, '32/225
Hari Zila, Singrauli-819495', 0.00),

(83, 17, 2023-08-29, 2023-09-21, 'H.No. 52, Sahota Circle, Bhind 916576', 2702.00),

(84, 22, 2023-03-07, 2023-03-12, 'H.No. 04, Borra Path
Bally 733336', 3711.00),

(85, 49, 2023-08-04, 2023-08-08, '02/06
Sehgal Ganj
Surat-400722', 3465.00),

(86, 84, 2023-12-01, 2023-12-06, '048
Khatri Street
Jaipur-299561', 4986.00),

(87, 68, 2023-08-12, 2023-08-14, 'H.No. 748, Shanker Street
Gudivada-693951', 9385.00),

(88, 22, 2023-12-01, 2023-12-07, '19
Batta Chowk, Kumbakonam-024427', 5347.00),

(89, 50, 2023-08-31, 2023-09-06, 'H.No. 537
Kunda Marg
Ranchi-092552', 2728.00),

(90, 12, 2023-06-21, 2023-06-28, '45/67, Kapur, Dhanbad 036535', 5281.00),

(91, 43, 2023-05-10, 2023-05-17, '32/91
Deo Road
Haridwar 894399', 9017.00),

(92, 42, 2023-12-09, 2023-12-15, 'H.No. 489, Dyal Zila
Durgapur-902173', 4821.00),

(93, 39, 2023-12-21, 2023-12-27, '35/93, Bahl Marg
Gudivada-598830', 5956.00),

(94, 74, 2023-06-08, 2023-06-09, 'H.No. 56
Bahl Street
Kottayam 049561', 6698.00),

(95, 46, 2023-02-05, 2023-02-09, 'H.No. 877
Hayer Chowk
Aizawl-743032', 3375.00),

(96, 7, 2023-08-20, 2023-08-21, 'H.No. 255
Bhattacharyya Zila, Motihari-706895', 154.00),

(97, 61, 2023-12-08, 2023-12-09, '05
Bhandari Road
Mira-Bhayandar-871191', 5112.00),

(98, 83, 2023-05-08, 2023-05-11, '18/502, Chandran Marg, Nagercoil 213032', 7058.00),

(99, 13, 2023-09-09, 2023-09-14, '02/87, Karnik
Durgapur-712325', 1212.00),

(100, 65, 2023-12-27, 2023-12-31, '81/38
Subramaniam Nagar, Mira-Bhayandar 443056', 4030.00);



-- Insert values into OrderDetails table
INSERT INTO `OrderDetails` (`OrderDetailID`, `OrderID`, `ProductID`, `Quantity`, `UnitPrice`, `TotalPrice`) VALUES

(1, 8, 28, 3, 4196.00, 12588.00),

(2, 43, 3, 4, 7519.00, 30076.00),

(3, 65, 52, 5, 1131.00, 5655.00),

(4, 89, 49, 8, 8172.00, 65376.00),

(5, 77, 2, 7, 7131.00, 49917.00),

(6, 26, 77, 5, 4559.00, 22795.00),

(7, 21, 75, 7, 1113.00, 7791.00),

(8, 65, 7, 2, 9219.00, 18438.00),

(9, 77, 9, 6, 9313.00, 55878.00),

(10, 64, 37, 4, 2855.00, 11420.00),

(11, 69, 100, 6, 4643.00, 27858.00),

(12, 91, 60, 10, 9898.00, 98980.00),

(13, 27, 15, 10, 9861.00, 98610.00),

(14, 64, 51, 1, 9486.00, 9486.00),

(15, 20, 7, 7, 7676.00, 53732.00),

(16, 24, 38, 6, 5168.00, 31008.00),

(17, 71, 9, 3, 9335.00, 28005.00),

(18, 18, 51, 5, 666.00, 3330.00),

(19, 18, 8, 5, 251.00, 1255.00),

(20, 43, 68, 1, 5158.00, 5158.00),

(21, 18, 1, 1, 1341.00, 1341.00),

(22, 40, 52, 9, 7991.00, 71919.00),

(23, 81, 12, 6, 4490.00, 26940.00),

(24, 37, 3, 4, 5106.00, 20424.00),

(25, 74, 7, 6, 7292.00, 43752.00),

(26, 41, 43, 6, 3050.00, 18300.00),

(27, 64, 28, 2, 3067.00, 6134.00),

(28, 37, 68, 8, 9184.00, 73472.00),

(29, 58, 68, 2, 2380.00, 4760.00),

(30, 92, 92, 1, 3195.00, 3195.00),

(31, 45, 57, 1, 803.00, 803.00),

(32, 46, 4, 9, 4202.00, 37818.00),

(33, 80, 39, 4, 7059.00, 28236.00),

(34, 65, 11, 7, 3434.00, 24038.00),

(35, 65, 80, 4, 6803.00, 27212.00),

(36, 76, 6, 5, 8936.00, 44680.00),

(37, 50, 16, 5, 8136.00, 40680.00),

(38, 39, 98, 1, 5819.00, 5819.00),

(39, 31, 4, 5, 9665.00, 48325.00),

(40, 90, 43, 8, 3857.00, 30856.00),

(41, 30, 40, 4, 8626.00, 34504.00),

(42, 85, 98, 3, 7038.00, 21114.00),

(43, 66, 53, 8, 8891.00, 71128.00),

(44, 84, 35, 9, 1674.00, 15066.00),

(45, 31, 97, 9, 7686.00, 69174.00),

(46, 46, 83, 5, 2299.00, 11495.00),

(47, 94, 90, 5, 1633.00, 8165.00),

(48, 11, 73, 1, 3012.00, 3012.00),

(49, 51, 3, 8, 9410.00, 75280.00),

(50, 9, 78, 10, 2077.00, 20770.00),

(51, 42, 82, 10, 1151.00, 11510.00),

(52, 39, 81, 6, 3983.00, 23898.00),

(53, 14, 26, 1, 4936.00, 4936.00),

(54, 91, 28, 9, 9149.00, 82341.00),

(55, 44, 18, 3, 857.00, 2571.00),

(56, 14, 16, 5, 4825.00, 24125.00),

(57, 72, 44, 6, 3431.00, 20586.00),

(58, 86, 28, 2, 3326.00, 6652.00),

(59, 84, 38, 3, 5315.00, 15945.00),

(60, 39, 58, 6, 8364.00, 50184.00),

(61, 77, 90, 3, 6753.00, 20259.00),

(62, 59, 96, 9, 9978.00, 89802.00),

(63, 97, 36, 4, 5136.00, 20544.00),

(64, 70, 32, 9, 1480.00, 13320.00),

(65, 1, 35, 8, 8615.00, 68920.00),

(66, 61, 99, 2, 2308.00, 4616.00),

(67, 43, 69, 9, 8063.00, 72567.00),

(68, 15, 85, 3, 3828.00, 11484.00),

(69, 14, 18, 3, 4985.00, 14955.00),

(70, 42, 7, 2, 2024.00, 4048.00),

(71, 58, 55, 4, 5383.00, 21532.00),

(72, 1, 94, 4, 3386.00, 13544.00),

(73, 39, 1, 5, 178.00, 890.00),

(74, 55, 61, 6, 2933.00, 17598.00),

(75, 32, 26, 6, 3278.00, 19668.00),

(76, 28, 59, 7, 4194.00, 29358.00),

(77, 81, 72, 4, 9360.00, 37440.00),

(78, 27, 79, 6, 7194.00, 43164.00),

(79, 3, 71, 1, 1035.00, 1035.00),

(80, 44, 23, 7, 9644.00, 67508.00),

(81, 95, 79, 4, 3092.00, 12368.00),

(82, 70, 78, 8, 2878.00, 23024.00),

(83, 84, 73, 6, 7881.00, 47286.00),

(84, 82, 45, 8, 7905.00, 63240.00),

(85, 54, 45, 7, 5624.00, 39368.00),

(86, 66, 66, 7, 1543.00, 10801.00),

(87, 32, 30, 6, 9599.00, 57594.00),

(88, 94, 43, 5, 2073.00, 10365.00),

(89, 88, 96, 2, 8465.00, 16930.00),

(90, 70, 55, 1, 6574.00, 6574.00),

(91, 68, 27, 1, 9773.00, 9773.00),

(92, 42, 88, 10, 8644.00, 86440.00),

(93, 84, 46, 10, 2585.00, 25850.00),

(94, 23, 11, 5, 6514.00, 32570.00),

(95, 44, 79, 1, 9180.00, 9180.00),

(96, 11, 18, 1, 674.00, 674.00),

(97, 87, 73, 1, 6697.00, 6697.00),

(98, 3, 11, 7, 5897.00, 41279.00),

(99, 79, 85, 3, 7748.00, 23244.00),

(100, 1, 80, 5, 7172.00, 35860.00);
