USE component;

INSERT INTO enveloppe (N_Enveloppe) values('98987') ;
INSERT INTO ems(Nom_EMS) VALUES ('FLORIN');

SELECT * FROM nature_panne;



/*SELECT * FROM enveloppe
JOIN nature_panne ON nature_panne.enveloppe_id_env = enveloppe.id_env
JOIN phase_detection ON phase_detection.enveloppe_id_env = enveloppe.id_env
JOIN examen_visuel ON examen_visuel.enveloppe_id_env = enveloppe.id_env
JOIN composant ON composant.enveloppe_id_env = enveloppe.id_env
JOIN ems ON ems.enveloppe_id_env = enveloppe.id_env
JOIN codesfabricants ON codesfabricants.composant_code_thav = composant.code_thav
JOIN (
		(SELECT * FROM expertise
		JOIN rps ON rps.expertise_Ordre_exp = expertise.Ordre_exp),
		SELECT * FROM utilisateur,

		SELECT * FROM produits
	)*/

/*SELECT * FROM expertise
JOIN rps ON rps.expertise_Ordre_exp = expertise.Ordre_exp;
SELECT * FROM utilisateur;

SELECT * FROM produits;*/


INSERT INTO enveloppe (TBU_EMS,COMMENTAIRES) values('gfghj','fhjgg') ;
UPDATE enveloppe SET N_Enveloppe = N_Enveloppe+1 WHERE id_env=LAST_INSERT_ID();

SELECT * FROM enveloppe;
