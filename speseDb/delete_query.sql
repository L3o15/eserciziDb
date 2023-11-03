DELETE FROM spese WHERE id = '';

DELETE FROM spese WHERE categoria_id = '';
DELETE FROM categorie WHERE id = '';

DELETE FROM tags_spese WHERE tag_id = '';
DELETE FROM tags WHERE id = '';

DELETE FROM tags_spese WHERE spesa_id = '';
DELETE FROM spese WHERE id = '';