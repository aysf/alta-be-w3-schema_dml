# alta-be-w3-schema_dml
3rd week task / part 3 : data modification language (DML)

## Learning Competencies
* Mampu menggunakan statement SQL DML

## Problems

### Section 1: Create, Update, and Delete Data

1. Insert    
    a. Insert 5 operators pada table operators    
    b. Insert 3 product type    
    c. Insert 2 product dengan product type id = 1, dan operators id = 3    
    d. Insert 3 product dengan product type id = 2, dan operators id = 1    
    e. Insert 3 product dengan product type id = 3, dan operators id = 4
    f. Insert product description pada setiap product    
    g. Insert 3 payment method    
    h. Insert 5 user pada table user
    i. Insert 3 transaksi di masing-masing user    
    j. Insert 3 product di masing-masing transaksi
2. Select    
    a. Tampilkan nama user / pelanggan dengan gender laki-laki / M
    b. Tampilkan product dengan id = 3    
    c. Tampilkan data pelanggan yang _created_at_ dalam range 7 hari kebelakang dan mempunyai nama mengandung kata 'a'    
    d. Hitung jumlah user/pelanggan dengan status gender perempuan.    
    e. Tampilkan data pelanggan dengan sesuai nama abjad.    
    f. Tampilkan 5 data pada soal 2.b
3. Update    
    a. Ubah data product id 1 dengan nama _'product dummy'_    
    b. Update qty = 3 pada transaction detail dengan product id 1    
4. Delete      
    a. Delete data pada table product dengan id 1    
    b. Delete pada table product dengan product type id 1    
    
### Section 2: Join, Union, Sub-query, Function    
1. Gabungkan data transaksi dari user id 1 dan user id 2    
2. Tampilkan jumlah harga transaksi user id 1.
3. Tampilkan total transaksi dengan product type 2
4. Tampilkan semua field table product dan field name table product type yang saling berhubungan    
5. Tampilkan semua field table transaction, field name table product dan field name table user    
6. Buat function setelah data transaksi dihapus maka transaction detail terhapus juga dengan transaction id yang dimaksud
7. Buat function setelah data transaksi detail dihapus maka data total_qty terupdate berdasarkan qty data transaction id yang dihapus
8. Tampilkan data products yang tidak pernah ada di table transaction_details dengan sub-query

## Learning Notes

### Trigger Function

Untuk membuat trigger (pemicu) dapat menggunakan syntax berikut (https://www.youtube.com/embed/f6VWSlnHGCE?start=201)

```sql
CREATE TRIGGER trigger_name
[BEFORE | AFTER] [INSERT | UPDATE | DELETE]
ON table_name [FOR EACH ROW | FOR EACH COLUMN]
(TRIGGER BODY)
```

Sebagai contoh fungsi trigger berikut (https://www.mysqltutorial.org/mysql-triggers/mysql-after-delete-trigger/)

```sql
CREATE TRIGGER after_salaries_delete
AFTER DELETE
ON Salaries FOR EACH ROW
UPDATE SalaryBudgets 
SET total = total - old.salary;
```
