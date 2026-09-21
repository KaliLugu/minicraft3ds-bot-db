CREATE TABLE discord_github_links (
  discord_id    TEXT PRIMARY KEY,
  github_login  TEXT NOT NULL,
  role_assigned BOOLEAN NOT NULL DEFAULT false,
  created_at    TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE oauth_states (
  state      TEXT PRIMARY KEY,
  discord_id TEXT NOT NULL,
  expires_at TIMESTAMPTZ NOT NULL
);
