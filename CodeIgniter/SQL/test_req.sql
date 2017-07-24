INSERT INTO Suivi_DPA
   SET refClient = 'DFGHFGS';
INSERT INTO CodesFabricants
   SET ref_sxt = 'bdfbbd';
INSERT INTO Composant
   SET FABRICANT = 'eolane',
       id_codefab = LAST_INSERT_ID(),
       index_suivi = LAST_INSERT_ID()

