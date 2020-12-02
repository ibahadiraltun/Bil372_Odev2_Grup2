PGDMP                         x            HW2    13.1    13.1 @               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16396    HW2    DATABASE     b   CREATE DATABASE "HW2" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Turkish_Turkey.1254';
    DROP DATABASE "HW2";
                postgres    false            �            1259    16429    city    TABLE     �   CREATE TABLE public.city (
    city_id integer NOT NULL,
    city_name character varying(100) NOT NULL,
    country_code character(3) NOT NULL
);
    DROP TABLE public.city;
       public         heap    postgres    false            �            1259    16427    city_city_id_seq    SEQUENCE     �   CREATE SEQUENCE public.city_city_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.city_city_id_seq;
       public          postgres    false    202                       0    0    city_city_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.city_city_id_seq OWNED BY public.city.city_id;
          public          postgres    false    201            �            1259    16522 
   conference    TABLE     �  CREATE TABLE public.conference (
    confid character varying(20) NOT NULL,
    name character varying(100) NOT NULL,
    shortname character varying(19) NOT NULL,
    year integer NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    submission_deadline date NOT NULL,
    creator_user integer NOT NULL,
    website character varying(100),
    creation_datetime date NOT NULL,
    status integer
);
    DROP TABLE public.conference;
       public         heap    postgres    false            �            1259    16542    conferenceroles    TABLE     �   CREATE TABLE public.conferenceroles (
    authenticationid integer NOT NULL,
    confid character varying(20),
    confid_role integer NOT NULL
);
 #   DROP TABLE public.conferenceroles;
       public         heap    postgres    false            �            1259    16532    conferencetags    TABLE     {   CREATE TABLE public.conferencetags (
    confid character varying(20) NOT NULL,
    tag character varying(200) NOT NULL
);
 "   DROP TABLE public.conferencetags;
       public         heap    postgres    false            �            1259    16562    conferenceupdates    TABLE     M  CREATE TABLE public.conferenceupdates (
    confid character varying(20) NOT NULL,
    name character varying(100) NOT NULL,
    shortname character varying(19) NOT NULL,
    year integer NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    submission_deadline date NOT NULL,
    website character varying(100)
);
 %   DROP TABLE public.conferenceupdates;
       public         heap    postgres    false            �            1259    16407    country    TABLE     y   CREATE TABLE public.country (
    country_code character(3) NOT NULL,
    country_name character varying(50) NOT NULL
);
    DROP TABLE public.country;
       public         heap    postgres    false            �            1259    16682    submissions    TABLE     �   CREATE TABLE public.submissions (
    authenticationid integer NOT NULL,
    confid character varying(20) NOT NULL,
    submissionid integer NOT NULL,
    prevsubmissionid integer
);
    DROP TABLE public.submissions;
       public         heap    postgres    false            �            1259    16680    submissions_submissionid_seq    SEQUENCE     �   CREATE SEQUENCE public.submissions_submissionid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.submissions_submissionid_seq;
       public          postgres    false    212                       0    0    submissions_submissionid_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.submissions_submissionid_seq OWNED BY public.submissions.submissionid;
          public          postgres    false    211            �            1259    16474 	   usersinfo    TABLE     �  CREATE TABLE public.usersinfo (
    authenticationid integer NOT NULL,
    title character varying(50) NOT NULL,
    name character varying(50) NOT NULL,
    lname character varying(50) NOT NULL,
    affiliation character varying(50) NOT NULL,
    primary_email character varying(100) NOT NULL,
    secondary_email character varying(100) NOT NULL,
    password character varying(255) NOT NULL,
    phone character varying(50) NOT NULL,
    fax character varying(50) NOT NULL,
    url character varying(50) NOT NULL,
    address character varying(100) NOT NULL,
    city character varying(100) NOT NULL,
    country character varying(3) NOT NULL,
    date timestamp without time zone NOT NULL,
    status integer NOT NULL
);
    DROP TABLE public.usersinfo;
       public         heap    postgres    false            �            1259    16472    usersinfo_authenticationid_seq    SEQUENCE     �   CREATE SEQUENCE public.usersinfo_authenticationid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.usersinfo_authenticationid_seq;
       public          postgres    false    204                       0    0    usersinfo_authenticationid_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.usersinfo_authenticationid_seq OWNED BY public.usersinfo.authenticationid;
          public          postgres    false    203            �            1259    16499    userslog    TABLE     �  CREATE TABLE public.userslog (
    authenticationid integer NOT NULL,
    title character varying(50) NOT NULL,
    name character varying(50) NOT NULL,
    lname character varying(50) NOT NULL,
    affiliation character varying(50) NOT NULL,
    primary_email character varying(100) NOT NULL,
    secondary_email character varying(100) NOT NULL,
    password character varying(255) NOT NULL,
    phone character varying(50) NOT NULL,
    fax character varying(50) NOT NULL,
    url character varying(50) NOT NULL,
    address character varying(100) NOT NULL,
    city character varying(100) NOT NULL,
    country character varying(3) NOT NULL,
    date timestamp without time zone NOT NULL,
    status integer NOT NULL
);
    DROP TABLE public.userslog;
       public         heap    postgres    false            �            1259    16497    userslog_authenticationid_seq    SEQUENCE     �   CREATE SEQUENCE public.userslog_authenticationid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.userslog_authenticationid_seq;
       public          postgres    false    206                       0    0    userslog_authenticationid_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.userslog_authenticationid_seq OWNED BY public.userslog.authenticationid;
          public          postgres    false    205            J           2604    16432    city city_id    DEFAULT     l   ALTER TABLE ONLY public.city ALTER COLUMN city_id SET DEFAULT nextval('public.city_city_id_seq'::regclass);
 ;   ALTER TABLE public.city ALTER COLUMN city_id DROP DEFAULT;
       public          postgres    false    201    202    202            M           2604    16685    submissions submissionid    DEFAULT     �   ALTER TABLE ONLY public.submissions ALTER COLUMN submissionid SET DEFAULT nextval('public.submissions_submissionid_seq'::regclass);
 G   ALTER TABLE public.submissions ALTER COLUMN submissionid DROP DEFAULT;
       public          postgres    false    212    211    212            K           2604    16477    usersinfo authenticationid    DEFAULT     �   ALTER TABLE ONLY public.usersinfo ALTER COLUMN authenticationid SET DEFAULT nextval('public.usersinfo_authenticationid_seq'::regclass);
 I   ALTER TABLE public.usersinfo ALTER COLUMN authenticationid DROP DEFAULT;
       public          postgres    false    203    204    204            L           2604    16502    userslog authenticationid    DEFAULT     �   ALTER TABLE ONLY public.userslog ALTER COLUMN authenticationid SET DEFAULT nextval('public.userslog_authenticationid_seq'::regclass);
 H   ALTER TABLE public.userslog ALTER COLUMN authenticationid DROP DEFAULT;
       public          postgres    false    205    206    206            �          0    16429    city 
   TABLE DATA           @   COPY public.city (city_id, city_name, country_code) FROM stdin;
    public          postgres    false    202   �U                  0    16522 
   conference 
   TABLE DATA           �   COPY public.conference (confid, name, shortname, year, start_date, end_date, submission_deadline, creator_user, website, creation_datetime, status) FROM stdin;
    public          postgres    false    207   �U                 0    16542    conferenceroles 
   TABLE DATA           P   COPY public.conferenceroles (authenticationid, confid, confid_role) FROM stdin;
    public          postgres    false    209   �V                 0    16532    conferencetags 
   TABLE DATA           5   COPY public.conferencetags (confid, tag) FROM stdin;
    public          postgres    false    208   W                 0    16562    conferenceupdates 
   TABLE DATA           ~   COPY public.conferenceupdates (confid, name, shortname, year, start_date, end_date, submission_deadline, website) FROM stdin;
    public          postgres    false    210   "W       �          0    16407    country 
   TABLE DATA           =   COPY public.country (country_code, country_name) FROM stdin;
    public          postgres    false    200   �W                 0    16682    submissions 
   TABLE DATA           _   COPY public.submissions (authenticationid, confid, submissionid, prevsubmissionid) FROM stdin;
    public          postgres    false    212   �W       �          0    16474 	   usersinfo 
   TABLE DATA           �   COPY public.usersinfo (authenticationid, title, name, lname, affiliation, primary_email, secondary_email, password, phone, fax, url, address, city, country, date, status) FROM stdin;
    public          postgres    false    204   �W       �          0    16499    userslog 
   TABLE DATA           �   COPY public.userslog (authenticationid, title, name, lname, affiliation, primary_email, secondary_email, password, phone, fax, url, address, city, country, date, status) FROM stdin;
    public          postgres    false    206   �X                  0    0    city_city_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.city_city_id_seq', 4, true);
          public          postgres    false    201                       0    0    submissions_submissionid_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.submissions_submissionid_seq', 1, false);
          public          postgres    false    211                       0    0    usersinfo_authenticationid_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.usersinfo_authenticationid_seq', 7, true);
          public          postgres    false    203                       0    0    userslog_authenticationid_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.userslog_authenticationid_seq', 1, false);
          public          postgres    false    205            S           2606    16471    city city_city_name_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_city_name_key UNIQUE (city_name);
 A   ALTER TABLE ONLY public.city DROP CONSTRAINT city_city_name_key;
       public            postgres    false    202            U           2606    16434    city city_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (city_id, city_name);
 8   ALTER TABLE ONLY public.city DROP CONSTRAINT city_pkey;
       public            postgres    false    202    202            c           2606    16526    conference conference_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.conference
    ADD CONSTRAINT conference_pkey PRIMARY KEY (confid);
 D   ALTER TABLE ONLY public.conference DROP CONSTRAINT conference_pkey;
       public            postgres    false    207            g           2606    16546 $   conferenceroles conferenceroles_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.conferenceroles
    ADD CONSTRAINT conferenceroles_pkey PRIMARY KEY (authenticationid);
 N   ALTER TABLE ONLY public.conferenceroles DROP CONSTRAINT conferenceroles_pkey;
       public            postgres    false    209            e           2606    16536 "   conferencetags conferencetags_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.conferencetags
    ADD CONSTRAINT conferencetags_pkey PRIMARY KEY (confid, tag);
 L   ALTER TABLE ONLY public.conferencetags DROP CONSTRAINT conferencetags_pkey;
       public            postgres    false    208    208            i           2606    16566 (   conferenceupdates conferenceupdates_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.conferenceupdates
    ADD CONSTRAINT conferenceupdates_pkey PRIMARY KEY (confid);
 R   ALTER TABLE ONLY public.conferenceupdates DROP CONSTRAINT conferenceupdates_pkey;
       public            postgres    false    210            O           2606    16413     country country_country_name_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_country_name_key UNIQUE (country_name);
 J   ALTER TABLE ONLY public.country DROP CONSTRAINT country_country_name_key;
       public            postgres    false    200            Q           2606    16411    country country_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (country_code);
 >   ALTER TABLE ONLY public.country DROP CONSTRAINT country_pkey;
       public            postgres    false    200            k           2606    16687    submissions submissions_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.submissions
    ADD CONSTRAINT submissions_pkey PRIMARY KEY (submissionid);
 F   ALTER TABLE ONLY public.submissions DROP CONSTRAINT submissions_pkey;
       public            postgres    false    212            W           2606    16482    usersinfo usersinfo_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.usersinfo
    ADD CONSTRAINT usersinfo_pkey PRIMARY KEY (authenticationid);
 B   ALTER TABLE ONLY public.usersinfo DROP CONSTRAINT usersinfo_pkey;
       public            postgres    false    204            Y           2606    16484 %   usersinfo usersinfo_primary_email_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.usersinfo
    ADD CONSTRAINT usersinfo_primary_email_key UNIQUE (primary_email);
 O   ALTER TABLE ONLY public.usersinfo DROP CONSTRAINT usersinfo_primary_email_key;
       public            postgres    false    204            [           2606    16486 '   usersinfo usersinfo_secondary_email_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.usersinfo
    ADD CONSTRAINT usersinfo_secondary_email_key UNIQUE (secondary_email);
 Q   ALTER TABLE ONLY public.usersinfo DROP CONSTRAINT usersinfo_secondary_email_key;
       public            postgres    false    204            ]           2606    16507    userslog userslog_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.userslog
    ADD CONSTRAINT userslog_pkey PRIMARY KEY (authenticationid);
 @   ALTER TABLE ONLY public.userslog DROP CONSTRAINT userslog_pkey;
       public            postgres    false    206            _           2606    16509 #   userslog userslog_primary_email_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.userslog
    ADD CONSTRAINT userslog_primary_email_key UNIQUE (primary_email);
 M   ALTER TABLE ONLY public.userslog DROP CONSTRAINT userslog_primary_email_key;
       public            postgres    false    206            a           2606    16511 %   userslog userslog_secondary_email_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.userslog
    ADD CONSTRAINT userslog_secondary_email_key UNIQUE (secondary_email);
 O   ALTER TABLE ONLY public.userslog DROP CONSTRAINT userslog_secondary_email_key;
       public            postgres    false    206            l           2606    16435    city city_country_code_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_country_code_fkey FOREIGN KEY (country_code) REFERENCES public.country(country_code);
 E   ALTER TABLE ONLY public.city DROP CONSTRAINT city_country_code_fkey;
       public          postgres    false    200    2897    202            q           2606    16527 '   conference conference_creator_user_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.conference
    ADD CONSTRAINT conference_creator_user_fkey FOREIGN KEY (creator_user) REFERENCES public.usersinfo(authenticationid);
 Q   ALTER TABLE ONLY public.conference DROP CONSTRAINT conference_creator_user_fkey;
       public          postgres    false    2903    207    204            t           2606    16557 5   conferenceroles conferenceroles_authenticationid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.conferenceroles
    ADD CONSTRAINT conferenceroles_authenticationid_fkey FOREIGN KEY (authenticationid) REFERENCES public.usersinfo(authenticationid);
 _   ALTER TABLE ONLY public.conferenceroles DROP CONSTRAINT conferenceroles_authenticationid_fkey;
       public          postgres    false    2903    209    204            s           2606    16552 +   conferenceroles conferenceroles_confid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.conferenceroles
    ADD CONSTRAINT conferenceroles_confid_fkey FOREIGN KEY (confid) REFERENCES public.conference(confid);
 U   ALTER TABLE ONLY public.conferenceroles DROP CONSTRAINT conferenceroles_confid_fkey;
       public          postgres    false    207    209    2915            r           2606    16537 )   conferencetags conferencetags_confid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.conferencetags
    ADD CONSTRAINT conferencetags_confid_fkey FOREIGN KEY (confid) REFERENCES public.conference(confid);
 S   ALTER TABLE ONLY public.conferencetags DROP CONSTRAINT conferencetags_confid_fkey;
       public          postgres    false    208    207    2915            u           2606    16688 -   submissions submissions_authenticationid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.submissions
    ADD CONSTRAINT submissions_authenticationid_fkey FOREIGN KEY (authenticationid) REFERENCES public.usersinfo(authenticationid);
 W   ALTER TABLE ONLY public.submissions DROP CONSTRAINT submissions_authenticationid_fkey;
       public          postgres    false    212    2903    204            v           2606    16693 #   submissions submissions_confid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.submissions
    ADD CONSTRAINT submissions_confid_fkey FOREIGN KEY (confid) REFERENCES public.conference(confid);
 M   ALTER TABLE ONLY public.submissions DROP CONSTRAINT submissions_confid_fkey;
       public          postgres    false    212    2915    207            m           2606    16487    usersinfo usersinfo_city_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.usersinfo
    ADD CONSTRAINT usersinfo_city_fkey FOREIGN KEY (city) REFERENCES public.city(city_name);
 G   ALTER TABLE ONLY public.usersinfo DROP CONSTRAINT usersinfo_city_fkey;
       public          postgres    false    2899    204    202            n           2606    16492     usersinfo usersinfo_country_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.usersinfo
    ADD CONSTRAINT usersinfo_country_fkey FOREIGN KEY (country) REFERENCES public.country(country_code);
 J   ALTER TABLE ONLY public.usersinfo DROP CONSTRAINT usersinfo_country_fkey;
       public          postgres    false    200    2897    204            o           2606    16512    userslog userslog_city_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.userslog
    ADD CONSTRAINT userslog_city_fkey FOREIGN KEY (city) REFERENCES public.city(city_name);
 E   ALTER TABLE ONLY public.userslog DROP CONSTRAINT userslog_city_fkey;
       public          postgres    false    2899    202    206            p           2606    16517    userslog userslog_country_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.userslog
    ADD CONSTRAINT userslog_country_fkey FOREIGN KEY (country) REFERENCES public.country(country_code);
 H   ALTER TABLE ONLY public.userslog DROP CONSTRAINT userslog_country_fkey;
       public          postgres    false    206    2897    200            �   =   x�3�t��vr�	�2��q�s
�s�9=�|=��lN?�p�H� o��`G�=... ��          �   x�u��j�0Dϫ��8�Ը�^{(���^F�kW�ZYi�k�T&�0,��f��s0�(x��aBr(c'_��)��#�7�?�=JK�<Y�=������Q�G�j����,�����6�ҠD�Rh�p��}���l~v,�.���8=������P�Ͷ�1��k�g���כ����>񉆏���Lo��%��x��s��mX��D�Q��M��7Ќ��	!~nVn�            x�3�,�L�,2202�4������ 0�            x������ � �         k   x�+�L�,2202�.HM�L�Q��+I-J-.Qp/�/-P�O����&�d��)��e��%�p�tr���]3 �2-��4"Ό���b+}�b�mz���\1z\\\ bf%]      �   1   x�	�	�v��
v�t�u�tv�
w���urt
w����� �	�            x������ � �      �   �   x��PAN�0<�_��Z��f��� P�Jz�bmu�B�?q�8!ͮwF��4�Uh.�2�z��	nw����	���`B:G�c�R��2h��Ϯ=�{[_�+4}�#���s|�T�]qxXE�D=Fsn��L�� ��^|����Ǡ_a~�*����W��܇�ڈ���|sV�mX4Z���� 3'�0%�-�hP}�cQ��.e	a> Q�eM���B� ]�m2      �      x�M��
�0Dד��$$c�[W��J����4J�["�Y�����#��+}`�di��=���^�\���,�!"����,����z���fu��f��qAGg�7�4�b�sV�xV��b�R_��+�     