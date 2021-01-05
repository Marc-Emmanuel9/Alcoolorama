CREATE TABLE public."Clients"
(
    id serial,
    nom_utilisateur text NOT NULL,
    mail text NOT NULL,
    password text NOT NULL,
    numero text NOT NULL,
    adresse_livraison text NOT NULL,
    adresse_facturation text NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE public."Clients"
    OWNER to postgres;


CREATE TABLE public."Produit"
(
    id serial,
    nom text NOT NULL,
    prix integer NOT NULL,
    caracteristique text NOT NULL,
    type_alcool text NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE public."Produit"
    OWNER to postgres;

CREATE TABLE public.Favorite_article
(
    user_id integer NOT NULL,
    produit_id integer NOT NULL
);

ALTER TABLE public.Favorite_article
    OWNER to postgres;
    
CREATE TABLE public."Famous_Product"
(
    id serial,
    product_id integer,
    nb_purchase integer,
    PRIMARY KEY (id)
);

ALTER TABLE public."Famous_Product"
    OWNER to postgres;
