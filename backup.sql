PGDMP                          |            ordermanagement    15.5    15.5 
    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16469    ordermanagement    DATABASE     �   CREATE DATABASE ordermanagement WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE ordermanagement;
                postgres    false            �            1259    16470    orders    TABLE     �   CREATE TABLE public.orders (
    id integer NOT NULL,
    totalfee integer,
    services json,
    datetime character varying
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    16477    serviceOrders    TABLE     ]   CREATE TABLE public."serviceOrders" (
    id integer NOT NULL,
    name character varying
);
 #   DROP TABLE public."serviceOrders";
       public         heap    postgres    false            �          0    16470    orders 
   TABLE DATA           B   COPY public.orders (id, totalfee, services, datetime) FROM stdin;
    public          postgres    false    214   �	       �          0    16477    serviceOrders 
   TABLE DATA           3   COPY public."serviceOrders" (id, name) FROM stdin;
    public          postgres    false    215   
       i           2606    16476    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    214            k           2606    16483     serviceOrders serviceOrders_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."serviceOrders"
    ADD CONSTRAINT "serviceOrders_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY public."serviceOrders" DROP CONSTRAINT "serviceOrders_pkey";
       public            postgres    false    215            �   s   x�3�443���V�LQ�R042���)MU�J�S04S0202Q04�20�20Tp��6056P���K�LT.I�KI,JQ��M��2��Y�T4ˌ�f�S�,*�eIE��hX� ���      �   5   x�342���+.HM.����2���I-.��K�215�t�K̩,�,����� 8�     