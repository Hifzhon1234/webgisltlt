PGDMP     9    .            
    x            sada    12.4    12.4 
    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    50019    sada    DATABASE     �   CREATE DATABASE sada WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_Indonesia.1252' LC_CTYPE = 'English_Indonesia.1252';
    DROP DATABASE sada;
                postgres    false            �           0    0    sada    DATABASE PROPERTIES     F   ALTER DATABASE sada SET search_path TO '$user', 'public', 'topology';
                     postgres    false            �            1259    51268    detail_worship_place    TABLE     �   CREATE TABLE public.detail_worship_place (
    id_angkot character(5) NOT NULL,
    id_worship_place character varying(5) NOT NULL,
    lat character varying(15),
    lng character varying(15),
    description character varying(30)
);
 (   DROP TABLE public.detail_worship_place;
       public         heap    postgres    false            �          0    51268    detail_worship_place 
   TABLE DATA           b   COPY public.detail_worship_place (id_angkot, id_worship_place, lat, lng, description) FROM stdin;
    public          postgres    false    248   ?                  2606    51500 ,   detail_worship_place id_detail_worship_place 
   CONSTRAINT     �   ALTER TABLE ONLY public.detail_worship_place
    ADD CONSTRAINT id_detail_worship_place PRIMARY KEY (id_angkot, id_worship_place);
 V   ALTER TABLE ONLY public.detail_worship_place DROP CONSTRAINT id_detail_worship_place;
       public            postgres    false    248    248                       2606    51765    detail_worship_place id_angkot    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_worship_place
    ADD CONSTRAINT id_angkot FOREIGN KEY (id_angkot) REFERENCES public.angkot(id);
 H   ALTER TABLE ONLY public.detail_worship_place DROP CONSTRAINT id_angkot;
       public          postgres    false    248                       2606    51940 %   detail_worship_place id_worship_place    FK CONSTRAINT     �   ALTER TABLE ONLY public.detail_worship_place
    ADD CONSTRAINT id_worship_place FOREIGN KEY (id_worship_place) REFERENCES public.worship_place(id);
 O   ALTER TABLE ONLY public.detail_worship_place DROP CONSTRAINT id_worship_place;
       public          postgres    false    248            �   �  x��Y�rG�ɯ�X5�  ��Ԏ*t�D�]�����+.��%���Cρ�јG�����GJٟ~K_r"*�~4�DO��|&m6Dզ0S��p�l��ӺN�6����)t��G{��{~��a�6����|�Wi6I�:�RT�&����<�X��$�6n������u��:��l���u(�����m��p�asa��>���:�)مu����&�װ�`��96m�����,��ݣ�T�����{�]8��֑���'粋Ejq�9!͸� �(q�����~�x�����|�pr�{?�"n�mG����9���R�#�1*rz�5���ďs21���p�s�H�;�H5�$���[�z2���.wg sE��;q�yF�ֵ;�����.�4�{�HW�]>]�lz�:V�G�_���Tj�
	Rax������}�^���s�zĲu.`c�=�ɑD^#?o-�h	��m�)��ʾ[,YS�'!�_�֨���˪ϭk��*y�Mc���C\�����BP�0��F��q=�e1I�o�[X�*v��0>���ˈ�%��S.Z�u뷥��-[@�P��6��u����ܥ㌋g�t�������M\�S�~�G����W~u�ͩ{�(e)�2�KjJ����zh97�nf�2���f����u�ev��x�@[�8���-��edF�I��8�����)Ev@���I�_�Zz���ɉW����5�s�l1�M'߫ͫ�Ǔ|`=�R���Q4� Ğ-3����,�F�-���o����rH@�Q�q���)�]���2�g�]�.ԡ�l��*{L�^(+���]"��J7�zUhqӡ+C��f��ti��Zw�R`ȁ&�Ye	��ˬ�����̧nm�Ϥ���r�����UV���f�11��������I�κd�W�mZ/�=��������Y;������W�O�#h�$ ��a��Q�.�.q�E��/X�Z8���{�Ym˸|W��6��T�F���FGE�VprNm�s(|n6�=�p���'�\����]���V���>P6�3-���z��Ǹ�v�P?�V���zЪ�Q@[5sӲ⌎�����^ۖ1X�wH��?�5N��EՖ�Z��>�Ng�6�nS+T���+x"�X���Wq�_�1���D�q�8�c��M\���:Z��M\���y��{��_�K�34whR�kuW���[�%o��3�P�<�Z!K��)��8X�%��[�w��m�)�W��wp�Z�7��oSO='V n�%���V�2.�yqs����^O���U�ch(����'/�Fnp���,��_-����B'��{��|�&4�8���b��eun�Ǜ���d���wp���C|��@�~Q�\���g~��&kH�ǟ�Jd��?��Sh{�D6V�"*j���Kb�������>��:��9����l"g�.�O�xA������o��gc�:�n��k�<��x`B+�\�������/�����_,�     