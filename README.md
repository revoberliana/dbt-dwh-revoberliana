
### ERD STAR SCHEMA 
<img width="334" alt="erd fact sales" src="https://github.com/user-attachments/assets/e880b577-1b13-4638-8370-6bd17742c5a6">

### Analysis using Star Schema
1. top 10 product selling > untuk melihat 10 product dengan amount terbesar yang terjual > query di bigquery using tb fact_sales join dim_product (query named top-10-selling-product)
   result table :

![image](https://github.com/user-attachments/assets/3dba8fd3-857e-47de-a37f-127dcca60f61)

2.  top 10 product selling by category > untuk melihat 10 product dengan amount terbesar yang terjual berdasarkan kategorinya > query di bigquery using tb fact_sales join dim_product group by category only (query named top-10-selling-product-by-category)
   result table :

![image](https://github.com/user-attachments/assets/0c39314e-e1da-4547-b99f-b606bd244747)

3. dailt revenue > dapat melihat revenue terbesar dan terdikit di tanggal berapa , untuk dapat melihat trend customer melakukan pembelian
   result table :

![image](https://github.com/user-attachments/assets/1d5f28d2-59ef-4159-8651-c33d69f71834)

