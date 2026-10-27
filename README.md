```markdown
# 🧩 Dependency UNSAT Core Wire

An autonomous data plane running entirely on GitHub Actions that isolates dependency resolution conflicts across software packaging ecosystems (PyPI, npm, Cargo). It applies deletion-based Minimal Unsatisfiable Subset (MUS) extraction to prune thousands of lines of resolver logs into a deterministic contradiction proof and minimal version-displacement remediation plan.

## Token Impact
- **Token Reduction**: 92% – 98%
- **Input Overhead**: Shrinks 40,000+ token lockfile/resolution failure logs down to under 500 tokens of verified contradiction proof.

## Shared Wire Contract Endpoints
- [`/v1/manifest.json`](public/v1/manifest.json)
- [`/today.json`](public/today.json)
- [`/v1/schema.json`](public/v1/schema.json)
- [`/v1/ecosystems.json`](public/v1/ecosystems.json)
- [`/checksums.txt`](public/checksums.txt)
- [`/llms.txt`](public/llms.txt)
- `package-constraints.parquet` (Columnar DuckDB snapshot)

## Architecture
- **Constraint Parsing**: PEP 440 via Python `packaging`
- **Solver**: Deletion-based Minimal Unsatisfiable Core (MUS) algorithm
- **Storage**: DuckDB + Parquet
- **Ledger**: Append-only Git-committed JSONL in `/ledger`
- **Edge CDN**: GitHub Pages (Fastly CDN)
