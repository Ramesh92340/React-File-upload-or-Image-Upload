PGDMP                 	        |         
   fileupload    11.21    11.21     �
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    16550 
   fileupload    DATABASE     �   CREATE DATABASE fileupload WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE fileupload;
             postgres    false            �            1259    16553    files    TABLE     y   CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    path character varying(255)
);
    DROP TABLE public.files;
       public         postgres    false            �            1259    16551    files_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.files_id_seq;
       public       postgres    false    197                       0    0    files_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;
            public       postgres    false    196            ~
           2604    16556    files id    DEFAULT     d   ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);
 7   ALTER TABLE public.files ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196    197            �
          0    16553    files 
   TABLE DATA               /   COPY public.files (id, name, path) FROM stdin;
    public       postgres    false    197   
                  0    0    files_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.files_id_seq', 3, true);
            public       postgres    false    196            �
           2606    16561    files files_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
       public         postgres    false    197            �
   j   x���1�  ����@�����D�F�T	m@M�������5F��̘���b�l�ħ�M�o�ɪNI��:�C�٩>�Ez"XO��#ʫ�G(��g��l]�     