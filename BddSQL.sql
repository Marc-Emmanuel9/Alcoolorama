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
    prix text NOT NULL,
    caracteristique text NOT NULL,
    type_alcool text NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE public."Produit"
    OWNER to postgres;

CREATE TABLE public.favorite_article
(
    user_id integer NOT NULL,
    produit_id integer NOT NULL
);

ALTER TABLE public.favorite_article
    OWNER to postgres;
