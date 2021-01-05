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
    image text NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO public."Produit" (nom,prix,caracteristique,type_alcool)
VALUES
('Delirium Red',2.80,'carac','Blonde, Fruité','https://cdn.shopify.com/s/files/1/0273/2412/1182/products/Delirium-Red_2048x2048.jpg?v=1595353377')
('Floris Fraise',1.70,'carac','Fruité','https://cdn.webshopapp.com/shops/19852/files/303419664/650x750x2/floris-fraise.jpg')
('Prairie Hulk Hands',6.00,'carac','Sour, Gose','https://cdn.shopify.com/s/files/1/0227/0581/products/Prairie-Hulk-Hands-12OZ-CAN_620x.JPG?v=1587126119')
('Prairie Lil Nap',6.00,'carac','Fruité, Sour','https://cdn.shopify.com/s/files/1/0227/0581/products/Prairie-Lil-Nap-12OZ-CAN_5e1c3d42-cf69-46d1-8ef6-edd8376a9815_620x.JPG?v=1587125880')
('Prairie Karate Chimp',6.00,'carac','Sour, Fruité','https://cdn.shopify.com/s/files/1/0227/0581/products/Prairie-Karate-Chimp-12OZ-CAN_620x.JPG?v=1587125999')
('Delirium Argentum',2.70,'carac','IPA','https://cdn.webshopapp.com/shops/19852/files/300878781/brouwerij-huyghe-delirium-argentum.jpg')
('Prairie Christmas Bomb!',7.00,'carac','Stout','https://cdn.shopify.com/s/files/1/0227/0581/products/Prairie-Christmas-BOMB-Imperial-Stout-2019-12OZ-BTL_620x.jpg?v=1587127199')
('Delirium Tremens',2.80,'carac','Blonde','https://bieres-bzh.fr/178-large_default/delirium-tremens-85.jpg')
('La Chouffe Blond',2.10,'carac','Blonde','https://vandb-vandb-fr-storage.omn.proximis.com/Imagestorage/imagesSynchro/0/0/c37951080e47237284ca7e72fc2f85b2a9ccf5ee_4585BBO032022_1.png')
('Houblon Chouffe',2.60,'carac','IPA','https://vandb-vandb-fr-storage.omn.proximis.com/Imagestorage/imagesSynchro/0/0/593a4e214e1f3c4486899ea81bdb52562aa87074_4601BBO032030_1.png')
('Chouffe Blanche',2.70,'carac','Blanche','https://vandb-vandb-fr-storage.omn.proximis.com/Imagestorage/imagesSynchro/0/0/dde3bcfe938152cc27536809d389d80adbed4bd2_8266BBO037016_1.png')
('Guiness Draught',3.10,'carac','Stout','https://cdn.minibardelivery.com/products/335002/product/ci-guinnes.jpg')
('La Goudale',3.20,'carac','Blonde','https://media.houra.fr/ART-IMG-XL/23/07/3261570000723-2.jpg')
('Chimay Blanche',1.75,'carac','Blanche','https://cdn.shopify.com/s/files/1/0273/2412/1182/products/Chimay-Blanche_2048x2048.jpg?v=1595353410')
('Chimay Rouge',2.00,'carac','Ambrée','https://www.eole-agape.com/13696-big_default_2x/biere-chimay-rouge-33-cl.jpg')
('Chimay Bleu',2.30,'carac','Brune','https://cdn.shopify.com/s/files/1/0273/2412/1182/products/ChimayBleue_2048x2048.jpg?v=1595353408')
('Prairie Flare',6.00,'carac','Sour, Gose','https://tenemu.com/wp-content/uploads/2015/12/Prairie-Flare-bottle.jpg')
('Leffe Blonde',1.50,'carac','Blonde','https://images-na.ssl-images-amazon.com/images/I/71Z-RpuDasL._AC_SL1500_.jpg')
('Leffe Ruby',1.50,'carac','Fruité','https://assets.biere-discount.com/img/p/1/8/5/2/1852-thickbox_default.jpg')
('Duvel',2.10,'carac','Blonde','https://produits.bienmanger.com/13993-0w600h600_Biere_Duvel_Blonde.jpg')
('Kasteel Beer',2.40,'carac','Brune','https://www.carrefour.fr/media/1500x1500/Photosite/PGC/BOISSONS/5411081000523_PHOTOSITE_20200306_050617_0.jpg?placeholder=1')
('Pelforth Brune',1.90,'carac','Brune','https://media.houra.fr/ART-IMG-XL/31/25/3119780042531-5.jpg')
('Liefmans Goudenband',3.70,'carac','Brune','https://www.maitre-georges.com/2213-large_default/liefmans-goudenband-8-33-cl-biere-lambic-belge.jpg')
('Bush Ambrée',2.50,'carac','Ambrée','https://produits.bienmanger.com/6089-0w470h470_Bush_Ambree_Biere_Belge.jpg')
('Leffe Ambrée',1.50,'carac','Ambrée','https://www.carrefour.fr/media/1500x1500/Photosite/PGC/BOISSONS/5410228242055_PHOTOSITE_20200318_054539_0.jpg?placeholder=1')
('Pietra',2.00,'carac','Ambrée','https://www.carrefour.fr/media/1500x1500/Photosite/PGC/BOISSONS/3498640101008_PHOTOSITE_20201202_170227_0.jpg?placeholder=1')
('Vedett IPA',1.85,'carac','IPA','https://www.latelierdesbieres.fr/708-large_default/biere-blonde-belge-vedett-ipa-33-cl.jpg')
('Blanche de Namur',2.10,'carac','Blanche','https://www.latelierdesbieres.fr/1881-large_default/blanche-de-namur-biere-belge-bouteille-33cl.jpg')
('Minot Blanche',3.20,'carac','Blanche','https://www.minot-brasserie.fr/wp-content/uploads/2016/06/blanche-craft-minotte.png')
('Blanche Hermine',2.95,'carac','Blanche','https://www.drinks-explorer.com/2658-large_default/biere-blanche-hermine.jpg')
('Insel Baltic Stout',3.90,'carac','Stout','https://www.amstein.ch/Htdocs/Images/Pictures/58985.jpg')
('Minot F*cking Stout',4.00,'carac','Stout','https://www.minot-brasserie.fr/wp-content/uploads/2020/03/imperial-stout-minotte.png')
('Emelisse Forest Fruit Stout',3.50,'carac','Stout, Fruité','https://www.cdiscount.com/pdt2/5/2/3/1/700x700/auc2008648701523/rw/emelisse-forest-fruit-stout-0-33l-brasserie-bre.jpg')
('Passionately Gose Game',6.00,'carac','Gose','https://machopinette.com/5106-large_default/p-tite-maiz-passionately-gose-game-44cl-biere-baltic-gose-2.jpg')
('Gose IPA du Barachois',3.50,'carac','Gose, IPA','https://alimentsduquebec.com/files/20180119/bouteille-goseipadubarachois_1516382910.jpg')
;

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
