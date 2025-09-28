-- 1. 會員訂閱方案
CREATE TABLE plans (
  plan_id INT AUTO_INCREMENT PRIMARY KEY,
  plan_name VARCHAR(50) NOT NULL,
  price INT NOT NULL,
  max_upload INT NOT NULL,
  description TEXT
) ENGINE=InnoDB;
