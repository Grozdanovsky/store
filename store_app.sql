PGDMP         *                z        	   store_app    13.3    14.1 ?    i           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            j           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            k           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            l           1262    77080 	   store_app    DATABASE     r   CREATE DATABASE store_app WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Macedonian_North Macedonia.1251';
    DROP DATABASE store_app;
                postgres    false            ?            1259    77112 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            ?            1259    77110    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    207            m           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    206            ?            1259    77122    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            ?            1259    77120    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    209            n           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    208            ?            1259    77104    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            ?            1259    77102    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    205            o           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    204            ?            1259    77130 	   auth_user    TABLE     ?  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            ?            1259    77140    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            ?            1259    77138    auth_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    213            p           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    212            ?            1259    77128    auth_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    211            q           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    210            ?            1259    77148    auth_user_user_permissions    TABLE     ?   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            ?            1259    77146 !   auth_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    215            r           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    214            ?            1259    77208    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            ?            1259    77206    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    217            s           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    216            ?            1259    77094    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            ?            1259    77092    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    203            t           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    202            ?            1259    77083    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            ?            1259    77081    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    201            u           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    200            ?            1259    77239    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            ?            1259    77251    store_app_adress    TABLE        CREATE TABLE public.store_app_adress (
    id bigint NOT NULL,
    street_and_number character varying(255) NOT NULL,
    postal_code character varying(255) NOT NULL,
    city character varying(255) NOT NULL,
    country character varying(255) NOT NULL
);
 $   DROP TABLE public.store_app_adress;
       public         heap    postgres    false            ?            1259    77249    store_app_adress_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.store_app_adress_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.store_app_adress_id_seq;
       public          postgres    false    220            v           0    0    store_app_adress_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.store_app_adress_id_seq OWNED BY public.store_app_adress.id;
          public          postgres    false    219            ?            1259    77271    store_app_customer    TABLE     E  CREATE TABLE public.store_app_customer (
    id bigint NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    email character varying(254) NOT NULL,
    credit_card character varying(16),
    created_at timestamp with time zone,
    shipping_adress_id bigint NOT NULL
);
 &   DROP TABLE public.store_app_customer;
       public         heap    postgres    false            ?            1259    77269    store_app_customer_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.store_app_customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.store_app_customer_id_seq;
       public          postgres    false    224            w           0    0    store_app_customer_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.store_app_customer_id_seq OWNED BY public.store_app_customer.id;
          public          postgres    false    223            ?            1259    77426    store_app_customerproduct    TABLE     ?   CREATE TABLE public.store_app_customerproduct (
    id bigint NOT NULL,
    customer_id bigint NOT NULL,
    products_id bigint NOT NULL
);
 -   DROP TABLE public.store_app_customerproduct;
       public         heap    postgres    false            ?            1259    77424     store_app_customerproduct_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.store_app_customerproduct_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.store_app_customerproduct_id_seq;
       public          postgres    false    226            x           0    0     store_app_customerproduct_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.store_app_customerproduct_id_seq OWNED BY public.store_app_customerproduct.id;
          public          postgres    false    225            ?            1259    77262    store_app_product    TABLE     M  CREATE TABLE public.store_app_product (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    category character varying(1) NOT NULL,
    quantity integer NOT NULL,
    size character varying(2) NOT NULL,
    price double precision NOT NULL,
    CONSTRAINT store_app_product_quantity_check CHECK ((quantity >= 0))
);
 %   DROP TABLE public.store_app_product;
       public         heap    postgres    false            ?            1259    77260    store_app_product_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.store_app_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.store_app_product_id_seq;
       public          postgres    false    222            y           0    0    store_app_product_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.store_app_product_id_seq OWNED BY public.store_app_product.id;
          public          postgres    false    221            w           2604    77115    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            x           2604    77125    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            v           2604    77107    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            y           2604    77133    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            z           2604    77143    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            {           2604    77151    auth_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            |           2604    77211    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            u           2604    77097    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            t           2604    77086    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            ~           2604    77254    store_app_adress id    DEFAULT     z   ALTER TABLE ONLY public.store_app_adress ALTER COLUMN id SET DEFAULT nextval('public.store_app_adress_id_seq'::regclass);
 B   ALTER TABLE public.store_app_adress ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            ?           2604    77274    store_app_customer id    DEFAULT     ~   ALTER TABLE ONLY public.store_app_customer ALTER COLUMN id SET DEFAULT nextval('public.store_app_customer_id_seq'::regclass);
 D   ALTER TABLE public.store_app_customer ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            ?           2604    77429    store_app_customerproduct id    DEFAULT     ?   ALTER TABLE ONLY public.store_app_customerproduct ALTER COLUMN id SET DEFAULT nextval('public.store_app_customerproduct_id_seq'::regclass);
 K   ALTER TABLE public.store_app_customerproduct ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226                       2604    77265    store_app_product id    DEFAULT     |   ALTER TABLE ONLY public.store_app_product ALTER COLUMN id SET DEFAULT nextval('public.store_app_product_id_seq'::regclass);
 C   ALTER TABLE public.store_app_product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            S          0    77112 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    207   ??       U          0    77122    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    209   ??       Q          0    77104    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    205   α       W          0    77130 	   auth_user 
   TABLE DATA           ?   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    211   t?       Y          0    77140    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    213   ??       [          0    77148    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    215   ??       ]          0    77208    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    217   ˳       O          0    77094    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    203   ??       M          0    77083    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    201   s?       ^          0    77239    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    218   ??       `          0    77251    store_app_adress 
   TABLE DATA           ]   COPY public.store_app_adress (id, street_and_number, postal_code, city, country) FROM stdin;
    public          postgres    false    220   ??       d          0    77271    store_app_customer 
   TABLE DATA           {   COPY public.store_app_customer (id, first_name, last_name, email, credit_card, created_at, shipping_adress_id) FROM stdin;
    public          postgres    false    224   ?       f          0    77426    store_app_customerproduct 
   TABLE DATA           Q   COPY public.store_app_customerproduct (id, customer_id, products_id) FROM stdin;
    public          postgres    false    226   ??       b          0    77262    store_app_product 
   TABLE DATA           V   COPY public.store_app_product (id, name, category, quantity, size, price) FROM stdin;
    public          postgres    false    222   ??       z           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    206            {           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    208            |           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);
          public          postgres    false    204            }           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    212            ~           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);
          public          postgres    false    210                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    214            ?           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    216            ?           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);
          public          postgres    false    202            ?           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 34, true);
          public          postgres    false    200            ?           0    0    store_app_adress_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.store_app_adress_id_seq', 46, true);
          public          postgres    false    219            ?           0    0    store_app_customer_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.store_app_customer_id_seq', 58, true);
          public          postgres    false    223            ?           0    0     store_app_customerproduct_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.store_app_customerproduct_id_seq', 28, true);
          public          postgres    false    225            ?           0    0    store_app_product_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.store_app_product_id_seq', 26, true);
          public          postgres    false    221            ?           2606    77237    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    207            ?           2606    77164 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    209    209            ?           2606    77127 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    209            ?           2606    77117    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    207            ?           2606    77155 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    205    205            ?           2606    77109 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    205            ?           2606    77145 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    213            ?           2606    77179 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    213    213            ?           2606    77135    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    211            ?           2606    77153 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    215            ?           2606    77193 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    215    215            ?           2606    77231     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    211            ?           2606    77217 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    217            ?           2606    77101 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    203    203            ?           2606    77099 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    203            ?           2606    77091 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    201            ?           2606    77246 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    218            ?           2606    77259 &   store_app_adress store_app_adress_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.store_app_adress
    ADD CONSTRAINT store_app_adress_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.store_app_adress DROP CONSTRAINT store_app_adress_pkey;
       public            postgres    false    220            ?           2606    77281 @   store_app_customer store_app_customer_adress_for_shipping_id_key 
   CONSTRAINT     ?   ALTER TABLE ONLY public.store_app_customer
    ADD CONSTRAINT store_app_customer_adress_for_shipping_id_key UNIQUE (shipping_adress_id);
 j   ALTER TABLE ONLY public.store_app_customer DROP CONSTRAINT store_app_customer_adress_for_shipping_id_key;
       public            postgres    false    224            ?           2606    77279 *   store_app_customer store_app_customer_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.store_app_customer
    ADD CONSTRAINT store_app_customer_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.store_app_customer DROP CONSTRAINT store_app_customer_pkey;
       public            postgres    false    224            ?           2606    77431 8   store_app_customerproduct store_app_customerproduct_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.store_app_customerproduct
    ADD CONSTRAINT store_app_customerproduct_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.store_app_customerproduct DROP CONSTRAINT store_app_customerproduct_pkey;
       public            postgres    false    226            ?           2606    77268 (   store_app_product store_app_product_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.store_app_product
    ADD CONSTRAINT store_app_product_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.store_app_product DROP CONSTRAINT store_app_product_pkey;
       public            postgres    false    222            ?           1259    77238    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    207            ?           1259    77175 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    209            ?           1259    77176 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    209            ?           1259    77161 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    205            ?           1259    77191 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    213            ?           1259    77190 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    213            ?           1259    77205 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ?   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    215            ?           1259    77204 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    215            ?           1259    77232     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    211            ?           1259    77228 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    217            ?           1259    77229 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    217            ?           1259    77248 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    218            ?           1259    77247 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    218            ?           1259    77442 .   store_app_customerproduct_customer_id_da09d224    INDEX     {   CREATE INDEX store_app_customerproduct_customer_id_da09d224 ON public.store_app_customerproduct USING btree (customer_id);
 B   DROP INDEX public.store_app_customerproduct_customer_id_da09d224;
       public            postgres    false    226            ?           1259    77502 .   store_app_customerproduct_products_id_fd26e0fd    INDEX     {   CREATE INDEX store_app_customerproduct_products_id_fd26e0fd ON public.store_app_customerproduct USING btree (products_id);
 B   DROP INDEX public.store_app_customerproduct_products_id_fd26e0fd;
       public            postgres    false    226            ?           2606    77170 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    205    209    2957            ?           2606    77165 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    209    207    2962            ?           2606    77156 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    205    2952    203            ?           2606    77185 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    213    2962    207            ?           2606    77180 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    211    213    2970            ?           2606    77199 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    215    205    2957            ?           2606    77194 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    211    215    2970            ?           2606    77218 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    217    203    2952            ?           2606    77223 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    217    211    2970            ?           2606    77288 N   store_app_customer store_app_customer_shipping_adress_id_7fb42d78_fk_store_app    FK CONSTRAINT     ?   ALTER TABLE ONLY public.store_app_customer
    ADD CONSTRAINT store_app_customer_shipping_adress_id_7fb42d78_fk_store_app FOREIGN KEY (shipping_adress_id) REFERENCES public.store_app_adress(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.store_app_customer DROP CONSTRAINT store_app_customer_shipping_adress_id_7fb42d78_fk_store_app;
       public          postgres    false    2995    220    224            ?           2606    77432 P   store_app_customerproduct store_app_customerpr_customer_id_da09d224_fk_store_app    FK CONSTRAINT     ?   ALTER TABLE ONLY public.store_app_customerproduct
    ADD CONSTRAINT store_app_customerpr_customer_id_da09d224_fk_store_app FOREIGN KEY (customer_id) REFERENCES public.store_app_customer(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.store_app_customerproduct DROP CONSTRAINT store_app_customerpr_customer_id_da09d224_fk_store_app;
       public          postgres    false    226    3001    224            ?           2606    77497 P   store_app_customerproduct store_app_customerpr_products_id_fd26e0fd_fk_store_app    FK CONSTRAINT     ?   ALTER TABLE ONLY public.store_app_customerproduct
    ADD CONSTRAINT store_app_customerpr_products_id_fd26e0fd_fk_store_app FOREIGN KEY (products_id) REFERENCES public.store_app_product(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.store_app_customerproduct DROP CONSTRAINT store_app_customerpr_products_id_fd26e0fd_fk_store_app;
       public          postgres    false    2997    226    222            S      x?????? ? ?      U      x?????? ? ?      Q   ?  x?m?[n?0E??U??*<??ۨT!?R??V?}?x?$????X\????????xM°??????k(}H???`??0???Z0?, ??ß????l6???/K?.5i???3 ?)??~?EA?V?hHpT\͖?y?&?? |??????I?!??H&*??l?-av<?}Z??x??#p??????n<???????8??_K?????????"?_k??~??N?y?Aװ)[/!??c?3?waГ1?v?P?1?u???Iz??{ӕ ???3?:?l3?2?P3*H??y??vuU|p???I?0??3???a*??F???ݖu???c????I??(X??+?ŠJ??b?*_????׊|?ꝩ?:(?`??\?@????&z?\???>???uG      W      x?????? ? ?      Y      x?????? ? ?      [      x?????? ? ?      ]      x?????? ? ?      O   {   x?m?K
?0??aJ?6?ܥP?#RCm	I^??1/?{30?S??T\?@??!??,q??ff?*x۠)??x?|??F????0g?Oi??,>;%?S??????vnO????????+Y?E?      M      x????n?0E?ӯ????H???!VS??e0????ĉ?L?????u?Kv???b;M_}w?1?U[MU?w??C?
?I??-4r??܅y??>?Hɍ^"?.?M?>b??YB?9}?(??????DO?w>????,%*?~fP????Z?^???t՞?˲?q??ԍ\x????/O|?xe???,(???>?S|???%?%?7ᯯc{????@Y???F?G?<?%6???? ???(⒲\R6]??WǢ?"U?Ɛ??:?Ӣ|E???5?\?R`?(?s??M?$?_4{ ?T?9??>??'?U?nS??0t?o?8?Ã?[!m??f?j??Ȋ)?Jb#???CY??P??vD?n???h?V???0???????_??@#?I?[/^????ݖi?m?????P +HE?6???H?????O?	,?	?<n?sJ8???ߩGƏ?𥳐f?L?6???????	IH?՟?'?n???j??0??L:f??J?k???NV????~??sh?j??0?:?U??"#?1??ˑ4^8wL??5??6?A۝??3X??r?8???\	,s????????'taQ??@???u??<??7qF'?@?R?y?l?Nʂ)?f????d?[I?X??f?k?qB\	???!???b?
?	, ?4Axn!?GJl?Jp???(id??}?g`???
Ι?Լ<w???yuA'?????s_?|м?&K8?N??4??$???@ݩ?Sm??!i 
??X????????0?d      ^      x?????? ? ?      `   \   x?31?N-N?MU.)JM-Q01?7?4400???/?J??MLNM???L?21???H?/J??54?7???????t?K?I?K?21&??=... ??'M      d   ?   x?]̽?0@???)?M{Z褉??+?FL, >?Rc?n?,???8?)?z??pK????9Aw4???
??? ?kc?C??J?C?龌??Z??в8_7L,?o???7?c1Q?@??g??8?i???Eڪ???;??:u]'MQIuZ)??;z      f   !   x?32?45?4?22ц?\F`?=... I?m      b      x??ұn?0???)???;?X?1T?0t??*E??P???L;??~?s??+İ???)-X??????`o}??oA???k?R3W9???lO1???N??????i?r?-2?*?.a?W???Z??p????K??????rL?z)&U?,??ԘT?LʃI??????&5SB?ɎD????<?dU?'Zx?]?J?Ǐ?b???????ņ=?wX?m??&?K???l????=?[??4?`F???'D????     