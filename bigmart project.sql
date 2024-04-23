
show databases;

use avtar;

#show tabel;
select * from bigmart b ;

#1. WRITE a sql query to show all Item_Identifier
select Item_Identifier from bigmart b ;

#2. WRITE a sql query to show count of total Item_Identifier
select count(Item_Identifier) from bigmart b ;

#3. WRITE a sql query to show maximum Item Weight
select max(Item_Weight) from bigmart b ;

#4. WRITE a query to show minimun Item Weight
select min(Item_Weight)  from bigmart b ;

#5. WRITE a query to show average Item_Weight
select avg(Item_Weight) from bigmart b ;

#6. WRITE a query to show count OF Item_Fat_Content WHERE Item_Fat_Content IS Low Fat
select count(Item_Fat_Content) from bigmart b where Item_Fat_Content='Low Fat' ;

#7WRITE a query to show count OF Item_Fat_Content WHERE Item_Fat_Content IS Regular
select count(Item_Fat_Content) from bigmart b where Item_Fat_Content ='Regular'  ;

#8. WRITE a query TO show maximum Item_MRP
select max(Item_MRP) from bigmart b ;

#9. WRITE a query TO show minimum Item_MRP
select min(Item_MRP) from bigmart b ;

#10.WRITE a query to show Item_Identifier , Item_Fat_Content ,Item_Type,Item_MRP and Item_MRP IS greater than 200
select Item_Identifier,Item_Fat_Content ,Item_Type,Item_MRP from bigmart b where Item_MRP>200;

#11.WRITE a query to show maximum Item_MRP WHERE Item_Fat_Content IS Low Fat
select max(Item_MRP),Item_Fat_Content,Item_Type from bigmart b  where Item_Fat_Content = 'Low Fat' ;

#12.WRITE a query to show minimum Item_MRp AND Item_Fat_Content IS low fat
select min(Item_MRP),Item_Fat_Content from bigmart b where Item_Fat_Content = 'Low Fat' ;

#13.WRITE a query to show ALL DATA WHERE item MRP IS BETWEEN 50 TO 100
select * from bigmart b where Item_MRP between 50 and 100;

#14.WRITE a query to show ALL UNIQUE value Item_Fat_Content
select distinct item_fat_content from bigmart b ;

#15.WRITE a query to show ALL UNIQUE value Item_Type
select distinct item_type from bigmart b ;

#16.WRITE a query to show ALL DATA IN descending ORDER BY Item MRP
select * from bigmart b order by Item_mrp desc ;

#17.WRITE a query to show ALL DATA IN ascending ORDER BYItem_Outlet_Sales
select * from bigmart b order by Item_Outlet_Sales asc ;

#18.WRITE a query to show ALL DATA IN ascending BY Item_Type
select * from bigmart b order by Item_Type asc;

#19.WRITE a query to show DATA OF item_type dairy & Meat
select * from bigmart b where Item_Type = 'Dairy' or Item_Type = 'Meat' ;

#20.WRITE a query to show ALL UNIQUE value OF Outlet_Size
select distinct outlet_size from bigmart b ;

#21.WRITE a query to show ALL UNIQUE value OF Outlet_Location_Type
select distinct outlet_location_type from bigmart b ;

#22.WRITE a query to show ALL UNIQUE value OF Outlet_Type
select distinct outlet_type from bigmart b ;

#23.WRITE a query to show count NO. OF item BY Item_Type AND orderedit IN descending
select count(Item_Type) as no_of_item, item_type from bigmart b group by Item_Type order by no_of_item desc ;

#24.WRITE a query to show count NO. OF item BY Outlet_Size AND ordered it IN ascending
select count(outlet_size) as no_of_item,outlet_size from bigmart b group by Outlet_Size order by no_of_item asc;

#25.WRITE a query to show count NO. OF item BY
select count(item_type) as total_item from bigmart b ;

#26.WRITE a query to show count of item BY Outlet_Location_Type AND ordered it IN descending
select count(outlet_location_type) as no_of_item , outlet_location_type from bigmart b group by Outlet_Location_Type order by no_of_item desc ;

#28.WRITE a query to show maximum MRP BY Item_Type
select max(item_mrp) as max_mrp, item_type from bigmart b group by Item_Type ;

#29.WRITE a query to show minimum MRP BY Outlet_Establishment_Year AND ordered it IN descending
select min(item_mrp) as min_mrp,Outlet_Establishment_Year as year_ from bigmart b group by Outlet_Establishment_Year 
order by year_ desc;

#30WRITE a query to show maximum MRP BY Outlet_Establishment_Year AND ordered IN descending
select max(item_mrp) as max_mrp,Outlet_Establishment_Year as year_ from bigmart b group by Outlet_Establishment_Year
order by year_ desc;

#31WRITE a query to show average MRP BY Outlet_Size AND ordered IN descending
select avg(item_mrp) as avg_mrp,Outlet_Size from bigmart b group by Outlet_Size order by Outlet_Size desc;

#32WRITE a query to show Average MRP BY Outlet_Type AND ordered IN ascending
select avg(item_mrp)  as avg_mrp, outlet_type from bigmart b group by Outlet_Size order by Outlet_type asc;

#33WRITE a query to show maximum MRP BY Outlet_Type
select max(item_mrp) as max_mrp , outlet_type from bigmart b group by Outlet_Type ; 

#34WRITE a query to show maximum Item_Weight BY Item_Type
select max(item_weight) , item_type from bigmart b group by Item_Type ;

#35WRITE a query to show maximum Item_Weight BY Outlet_Establishment_Year
select max(item_weight) , Outlet_Establishment_Year as year_ from bigmart b group by Outlet_Establishment_Year;

#36WRITE a query to show average Item_Weight BY Outlet_Location_Type ORDER BY descending
select avg(item_weight) , Outlet_Location_Type as location from bigmart b group by Outlet_Location_Type
order by location desc;

#37WRITE a query to show maximum Item_Outlet_Sales BY Item_Type
select max(Item_Outlet_Sales) as max_sales , item_type from bigmart b group by Item_Type ;

#38WRITE a query to show minimum Item_Outlet_Sales BY Outlet_Establishment_Year
select min(Item_Outlet_Sales) as min_sales,  Outlet_Establishment_Year as year_ from bigmart b group by year_;

#39WRITE a query to show total Item_Outlet_Sales BY
select * from bigmart b group by Item_Outlet_Sales ;

#40WRITE a query to show total Item_Outlet_Sales BY Item_Type
select count( Item_Outlet_Sales) as total_sales , item_type from bigmart b group by Item_MRP ;

#41WRITE a query to show total Item_Outlet_Sales BY Item_Fat_Content
select count( Item_Outlet_Sales) as total_sales, Item_Fat_Content from bigmart b group by Item_Fat_Content;

#42WRITE a query to show total Item_Outlet_Sales BY Item_Type but ONLY WHERE Outlet_Location_Type IS Tier 1
select count(Item_Outlet_Sales) as total_sales, item_type,Outlet_Location_Type as location from bigmart b 
 where Outlet_Location_Type = 'Tier 1' group by item_type ;
 
#43WRITE a query to show total Item_Outlet_Sales BY Item_Type WHERE Item_Fat_Content IS ONLY Low Fat & LF
select count(Item_Outlet_Sales) as total_sales,item_type,Item_Fat_Content from bigmart b where 
Item_Fat_Content='Low Fat' or Item_Fat_Content='LF' group by Item_Type ;

