# HUF Knowledge Skill (`huf_knowledge_skill`)

Reusable runtime skill for HUF Agents to ingest documents into a HUF Knowledge Source (single-file and bulk), monitor background processing, validate retrieval with provenance, diagnose failures, retry safely, and verify target backends (SQLite vector/pgvector/FTS).

## Features

- **Single-File & Bulk Ingestion:** Supports ingestion of PDFs, text files, and markdown via the frozen bulk API (`submit_files`, `get_ingestion_status`, `retry_ingestion`, `cancel_ingestion`, `list_ingestions`).
- **Target Verification:** Target-specific retrieval verification for Vector backends (pgvector, sqlite_vec, sqlite_hybrid), FTS (Full-Text Search), and Tables.
- **Deduplication & Replay Safety:** Content hashing (`sha256`), idempotency checks, and safe batch recovery.
- **Provenance Validation:** Full source chunk tracing with `knowledge_search` query confirmation.

## Installation into HUF

Run the installer:

```bash
./install.sh
```

Or copy `SKILL.md` into your agent skill search directory:

```bash
cp SKILL.md ~/.agents/skills/huf-knowledge-skill/
```

## Architecture & API Contract

See [SKILL.md](./SKILL.md) for full procedural documentation, API request/response shapes, and verification playbooks.
