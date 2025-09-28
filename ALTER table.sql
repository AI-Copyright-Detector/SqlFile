-- 5.File 跟 Comparisons 連接
ALTER TABLE files
  ADD CONSTRAINT fk_files_member
    FOREIGN KEY (member_id) REFERENCES members(member_id)
    ON UPDATE CASCADE ON DELETE CASCADE,
  ADD CONSTRAINT fk_files_compare
    FOREIGN KEY (compare_id) REFERENCES comparisons(compare_id)
    ON UPDATE CASCADE ON DELETE SET NULL;

ALTER TABLE comparisons
  ADD CONSTRAINT fk_comparisons_file
    FOREIGN KEY (file_id) REFERENCES files(file_id)
    ON UPDATE CASCADE ON DELETE CASCADE;