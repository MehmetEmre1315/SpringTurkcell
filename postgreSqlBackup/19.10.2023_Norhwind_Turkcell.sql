PGDMP     %                	    {            northwind-turkcell2    15.3    15.3 `    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    58440    northwind-turkcell2    DATABASE     �   CREATE DATABASE "northwind-turkcell2" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Turkish_Turkey.1252';
 %   DROP DATABASE "northwind-turkcell2";
                postgres    false            �            1259    58441 
   categories    TABLE     �   CREATE TABLE public.categories (
    category_id smallint NOT NULL,
    category_name character varying(255) NOT NULL,
    description character varying(255),
    picture bytea
);
    DROP TABLE public.categories;
       public         heap    postgres    false            �            1259    58446    categories_category_id_seq    SEQUENCE     �   ALTER TABLE public.categories ALTER COLUMN category_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.categories_category_id_seq
    START WITH 9
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    214            �            1259    58447    customer_customer_demo    TABLE     �   CREATE TABLE public.customer_customer_demo (
    customer_id character varying(255) NOT NULL,
    customer_type_id character varying(255) NOT NULL,
    id smallint NOT NULL
);
 *   DROP TABLE public.customer_customer_demo;
       public         heap    postgres    false            �            1259    58452    customer_customer_demo_id_seq    SEQUENCE     �   ALTER TABLE public.customer_customer_demo ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.customer_customer_demo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216            �            1259    58453    customer_demographics    TABLE     �   CREATE TABLE public.customer_demographics (
    customer_type_id character varying(255) NOT NULL,
    customer_desc character varying(255)
);
 )   DROP TABLE public.customer_demographics;
       public         heap    postgres    false            �            1259    58458 	   customers    TABLE     �  CREATE TABLE public.customers (
    customer_id character varying(255) NOT NULL,
    company_name character varying(255) NOT NULL,
    contact_name character varying(255),
    contact_title character varying(255),
    address character varying(255),
    city character varying(255),
    region character varying(255),
    postal_code character varying(255),
    country character varying(255),
    phone character varying(255),
    fax character varying(255)
);
    DROP TABLE public.customers;
       public         heap    postgres    false            �            1259    58463    employee_territories    TABLE     �   CREATE TABLE public.employee_territories (
    employee_id smallint NOT NULL,
    territory_id character varying(255) NOT NULL,
    id smallint NOT NULL
);
 (   DROP TABLE public.employee_territories;
       public         heap    postgres    false            �            1259    58466    employee_territories_id_seq    SEQUENCE     �   ALTER TABLE public.employee_territories ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.employee_territories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    220            �            1259    58467 	   employees    TABLE       CREATE TABLE public.employees (
    employee_id smallint NOT NULL,
    last_name character varying(255) NOT NULL,
    first_name character varying(255) NOT NULL,
    title character varying(255),
    title_of_courtesy character varying(255),
    birth_date date,
    hire_date date,
    address character varying(255),
    city character varying(255),
    region character varying(255),
    postal_code character varying(255),
    country character varying(255),
    home_phone character varying(255),
    extension character varying(255),
    photo bytea,
    notes text,
    reports_to smallint,
    photo_path character varying(255)
);
    DROP TABLE public.employees;
       public         heap    postgres    false            �            1259    58472    employees_employee_id_seq    SEQUENCE     �   ALTER TABLE public.employees ALTER COLUMN employee_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.employees_employee_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    222            �            1259    58473    order_details    TABLE     �   CREATE TABLE public.order_details (
    order_id smallint NOT NULL,
    product_id smallint NOT NULL,
    unit_price real NOT NULL,
    quantity smallint NOT NULL,
    discount real NOT NULL,
    id smallint NOT NULL
);
 !   DROP TABLE public.order_details;
       public         heap    postgres    false            �            1259    58476    order_details_id_seq    SEQUENCE     �   ALTER TABLE public.order_details ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.order_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    224            �            1259    58477    orders    TABLE     �  CREATE TABLE public.orders (
    order_id smallint NOT NULL,
    customer_id character varying(255),
    employee_id smallint,
    order_date date,
    required_date date,
    shipped_date date,
    ship_via smallint,
    freight real,
    ship_name character varying(255),
    ship_address character varying(255),
    ship_city character varying(255),
    ship_region character varying(255),
    ship_postal_code character varying(255),
    ship_country character varying(255)
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    58482    orders_order_id_seq    SEQUENCE     �   ALTER TABLE public.orders ALTER COLUMN order_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.orders_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    226            �            1259    58483    products    TABLE     e  CREATE TABLE public.products (
    product_id smallint NOT NULL,
    product_name character varying(255) NOT NULL,
    supplier_id smallint,
    category_id smallint,
    quantity_per_unit character varying(255),
    unit_price real,
    units_in_stock smallint,
    units_on_order smallint,
    reorder_level smallint,
    discontinued integer NOT NULL
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    58488    products_product_id_seq    SEQUENCE     �   ALTER TABLE public.products ALTER COLUMN product_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.products_product_id_seq
    START WITH 78
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    228            �            1259    58489    region    TABLE     x   CREATE TABLE public.region (
    region_id smallint NOT NULL,
    region_description character varying(255) NOT NULL
);
    DROP TABLE public.region;
       public         heap    postgres    false            �            1259    58492    region_region_id_seq    SEQUENCE     �   ALTER TABLE public.region ALTER COLUMN region_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.region_region_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    230            �            1259    58627    roles    TABLE     X   CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    58635 	   roles_seq    SEQUENCE     s   CREATE SEQUENCE public.roles_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
     DROP SEQUENCE public.roles_seq;
       public          postgres    false            �            1259    58493    shippers    TABLE     �   CREATE TABLE public.shippers (
    shipper_id smallint NOT NULL,
    company_name character varying(255) NOT NULL,
    phone character varying(255)
);
    DROP TABLE public.shippers;
       public         heap    postgres    false            �            1259    58498    shippers_shipper_id_seq    SEQUENCE     �   ALTER TABLE public.shippers ALTER COLUMN shipper_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.shippers_shipper_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    232            �            1259    58499 	   suppliers    TABLE     �  CREATE TABLE public.suppliers (
    supplier_id smallint NOT NULL,
    company_name character varying(255) NOT NULL,
    contact_name character varying(255),
    contact_title character varying(255),
    address character varying(255),
    city character varying(255),
    region character varying(255),
    postal_code character varying(255),
    country character varying(255),
    phone character varying(255),
    fax character varying(255),
    homepage character varying(255)
);
    DROP TABLE public.suppliers;
       public         heap    postgres    false            �            1259    58504    suppliers_supplier_id_seq    SEQUENCE     �   ALTER TABLE public.suppliers ALTER COLUMN supplier_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.suppliers_supplier_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    234            �            1259    58505    territories    TABLE     �   CREATE TABLE public.territories (
    territory_id character varying(255) NOT NULL,
    territory_description character varying(255) NOT NULL,
    region_id smallint NOT NULL
);
    DROP TABLE public.territories;
       public         heap    postgres    false            �            1259    58510 	   us_states    TABLE     �   CREATE TABLE public.us_states (
    state_id smallint NOT NULL,
    state_name character varying(255),
    state_abbr character varying(255),
    state_region character varying(255)
);
    DROP TABLE public.us_states;
       public         heap    postgres    false            �            1259    58515    us_states_state_id_seq    SEQUENCE     �   ALTER TABLE public.us_states ALTER COLUMN state_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.us_states_state_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    237            �            1259    58516    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    last_name character varying(255),
    name character varying(255),
    password character varying(255),
    role character varying(255),
    username character varying(255)
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    58632    users_roles    TABLE     `   CREATE TABLE public.users_roles (
    user_id integer NOT NULL,
    role_id integer NOT NULL
);
    DROP TABLE public.users_roles;
       public         heap    postgres    false            �            1259    58521 	   users_seq    SEQUENCE     s   CREATE SEQUENCE public.users_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
     DROP SEQUENCE public.users_seq;
       public          postgres    false            p          0    58441 
   categories 
   TABLE DATA           V   COPY public.categories (category_id, category_name, description, picture) FROM stdin;
    public          postgres    false    214   �{       r          0    58447    customer_customer_demo 
   TABLE DATA           S   COPY public.customer_customer_demo (customer_id, customer_type_id, id) FROM stdin;
    public          postgres    false    216   }       t          0    58453    customer_demographics 
   TABLE DATA           P   COPY public.customer_demographics (customer_type_id, customer_desc) FROM stdin;
    public          postgres    false    218   "}       u          0    58458 	   customers 
   TABLE DATA           �   COPY public.customers (customer_id, company_name, contact_name, contact_title, address, city, region, postal_code, country, phone, fax) FROM stdin;
    public          postgres    false    219   ?}       v          0    58463    employee_territories 
   TABLE DATA           M   COPY public.employee_territories (employee_id, territory_id, id) FROM stdin;
    public          postgres    false    220   m�       x          0    58467 	   employees 
   TABLE DATA           �   COPY public.employees (employee_id, last_name, first_name, title, title_of_courtesy, birth_date, hire_date, address, city, region, postal_code, country, home_phone, extension, photo, notes, reports_to, photo_path) FROM stdin;
    public          postgres    false    222   w�       z          0    58473    order_details 
   TABLE DATA           a   COPY public.order_details (order_id, product_id, unit_price, quantity, discount, id) FROM stdin;
    public          postgres    false    224   N�       |          0    58477    orders 
   TABLE DATA           �   COPY public.orders (order_id, customer_id, employee_id, order_date, required_date, shipped_date, ship_via, freight, ship_name, ship_address, ship_city, ship_region, ship_postal_code, ship_country) FROM stdin;
    public          postgres    false    226   ��       ~          0    58483    products 
   TABLE DATA           �   COPY public.products (product_id, product_name, supplier_id, category_id, quantity_per_unit, unit_price, units_in_stock, units_on_order, reorder_level, discontinued) FROM stdin;
    public          postgres    false    228   ]$      �          0    58489    region 
   TABLE DATA           ?   COPY public.region (region_id, region_description) FROM stdin;
    public          postgres    false    230   �,      �          0    58627    roles 
   TABLE DATA           )   COPY public.roles (id, name) FROM stdin;
    public          postgres    false    241   �,      �          0    58493    shippers 
   TABLE DATA           C   COPY public.shippers (shipper_id, company_name, phone) FROM stdin;
    public          postgres    false    232   $-      �          0    58499 	   suppliers 
   TABLE DATA           �   COPY public.suppliers (supplier_id, company_name, contact_name, contact_title, address, city, region, postal_code, country, phone, fax, homepage) FROM stdin;
    public          postgres    false    234   �-      �          0    58505    territories 
   TABLE DATA           U   COPY public.territories (territory_id, territory_description, region_id) FROM stdin;
    public          postgres    false    236   �6      �          0    58510 	   us_states 
   TABLE DATA           S   COPY public.us_states (state_id, state_name, state_abbr, state_region) FROM stdin;
    public          postgres    false    237   �8      �          0    58516    users 
   TABLE DATA           N   COPY public.users (id, last_name, name, password, role, username) FROM stdin;
    public          postgres    false    239   A;      �          0    58632    users_roles 
   TABLE DATA           7   COPY public.users_roles (user_id, role_id) FROM stdin;
    public          postgres    false    242   �;      �           0    0    categories_category_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.categories_category_id_seq', 10, true);
          public          postgres    false    215            �           0    0    customer_customer_demo_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.customer_customer_demo_id_seq', 1, false);
          public          postgres    false    217            �           0    0    employee_territories_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.employee_territories_id_seq', 49, true);
          public          postgres    false    221            �           0    0    employees_employee_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.employees_employee_id_seq', 1, false);
          public          postgres    false    223            �           0    0    order_details_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.order_details_id_seq', 2171, true);
          public          postgres    false    225            �           0    0    orders_order_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.orders_order_id_seq', 19, true);
          public          postgres    false    227            �           0    0    products_product_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.products_product_id_seq', 82, true);
          public          postgres    false    229            �           0    0    region_region_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.region_region_id_seq', 1, false);
          public          postgres    false    231            �           0    0 	   roles_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('public.roles_seq', 1, false);
          public          postgres    false    243            �           0    0    shippers_shipper_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.shippers_shipper_id_seq', 1, false);
          public          postgres    false    233            �           0    0    suppliers_supplier_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.suppliers_supplier_id_seq', 1, false);
          public          postgres    false    235            �           0    0    us_states_state_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.us_states_state_id_seq', 1, false);
          public          postgres    false    238            �           0    0 	   users_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('public.users_seq', 51, true);
          public          postgres    false    240            �           2606    58523    order_details pk 
   CONSTRAINT     N   ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT pk PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.order_details DROP CONSTRAINT pk;
       public            postgres    false    224            �           2606    58525 0   customer_customer_demo pk.customer_customer_demo 
   CONSTRAINT     p   ALTER TABLE ONLY public.customer_customer_demo
    ADD CONSTRAINT "pk.customer_customer_demo" PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.customer_customer_demo DROP CONSTRAINT "pk.customer_customer_demo";
       public            postgres    false    216            �           2606    58527 ,   employee_territories pk.employee_territories 
   CONSTRAINT     l   ALTER TABLE ONLY public.employee_territories
    ADD CONSTRAINT "pk.employee_territories" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.employee_territories DROP CONSTRAINT "pk.employee_territories";
       public            postgres    false    220            �           2606    58647    users_roles pk.users_roles 
   CONSTRAINT     h   ALTER TABLE ONLY public.users_roles
    ADD CONSTRAINT "pk.users_roles" PRIMARY KEY (user_id, role_id);
 F   ALTER TABLE ONLY public.users_roles DROP CONSTRAINT "pk.users_roles";
       public            postgres    false    242    242            �           2606    58529    categories pk_categories 
   CONSTRAINT     _   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT pk_categories PRIMARY KEY (category_id);
 B   ALTER TABLE ONLY public.categories DROP CONSTRAINT pk_categories;
       public            postgres    false    214            �           2606    58531 .   customer_demographics pk_customer_demographics 
   CONSTRAINT     z   ALTER TABLE ONLY public.customer_demographics
    ADD CONSTRAINT pk_customer_demographics PRIMARY KEY (customer_type_id);
 X   ALTER TABLE ONLY public.customer_demographics DROP CONSTRAINT pk_customer_demographics;
       public            postgres    false    218            �           2606    58533    customers pk_customers 
   CONSTRAINT     ]   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT pk_customers PRIMARY KEY (customer_id);
 @   ALTER TABLE ONLY public.customers DROP CONSTRAINT pk_customers;
       public            postgres    false    219            �           2606    58535    employees pk_employees 
   CONSTRAINT     ]   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT pk_employees PRIMARY KEY (employee_id);
 @   ALTER TABLE ONLY public.employees DROP CONSTRAINT pk_employees;
       public            postgres    false    222            �           2606    58537    orders pk_orders 
   CONSTRAINT     T   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT pk_orders PRIMARY KEY (order_id);
 :   ALTER TABLE ONLY public.orders DROP CONSTRAINT pk_orders;
       public            postgres    false    226            �           2606    58539    products pk_products 
   CONSTRAINT     Z   ALTER TABLE ONLY public.products
    ADD CONSTRAINT pk_products PRIMARY KEY (product_id);
 >   ALTER TABLE ONLY public.products DROP CONSTRAINT pk_products;
       public            postgres    false    228            �           2606    58541    region pk_region 
   CONSTRAINT     U   ALTER TABLE ONLY public.region
    ADD CONSTRAINT pk_region PRIMARY KEY (region_id);
 :   ALTER TABLE ONLY public.region DROP CONSTRAINT pk_region;
       public            postgres    false    230            �           2606    58543    shippers pk_shippers 
   CONSTRAINT     Z   ALTER TABLE ONLY public.shippers
    ADD CONSTRAINT pk_shippers PRIMARY KEY (shipper_id);
 >   ALTER TABLE ONLY public.shippers DROP CONSTRAINT pk_shippers;
       public            postgres    false    232            �           2606    58545    suppliers pk_suppliers 
   CONSTRAINT     ]   ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT pk_suppliers PRIMARY KEY (supplier_id);
 @   ALTER TABLE ONLY public.suppliers DROP CONSTRAINT pk_suppliers;
       public            postgres    false    234            �           2606    58547    territories pk_territories 
   CONSTRAINT     b   ALTER TABLE ONLY public.territories
    ADD CONSTRAINT pk_territories PRIMARY KEY (territory_id);
 D   ALTER TABLE ONLY public.territories DROP CONSTRAINT pk_territories;
       public            postgres    false    236            �           2606    58549    us_states pk_usstates 
   CONSTRAINT     Y   ALTER TABLE ONLY public.us_states
    ADD CONSTRAINT pk_usstates PRIMARY KEY (state_id);
 ?   ALTER TABLE ONLY public.us_states DROP CONSTRAINT pk_usstates;
       public            postgres    false    237            �           2606    58631    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    241            �           2606    58551    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    239            �           2606    58641 '   users_roles fk2o0jvgh89lemvvo17cbqvdxaa    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_roles
    ADD CONSTRAINT fk2o0jvgh89lemvvo17cbqvdxaa FOREIGN KEY (user_id) REFERENCES public.users(id);
 Q   ALTER TABLE ONLY public.users_roles DROP CONSTRAINT fk2o0jvgh89lemvvo17cbqvdxaa;
       public          postgres    false    242    3278    239            �           2606    58552 F   customer_customer_demo fk_customer_customer_demo_customer_demographics    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_customer_demo
    ADD CONSTRAINT fk_customer_customer_demo_customer_demographics FOREIGN KEY (customer_type_id) REFERENCES public.customer_demographics(customer_type_id);
 p   ALTER TABLE ONLY public.customer_customer_demo DROP CONSTRAINT fk_customer_customer_demo_customer_demographics;
       public          postgres    false    218    3254    216            �           2606    58557 :   customer_customer_demo fk_customer_customer_demo_customers    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_customer_demo
    ADD CONSTRAINT fk_customer_customer_demo_customers FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);
 d   ALTER TABLE ONLY public.customer_customer_demo DROP CONSTRAINT fk_customer_customer_demo_customers;
       public          postgres    false    216    3256    219            �           2606    58562 6   employee_territories fk_employee_territories_employees    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee_territories
    ADD CONSTRAINT fk_employee_territories_employees FOREIGN KEY (employee_id) REFERENCES public.employees(employee_id);
 `   ALTER TABLE ONLY public.employee_territories DROP CONSTRAINT fk_employee_territories_employees;
       public          postgres    false    222    220    3260            �           2606    58567 8   employee_territories fk_employee_territories_territories    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee_territories
    ADD CONSTRAINT fk_employee_territories_territories FOREIGN KEY (territory_id) REFERENCES public.territories(territory_id);
 b   ALTER TABLE ONLY public.employee_territories DROP CONSTRAINT fk_employee_territories_territories;
       public          postgres    false    3274    220    236            �           2606    58572     employees fk_employees_employees    FK CONSTRAINT     �   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT fk_employees_employees FOREIGN KEY (reports_to) REFERENCES public.employees(employee_id);
 J   ALTER TABLE ONLY public.employees DROP CONSTRAINT fk_employees_employees;
       public          postgres    false    3260    222    222            �           2606    58577 %   order_details fk_order_details_orders    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT fk_order_details_orders FOREIGN KEY (order_id) REFERENCES public.orders(order_id);
 O   ALTER TABLE ONLY public.order_details DROP CONSTRAINT fk_order_details_orders;
       public          postgres    false    3264    224    226            �           2606    58582 '   order_details fk_order_details_products    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT fk_order_details_products FOREIGN KEY (product_id) REFERENCES public.products(product_id);
 Q   ALTER TABLE ONLY public.order_details DROP CONSTRAINT fk_order_details_products;
       public          postgres    false    228    3266    224            �           2606    58587    orders fk_orders_customers    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_orders_customers FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);
 D   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk_orders_customers;
       public          postgres    false    3256    226    219            �           2606    58592    orders fk_orders_employees    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_orders_employees FOREIGN KEY (employee_id) REFERENCES public.employees(employee_id);
 D   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk_orders_employees;
       public          postgres    false    222    226    3260            �           2606    58597    orders fk_orders_shippers    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_orders_shippers FOREIGN KEY (ship_via) REFERENCES public.shippers(shipper_id);
 C   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk_orders_shippers;
       public          postgres    false    232    226    3270            �           2606    58602    products fk_products_categories    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT fk_products_categories FOREIGN KEY (category_id) REFERENCES public.categories(category_id);
 I   ALTER TABLE ONLY public.products DROP CONSTRAINT fk_products_categories;
       public          postgres    false    214    3250    228            �           2606    58607    products fk_products_suppliers    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT fk_products_suppliers FOREIGN KEY (supplier_id) REFERENCES public.suppliers(supplier_id);
 H   ALTER TABLE ONLY public.products DROP CONSTRAINT fk_products_suppliers;
       public          postgres    false    234    228    3272            �           2606    58612 !   territories fk_territories_region    FK CONSTRAINT     �   ALTER TABLE ONLY public.territories
    ADD CONSTRAINT fk_territories_region FOREIGN KEY (region_id) REFERENCES public.region(region_id);
 K   ALTER TABLE ONLY public.territories DROP CONSTRAINT fk_territories_region;
       public          postgres    false    3268    236    230            �           2606    58636 '   users_roles fkj6m8fwv7oqv74fcehir1a9ffy    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_roles
    ADD CONSTRAINT fkj6m8fwv7oqv74fcehir1a9ffy FOREIGN KEY (role_id) REFERENCES public.roles(id);
 Q   ALTER TABLE ONLY public.users_roles DROP CONSTRAINT fkj6m8fwv7oqv74fcehir1a9ffy;
       public          postgres    false    242    241    3280            p     x�5P;n�0��S� A���66Щ���Z���d�rڜ���J��D�|?���?QH�Q*1�R���e6$��i�r\:���j�Q�����.�-G&�j!N
5�����}Vɬ�ѫW���FSTG"�u�o�>ȶ"e����a4�vJ�U�dP&>�;a�6q_�a��ɖ'���ϰ:��u�x���=a(��6�^�%t1ڥjx�1N���;�ә���.��}���9Z�N�������u�[xe�>p���n����R�r      r      x������ � �      t      x������ � �      u      x��Zˎ"I�]_aRK��RB���t�<���Ro�/w�D������Lw�T�QI�h�j��9��Hr�KU�x�5�v��^�`p�� ���U��<��6�rɆ"�L36���T�S��8yx�l����<mp�eM�Fa��8b�ah>���N��L3�����i�kǶ�Z0
�SĂ����0�����!VIƟ�FFt��6~�eʂ�J4�J�H�Vgy����k��Æ�/��e�ۍ�MH�5J��}g��۶]�\ÿLW�h>�\��aI*���O�LO��7?�g2���0an��m��[Ӧo��L�s�I�x�����1�o���xW���ێ�?��A�|�S��x�(�?:����g��^�s]ϫ��j���~F{��`<�Y,����{�ڤ��N����)�ȃ�.��S*�$UZ���経9�ؠ���?h��o{�	6{�+3�7��np���j�֚���DAk���enE.3,�a���0I����$T�_	�!n��pG�p<Ss^@����Y�v���ǣ	��}2[����O�e�?�Q���ӗ��K��R�).��Ys�k`����}$�����CL�l��ZM��4�R2�k8ZC��^�6j���f�ӯQ�J �]��Z���%��O��|��v0Q¯�;�@h��7q�*Wd��w��@H~�;�-��2�u��0<
��$�b��� ����\����{��po&�rC��)ea)Uԛ��]V���jXv��*�:���C��dWo'Q$R^:4c�(<���7|��$�Y�\"4^����L<	�oF�U�]Ǭ�bs�{C��p�J��ͪ��u��9kv>��;,I"�` c�%�M̗m��4�|y��� F�,�JvZ�G��A����VК?`z˼�^�{��ǃH�D�i�����>�K��,g-��a�p�4Y� ��R��Ȅ�C���o�n�u�����:�y���4��hZ�"B�-sy,v���0�������BLߧ�Հ�oޤ?�+�3}�:����Vw<��y�}=+$\�	c8�}����P��+�}���	R�65��&̏�@t�Y�Q/����x8�1��L~��a���\a��'����,K�d������܏=z�)�D�'�@�M�6䴺fa'Rq#8�B��喖G�.�� ���>Z��U�7��)��2,q+#8��@�o�~�$��*��A�����b�:�u�z{�ڬ�
�o����5���q�G�\�$�Ge2}�k�|���}�М
���u8���}��j�!�k��;�[N0Ŗ~1���"-by�g�}a�V�T�8������-�B���p�(��|���Z'��A�"&��e�qAc��7fڼOH��	B镓M��=�v�f�neh��Y�Li�;)d	e镌�4!`�T���%����͚�Ç@�T,�{(���]7-þ^9��`��B�0"�J�"Z%  �[iq�D-`�-��ش|��~��o�lΦ��}�Vp���f�I���.�a/�X�r.7��Y#h�v(�	�&X�Gւ��Q�G���9�3�i��\��-�eHߘ�;��{h �5�kd�y�̔��)pq�®���}�=dmL�Ȳ�B��	�����l�/��i��Y�vi�1Mb˓�:�̻ͳx ?���>�i���j�ɧ��[Y�%�"1t�K�O��o(����`�W���*#��Hx����Aѥ�-�H�Gn9�w|	YO�4�%d=��uM��rmٺ2<={���r������ų�f���U��4y�����5����W�5exV޴	�=�j"	�'��m���\$�h��[$J�͑Ρ��Rc�\DX���-�����k,�a�k�����)�"D����� �KDbB7 �.��M@ W�;Nyu>����P�BMQ�&XD��Jͦm�s���}0��=N� q�D����]�:����8 ���0�ED�[�]T��K�<��RB��� 	���g����-~������=�����bi�ʲ�/{� �� �x�P�R���7>A�OIh$�!]�Lcʸ�cS��KM �J:��?L0�І&�X�P�B��;�V�	�Jߠ��t1hp��1�L��N��|Et����l*���wI�:U�M��w>��W� ��pM�A��j� � �M��Z�����ٚy�ϔ��l��3��9�bU��6�r;�>�tb���xp�>�~LD�O�bD�N 7c�;@���G�?�	�6�3�o����[��R���ZҸ$R�I�B��S6YQ
9�%Q���l��JaM?PV��𫳍K��|�e�;�Z�7F���xT@{��C��"���o�>nK!��Y��Q�9��,)��A��ꦍ���2��+�&�����g�Z�x�Que�u �Ժ����:�ZM�<���#��B	�5�@\̌����s���J}���6D��5�1�@���8�kU���:jN�˜�O��>
כ�H�T��kp�/QZ7��l \�H�b�n�O���J%���Fh��#f�7s�˔֙�jVX���ɛy�T���PR8Gi	���O�'y�?�B�dl�ܝ|(U����(���Ψ������:��%k'��=.^��e�CQ,d��
_i ,^�Kw�r݊�U��	Ͱ6Z؝� �-|�N, UZkC�"`�	��72I\�v�T.��u�4�#�Qv'�r��Ur��5l(Z��rm7t�=��N�P�H����B�4) �7|���D�X�� A-�l�L	-�}PU�^1���m��_����}�Z��)��r�����AKRu��#aN����MY�Ci��*���]H´�G�}��z�,"�CUF���c:�g��}b+DB�k\Jү1��j.���s�l�f�:H��=խc\��?��2t.�t�36� &�T��i�+6�1��" ��oq�P���1UXn)�>���r��lë4�����=�z^��3�B�.������PZC������m��L"�z�����1��� ��ґ��d�g�}S�� d[��ϊ=&&ӥ@r&��$>����o�g¶+��L��/���8Tx��$!!�NH���ɰ�<�.��M[�|��0M��l]�a;��h�f�Y��wI/�p��=����Jh�k{3�).��`�d_�Q~���`�BHf��C0(H�:��i�m����o�	��QgB��̠��D�*�t��!��~.�|���%؂O�-HF*>V����7�·]�:t,�6�fԀ�4 ��H�Ӱ�C���09 ��"9 ��ACR{P���{BjaJH��;��Q���mbi��륎��fm<\W[>Iо�@>)�բm
҂֔�M�I������0�u]�.4%�g�c�i$q4ɓWC�6�L�C���R*b�¿��~��W�������"�A%A�BM���&�u�\o�W��3W��^��p<���!Ծ+;�2+��6�rD�3�%�{�x�9_�ԕ�>8�` ��1T	L�t�zC%>_f��x:��u9�D��p���4�U�T7�s�	��}!1�*�W��٣���oO!��+�)��j�V'�1�t�� ���r�� _���@�*���*z������\n�����8���?� 5��.�R^�A�q��ъ?"�W�J�&@�$�����4	�k���[��̂>	���R_s/5�gU����7�y���y��F��sFbt*"�4T�}�IDGu�q>�����g(�HOPCQ٤�\���NA�2�-�8�6���A)B�l�B��0?})�I��S�8ʤ�����4Ɓ����M+�4�M�ٳ� 7[Fô��p��c׭M:�^���	���K|	`d!�4���t�:��-p#o�(�P
dN��7z��#:C���|X0�Zc6	�Ǣ�Ӊ��f�O���`�*[ferݢ_�M�"㥷�؎Qq�+�6��F=6|�2��	T�1�7	�a5R%=��^|��"�f���#�y�&�k;o���i3�������y��`@��U��	��o�d��B��xϱ�   7�B�����_Յ�a�c6�SdH gm��A�4�AD��&'Hے�@���l��{(<߶>=�N��#�l����L}�IR�.�<�>4���x.�#2���_%ﴊX>�h�ĵ���[ae���^V1�`�격jv�G�I>�/������W�@� \ J���i���rRTLe>oa*yc����gd���|f�Bq+o�oY��]>��R}
V����?6B���Y���L�2��j��=J�\�C���@�H���8��ɵ�$�2$&)$KL��}1��I��u�UKʨ��0�
ǥ���F,L륊�`K��A�< SC�v����R,���ܸ�:Q!���W!bZ�Y"f1{�Yl��P�o�7ؐZ��A7��v'�V�trS�����Cy�kh��4�G`@5���a�{Vv��3�A��R�ɏ�;�p�Q��FDPo�<�B���_��a}�Z�m֪#]�͂���Jd"~n���E�^S(�O��˔ԡ�72�Vl�w����������#C�:��y�b��� ��\[.,~��x�uQ���zNM܁t����C�(�fŧOT[�k&!��^�y��3��Ҿ�|u�2�|�̨9
��I���(e�KҼ_P	�z3}�jSQ5�"���mn��o�]�z\eS50���R�e|����Y�:axq+����Q.s�����7~\|Ӗ1���:/_�@��k��6:���ꊤ��i k't�H�YL��vc�.�Hrc�X�+��nö����1d6��������@��_P�AQm#܊8[n�d��o]>i��J�LDJ��=~�<d��g9(E^��mص��d
'�����:}���Ԛ˖DIHh9ucn�P�*����ā9��²�q�m�R��V�:J2����F�ͻ�f��7td��~�t�>�|~Nn,�
� ?}4@����80�֢��׵�锴�����J�R�ɓ�0Y@n�z��%��6RNx<F����*�7�e56�3��ٖ�9gh{t�rz�g���!��<�e|����?� x�N�ΕevcɃ�+Mmy��j��i�W��MGߺa��k��mX��� ���ڧ����"����Kn�1�KA)����||GN��.S]��_N���n�ҞQ/�AF
��S�F%C���������R���~�l�ytl�TvWFM��&F﨩/V>/Ss&1���2:`�������l�,���#e��1K?L�
~ԭS��g��`������]��1��및p�~Dr@R�����P/D�
��N��(Yc�(NJ7�"��Յ�<A�:�\�Lhr�z�yG�]T��]��-��7M���qy窠B����\�]g]����Զ�S�vasԙog�J���Ie��D���\U�I~�ol������x�PK�N-������ ��6��˵^{F�>�@/�)齏~��d�GQ)��Хwi3����;*�'Ƚ��#�w��ڴ鍓�`:�Gz �+���@��%��d[�"�)V��x+�QA&}�D�]+���^G�쀀_.k������c�I�\Bg���EG>o�u>I��Y�L����/�5]�g�M�K�H7�>v{�"�V�^��p[Y���߷�[L��u���l��.�_R@*�_��nxo���x=ĺ{�a���v��,��i���9K��ݢ��̶E����B�ga�U�̀<�x\���=el��8��G {r���QW��sv�[����?�8�O��x^}5�
�4y��!�Q<���@�N�L���2˨��ZueT�c�V��/oسD      v   �   x�%�ɑ�0�s+�)V����F�=wI�BnOA�B��a� ���rA<�;re����S�
13�q�x\�,5�ԥuԖ~�O�	�t4���|Le_�$�MkYs��ng�!UD�u>z�t��eD
��E�(�ǣ��az?��GݴO�r|b��	�ㄏ#�	ɑ��K���G�4�)���1^9��iN�CF��f��\y(��,��%��c��2Z*y�#�O�G�kE&��c�����s�S�      x   �  x��W�r�:]#_��Se)"Ej�<��J�,���&!P��}�����*�e.�t/v%�M��.t�c+QK����J'�^=K�tC�̳� I�>��;����|�ӑ���Y����Q/�~��[I�}-�Â�gI���;KG��<���|�OY�M�����.��͕.�D�_,�ߺ]Q��lv|mM�/�ي�����F��)����|:r��$�3�0Ͷ�^��_-��f�=>b��_����pw���F6O�Ң{#�o����W�_:(�!KY���_�>��x�O�d�S�NJ���x��퇔��ֵ�l�K+_�T!�-�U%�=�mve	����d���36���Un�5;v/p#1���L�Y��Y1��r+	�J^��+¤��P�2"�q�K\��^�;ux]��Sz�7B� t@u���� �E���5�뿬�EN���(��g+E��gi��S�5J�R:��z���.�.���o����M�
��8Ĺ߄n��q�4��E�D¶'�ʏ�a�RXT��cTӡ�FTY4�2��w�եO5j
���e%��.#�X���[Q��*��j��fkl��9f�!{�~Zg렬 �1��`�C7��O6��I\�Q���l<MS�4�;~Q?�C���?k��6��(m�%P�8σ�©�
T]�x)7VJB��d����u/��8�Wˍ�g�K���kx�ز��zB���7V4���R��.�1NT`�XI�R�6��Gt��(�y��]A�:�O�UI��S��ح�c����{��O�y㐱c�%Ɉ�au'�Ơ�;��}����fk��<�N;��)Z�s�Zoj�*^+(O���>_ual��!O��c	�d�ρDv4�y�[@Kbo ���u��dҳL����p��7�*�zM���� ��;�|k��Wִ��7�ы�H�6h��E[TP�f+�4;���!�	oX"���ɔ%�,,�����kk%g�>�v�~��ΦI�=�e3��q�=���9�[���Zcȸ�<EW(�'�!�+9���R��	���d�d�w�e'���c��RpM8T�~(�Xc��m�EZGRb�L�ڎK�/���^�}#b1��1������x�'C�pk_�E!�C �{Y�}�
�樓�M��z�j
Қ�U�h�K�oe}��}�����.!hM�ŴNb|Z��`�֮/S>}���t�pHg����حz��W�s��a�>[.ι,�6�*�9����׮t��1���Y ��'��t����y�:lL�� ɽ�	�r�lk������u�3u�y�Tq�A���f����;k����N�G4Z�?^,�c��ߢͶ�+c#^�1d�����h��wt2��#��4$9�Xb���HL`����~��[I�0�l����s���#��|>c�$6�X �b����;��~CӭݺH��`���ڡB�����mB��gL�:�����6B���줰,�Op4K��ǉN�)O��R��[k�2�n��ZZ{�c��{��1����n����0vz�4��v�S>4��R{f�4��(I������,;n�I2��t�e��p�~F?���;�U ̇l==@E���S����.��Cq5�{O��8gW�t/�U��-�8zN�tL�A��)�.1`x�z��z7���X��'��h�O���#��6{#^�Z��h�˟zG��Hޫ����g�o      z      x�m�k��*�l�j������Z)��|'j����g"�fzr�)�����������o�{-ϋea#�����Ŋc��n���Ū���?�W���q3����7�
������/��!������§��/g���O�[��[l{������d{irj-ۿ�Ѱ��ǳ����(��o�6�9��W�Q���U�����B������/������)������I�%è������S_ҙO�I���T�-�ѷ����g-B����w��C���ߛ���_�>.tX��S�o�����T����w�(�f0h�o�?�_Ú��$��׿Uցa��J�IKT�/{�����}��o�4��u�х��K���cu�c��뉯��(K�� ^�V����Ԭ�?%�ú��L��\����@'��n����ZePo�Ӟn�u���~���]��"*�j����:�ֲ�i���(ɛ��#T��ܺ%z����a�᭟Aŷ"�.9�ת�ѩ�/�o����h�օ���;^��m �C�k��)4�ap����	�Gh}kէ���GҬao�Nn���@/�1|�U�� �sg5�O,U�}V�2PDLs}�_�OAQ�A�/�*߿qÀ�[�o�#擑�����6E8���y��o6��G���X_���ෂ5h��G����ioz��g�]B��|��`�yʆ�L��5!Nx�ݭc�O'6���߬�\m;�зzt���[�oW�W|F�C�ʴ��SXL��S���\����싖s�ž;娾��ˍ�*cQ���h�b ���VV�!Z���5�F�Y�Κax?�j7������̄��Gxt��Ȑd�5�9�5����{˰��)£�?�{>��n��d)�Oey���ʜ{�~����w���<d�L��;x
�w.��E��	�KE%��zX-�]�0�x��"�!�
�k.8��b�e}+2��wkV�!Ҳp'��$�tv��Y{�%�*k�P|
b�Ec`�w#V^T#�;���;qB�z�n�c���?�\�pun�u���,��rzH�~�<�g Y�%�x��ע���Ht]d˚{}�d	��%����[Ҽ0<מ@��k%O�]�;����b����y����=vipW0oY\λ����x��~1x��7����ta�e������WS���Y5�`ْ@�+�Y�^2�d� �Ql���p�!��A��i_���@�3y36^�?۟�cVz1���W�B�^h��[ƹ�	{� u�[<�5�:���Cp�%�崬q4��`	b�e�`JJ�}>�]�̆��,��������ۀ��s>�%���8�6�0%�=4�.bʻI��Kt�1eh�VnX2��2�m�Nɿr&�4m0��?��4��(z �s�$�	͹7�]h�H��	ˣ�|��)4*[�o)�%��)�9=���t-�;�������]ޔ|��w�7�ڄ��M�޵;��l?��wv�C���إ$W8f�>Ї/�L!2��߲t[��L�~���˾J���%?U�6�5a{S���}fB�?�o����E@ol7�-�Gx�����d����_d>#�Ќ5�I�*,fu�0s: ,�"��PNC����s�<��0�%S�a���.r�ei�p4��쵽��9��w�~g
�	��r����RZ^���r܉�;��ԇ+���Ĝ7.y�qW�����FC��t.����<�Kj�%��L�]J��N.U�vN��{��@��ͷ��!�����]�������F.62���O˽0D��(�S�Y�y�{ɤ�P=�̕#���왟oq�&o��!<���(�z�u�����Yx�Ȟڃ�;(§�=�+m�����hj;�O�?��5Tb��N�����0� j�39@2򧖏'�aZ���z����T�o�e�ϻ����%a�"&hΧ�;�o�W�"�^�G�ftP{١�B���t���7�-d#|�Sx�so�bnA��ga�b�aT���o�?�pF�#>d������� �E6v����������e;�wIθ�Ϯ1��l.��6tѫ��ݙ�F�_>>6�"�Q;�J_V�G�w���6j��Ee��̅n`�v<�h#s�k�eSpT1�q�����b�<jgZcqF��7��3�Gm�u蕋D2�z��԰\3$�-�ZK��{*C,�u>k[�����j���rA*��n@<��~=�F���:]���hýQPK�!��5�l�{�r4�d2�|�C�G�װ*H��9%*(���
z�_30��^M����ө#�li�h�w�#������B︾lr{�!8t�W*2���9�/�Q�m�
�OT�*e������UPF/�E���b{���.�V�:�A�N�;i��x�(i
��퉧����5Tt*�:� ��޿@"�)@t�p�d�8�c[�,[����([3�G_�d�$0���T�J�lBiH��8��K���|��cҫR!������C.�����z�(��bea-*ȥ��T�2�0\ǿnp��9:-��2�;}7,�m�
T�|�MwA3�Dg��nA/M��ۈ�29V�ɿ�7����ź0	s��\�Ƿ��S�Y�_pxk��6��8u}�#�.�>���f�ɥz��E�' ����'�)r�>�.�^�^�������w�ь�D�SD�FϢTќv�0µ�~��<�ǽ�x	\��Y4�9��/A��^�yi�u>��w�B�G���_"��#Cv$�/��QB���7����
0�#�Vދ�-d��{�o��M��/�<�"Z��2�0� 9�'=�ъ��!�,Z�slX�D�~�M�Z�A�(G�s�4Tih��6_�����eA�螢�{�Q�~�Z��r��w
1�Dd��ݰ�*J���[D��-�N���Y�ǗVC���i?R��81���ͱ�&���}1_���*����t��KpLA��.���TB껺�vH@�-BcI��u.�^��q���d�� ��ԫ	�uw�"[Ӑ%v�u[fXv-�ø�ɟ���a۷MB���#\s4��Y�"CȐ&�
��d<�㛣�r�9��y�L�5Cr�8
Y�%l����R�y��q.Y0��)�<`�N�(3?�i��U�-�O̊y�{�ڀ�Q]���8>uv)�O�q���:*��c�ŏ��#�����-�y�	Z��H�;H-28KzH��	����M����=�:�~N�j����������s)�tmI��"��e�1�����8��ڪP�/�6�X�c1��F]�(�63�]j�a���X�i6�5���.�%8	fU�Bs�%NJv�y|TM&���'�n��;���r�cq�9����t���֗@z8=�y�1���Ha�;���eQ[�@��5IKxU���y[`|\eތ����p�cE�Ҁ��=Zp]�����H�TD��t��5]� 2�U�)��i=�C��5+�)Z;���]��}�2��@(��d�im��!�5�B���;cm���kݳ�����)J�.�no>�\5�|�@������P��H�rk��6k�po�ݰd��D��=0�p���t�Q� Y���"�'���]'~����\�;�����\>�9ӗw�uD@#����*O|C�-�j�IxL��	�ӭiGnc�8r�r��qTw_��MhD}t`gZ�ݗ���D/��9����C)K���^�h�z���h����F��	7n��>�j9T�����r���f��ۍ+tՖP��zn��|���O�SDu|BGz�<��'���8/ET����"�̿�7TQ]_�E�9�����\*�a�h��?ۏ�,2/��1�PFw��!ɰ���η��Zm��;���RސH���hT�kP S�о�E���QU�N��8�����xǤİC)�p�S�h6���h�Դ����Rzav�ih��w�6�R�_��Km~=������L�h�~π��6?����GH��d�v�j%���:��2��7�R�ѵ5pg��Qmh�~6�y�e���q��0	�}b��]fu�    }G�
�Bc[H͠��>��}C#��X��&���x��v��0L��S��#�L^ΆF��gBA%܎�xG#�&IE��~�BRF|���Է���HC��X��@�Q?g�<<�~B:�Ȥ�u�l�a��7�⨯��9�x�A�:O4<�E]���(�w<@��o�>nֆ,�d3N��h�C腝gD�SQh����pG���Sw$ѨgR�g��+$���;��#�F�qD�vԐ=zi,]��5���4T�e�����p�q�;�>B�v�I�#�~����]��h�q�p�Q���@��Ud07x��u$�|nM��S���衙bv�.�#�s��#�f���v��,��..���,�?v�A]dN��M4�o�]��(?W���$���6�F�k��h��=`�����Q�����9���maƃM�gm��9�c\�:�y�U��x�����u�Fm7;bh^��NH��|�2h=�n����^��?W�~�:h��(�]�t{_B�e�	:h��k��a�A�b�:R��Q����ù����#P;Rh���uG�~��������2��VC�'������^	����Me ��|Ƈ����զ��Z�P�:蘒国��e����ǰz���*�,Q�Cw�G��E��a�e����]j�19.���1����.���:�XO�I�I��a��q�L�4���q�`�@��&�ݴ/�г뭩w$��3`�'��Ⅷ�AV��&$�����y4��kMXN?
B�3+>�B�����|ߞ�ڳEƫ��l}�7*���j�6'K��u�@����S0p�N4��W���յ�
8<�����p�Q���N6����}U��.�F�A_Mp��,}�����9l6����_S���>�������<£v]����@�[��!�Y�M�>t�x���؄͕ħ
7A�ˇ�d��f��ڳ�����2��۫����_��O z/l���	8���/Wǒ0:?�AqO^~3��{zQüxn+ʲ��JM�s�CI{7RN˸BiT�y�a'�����/�1�g��i
�gk4\���Q>w�"�������^�t��1�!�Y��a��h��v
�<f��]GJ�eO�[�5�E�L�N/��$k��t�phVU�_y-Y��F��"�I�V��в������������gx��GY��E�ͨ��d��I��
�!�(�խ�Z�i�62j�(��V��H�Z�G��k0���gdh��i:�C}��1����h��1p/R��+�G�N�@�U�ƨ7���V����Ux�cz�˚V�U�6�\����G������A�?��-�����#��Ca�eSCE��,�S���`_�>���	�	��8�y p
��$�`���S�柲��؅�8"�x,F+L�>�����zO���޽G"qX�l<8�ӟ�א[�*��6e�h���)k�=�K(�?QS�u!!5S������(�����jA��g_�����������N1U�.�Y�5ӡk�Gv���$yq��9EN;��@�pP�ʍ����E�f�Ah;�(k�v�M=2�aS�0l��3j�4��ǄuaZ� ��Э�8r�I�8�(�s�7�D�T��b��XH��j�9�3u�>ޤf'��h3��-U@��;�S"��D��*�تM�L{TK]�N�[�=28Ֆ��
�DִX��Ɠ�L�6'���I�Pn�ͳΔ��Y/��o�*�6��q�o?s�D���9P6:l�r��2�7v���e�p��X�,��U��ó������o&]���VI�L�]8� G1#�-��o��?�c��$%>�o�u���A��N��� b����`	0��(��Ho{�N����c�[g�hO=:m��3��W��mk�D����24�<=�Ot�=�\.'�D���.>N�MT���V%;�^5jC�OTO���nÔ���W��wO�̝���Ȓ�	��@N�O<QA��"�`���.B����g�V��D�X��eQB}��Q�N�h�-TP?sc�	dP_�
�nq��xV���FD��&h�3��&"h���{D�������D��%":2h�	�	4�l'95QB#6*�d�(ZQ�EAv�@c��uK樠qd���A���/\���#RhlH]�����O��h{����C:c���ڷ���Əx�������D�q�x&jh��`��1b^�
F
�y�`/��&���������Ɨ9��\],z%
h>{�[aH2�=d�.O�����-�܋V��o@�:�����DC�n�3�D�\�/p�<����gº�*��B��ԧ���>"��IY��"A4��Br�J�B�p뢞��R��q����)��Ŵ�PB+!սRh�K`.��:.���V�(��Z�TŶ8�~
��^�	�e� 2h5{
�J�g>{���7B�]���?��V;�p��B	�_�r�p60/T�%�Ѵ�����G��㳋1����LZC�D�b�Bv2 ?!͂Z����-d�Z�r��ϳ��k�e���1<ZLl;X�LJB/A���nQ������l<��O\���8�~�2Ùyvԟ�_��j�IBk�Y8���x�ݪ��8D���&T&�.���� ���;2�NaZ,=�تK�����3~�������r���Q�jP\L$\��u����z1�E�uZ�|���v����� �d(r	������)��.&��yQ��,��B^9�8}T��
��L@'��vwX��]`�T �"�+�O���_�X��;��:�����=kd�h%�5�@�&�k�t@/i�"ր�5K���1��c �xP��g�0�n>2�� 6�����]��6�s#X}�*�rEc�oM�/.h��L4^5��N)g����6#6��M���"�]�8.zv�$<��"�5�{E��س�;�(���1>|V��ԭ�{����J�YK�9����l^3x.ݤ��Ш��!9>�Qëp-ډ�xNI=�u���,[�/p�Y��5k7���J�4��ɨζ���r��Y��=���v��`��~6Q6ބotjõ�٢�"�kr�&�g�)0�a�����T���("T<0�+��΂]b���{-E�k��(|c!�+��-�:8D��Ǵ��B͛�}����<����Zz@7�T@Y�|B�$C��] ߵ�r;��|T���S�{&����V8�B���@�[�rͪ�A�v+�>���|�l�犀��S��X�_C�����q�\O�Q���S� Ou�֩5�I�4��9S��]8���!Z�Ɩ�|��1�a���N&��{j��,�0�A��ep�
۩��D��d��)��DϘ�F��[*���w�3e��tk4Q;"\�,j{�L�1�F$���rW���'��Td�������G8[S#�Z��p�n��>�䀇�S��Sx��a�v�~���QO�V8�4T�'1����t�ﱷ��Ȩ߯��-p���vEB*O�
����S�N�,|g�iPdT;�\cOw��6UL�Aenf
�_�u}�M2U���nS��魞�q���v�:g����7J�|�1���kr��apGk������-E�Y�� �s�;x��Fv��h���d8[�=�_�>�0t��p
���/
����H2�I���>�<��DRjrL��n��no���S")�*#�HeS��M^w�F"�t'}�!�b�@FHףK(g���L�d�e�ѐ'zڙ��lNU����H$�v������*���lS�����:�'p��B�)��H#"�$��AT�����\���Y�Ob"���WV"�t�h�Ѩ��c��]�׿�H<��夌Mb"��ٮ�p�A�sRP|G@$RP|λd�2|�9�Pw��n4�|��q�m ����0u�h�z�|�[%xw@~��������=V�MR�>�o�׌�
�~�Y�����ב\�:�г-p��*��RR�٢��B�M�u+�˽��F�g�7*�*	�ߝ'�     �� ��N�-s�=���fQ������Y���5�a=��5w��P[3<\m���sy=0�������^�k���Y/x��UPY��B�5�=�N4�:�Z����V>ne�lW���uX/���H��W?c��"Zk�{���K{��[�V���VGX�*٠�Y��	6�	d�;�j�C^=��}�N��9��'_u_��h5TՊS���$�3�ʖe��e�hD��#�ּBT�	�:}��.�^�z۶!�?B}�Q��j<:�	����P�x,~قl�f��oKqKx��U"��x��%$S�v���ݐ�\N&�Dź�OѦl	��=�&C���	?��daס��%�c�%���Ӿ綉�֎���Z?KU<=d��Z�O�p�W%�8E�g"�h��RpJ�����|��������T˗��H���@�^�.u���T������M�6T�U��K����WL#���*<	?.J��i�s�D?%�H`�l��$nI��M�G����j��G�C���z����),�%2X�!�f�II�h�2�!�!f�� ��H{��Ӕ*����.�C��.���C�;g8|Gx�bZ#��>q߉TֆˣsɬG
I�Έ\֎��Zd�����*�Y3�ǽwj�v��{f��L�(t7�˧��8ç�]=�L�r�4��G8A"������Y�}`x�gl�ԥ�����!��i���Hk=vT��]7m����>�j�/���b�	��,��P���Ijm�B�!8���Z�U��cha`�pP�?q퉴�fؾX�)��!��^g����#KJ�qFx|��f�۩���Ri�k3��Pp�d��-M���@6g\b�r~N���vι�b���
j��L�����O[N�u��iXf���_%���D���*��K&l��nu2�,��	��E�=����D~�Q��_Wz���w�R�?� r[������"��Dk"����hd�6�N7ޅk�	�FBk3��ap��i��4���Igm�|�B�������9D-JJ�Q�'
��JN�qT�j��)f��e��ԛ����U��QK�	m��z�Ƣ��S�����\����\G�P���,��ve*��wY��o�������(>d
��4I�G�+n�Z;�Ge ���8!�h=l6��z���f�{�*�����<[�V�Er[���؃��f8�|O�͔��Au�-��_�3e�0U0�3n[�Q�ȥ�4"�\֣�^� ��[���z������ A��6�.����5̤1�lj=bib,!�,?��W�!�᎓Kd�mhק�G5�X.I��v�����vwQ�H&2���RL�_�C*�y�%
�u���9���-�Pi$�v�"���pf��,h��T������;<��X��TiƔ�R�������ף���Pg��+��yO�~^��PJ�|�$��
1}�hA-�8^Ke���28�	��"�����qm��0�#�X@8�*��tEh�A)���"ǵ�_<9�G?�%�~!ϵ�Xd�ƛ�ϝ�D�k�?�)����z�+�qE�NH��o�] �d�s.�	�ǎ|/L6H�qn���q��F��8q�{���,���d�jt҈� _�J� J�+ B����U�D�k3)�8�x$�v��/ƶ$Y���<Y��י�3C0�g0@3���$��[=R_������\5<ri�0�_��p9���'�%N��1�~-;�y�J�v<�T�S��s�F�kG9D��K�k��{2A6Z=^;��O8\;N�p� ���Vǔd���X�<.�i�N&��q��.A>�1�vK��Ô	�gG��BN�x�T؆�L��W�W,��#����3bT,��{V��y��)�ɋm�OT&����ȋm��+�?�����c����Dfl�}v/��ϝk:��e����΋Vf`V�i�,�c]�B�oH�m�oc"a��e��e=LH�8�#�,� h_. �%xG��8�j��iQtN�v[�,�O������艼نk&�x\�=��ݐ���Ԫ�+3��!�Ӎw��n�Zf���np���5ǐd�:�e�ޚώ��!#��6������p]��@�
����^�s�XRkϧ]W�]���~��DC�'�'b��pf��H�=��{&����)�7NF ,�^��k��[�)��߹�2PGn��k]pL45S��.�Ý_�_A`=�e�Yb(��8v��s�)�O{�r�0��C0����3Y��1�T�|�6s��L��9a�ɜc0��7� �uV�~�C'�l�4����.�7�A"˶�P�͔i��m�0�>e�G�O�-j`���G+�:�ȴ=��9.!����xC�Г�"�f{��Ɍ�H�m�I�H�=s�&o�B����i��؞��7kM���2�;p'���ۆ�1����0C�a�h>�0=j��+��߯��E&t	=�/�`:bǣ)	ܽ�L�\�� ���$X�l9���*�S_�����1ۤ�6L�:Ag<yE��P���t�S8�g��\TJ�`T_�E8��s5K��4<��gɱ =�w��#�!�!� ��O?�>����K����f�z_�G*	����Y��'A��U�����x���w�')D"�����!-U�p�Oٵg�?	ٵg��)�&aw�*�s���i'$��� vkϢk"u�-�;��.�N��; �~�=�m�P����y�Xx�� ��s]�w�5}N�Ȱm�=��`{��hB��{�Jv���Dchʈ8~rM%�k�kt�R� �]�h�ZՑ4ǡ�j����k���C'ո��J$�6�\�E5�v?#�۳�I"�R��+H��h=g�՞uȕ-�^:�B��[�dK���py>J�	TS�8��%���'`�mdO|����$��y�d�tܓ��b2U��P@�؞-z�VMd�6��O݆$���)��cp��PL-ݳ,�*�^
����Dap�-���C "F
�];jy��9�G �}��l^H�V5w��÷��bL��6��̙�}B������QN��ٮ���C�})�������p��۳���d~b�^j���2�y*��Fn�v���ĳ�!* \���,�yq>���Y>ds�����$�px�
��{��A�9�,܎~n!��{��񾓂��إN=},�g��7��&��WH�={9���ɾm�7d,땳!���@|��p�~�j�M82q�m��\��ŪJ&n�iþU�-DN�"�������N���m�+Y"#����kM )�����|A�T_�ۂ��6��z�Y�w�#��|�
�������IF������m���(��{��Sڒ�?[Irs��s[
�}�Q6�>�ed�#�F��Ndꞣ~�d���<�ӡ��>����v7��8��uM��%��%�RD�?�ͼ�!���<��;�Sy��qn4!pH�=�	��~y��p����{θ�E�,��	n����gpg=�y6�#��v)dՌ<g�@X��������LB(�Y�~���m�P��f��(���^�����nGR��+��%C�nG٦�i5���гY�wcM�n�)CS�j��#F��9��QSs�8�I�=gL.Q�z�G��-�C�7"���qA���Я_���s����l��ʷ��3]���^ɵ�G�^=d91b0�ЯJCL-I��C�n�qȟY-���s�G�yb�GKo�Y��!���1��rj��*��$R���	z؉��{�[M�d9��B﹔|��Avł�AI��l�ٌ$��I��lë�op.9����o%N�uy����(�@U9S��]x�x��Z��{=w|1�]K�a�#�0n����{=��n�p��e��z�g^n���9���Rf�L!S�'��K��`�T넬��S�]�-nT�k)C?!���^��&��2W��&�v$�^)_������L ��T��1��/ᱹۖ���۴����������n��6���l8�����҅��8~�^%�}�t�MzqY����^I.�Se5	�ómD�8:e-2h-�
���#����ܦ?p�ۍ�9�ƹ�Ƭ���cϫFr   e���
)�W.;���sƲ�,\�rk����z�;�T��JRS����&lp�������+B�����k�3R�
�8�I��u��<��~wI��]�$7p�J$ 7��i��{����B�oCu���KL�;~a���/���W���Zz\'9�}�F�+����d�������>����)+_v��b2<��Ƴ��U�����]7�i�RհLYv[��
�:u��}��$��ۆC\��j�	�X��f�Jp�}6Y\��C�_8^q������`t_|
D�Q���G���%C�A>õY���t��{��Д�
gl�cp�U-|��&����\-u�x=:e�EeZa���a"g���C�Y'g��{�3A�s��I�Tr�Z�����h=K�]�9���6d;W��n���\�~��H�v�)i�W�>����{7C��U�PI$	_u�e����٫�h$y0v��!G���ݯ��W���J~�UO��	ŋ��A�9���_p�Frp�ܿ0��������Y���O�P�w�;H��;��D�r���\Y�ם}ߝ$S��v�eۦ$S� P'�W�w�R��vE�錁���%<����A"�:�`����dj��E_3�ЎC�����4S;'��h���'�K�S�����~&y{;��?�f�чf��O�r������`h����QL=_94I�W���p�@�p�g��7�]-����w6H��΃QJ�dԢ��I��|�-���_����3�T��N�h1$R�ylHn��<4�w�C�p���[�J}_�Z����c;ph��S_:ˡ�q���k�R�Ź��1���tC#�F�$6<�� ���o`,��T��D�d�kD>����si�|�k��V"���^7 g��'���$�����k��Aˣ�Ƽ��������%��?�nl���$��=�PIc�M�+�q��;��=�����q��Ҩ���|c��/��f�������|�6�Wd	y�׌�{6G$��(%�y-&M�%��fy����B�꼎�#5���n:y
1�K�p)��ܿ��74�y�8��]��'�ڮ�x��Y���x�@"�?����h�9?%���ލ@/2��)��Bm���m4�7����ڿ
���PD��#��۶a��Â$�k]��'�@����<��6�\��C�M��q������+|o�#�v���U�D&�)��"�����C&�~eQzQ���,���h#�h��*��{�@.q���p|�v�L��O^%򉯵�}OJq3�D�2,tb%�Tܲ垫�0����"ʒe9Y�-��O�7��v9�OSG��2�v��E{�#n�y�8��UGn�1TLn�N��D�u�ea��}�&�8~�Ы�_CH�R�q�9@��~l;w��_�n�zJqǮ�h��q��xfq�Ryzq�ȹ���|j'\�,�nb>Y��d�.�DYP]?���J�:7�)�s�3NϽ�y�q?�C�uܒ_i�G�,�7��g�D������ݢоM�O!LN9�+�w���j����}=�������	�+x<��	���y�3����͔���-!�����8�Bg�0Up�F���[�r����$�����	�A?�L�������0Tv��ctrj�i1=�e��S)"E<9��Vt�g�t� �D��L��<'������p���_�賧$�,���ea����?Q����>�Ȟ����AY���n��{���s������+Eò����#����S�[J��%{2r��ؑ�M1�@�g��캓�gOA����Pcə����x�f�>���V��έ��"�4���.:H��9@� �!�i�\�L��"w��*o�\��;\�z�t���0e8��`(l�{D��G��8D����㥤J�a�N`�^]��&P�o�]��S��S�;�9�˞����Hٓ�;�!�&*�
���|~��B��P�Y.�PC��[%C�'�v~�D%�x�G#��O���!t'2�E56Q�3��)���ET���h~�D��J@7A]	��DtQ-w([~F�~�5�;��n_��]�D��v��_+��`���!k��� ����Ʈ ?(����D����He��{�k*�I�>���D#�pԀ�p{>W�w�-}]�fp�-�?>�~��-N��.�1K����V�N{>�����5:�E��U�����K���-҈����뗆�@��� ���7T�K�g)@��֡em��	X1v�,X^ׅ�(j󧳣��.iĠ�Z0��#�ZH��Z'֟k�4Q��}QQ���P~�D��wwtQ��A�;��F��F]I�k�L�Q/��nq���/�|��K���R��?���r%��	ud�c9�4�>�ҕ��	���\;��J�
�(�VG�1�Rɼ�ԓ^�q���P���	��2e���۰d�|�j���'rB-Y[�1�����e_����Ve����	�4�g�bMH��N��pg=t�aR��S*{	?Q#�3J�L�L(��]JRi|��X�[2��rB1��=I�	�d�T֔c�2(Vb���\���d�O7\�����XNC�$���ih��SBB3���}�������W�4b��i�'�5�Lc_ڤ� ��.b��rB/�qe[��M�נwN�)(j�e�͵5h�3���4��ɓ1�?��=Y�x��G�ӣ�R�
:��4�\/�ǳv��V�w� H��?l�Ђ�����n˸�h��Q�(�]��_͖G��p�-������ֿ����W)�������?��!      |      x��}K�I��9�W @}i憿ݏ�"Y�zp���;]�U٬\&3��`y��!-0Ҫ��0��N�?&3�x�GfUvg	��T�I~���f���E!��~:�8��L&B��
���Տ�Y!�_6S��#`2[��U^No���2?�*���"3!_����8�~w��m�y�]�'���ȌE�=_���� ������uf[d� ��WE��g������2��8�2���_W�Yv��,ǳ�j1�a1��~�OD���Ňr�!M��<�8��t��Ŷ[ d&3kF^e/�Y���G�b6^fW�2���ˇ���[�]M����x��gW?d��F?��f����dJ�v����p0��i1Rv�v�.'��6{�/W�����>n�:?��0^܎�����ֆN��_#��__�ņ������̮�� �w�N'�����z
����o`}��siLvt_.���|����l{8����?���Y%gX�(5�)@�#��f���|}̈́Y�vɾ��R�����?>[�ǟA�'�=�OY\�<)�Z��d������x1-gwg��ӣ������Ta+�)+����a�Q0�W���\�g�����u��??�RH8�.��ޜ����e�F���`�B���ތ�����j>�O?|�/V��|Q�{|B��}�
�?�gp)��(�LYŷ����� KN�o?IJ�>/FA��:��xv�^fp�̥�o�>�Gx��9\����t�Z����)�]���h1Y���f7�~{?�/7 �4�����Ӓ��g'W�/3�7��2�~�.Fp#O�)r���4{5Y�޿+��qn��d<_���A&&dG'7G|�k,Z��x�j�s4��sX*^V�Z���v��̮Ac.�%�5 �ʻ2!(Pa��er;ϏG�G���|���_a���������b3�)�W3cF ����4�2���%l�(�������x�݆��������©�U'(�?�xr|�T xj:폠���Ӈ�ú���p�g��'�$�Q�6/�T><��K���xp﹌5�!�x�h���r��9+ߏA�f�%a�����Lz�������b�L߮�u=^��g�w`���ZU�!��e��@Y�%�#P��_�,��˳W�����V�8�������|~{�������a��o�ǋw�
n�����_oߓ"�~�F-z����Lvxvy�:�|����!���ד|���1���'�e&����iy;�_M~}��zR�v�^�#����[�`W7/����7K��Ҍ@ޔ����r�x�~^�b�\�s�E.��5���dVkJܠ��~Kd+���[��@��g��>�����?hNP֯���K�����Y<B_���������RU���B*P?Z�R� ��3н�r��qf��ߢb<���D݈�nL과-����L^�jn𛗧pM��5mS�GhM�'�o��sXs~�h�Z��,C����>~��(��}��˂ `��pEu���2i|���ʎ�J�s�N�]:;��� �@a�?���_���a}�9?��]����_r��u���S��cjn���M��E`�#aCF�Jြ���ӣWY�e1�(E����j�1�)� ���ˇ�:���=Z�ƿ��;��PE�;]��F�p�G��� M��;��� o�	�k�;�*�Mc����e2��A�ᚭ�g���g��>����w�Oh<'hi���*;D��a�� 5~�骜Ƶ[� W7?f�o�ZP�i���(����2�����]9���Ʒ%ܚ�&\�ք;��_^�x�mq�$�
�Q�/ލ�܀`�������r��W��l<��eBz���%܁?�zq�����S�ʃ�6����2�~������H�������W��<�@����M0��54�g'/�Tՠ�"E�D������ c���GUL'?!'�E5��z"8:����V�j�rS����h�<2���}|uy~�Lo��<1�(ң��+t���|5� \o��,���������;�\_�ͻ�XN"��D2ɚ8����
���,U5�PV��.�xN���o��8��e���y|~�~����w���8Y�%_�AI�ׯ�����m���6��E����EM	�n�2��f�hq[;/Q�׫>��
.����U0K�1�0���!�=�ʶ����~�TN#P��j��Ƀ��-��KP�@���[y���\n�����P0o�����ŋ#v���l��:en����߽��12�	���8`fH�`�1�;��	\�%%��M���O~ʒcl�U�z)Q3~�<���h���l�������ev�sҜ��\�d?�B,X�����)���J�Yh��h���W`�@�'qq�a���-�*ߕK�j��'k��H�VL*�T�&tv��X�H���n�����h��2rw@�F�d7p�����e���z%�����oģ��m�kP���J�6r1"Z�-^d��.���\�A�?�}r.5��0s��^�|�@�e0��'��?���<X�aܽ`+3��\����mΊ�ҷ�"�UT�p��?��:����@L\��?^���;b�Q|G�(��~���[|�/��<}v1yw��a�����=x��_f�ռ�m�x�@E?�7�.�5�
�R����9K,C�y�	����^�w�[����@�ؽ9�8nM룟��TmF <Ǔq��X#��j}���W�}+���8 p�Z�V��"�C���*����FT��H��F&2�@�^\_^g.�n-\��C���������o��N>;��<����ۮǟ�����}�=*��Tɶ�)ޮ"�a�F@�P�
�����Kv���7�1��%���]�f�����e����x�IV`��ٻ�z
vv{?Gc���B@�ի��r���R1BβC�t?�}6�Z'����=ODj��D#R��;������ׁ�n�&?��|y��O��e��PSd�WYp��z�>;�8��ʒ��E]J�̘�;@�Y��W���r1�C�k��X4i<^4$%H���j};y���/����?�P�R�4�{�����`P�p�T�߼<9<e�&��,د���x?���p�m)��� ~��3@�U{S~ί����c �������&h�io�y[�� ��h�rЛh������V�&�]�M�/W��^�,�4*�[
�oT��Ks���f���z/�����b�KX�*���q	�R�v��G\�8��#1�����^��d�6к������$'y�.{Va<�_��K�������
D�8T���|�s��>{}�D�^�I�t��.�P���}ġ�^+�V��V�%�3E�D��-��Όo+�2��1)1螇�J�]�Ͷ����#3���u�~��L����V�����+P
q{�6%��0{���^��O����[�#�4Z���k0��Xy|{�:��>��r���#�X(�`#�s�����W�'M
�y���sh��x�����x"��	y"����xJ���K�:���0E�L����>��� ��6�&�NRhr5�O�g��|�惼���Ϙp<�������:=μrM�D�j����(S�I�tbo{/�f��g��lKOZ��K����( x��t�>ُ�1x$8A��`Qc�R�I�{aL���`�b�Vr�m`}z���*�'[�@�=����0Ke��c�,�X�Q���C��˦��:����\X�Q.��>M>�� ៳qv6�J~��ΐ�%Ct�`̿��0�Gp�h_����)PzIؙ9��f�p�h
�s�I�@aU����kv�ؗq[I�w��n�,/?~�>������S��X��ҋ6��g�������-�Yp�(��Kb����z�f�A���:������l�x���f\c��6{)~�ő�=�Z�V�A��C0�Ȑ�4a/��nT�������e���,�S�T����l!��"{/GpɆc�^_�^�f)1�����
_e�Z�5�O��e~�,AC�?Mf�@�N�1���,�8�p�����~�:�ܫ��ȌE�с�U���    k��R������U�.�LtE��G�`F�uqtQ��->$ӕ���R�_Gh�]��_r�ڎ�Uڑ�����2;��9y�>���j���:������O�(@�+��+�ܐ�]��}5cH���{���>���J�<�]F �d���UA�oQ�-�H�TX�ӷ�Fi�2]�ʖ��,K����5�S|95�5QXA�>�pp~z�7ضk�)���yI�;p��P��E�)u�x������n�K�4���ow-f�D���!b������l@-�z�z�N|�����rYi�B�#�j����;+���Ow�,'�L�:�.����b��:�,p0��i`kjy�#��֓X��K%���7�ʫh/SvDZ��}p_ب�����%;�F�I�b!�-�<_Ono��y�Z�a|� �,���([9�R�S�t������j_; 5�_����\]�x���ZF��``*�X�q�@ց�/fp�����r�!������⎬+�R�)h.j�@6���������h<�+��M��������#'���UD�Iu{��2�H��"�n]s�l}�e��~���A�9����N�9l{�E�w�~��9��Oৃ�[VMK�p2w�k�T�k�$.�Y�\_V�n�*C˼T� �%�	%Fn����wV��82q^�����)���� �U$����B�pAЏ����ƶ�W2�#6�����E�~���zE����1SN���3����v��,�$fBxrp�ƗP�Ub�1x��������h>��oWe�W�^�Q�1�y��*���Բ:�����h�6�*M�pf�`y���y~S�����vrU���Ḱl�Iqu��>8;9fZ;z�q��
�ze��E9%�E�����\����iK\V�t��J*�5q;Q/���j�:He]�����'ٖ`���\ݚ���ʟO��z�ʮ?����;�<��>���~M� /�0>`��f���I�n�(�0�~�ok��m"s4�����C���%���7p�/�
e\�V2�*�r�MSu�6Chr'���"3ɥ�ET�[���\��x�Gݗ�ܗ���r����9��>�G���*�#�T�a�ƴ���R��q@�.��|��|+<U(��}3�.�O�?��R~����Q�x�b�K����]���������y�#N-˪����ҽ�[����(e���-�fʎ&+���*��/�Y^�dFQ����,f�<h-Ӷ��t�����ǒ��a���s�������H�5�虇Zl�2׌����лPUS&B��y�<A�Dj�zJ��&1 ٱ5�c��&��.RU�}�D{�=[7
�9�^V�I'�_��1n4���~��Uŋ�\$��M��� M��"��^���b!!�`���7�Afοka�=��x������V����s��"ʍ��a�X��K������_�N\P�)g��_�@*@8A���~_��9(�q���U��r�d.��/~)�A�U��J��`�?�p�^�+�/on��-���d7�B�HK��V�ώ�h�(�T�� ��p�	P�����<�皙�PT7�ri����ٕ�O��+
�H$:j5�t�z��#�|L�e�9�v�QPU�?�SǱ���a�N��+��߄W_��� q�M���ſ>���F�(��!IXBjwj�u���~) �1�h�A2��6\KEyå����K�"z�!�J���r�_�����6�;����a��>�Vÿ�H�3qU��+�P�;R��fuwO�U�oF���E�'�DL�Ǯ�$3�0�����.�������8*�E󮂧P�n��/�V�,E��<�Gi��d����,��?��t��$T�A����n�|T�\d���k �����b=�T�'ˏ��M�\iJ"�g�е�˼ғ�Ǡ�`$_V�V"���p���i�{Z�.������[P�h�-%�@!ߡ�g-���>��/���ï��t�qVN@VU����Q+G'U�1e_	�'`07~y�x��j���J���e��w���v�	㑳[���x���,A�g��z<�S9�,b���뀍�Ɍ�_�{�e>�]�ڀ�ʹ��B;�%5؁�l�ÖU�R*ߵ�|�Xq��*l��wƸ�JN��af���Ƥ��#��`]l]�K՛i�������TA��XZ��Sm+3T�U͹r�cuU=�ޅ�.�+��c�z*8&�4?�L�ۊ�#�G�I�PM-cq{+��y	��9�5�Lc�y;�,�?�	�D��8�PS˴���&����C�!CsZ�j�kvU%�ZՈ�	Β��O���������b���9
J�l^+|�zH�����,�B�$�B�=Kb'A���u�8vu��X	� 뇏`O���`��3�-_��"�n�L� �[�1VZ��<Y�K�wd"hT�^� *X��T����{������ �O㫘�VUԾ�-��k��5E�O��3�H-����K!3c17Xt[�b��(�/�务}�I���[��Q��`�Yc�q(gI�*���(I�YDl�����JU��t�Zie��h �ȃE*����=�^��u��Hi��G��Z3ΣZ�Wmm�����x���O��i�l��x:���N�%ܜT��$�<� r{V��V�3l��]-s�h� ^;L�V��=
-cqR�����o�r�<���/��릮���k�������t���l�c4�Ԫ��(aGF�f�ZT5�[h��&�U�\��죫���� %N#�"��C�jU�3�H�A���+Ù3���@'Z��C띫��lb�jO���!5���SS��h(/�������&�B��m1:�L���K��n��^�������;�u��@��M@����q6t}c^KC.�QxƃhzS����֨�GA�7��=۷�ʜ@2;C32�����8K��O.J����|i��C���@pUР	�F3��YP�����~@�!�5��]���2:1��ؖ���q�%���[(������_��6�B�����s����B�jȐK���d.�iS
��0c��	�F�\�4�.�`I���[T�}r|��l1MU���[���«���o4S[Yq�,��Q1��H_,]�s`	��"��.z�䷦^�a����}�O@G.o��T�i�Ͽ�ɿ o0ٶWr<�8;R�m�R�UJP���8���~����ࣛ5��Q�2���/`Nz 1��S�6�ՙ-��gK%p��6�jWwk����iK3����NT�O�.8L|�����s��v��s����ԅ!�}��4N�4"�]��"���ܐ3h�����&�N�5^�F���.>
+���k�"�CH���F=�u�[���;���&�]�\t^<�ԇ���(��B��Wޒ�k�բ~:����Yr��|�<M����2��Sd�b#_T��U��-K]���4���c���5Q��ǚ��`������*�B�4?r�:�ٟ�_>��W��V��U�����7�7�����eN�$����qU�dok4���9��¢t�$j(��Z,)�א���*��[���d��z�V�Vrɽm�ݪ|�ÞJ����wU!�|��TdeN��"�Ձ��ƚXv�Zˉ��]�^���� �|aLԙ��s���G��Cw\�,�ͩ�*΄�6�g9���iqviN�p�ZR���n����ȬaO�@�͠:�,��t�c��.� ]�:�?{6y6د2?X��C�����o=uVj,�;+���1A�~����1�>n�����o~�*�5\K����\�|�m5�3|b6�b�����up�̠���E�I`d�Ʃ˨����8�'�ܺo�	B����7_֚�U[�n�7�X����0�g8�T &1U�����pO����
�G�hNqvp�q��|��p:���fX�L"�q,x+"��ǑJ�{X�(F��G�\�4����ϴ;Q��8�`u5�Hfk=���Ʉ��^���ǆ)�����C$>�9L��uҁ-̴Ȋ    �&I����+g_�'!ulC����P�/��Ǻ�Ũ��;����H�)Bu�u�0j �^,\=�}uY��2��2����]��e����hT>`ȡ�?$h�c���s�׊sLi#��]jn�Ө'�)�h[_FW�_�.L�YO�2-?a�����{�21"���/��z�@�X��2�Q�K~XH����%�d�S�p/.�n���nA�q����;/�<���:����YE]A6s�˷��]�Mw������1&`�&���b���V�&7
��`���n��,�2�j����rV�u�h��q8�eR�o���"Ń���̧0e,��XA~�Z����ΧBΎƋ�d5�q���:��\��@S6e�VS�6���7Ȼ(]�ni�ۮ��&\T��',�����<�QRk��]�e���ѵ)Y2�NS�����E�=���Fѷ�ԧe��3���h���%8Dqxa���sur�va0~��"�
c�/ಂG�7��|~Wy�tJ'NJw���Ǳ5
{j+� �u�vg��&ԗ���#:�2�zZ}9�x��s�X��b��1fbBG�:�!�ؘ��-&�5)֩*�}�la�t���PЯ�Z�;����,_��Wb�ݿA܀K+\a�ܤ�;/<5��(q1J�{� �ܳ�b�!4��g�%$��eT9�7���[�����p�����bѮj����Y#�v��Օg@]�;�V%
�z�����U?�j�_�@�[-�t�h�K������,�{���C�c�����*�O�*�㑪 [����r�^����|��9�<�%�h��ϼcMwFK��JjZ,g��8���!]?�KXCz~���=֖}�����QzǗ)z�F����(��DJ�ŷZ�IU�b!�&�k��������cz��e��ݳt��z��z�־��Fw|���z+��u]�~̕��+����p�߃���U�T�ۖ��X1�1��MNcD�L�Ṏn�D�1tJ�Y�Id�ۻ�;������I��_��B{,��X���j��I��B�z��{�zI��D+����0\���;Z�S�h��K�E�G��KbL���P�V�[����܌�k0������$�Nn�vc�Ο�����=Z`���1Xs��t0���M�\s���3cy�iD���>�ml�bj@f�tI9h� F�c�Z"D5:s3(�n4~C֬�<U�� F�E�d���a���SuD���ær%�����u�tHN��YG���G�o�Xb�^�����d�8���D�Ta����cŞt^��uM��B����K�x��^!2��d���H���'��m����K�e�ʍ��}��3N`���_F�'űTX�$���Nu2Ќ9n�i2���v�`�����%�][�)`���b�d�����N�D��� W����<.B%^�ca��1�Z�B5��
�/�^�b-~������\�s�b���x	��~�\e/Ǖo�ُ���	)�T�8w�Vi/F��;\$kFI�v�A�^X�E�6�}g������]G�Z(��٪�سF�G�`��Nn���������[�v���!=�/��{`��>�F�F|�=�2���<;�%u���_t��I���2��`eo��E��W�@e�_5�m�˪���:~��,P������]���KHr%%�^�k�����T�4���M5��qa�bm�Y��t�Il��ʗ��T?�(byS̕����m��Ip+��i�1p��Nɇ�<X	��1Vg{�|�Տ�T�j},��q�{�d��(�\�9$�d��� :m�ڵq���d8�W��uk��d�	�u���A��MP�bfF�|ˀ}=�
�%�՝@�q]��2�;�`E��^g���c�6�`��f���O�,Z��L�x*��Y������������)���H��y�DyN�b+/����T����� �/�n��EQ����k��X$��cim!:�?�7p�EF���Z�,X86*?�=�sjIE���E[��|��K�Ͼ�1-��A�R�E=�A<	�����6u�"���<��a�Jr[��5[���3h=|{�-\u�f�G������m���� [r�.%3���gЂ�;��.��ܥ�c���x�@'=�
!�k�k��&�]#��/W��.�_�4�ѭ��a|��5r��T�s��c�"����.XPP`0��������x�Lp����H�JC�D;t-R����F�,2;b�~����c[� Dׂ�|szv��jo�t\����2�?��*�e�j�|�^���r<]Nf�i�w�s]�0��R��8�1�hT_*b��EP��"4~L�1	�f�6���Gh��@&A�N ���~��Ts^�,���ZM%?���M��5�C��ZP�q���Nv�"qu�p��y�������gk(�?d~΂L3��!���78�I�+kq~�˓�d����	z��w���+4��o`�/_������=���A{f�7����NI�=���r�[0Å�{5
@,K8����Xc4�c���&��{��vcp6wZb�r5Y�o'���j���
�u[P�ia>cS�SGP���s)V�����2����m0AG�!Jߪ��� ����m���j�߄�.�O9�×�Q2�x�$ZI���WFi��x��@6J\�<<%�����!�@(߿�Ϊ��/��j�.�8�s�=���q���.5[Q�vh�pqC�� �,<��B� d���ó��D�XHB4�K%�H[XU���F���`d,|Z���6��N7��Q�5�Ǫ����5>�*zs�gߝ�:^�-D4� uł�ch��Zt�c��� _8���N�{Ҳ�.tO~Z�������4Y��Ξ�:e�/[�p)*^���� �@�f�0�8�D?;Ҵ�~�Y�d�u�٤Gѻ-0K8T��"������[�������`uݫ��E�xԾ�%�wVeu�&�����`�ӄS�D(Lr���3�T{<�fXB��m��.�$ ��d�&Bk��� ��D�9pgq b�kD�
���/�Ա�T����\[�yZT5�z�׹�Q�=��6�5&�b.{��ZS7/oa�)��	Y$U�)���X���x{Dz�4`t�kl��e�.%�*X�s2����&�ri$Rѽ9��>T�RpDS\z��[�D��
�	��kã�z�a8�֙E�,���͏D҄ ww��"�Rd���#?aU=9�5��j�S��=%A�T�Sg��!魩���B�AcE�|��B`m7���NG, ���N)�>��DMm1���=ؑ����8�y̎S�������JR�@��c�Hx�nv.��	`
�L�෤Aie:6�Ҙ��65l���(�����'qu��0Ť�EJ��%�^��	����]Ȯ)E���|Q	(M=0:�ҫ�g0�O�C������O��n���-O3d-��e�TD�a�o���N�1(J5�0hv+��I�T����(�t����H]&w�BdQ*��XR<D��u�<�Ͱy7�قq��b\�<�d?l���E�޲����@�Z�(UM�&z�5�T1(=P#K��T� NߒAn_t��rmU.V�r�A���^/+az3*(���b@i�*NI������Cզ��eY=\Q<z��c��K�%SQl�IEQ���%�knRW\-#>�����5�w���cX��&P��p���U�`*;��~��������<}�"ɐ"a����v�g2T����J�)�	g���3�*D�E�(3/
,��������z�h�`⭑�8�9���3J��%�5d*����٠���6T7�-�\$Q*<&���k]0�|6���5���k��얦3�P�C)�Ӎ/'��P�f�RTw���c�Zr|���uF��c��Fh�$H���x�CS�QT�d|��LWԣ��"�Q�Y3{;���x��Tʄ��2�F�(���D��|�)1Y	W��&rE= o���\)�;7r��̆p�N����j�$���t������c.�n����h|��k    �&�ůIhڃ�"�� g������w�0'βr����'��Y��jqOT)�ZX��;��ˏ��8�ׇ��18TL�y���e7rה�9��6L&�T*����!�b'bԉ�p��b,8C�5RY���@G#�q��R� ,��@֠�����6���&%��0K��Q��P.zo�	7'j�-�<1��Ke8|@7�	�V�3Μ�~�����k՛�kX��3	ʉz��J�c���1�j${D�\��!vN����k�R���<��@��l���$��w��	�V0r�ZJ_����+at����Ĭ��T��
T,�`��;)n�����3��h@�X��Xf�u��';��s8�x���Fu�*7��j��RK� �ӓv8�)���A��q���a:^;*<��Զ[l��x��ę�솰��k�Ns����h�+"�&�l�.Z��*"����9��m�1�-V� �PZ�����)n�d���S�;Ά�U�iHˍD/���homcae��i����#����1!|d��Z��u����*��-��1DL�Fw[T%�y��m`_��Z���oz9Z��!,��Tbr�*y�$��ѐ�岟N/Nn2������͗��*����t���S9�d�	�����޾-?�AwM>��f������>9:���U�㰓�����e���(S�%�&�5�$ Π�_�� Pg
P@4T�U�@i���^�a��%��6N��K��@ϱ��~�����z��qp�����{��d'x�ćz��a9���}đuӢx�����]����b�T���;W�u�b�%ͳ��K�;��V6��+s��W��p=l�v���QӍp���t�wǢ��vWE��AI��� ���"�4[�@�5`M
�Ǫ�)124�PFj��&gDU��%.-�P��J�U�f�W�����'!E|+P`qX߷�\U�}͗���,C�li�h��U?�ݍ����m�sƤ/$rf.�X���5}�Qq����٪S�vz��)I}����
(l~8a�ϰ�q�zt�a�%�!�gT�����U�^ͦ���@��d��{o5`���h�L<|E�����!��~2��'�~��og��+���VuB2�0�$Q��gE:�sfɣ$�,"�y�嬬2ij4v��)}RiVU����Q	�V��z�ѽ�l���-�XФ�x��Y�>J԰b��a0B�%�gW$!����'������i9<�__�D��
��(����> ��ï��-"(]z\�	x����`l�\�8�I�*�_��	�ϫAN�"��Y|CeP�6&��;�@��~a��]]��C����D�jp�C2�fNy7�q?gz�H�Q��\g��6�������K��!��-nBZT���X��Ԫ�l�nz�ۏd/��L5��%q��� �~}LD�=��C[��~Έ�-�4챇�
�ma��)&Db�4�z� ����W��j�̃���\�>ih�Q� :�W�.H|�Mv ����@`���6�9/���ɮw���n6|�>����q�.������=m�J����_"삤ʊA���I�.dZ�+��w`ֆE�W��W\l��A�����������(pg�ٯK,fz���!�Qyw��9l>�S*_��V%э�H�4�g�t����@r<s����Tx�(�k�~�Ͳ�Q�g��1����@�=ol�Ŷ�A��PTf�� ���w��MU1H*?��b�������U.�j��x��bE���c��j���-����MUf`Ǜ
��������jA�!B�i�~|�9ņ�=��q�V՞l�[�K��mU߬�3������8���_F��:?5��v�^�#Lߔ��x�^;��AY˸��M������t�kP�A1I��O�P�[�MxYq���ね�Wn�p��]�W��8��V=�]E��45'�ܹ�\��dI��1����xB�1:C�#�;X���M�+9/��;�<������_���'`[�)���!��O�BU�Z4ժd�Hm�n�H4b�c𓎴�_o��8�Z�zH�D�P�F�6�z��o��/�G��Q���S� %�j�|���Jx���K[�zd<�W�L�1��n,���/x��w��|����_&�"���46=X�����A>X]�eQL�ʯר�E�<h7����蘀= ��yQ?*�-j�P���{�����`����5v��?�����G;A��ʽS`�_΢��ԫ�GzL�	��-��U���MH5q���t0p|9E ��V�$Ya [�����b�E��zl6�[5T��î�l����k�f��r<�)�܍8GhD5Y|F��@�p�F��^��F/U^4�n����CV����&�E/����i�� {5T�I�ډ��E��M^Z�R8�G�?�>�cAp�Y,����C�$6�� ��K2��U�O�����{4F]����.���$�b�h,���zO�<P���D��Tÿ䕨�#'I�f���2֩���q�ZB}3�2R��T�%&�٥j�.�T�@�͵{��S;@)"�-�
�l��]_A%����z�x{e��8����#�{*X���6p�̱�`be ��{��|:�<�'�?B��A����[���#�c��k�]T[�7�B�ξ�/PJ,��j;�m�T���E��Dʘ*�;P��ײ�&vC�d�c�C�L�p���m	j'	�8|Uj_~�uUX��4H�����M��V0����'�Ĕ��	0�o��I~y6�+n���d��՛ВSh��'2���4z��G�����)�ˢ<�����)�����):CKԡ�����<�EK��<?\�A��EnϪgA�NB�O�W3M��)��"6�б���U������/������� !&��}�L���iX0og"���θu�e���X8�����<o�ѭ���*����� X��>��͂p��X�2\6��'s�ړq�6>�2�\Coj��� '�(�G����2���.��Rn]���p��; �����w�[PBx%i�"(�Y�}w�^�?���X,�-��?������Щ��D�
o�j����c�Mֽ��M��V�&�FԀ�P�hk����o���u)��U�Ӷ�v��T�RRo��F���cu����&�zo5o�|���q5*���"x��/~��Ji��_���P4�^�J�Di�`;� �-y���1"�tb����?������Q�8�4�~�6�s�)�mv�Ǟ��^�lWT�N� izx��K�:yl�&����c��>C���;�f^|
�Q���}3򜝕mS�_%�wĥwzsm[�h2X �{.�T��饩j��)7�&�[�l]�R`Ih�m�q�t�pԵ�eP2��b���h���(���hz�w,\$y�_�©̏�}����J�m@���������yQ%B�D�U���gPx=\��N��1�8SP��PꁏEK�ɨ�d�U`�xK	�'������@U<�����p=�nᓑ��~����m8��ĉ�a��������ނ[�U	Lr� .���o�(V<{���(?���1��*�����Iar�v<���HvP�j������'�R������P�C�Dʻ�
k�����!��� n6iE/��, ���k%Tn���cz�µ��}ٻp����}���4�ȂҪ�Qƒo�0��3�4�4$���k{�妦]�B���8���Ƿ��/9��E$�]��׽����Oab��T�0�T+|vytrp��U2G��1ƷPZ/o~�B�����������]9�Ng�F����F�f�XA�7`��\�~���S����d|G��oR�����U��*M[d���P����<Mi�X'�MB8��3�'�,F7h&��㉆��H�RA���*T4Je�! Wo��>
\)�A��#Xu��k�6�M�#P�:[�34�B���ӈ���&��g�RqН��b��Ô��=�.�-���:�C5�M7Xј���CQ��.v��܆�õ{%��HRwa��1�M�'���vA���� �  H�x����.w���\Q����|6_���z�O��"y���)z�c�x(膿��4:=�0�z���.v�X�醚�p����ɟ2�lm�#��Pa#��(���|5��ӡ���?���6�%r��xȧ�hʷl:d���-��;�=a��J���$	#�5QmKUu�2 �2c�یSu��趸SU9g�+a��:���]K��JK�qt0�HE�n�)�a�0E�Aj>Ϥђl�ͥ��b8�e�
� nE�On�����R(�청��mI��44����>V.HW�h.^�WI~��ت?X�A�P
��ē���.�csA>�)x�wP��(O6��v3�������#T��UO�����R#�o�bh&��mke�->$�4���=찧��-Y������]Ai>8��	5���D�$��D �2���)\�p��`�Q�͉;���ۻ71(W��uْ�앢9=C%���|�b
��~=����>	ƠB�)w��X����=�A�X$ƙ�~bOd������)8dȺ(F~��_�u�t؁���p� 0�ׇ'?���z|���w��c0?�y^�g+T�����˶V��H�梪FZW�"�Cۈ2U}Kt?�"5�!rz[��h�X�������d��-�~N�v�	nI)�����{����V���3ppw�؊���]��s�%2�����;�`'g�fh��f�>��2�8E���^����N�툕���T�W'[0��-kL�>���"]E��fɉ��Gv1x��B�B�����0L���r����U�ݽvz�ƚ!Z���YڒO�m浪��A��mRK��M�ݟ&����&'�	|h_��dH�M�`f_��Vk��h���x��Y�GTv?��=`?5>�=\���N��c��,8���7�����0ے�O�,�$�m� [sXޖ��r����5��*PJ? Ü|ȑ�,�K��l�c��d�vN6XXg�ll���K�U�L%�p3d 1�i�N�,��;��TEz�=;�����O��b�0����9����9���r�\�_8�W\2� ����K�޿�`�gk�3Bđ4���֪Jɧ���� E����,������UwJ����.n��jØ�$�=[/���(�ֽ�
+�y@��о�s�����`���h_p�j(��`�H�RH���}:�Ή�DN�!��#\� x���S��N�L��躚�T�I�ft���`���,�'"�����H����!�z��tË8�)�od����V%c	O�T`�yw���T.���U�ܯ��rl7�l�(��@VK�=�eS[��(5��<P�.�s���B+N'��$U�����r��?�Lq��n�W��y�b��%|F����jUFgS�N�L�F4�f:E(��a)P@z� �5���1G�F���&pz�Ӟ��r3��4�o�7�����y��QU���9L�{��>���V;J��}���!��d�P4�����l���߯"��#�SF����u]F��]AVs�w�)��
B�wJp��a�&T�Y�>V �/��DB��Rǉ��&���@'O�N�2��i�)���k`j�8�v�oAE,'�j�Q	���'��� ��*v�l�i�{�#b�*>=�G|\UQ�x�ͥh�ǘ4S1��-Jʃ�
l�|YBp�3�TD��:sᒍ`�M�,N��9��|�2�\��Vh8�1x؃(c�t��h�-n�g�&�u;�#3���=�@S�cZjZ�P ����i	���Ć4h������}o0MU�,w`�#�6��U�Hݺ�G�L����ʽ� �e��N/N���-�MՒ,$�z�� �^���|;��?Mf��)O�1���,�8
�Q�Cd�@"�
�f�ӹ�]x���W��cN�*;)w-��cȱT|��$��1s�%�k�@���B������uj:UR�R�\�@����Ѽ�F&Fߋ�n�>�j ��j�];LG��{�;����rJ�M�mۯ��o1U�ƖoI�jL����}:4���D��W�����|�_�l�v�D�dg4�@~���j��;`�XH�5Ct�p�Z��0�>EoG�) 0k=/&D�E��R�G���%E�4�1LL+��=I��)XO�k�{�Jj�q�Xs#6q�M1!�Խ��n LW��u��Mn�Ә-�7�h�za��B�q�2H��ap,��)�� ſ��4��:1|FqMrzE5�n��3��U��z�bS�T���^������c>
������}���%��J&|��A^��7Qu����M�sJ�Gl�dՅ+w�QsJa�S�م+0x��v�(�z��8}��>P�>���M"Q.V���̷��f�&)tєÄ=��m��Ė���ĭXG���	@uII�A��MV�^�� �W�+v�Q>j������{}�����F�N�-b�Z��M>����2k-*}��b�Lҫ沏��.�����xL&:ZH�*��/�hK<]k����@��;s�4\�h��f��4�)U�G��$h6����G[VXiB'�W�x2��P��/z����)�
M���)\���ÍYѶ��\�:M�%j��._�\s�R�=�O��X�%5f�ߺ�R�Z�&	sؿ�R��TIh����3`e�du OtZi�x��d�Eٯ��d�����ᵴ�P� ̨�}�$p����=�G 0]�{�3l#���S<P�`���gKE�i�P*���^�ۼv�f;����D�3��c���Jø����&1�m��ɐ�©_�����`�����Y5T��ȩx�v1�K0�߸\\�������]���4~��x���R��g1GǛѠoW�����c�u�٩�AV��a�Vl�d��u,���uɬ��鮍�}#5`X'�'���Q�y1rj�J@�V^��D8N�)0��71&ߝ'��`�����$�r�H����SG��}��u�GY&����^��4�s�71��G}!0�2T����L]�d���}�{��(\Q5�3�bZ`YIP����&*�O�4����5HiL���?S�9��O����9O�Doy/�|]=w� 5�*�O��+� b�xږ�pB��~a�f޹~
�z��7���j\�S0���(m���QU N �qG폀�'��P��m��=���M�v����F8�?/�#?�c�?�������x�G����2���������      ~   ;  x�uWMs�=C��=i��o��Jq�a��l�R��3��!�̇,��lmʇ�=���������R�%�"�����F�.��*����L������$Y�]�7���1�`"bق�	[��l�U��������|_+�Y�M�+B�$���m�%[П��[�a���V�8�(��xE%ނ���]�Ҕ;	��k��F��+_�[%KMa�G�	~C�.������7|l+it���jd~��<��W�l�����EpM1
;gw�����-�2�#�C����A�`����n����(~����NF�b����2c�r�>?�C+q2�W�Www$诿\��:�:lZI�J`$x���$��\"w:O�JSlUe������-|9��wQE9˧D@�kk6��YH.P-|c|M@��=�G�> ��Ma�SYπ�2
����l���2��|����)��ύ}�p�߇s��6"�ģ�&2v��B�ۡ�`/..
�צ�w���l%[#�gk������tF3�N),ك���)����6��tW��`�.2�B��kU �e:^���ҵn�'[�
v��v'Y*g!7�؏��h�}���حk�w
�pO>GD��eȮ����0�6��E�6��dK|�JpJ 8�xj�0b�1���	�Y*��1<It��7~)M���u!��x�(I�؅D)b`Nŀ��p7�$����١����U;�����1v��Fv%����B5 .��-��N��@y㭉�S�YQO�ML�3�.���4�k�Jrb:2ۣG�����u�>޺��Pm�ʡG�`S��N�g5��d:%Bm��QE��z�t�yh;g�2�KѢ�`F'����Hc� �*�?v=��?�n��F��7x�8�-L�|���m��me�d�T��%l�Q�fr�s@��d�����ʮ��\D�7�6�[��>ՕL�G�D�@���$r�ct��l����e��A�Ŗ_4�FJ+�uwV*ĜM�ֽR�zE5zK�x�.���f)�`Ya6ꦁ����3g�C N�hN=˒7��[���nJ�Dɔ7��?�F	�h䫢���^U0L#B#��[b�ʶo��)���~��^Q�=��m���$� �G�}���[�%1�NEP���ѱ`�E��S��O�1%_5rG���T���d
:z/�4a�<E��k0Q�-���u�1.�$�U�pL��O��;$�؇���}|�����>N	(1�+�A��-T����$���'5�X��1���l�P�N7%I R��X�	QޟL�z�*u<�Y�@�IW��S�k�j�gߔ��⋛@a��1H�h:>"YB�̻v���%Ջ&9?��U"��Mm5��n�)��I�o�S��i2�!�c��n؏{��~�x
	&�����>���r�!��͸��4Bҹ.����1!Xރ�[��h� ��rT�(�Y�Z?��ׇ����S�{Of~1s	�?��?�΋-�Mw�4К�u��BҒd��3��6���Xc$w49Շyyr�s-c��3i"��J5�+1��;��O$���;'H���QDX׹ӌwV:�Q��?�=f��44=�x��N,��qb��N�����^cǵ�y��5m�`J@SϏvn�{^�p����,����B�Nף���J�����u��Xct�2���9G�EUZ�w~��h���R7S��M�x�IӘ�C�vX�x5��Z�CS,0��ޤ�c��3���ݖ���o�;-Q�K �
�FjOR���	3?D�|E�H�b�.JO.�+�{���%�fǧR��|�i��9T m�o��t[|E��@L�i��_�I�o��6�㟶չ�܈O����\BM�=ǺR6�<�a;*7g e�8��c�����A:!�z%첱�ڽ~���Ք6�	�ۇ��E���ܣ?�4
Ƽ��ĐO��l%�F���d�י��y�Ō�k������o��~��(����F[�ׁ_7�H�M'4A`dN��#��`AYײ������j�i�|gфO��볌}lu��l0X�����h���V���_�uO���DO��`���r�C�'e�I�u���b���H�㉳ggg�σ      �   ,   x�3�tM,.I-��2�O���9��J2@L���R3F��� _�!      �   0   x�3�tL����2���OI-J,�/�2�(�O)M.)�sO-����� ���      �   �   x�M��
�0F�{�"����j3
*���%��6XJH��-(��[�w8|b����J�K�)�D$]m5h���^4�{��W��Ρ����$�S��.��P�q�b�;�*�hY+%�1RU���m�j�����z��$�V��"~ �{+�      �   �  x��W�n�J]��� ��>Erv��ȉ�ǵd�"�RGT�n7)G�� �,&�Y�N?6�)�V��5[MR]]��SثϺ�埍,-;�rS�t��Bv՘bʭT:�Op)�i ��05�j��*�b/ث���	{�^ipHI�tB���/�Bv!���T�+K��S��DTr2�-MEU��3�Ҕ�P��K%mmx�q�ң��Li�G��^l�c�){?�!��ob��&��q��������^���r��W�N�\�Z�]��T�����؈W�ҵXa��y-�aR��|�MIץ�zJQόq��7,�?�!
���4Jv�Q����ӳ��w�#Q����T��p+�9�.�y'����9�8��xX��n�q9"i��/�b/|����d�}�6uYp*���-�+��p{�lj����n8�A#Η�4}��(��9n�qO_k�+���R�R���#�eQ��)-�Ĺ� ��]J�����v����~�˩�;����63M��Fwf��|��vI�<B�=�8
:i����Cz��SA��T%�J q+Ƈ�Ӻ^������{o.�����B�_�֖b������Xؗ�v;oZ���Rvŗ�^�#�h�7�u���៩d;��c�k�-�
B����(�ndp%g��d��8�+,ۺ�q�	�8zZu�,sHf�Y�W5H$m���n�t%j��VVD}��Ü�pL t�W8�*����.�i�@��ֈ�mK���>����b&�f���^�����}�ٛ ;��%:�P��Q0h�u�8�.Z�^�B15̳��	ʹ��]c�>8{�D
�ro.�,���ồ�Rf�D�/������?}+�,�qXMW��������"+d�I��n�o��N!a4Z�o����h0��? ����{5�u���Ia&��B���
JX_�Ά�i���0s�V�w U��,N���!�����;c�2���jb���|��̠㽁K�S_`�7
%Q(�V �,㱾F��q����N��S�h]?���tsw�0Mw�����6�B�\@m;���F[O��-*;A�V.� 9-����9�;SB�A%z����M׺̦s#J�1Arv�|�B�Z��4N��L�4Dٳ4�vq�̰��O&�� ���g��c�*�(�n��Q�p��҄]��1g#>{S�ʅGR׏��i�%�}y}��ll-HLv&�\����N�����,�!�)�+��8�nL�r#�A�n�{����<����벾��i]S߈{ʍ¬*�Ū�-8m۫W�Q���cQ��ԡ��R�6�@H��[��*��5���6��[������`��vF�O�w���\�	`B}\4!p}��*�\s��sT�b6��|#<A�Ax��'F��N�?�'��'��Z�0��04�j�%�B��7��~tD׍sKK�Y����������E�4�1B�������"���n��:lϔ�s�+5�PAX#GeJ�R����1pP�[$+�뻇�ly3l]���Z�D,`O(��
!�\
#�_-K'S;�1?��������e���:j(f��w�1b�T+�]d��ʍ�i��#�	l���V����!�k3�p0�I�{�E�`�sf��+5���Jv!!O��sY��#����fh���N+�x"�bq��q�g�A���9-��X�a��b�N��Ѱ)��`[�w	x#�Yҵ���ń����m�?���A5�� �OaTHg᷇�`�f6��rs��S!g3��4j[6E�S�����aՋ�
�כ1*
P��R����1��� o�%_a;dv��H�<���d$��^�����F_:m�!�)\V�J%V�bt��xw��p;P�P��U����4�a�&�`�9��8P�@=��t��[�ot@u�拣�o��]�e���q;ת6��b4��cQ���-���iz�[��^��P[s�ջ�2�3��@6�,䳯Kp��A�kw㈂$j�cT;�d��dp�n��n��*mO��W��f�k�k��7�]�_�
����Gd éG7Z�@(��V��<]�xI�D��0�:����"�휟�V[����s�ݧhӉl�Z@����)��1b�yi��3��>}N�9:̝����D˃�w��U�p�tS��9:q��Ɠ֊P���R�#��6Q:�~�{�c��]��������?E��      �   C  x�U�ˎ�0E��W�
�l��&�Z4m0`P��Vad1���ӯ/e��.���%o�w7�=&^1�%����Y)��a:���B�-�p�);X�q��pt1
V����[H�$l^��b?#�T/��@�4��S�F��SA��4��p�����S�T�6#c����Osg�w���Ꟙ> ��k�a�B��P��J5��Og*]@�����;�p>yK��NsY����L#���2�Z�|�4l��>
�pN���":��1\�=eT�dR��5�b-����hO�t�#Q��E˖ix�㹄+&��ox�ӿ��V����@]���b�|��,�0����{�.�M�%\�i%�
���^�P겛F*zx����HL���[j����������tHe���hc�8e���8����{{D�Z�rM.Җ�|�ҍ�
lv*�h���e�>�4������%J`XǺ�-&;`�;'���iW�Jt����h8�z�y,U�#K��F�@r��#�뭥�)�/q�S���S_Z��L���.j���[����l�,]�dX1�����-��F�ì9��yn�ח���A��      �   Z  x�E�ݎ�@���O�l�ǿK�3#��DY7{�=��'�8���[H#		�WEq�N���b���aԥ.n�̉�
Ri"-�)I�����ȉI����n��U�Si) M� T�ҬP�M	I��Z����a�+ve�c�Ԣ9��Z��P}����A�avFx�Ң`x�;^��GJ{	:�bI���2j8���
�gQ��GTUB*a�{<F$���(����J{4Ū�j��V\֗�t����c�.�܋�;��1�#~�Sw"�V1Y ^�=�.1cX^^�k�8�=�"/őI�Q}�4k�j�8�蘨1���%o;	�;WM0����u�5޵�sgH����H��h֝�fdG�o���p��_��l�l��{��k�oH^-u�4�?"WHb[ĻӃ�'$��#iZ�L+2�~i���Ȃ�����ao��
�GS���6��?]�x�T�H7V�o\Js��Y��oA�;�M�
>��ݧMd��m3�^��
�]���@�Î7nα������f�~���f%ޭ!�{��d����)������ΐ12Bkj-��ϑ�{�H���A��	�+i�G=c�M���C[���`�U�T�      �   �   x�m���   �<gf��*��jI��y1�DV�O��]j���}�1}W��$�H�	�>�cf��4jwR�k%�"G�t#�=ͬu�Z��E=�g�$�Ɵ��q(��륐ͨB�e�Xq��3��e:�1��q����P�ߘ� ި�:�      �      x�3�4�2�4bc.# ;F��� K�     