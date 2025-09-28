-- 3. 檔案管理
CREATE TABLE files (
  file_id INT AUTO_INCREMENT PRIMARY KEY,
  member_id INT NOT NULL,
  upload_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  file_path VARCHAR(255) NOT NULL,
  file_name VARCHAR(100) NOT NULL,
  file_size INT NOT NULL,
  file_type VARCHAR(20) NOT NULL,
  description TEXT,
  ai_json TEXT,
  keywords VARCHAR(255),
  compare_id INT
) ENGINE=InnoDB;
