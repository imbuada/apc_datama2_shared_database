
CREATE TABLE imbuada.customers (
    id integer NOT NULL,
    cust_fname text,
    cust_mi text,
    cust_lname text,
    cust_cont text,
    cust_add text,
    cust_eadd text,
    cust_job text
);



CREATE VIEW imbuada.cust_bldg AS
 SELECT customers.id,
    customers.cust_fname,
    customers.cust_lname,
    buildings.bldg_name,
    buildings.blg_zip
   FROM (imbuada.customers
     JOIN imbuada.buildings USING (cust_lname));



insert into imbuada.buildings (id, bldg_name, bldg_add, blg_zip, cust_fname, cust_lname) VALUES
('1',	'net lima',	'taguig',	'1630',	'angelika',	'pineda'),
('2',	'APC',	'makati',	'1232',	'irwin',	'buada'),
('3',	'uptown',	'taguig',	'1630',	'angelika',	'pineda'),
('4',	'uptown',	'taguig',	'1226',	'felix',	'pedro');




insert into imbuada.customers (id, cust_fname, cust_mi, cust_lname, cust_cont, cust_add, cust_eadd, cust_job) VALUES
('1',	'irwin',	'm',	'buada',	'091660188387',	'pasay',	'imbuada',	'student'),
('2',	'angelika',	'l',	'pineda',	'09123456789',	'san pedro',	'alpineda',	'manager'),
('3',	'felix',	'l',	'pedro',	'09164544783',	'paranaque',	'flpedro',	'instructor'),
('4',	'emily',	'v',	'teodoro',	'0922596969',	'makati',	'evteodoro',	'miipai');



