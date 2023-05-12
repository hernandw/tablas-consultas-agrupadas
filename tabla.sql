--
-- PostgreSQL database dump
--

-- Dumped from database version 14.7
-- Dumped by pg_dump version 14.7

-- Started on 2023-05-11 21:10:21

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE desafio_tablas;
--
-- TOC entry 3327 (class 1262 OID 16850)
-- Name: desafio_tablas; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE desafio_tablas WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Chile.1252';


ALTER DATABASE desafio_tablas OWNER TO postgres;

\connect desafio_tablas

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 214 (class 1259 OID 16866)
-- Name: comentarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comentarios (
    id integer NOT NULL,
    contenido character varying,
    fecha_creacion date,
    usuario_id bigint,
    post_id bigint
);


ALTER TABLE public.comentarios OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16865)
-- Name: comentarios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comentarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comentarios_id_seq OWNER TO postgres;

--
-- TOC entry 3328 (class 0 OID 0)
-- Dependencies: 213
-- Name: comentarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comentarios_id_seq OWNED BY public.comentarios.id;


--
-- TOC entry 212 (class 1259 OID 16859)
-- Name: posts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posts (
    id integer NOT NULL,
    titulo character varying,
    contenido text,
    fecha_creacion date,
    fecha_actualizacion date,
    destacado boolean,
    usuario_id bigint
);


ALTER TABLE public.posts OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16858)
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_id_seq OWNER TO postgres;

--
-- TOC entry 3329 (class 0 OID 0)
-- Dependencies: 211
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- TOC entry 210 (class 1259 OID 16852)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuarios (
    id integer NOT NULL,
    email character varying,
    nombre character varying,
    apellido character varying,
    rol character varying
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16851)
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_id_seq OWNER TO postgres;

--
-- TOC entry 3330 (class 0 OID 0)
-- Dependencies: 209
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;


--
-- TOC entry 3176 (class 2604 OID 16869)
-- Name: comentarios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentarios ALTER COLUMN id SET DEFAULT nextval('public.comentarios_id_seq'::regclass);


--
-- TOC entry 3175 (class 2604 OID 16862)
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- TOC entry 3174 (class 2604 OID 16855)
-- Name: usuarios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);


--
-- TOC entry 3321 (class 0 OID 16866)
-- Dependencies: 214
-- Data for Name: comentarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.comentarios (id, contenido, fecha_creacion, usuario_id, post_id) VALUES (1, 'comentario 1', '2021-06-03', 1, 1);
INSERT INTO public.comentarios (id, contenido, fecha_creacion, usuario_id, post_id) VALUES (2, 'comentario 2', '2021-06-05', 2, 1);
INSERT INTO public.comentarios (id, contenido, fecha_creacion, usuario_id, post_id) VALUES (3, 'comentario 3', '2021-06-04', 3, 1);
INSERT INTO public.comentarios (id, contenido, fecha_creacion, usuario_id, post_id) VALUES (4, 'comentario 4', '2021-06-08', 1, 2);
INSERT INTO public.comentarios (id, contenido, fecha_creacion, usuario_id, post_id) VALUES (5, 'comentario 5', '2021-07-04', 2, 2);


--
-- TOC entry 3319 (class 0 OID 16859)
-- Dependencies: 212
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.posts (id, titulo, contenido, fecha_creacion, fecha_actualizacion, destacado, usuario_id) VALUES (1, 'prueba', 'contenido prueba', '2021-01-01', '2021-02-01', true, 1);
INSERT INTO public.posts (id, titulo, contenido, fecha_creacion, fecha_actualizacion, destacado, usuario_id) VALUES (2, 'prueba2', 'contenido prueba2', '2021-03-01', '2021-03-01', true, 1);
INSERT INTO public.posts (id, titulo, contenido, fecha_creacion, fecha_actualizacion, destacado, usuario_id) VALUES (3, 'ejercicios', 'contenido ejercicios', '2021-05-02', '2021-04-03', true, 2);
INSERT INTO public.posts (id, titulo, contenido, fecha_creacion, fecha_actualizacion, destacado, usuario_id) VALUES (4, 'ejercicios2', 'contenido ejercicios2', '2021-05-03', '2021-04-04', false, 2);
INSERT INTO public.posts (id, titulo, contenido, fecha_creacion, fecha_actualizacion, destacado, usuario_id) VALUES (5, 'random', 'contenido random', '2021-06-03', '2021-05-04', false, NULL);


--
-- TOC entry 3317 (class 0 OID 16852)
-- Dependencies: 210
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.usuarios (id, email, nombre, apellido, rol) VALUES (1, 'juan@mail.com', 'juan', 'perez', 'administrador');
INSERT INTO public.usuarios (id, email, nombre, apellido, rol) VALUES (2, 'diego@mail.com', 'diego', 'munoz', 'usuario');
INSERT INTO public.usuarios (id, email, nombre, apellido, rol) VALUES (3, 'maria@mail.com', 'maria', 'meza', 'usuario');
INSERT INTO public.usuarios (id, email, nombre, apellido, rol) VALUES (4, 'roxana@mail.com', 'roxana', 'diaz', 'usuario');
INSERT INTO public.usuarios (id, email, nombre, apellido, rol) VALUES (5, 'pedro@mail.com', 'pedro', 'diaz', 'usuario');


--
-- TOC entry 3331 (class 0 OID 0)
-- Dependencies: 213
-- Name: comentarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comentarios_id_seq', 5, true);


--
-- TOC entry 3332 (class 0 OID 0)
-- Dependencies: 211
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posts_id_seq', 5, true);


--
-- TOC entry 3333 (class 0 OID 0)
-- Dependencies: 209
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_id_seq', 5, true);


-- Completed on 2023-05-11 21:10:21

--
-- PostgreSQL database dump complete
--

/* CONSULTAS */

/* 2.  Cruza los datos de la tabla usuarios y posts mostrando las siguientes columnas.
nombre e email del usuario junto al título y contenido del post. */

select nombre, email, titulo, contenido from usuarios u
JOIN posts p
ON u.id = p.usuario_id;

/* 3. Muestra el id, título y contenido de los posts de los administradores. El
administrador puede ser cualquier id y debe ser seleccionado dinámicamente  */

select * from usuarios u
JOIN posts p
ON u.id = p.usuario_id
where rol = 'administrador';

/* 4. Cuenta la cantidad de posts de cada usuario. La tabla resultante debe mostrar el id
e email del usuario junto con la cantidad de posts de cada usuario. */ 

select u.id, email, count(p.id) as cantidad from usuarios u
LEFT JOIN posts p
ON u.id = p.usuario_id
group by u.id, u.email
order by cantidad desc;

/* 5. Muestra el email del usuario que ha creado más posts. Aquí la tabla resultante tiene
un único registro y muestra solo el email.  */

select email from usuarios u
join posts p
ON u.id = p.usuario_id
group by u.id, u.email 
order by max(p.id);

/* 6. Muestra la fecha del último post de cada usuario */
-- hacemos la consulta de fecha y comentario
select p.id, p.contenido, p.fecha_creacion, u.nombre from usuarios u
join posts p
ON u.id = p.usuario_id

-- mostramos con max los mas recientes.
select nombre, max(fecha_creacion) from (select p.id, p.contenido, p.fecha_creacion, u.nombre from usuarios u
join posts p
ON u.id = p.usuario_id) as t
group by t.nombre;

/* 7. Muestra el título y contenido del post (artículo) con más comentarios. */

-- buscamos el post con mas comentarios
select post_id, count(post_id) as cantidad
from comentarios group by post_id order by cantidad desc limit 1; 

-- buscamos el contenido y titulo
select titulo, contenido from posts p
join (select post_id, count(post_id) as cantidad
from comentarios group by post_id order by cantidad desc limit 1) as t
ON t.post_id = p.id

/* 8. Muestra en una tabla el título de cada post, el contenido de cada post y el contenido
de cada comentario asociado a los posts mostrados, junto con el email del usuario
que lo escribió */ 

-- primero mostramos los titulos y contenidos de post y los unimos a los contenidos de comentarios

select p.titulo as titulo_post, p.contenido as contenido_post, c.contenido as contenido_comentario from posts p
JOIN comentarios c
ON p.id = c.post_id;

-- unimos a la tabla usuarios

select p.titulo as titulo_post, p.contenido as contenido_post, c.contenido as contenido_comentario, u.email from posts p
JOIN comentarios c
ON p.id = c.post_id
JOIN usuarios u
ON c.usuario_id = u.id;

/* 9. Muestra el contenido del último comentario de cada usuario*/

-- primero buscamos los comentarios por usuarios
select fecha_creacion, contenido, usuario_id from comentarios c
JOIN usuarios u
ON c.usuario_id = u.id;

-- mostrarme el comentario mas reciente de cada usuario
select max(fecha_creacion) from comentarios where usuario_id = 1;
select max(fecha_creacion) from comentarios where usuario_id = 2;

-- pero no debemos gacerlo individual sino dinámico

select fecha_creacion, contenido, usuario_id from comentarios c
JOIN usuarios u
ON c.usuario_id = u.id where fecha_creacion = (select max(fecha_creacion) from comentarios where usuario_id = u.id);

/* 10 Muestra los emails de los usuarios que no han escrito ningún comentario */

-- mostrar los usuarios con la cantdad de comentarios
select u.email, count(c.id) from usuarios u
left join comentarios c
ON u.id = c.usuario_id
GROUP By u.email

-- mostramos los usuarios con 0 comentarios
select u.email from usuarios u
left join comentarios c
ON u.id = c.usuario_id
GROUP By u.email HAVING count(c.id) = 0;


