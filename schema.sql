CREATE SEQUENCE IF NOT EXISTS seq_commit_id START 1;

CREATE TABLE IF NOT EXISTS package_constraints (
    ecosystem VARCHAR,
    package_name VARCHAR,
    version VARCHAR,
    dependency_name VARCHAR,
    specifier_raw VARCHAR,
    specifier_normalized VARCHAR,
    parsed_markers VARCHAR,
    content_hash VARCHAR,
    indexed_at_utc VARCHAR,
    PRIMARY KEY (ecosystem, package_name, version, dependency_name)
);

CREATE TABLE IF NOT EXISTS conflict_proofs (
    proof_hash VARCHAR PRIMARY KEY,
    ecosystem VARCHAR,
    target_dependency VARCHAR,
    status VARCHAR,
    core_json VARCHAR,
    remediations_json VARCHAR,
    generated_at_utc VARCHAR
);

CREATE TABLE IF NOT EXISTS resolution_ledger (
    commit_id BIGINT PRIMARY KEY,
    timestamp_utc VARCHAR,
    operation VARCHAR,
    proof_hash VARCHAR,
    target_dependency VARCHAR,
    detail VARCHAR
);
