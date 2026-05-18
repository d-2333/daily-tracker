-- 在 Supabase SQL Editor 中执行以下语句

CREATE TABLE entries (
  id SERIAL PRIMARY KEY,
  date DATE UNIQUE NOT NULL,
  person_a TEXT DEFAULT '',
  person_b TEXT DEFAULT '',
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 启用行级安全策略（可选，允许匿名读写）
ALTER TABLE entries ENABLE ROW LEVEL SECURITY;

CREATE POLICY "允许所有人读取"
  ON entries FOR SELECT
  USING (true);

CREATE POLICY "允许所有人插入"
  ON entries FOR INSERT
  WITH CHECK (true);

CREATE POLICY "允许所有人更新"
  ON entries FOR UPDATE
  USING (true);

CREATE POLICY "允许所有人删除"
  ON entries FOR DELETE
  USING (true);
