
CREATE TABLE customers (
    id serial primary key ,
    cust_fname text,
    cust_mi text,
    cust_lname text,
    cust_cont text,
    cust_add text,
    cust_eadd text,
    cust_job text
);


CREATE TABLE buildings (
	id serial primary key,
	bldg_name text,
	bldg_add text,
	blg_zip text,
	cust_fname text,
	cust_lname text,
	foreign key (id) references customers(id)
	
);



CREATE VIEW mi182_cust_bldg AS
 SELECT customers.id,
    customers.cust_fname,
    customers.cust_lname,
    buildings.bldg_name,
    buildings.blg_zip
   FROM (customers
     JOIN buildings USING (cust_lname));



insert into buildings (id, bldg_name, bldg_add, blg_zip, cust_fname, cust_lname) VALUES
('1',	'net lima',	'taguig',	'1630',	'angelika',	'pineda'),
('2',	'APC',	'makati',	'1232',	'irwin',	'buada'),
('3',	'uptown',	'taguig',	'1630',	'angelika',	'pineda'),
('4',	'uptown',	'taguig',	'1226',	'felix',	'pedro');




insert into customers (id, cust_fname, cust_mi, cust_lname, cust_cont, cust_add, cust_eadd, cust_job) VALUES
('1',	'irwin',	'm',	'buada',	'091660188387',	'pasay',	'imbuada',	'student'),
('2',	'angelika',	'l',	'pineda',	'09123456789',	'san pedro',	'alpineda',	'manager'),
('3',	'felix',	'l',	'pedro',	'09164544783',	'paranaque',	'flpedro',	'instructor'),
('4',	'emily',	'v',	'teodoro',	'0922596969',	'makati',	'evteodoro',	'miipai');




create or replace procedure test_procedure ()
language plpgsql
as $$
begin
	update buildings
	set blg_zip = '1630'
	where bldg_add = 'taguig';
	
	commit;
end
$$;

call test_procedure();
