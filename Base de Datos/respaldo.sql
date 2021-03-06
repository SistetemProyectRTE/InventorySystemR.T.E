PGDMP     3                    x            d33hiq1t087d4v     12.2 (Ubuntu 12.2-2.pgdg16.04+1)    12.3 -    K           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            L           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            M           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            N           1262    16546240    d33hiq1t087d4v    DATABASE     �   CREATE DATABASE d33hiq1t087d4v WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE d33hiq1t087d4v;
                jrcnwibdcomrpl    false            O           0    0    DATABASE d33hiq1t087d4v    ACL     A   REVOKE CONNECT,TEMPORARY ON DATABASE d33hiq1t087d4v FROM PUBLIC;
                   jrcnwibdcomrpl    false    3918            P           0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO jrcnwibdcomrpl;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   jrcnwibdcomrpl    false    3            Q           0    0    LANGUAGE plpgsql    ACL     1   GRANT ALL ON LANGUAGE plpgsql TO jrcnwibdcomrpl;
                   postgres    false    661            �            1259    16860456    ambiente    TABLE     �   CREATE TABLE public.ambiente (
    ambienteid integer NOT NULL,
    especialidad character varying(20) DEFAULT NULL::character varying
);
    DROP TABLE public.ambiente;
       public         heap    jrcnwibdcomrpl    false            �            1259    16860814    ambiente_has_sede    TABLE     v   CREATE TABLE public.ambiente_has_sede (
    ambiente_ambienteid integer NOT NULL,
    sede_sedeid integer NOT NULL
);
 %   DROP TABLE public.ambiente_has_sede;
       public         heap    jrcnwibdcomrpl    false            �            1259    16860759    elemento    TABLE     M  CREATE TABLE public.elemento (
    elementoid integer NOT NULL,
    ambiente_ambienteid integer NOT NULL,
    tipoelemento_tipoelementoid integer NOT NULL,
    estado_estadoid integer NOT NULL,
    marca character varying(20) DEFAULT NULL::character varying,
    descripcion character varying(150) DEFAULT NULL::character varying
);
    DROP TABLE public.elemento;
       public         heap    jrcnwibdcomrpl    false            �            1259    16860786    estado    TABLE     �   CREATE TABLE public.estado (
    estadoid integer NOT NULL,
    tipoestado character varying(20) DEFAULT NULL::character varying,
    descripcion character varying(20) DEFAULT NULL::character varying
);
    DROP TABLE public.estado;
       public         heap    jrcnwibdcomrpl    false            �            1259    16860847    rol    TABLE     �   CREATE TABLE public.rol (
    rolid integer NOT NULL,
    especialidad character varying(255) DEFAULT NULL::character varying,
    descripcion character varying(255) DEFAULT NULL::character varying
);
    DROP TABLE public.rol;
       public         heap    jrcnwibdcomrpl    false            �            1259    16860855    rol_has_usuario    TABLE     �   CREATE TABLE public.rol_has_usuario (
    rol_rolid integer NOT NULL,
    usuario_usuarioid integer NOT NULL,
    estado character varying(20) DEFAULT NULL::character varying
);
 #   DROP TABLE public.rol_has_usuario;
       public         heap    jrcnwibdcomrpl    false            �            1259    16860462    sede    TABLE     8  CREATE TABLE public.sede (
    sedeid integer NOT NULL,
    usuarioid integer,
    nombresede character varying(20) DEFAULT NULL::character varying,
    direccion character varying(20) DEFAULT NULL::character varying,
    telefono character varying(20) DEFAULT NULL::character varying,
    ambienteid integer
);
    DROP TABLE public.sede;
       public         heap    jrcnwibdcomrpl    false            �            1259    16860791    tipoelemento    TABLE     �   CREATE TABLE public.tipoelemento (
    tipoelementoid integer NOT NULL,
    tipoelemento character varying(20) DEFAULT NULL::character varying
);
     DROP TABLE public.tipoelemento;
       public         heap    jrcnwibdcomrpl    false            �            1259    16860859    usuario    TABLE     #  CREATE TABLE public.usuario (
    usuarioid integer NOT NULL,
    cedula integer,
    nombre character varying(20) DEFAULT NULL::character varying,
    apellido character varying(20) DEFAULT NULL::character varying,
    "contraseña" character varying(50) DEFAULT NULL::character varying
);
    DROP TABLE public.usuario;
       public         heap    jrcnwibdcomrpl    false            �            1259    16860883    usuario_has_sede    TABLE     s   CREATE TABLE public.usuario_has_sede (
    usuario_usuarioid integer NOT NULL,
    sede_sedeid integer NOT NULL
);
 $   DROP TABLE public.usuario_has_sede;
       public         heap    jrcnwibdcomrpl    false            ?          0    16860456    ambiente 
   TABLE DATA           <   COPY public.ambiente (ambienteid, especialidad) FROM stdin;
    public          jrcnwibdcomrpl    false    202   �5       D          0    16860814    ambiente_has_sede 
   TABLE DATA           M   COPY public.ambiente_has_sede (ambiente_ambienteid, sede_sedeid) FROM stdin;
    public          jrcnwibdcomrpl    false    207   +6       A          0    16860759    elemento 
   TABLE DATA           �   COPY public.elemento (elementoid, ambiente_ambienteid, tipoelemento_tipoelementoid, estado_estadoid, marca, descripcion) FROM stdin;
    public          jrcnwibdcomrpl    false    204   H6       B          0    16860786    estado 
   TABLE DATA           C   COPY public.estado (estadoid, tipoestado, descripcion) FROM stdin;
    public          jrcnwibdcomrpl    false    205   �6       E          0    16860847    rol 
   TABLE DATA           ?   COPY public.rol (rolid, especialidad, descripcion) FROM stdin;
    public          jrcnwibdcomrpl    false    208   "7       F          0    16860855    rol_has_usuario 
   TABLE DATA           O   COPY public.rol_has_usuario (rol_rolid, usuario_usuarioid, estado) FROM stdin;
    public          jrcnwibdcomrpl    false    209   �7       @          0    16860462    sede 
   TABLE DATA           ^   COPY public.sede (sedeid, usuarioid, nombresede, direccion, telefono, ambienteid) FROM stdin;
    public          jrcnwibdcomrpl    false    203   8       C          0    16860791    tipoelemento 
   TABLE DATA           D   COPY public.tipoelemento (tipoelementoid, tipoelemento) FROM stdin;
    public          jrcnwibdcomrpl    false    206   %8       G          0    16860859    usuario 
   TABLE DATA           U   COPY public.usuario (usuarioid, cedula, nombre, apellido, "contraseña") FROM stdin;
    public          jrcnwibdcomrpl    false    210   {8       H          0    16860883    usuario_has_sede 
   TABLE DATA           J   COPY public.usuario_has_sede (usuario_usuarioid, sede_sedeid) FROM stdin;
    public          jrcnwibdcomrpl    false    211   $9       �           2606    16860461    ambiente ambiente_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.ambiente
    ADD CONSTRAINT ambiente_pkey PRIMARY KEY (ambienteid);
 @   ALTER TABLE ONLY public.ambiente DROP CONSTRAINT ambiente_pkey;
       public            jrcnwibdcomrpl    false    202            �           2606    16860796    estado estado_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.estado
    ADD CONSTRAINT estado_pkey PRIMARY KEY (estadoid);
 <   ALTER TABLE ONLY public.estado DROP CONSTRAINT estado_pkey;
       public            jrcnwibdcomrpl    false    205            �           2606    16860866    rol rol_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.rol
    ADD CONSTRAINT rol_pkey PRIMARY KEY (rolid);
 6   ALTER TABLE ONLY public.rol DROP CONSTRAINT rol_pkey;
       public            jrcnwibdcomrpl    false    208            �           2606    16860469    sede sede_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.sede
    ADD CONSTRAINT sede_pkey PRIMARY KEY (sedeid);
 8   ALTER TABLE ONLY public.sede DROP CONSTRAINT sede_pkey;
       public            jrcnwibdcomrpl    false    203            �           2606    16860798    tipoelemento tipoelemento_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.tipoelemento
    ADD CONSTRAINT tipoelemento_pkey PRIMARY KEY (tipoelementoid);
 H   ALTER TABLE ONLY public.tipoelemento DROP CONSTRAINT tipoelemento_pkey;
       public            jrcnwibdcomrpl    false    206            �           2606    16860868    usuario usuario_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (usuarioid);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            jrcnwibdcomrpl    false    210            �           1259    16860827    fki_Ambiente_AmbienteID    INDEX     f   CREATE INDEX "fki_Ambiente_AmbienteID" ON public.ambiente_has_sede USING btree (ambiente_ambienteid);
 -   DROP INDEX public."fki_Ambiente_AmbienteID";
       public            jrcnwibdcomrpl    false    207            �           1259    16860874    fki_Rol_RolID    INDEX     P   CREATE INDEX "fki_Rol_RolID" ON public.rol_has_usuario USING btree (rol_rolid);
 #   DROP INDEX public."fki_Rol_RolID";
       public            jrcnwibdcomrpl    false    209            �           1259    16860834    fki_Sede_SedeID    INDEX     V   CREATE INDEX "fki_Sede_SedeID" ON public.ambiente_has_sede USING btree (sede_sedeid);
 %   DROP INDEX public."fki_Sede_SedeID";
       public            jrcnwibdcomrpl    false    207            �           1259    16860904    fki_Sedes_SedeID    INDEX     V   CREATE INDEX "fki_Sedes_SedeID" ON public.usuario_has_sede USING btree (sede_sedeid);
 &   DROP INDEX public."fki_Sedes_SedeID";
       public            jrcnwibdcomrpl    false    211            �           1259    16860880    fki_Usuario_UsuarioID    INDEX     `   CREATE INDEX "fki_Usuario_UsuarioID" ON public.rol_has_usuario USING btree (usuario_usuarioid);
 +   DROP INDEX public."fki_Usuario_UsuarioID";
       public            jrcnwibdcomrpl    false    209            �           1259    16860898    fki_Usuarios_UsuarioID    INDEX     b   CREATE INDEX "fki_Usuarios_UsuarioID" ON public.usuario_has_sede USING btree (usuario_usuarioid);
 ,   DROP INDEX public."fki_Usuarios_UsuarioID";
       public            jrcnwibdcomrpl    false    211            �           2606    16860822 %   ambiente_has_sede Ambiente_AmbienteID    FK CONSTRAINT     �   ALTER TABLE ONLY public.ambiente_has_sede
    ADD CONSTRAINT "Ambiente_AmbienteID" FOREIGN KEY (ambiente_ambienteid) REFERENCES public.ambiente(ambienteid) NOT VALID;
 Q   ALTER TABLE ONLY public.ambiente_has_sede DROP CONSTRAINT "Ambiente_AmbienteID";
       public          jrcnwibdcomrpl    false    202    207    3754            �           2606    16860869    rol_has_usuario Rol_RolID    FK CONSTRAINT     �   ALTER TABLE ONLY public.rol_has_usuario
    ADD CONSTRAINT "Rol_RolID" FOREIGN KEY (rol_rolid) REFERENCES public.rol(rolid) NOT VALID;
 E   ALTER TABLE ONLY public.rol_has_usuario DROP CONSTRAINT "Rol_RolID";
       public          jrcnwibdcomrpl    false    208    3764    209            �           2606    16860829    ambiente_has_sede Sede_SedeID    FK CONSTRAINT     �   ALTER TABLE ONLY public.ambiente_has_sede
    ADD CONSTRAINT "Sede_SedeID" FOREIGN KEY (sede_sedeid) REFERENCES public.sede(sedeid) NOT VALID;
 I   ALTER TABLE ONLY public.ambiente_has_sede DROP CONSTRAINT "Sede_SedeID";
       public          jrcnwibdcomrpl    false    207    203    3756            �           2606    16860899    usuario_has_sede Sedes_SedeID    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_has_sede
    ADD CONSTRAINT "Sedes_SedeID" FOREIGN KEY (sede_sedeid) REFERENCES public.sede(sedeid) NOT VALID;
 I   ALTER TABLE ONLY public.usuario_has_sede DROP CONSTRAINT "Sedes_SedeID";
       public          jrcnwibdcomrpl    false    203    211    3756            �           2606    16860875 !   rol_has_usuario Usuario_UsuarioID    FK CONSTRAINT     �   ALTER TABLE ONLY public.rol_has_usuario
    ADD CONSTRAINT "Usuario_UsuarioID" FOREIGN KEY (usuario_usuarioid) REFERENCES public.usuario(usuarioid) NOT VALID;
 M   ALTER TABLE ONLY public.rol_has_usuario DROP CONSTRAINT "Usuario_UsuarioID";
       public          jrcnwibdcomrpl    false    209    3768    210            �           2606    16860893 #   usuario_has_sede Usuarios_UsuarioID    FK CONSTRAINT     �   ALTER TABLE ONLY public.usuario_has_sede
    ADD CONSTRAINT "Usuarios_UsuarioID" FOREIGN KEY (usuario_usuarioid) REFERENCES public.usuario(usuarioid) NOT VALID;
 O   ALTER TABLE ONLY public.usuario_has_sede DROP CONSTRAINT "Usuarios_UsuarioID";
       public          jrcnwibdcomrpl    false    3768    211    210            ?   -   x�320�tI-N,*�����220�t,M��W�,.M������ ��
�      D      x������ � �      A   ^   x�3�420�A� N���܂ҒĔ�"��Լ�D�H��a��������B����B@Q~rj1X�g^I*HWQ�B��������H#����� p/�      B   \   x�3�tL.�,��t�/*JM.�Wp+�K���K��L�2���K�����$*�%��$ss:%f%r������3��F���s��qqq s��      E   �   x�u�A
�@E�3��	�]t'"��M��h����Z��9����O����MD%�dN�����;L��G�������Td�w݈s��{8��&�I��`]M�_��,y%�@��Tn��T� ��\��m��@܇ft�$���2%A-uY���Q��&���T      F   $   x�3�4�tL.�,��2�4�1�9MLS3F��� 8�L      @      x������ � �      C   F   x�3�t��-(-IL�/�2�tN�M,J�2��/*I,���2�(ʯLM.ʛB��S�K�2SS�b���� }      G   �   x���1�0���9r��ig��X�Y�8B�� Et���� lo����[�`1�9��4�����|`��礉I�k&D'�tr�Ef��"�%'A�-56��������e�׺����_@H9�B1���	�W�|
h�A��%�Zv<>�(�ԏ�1���A^      H      x������ � �     