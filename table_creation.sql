-- 1. Crime Scene Table
CREATE TABLE crime_scene (
    crime_id INT PRIMARY KEY,
    date DATE NOT NULL,
    location VARCHAR(100) NOT NULL,
    crime_type VARCHAR(50) NOT NULL,
    description TEXT
);

-- 2. Victims Table
CREATE TABLE victims (
    victim_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT,
    occupation VARCHAR(100),
    last_seen_location VARCHAR(100)
);

-- 3. Suspects Table
CREATE TABLE suspects (
    suspect_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT,
    occupation VARCHAR(100),
    motive VARCHAR(255)
);

-- 4. Witnesses Table
CREATE TABLE witnesses (
    witness_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    statement TEXT,
    confidence_level VARCHAR(20)
);

-- 5. Alibis Table
CREATE TABLE alibis (
    alibi_id INT PRIMARY KEY,
    suspect_id INT,
    claimed_location VARCHAR(100),
    claimed_time VARCHAR(20),
    verified VARCHAR(10),
    FOREIGN KEY (suspect_id) REFERENCES suspects(suspect_id)
);

-- 6. Evidence Table
CREATE TABLE evidence (
    evidence_id INT PRIMARY KEY,
    crime_id INT,
    evidence_type VARCHAR(50),
    description TEXT,
    found_location VARCHAR(100),
    FOREIGN KEY (crime_id) REFERENCES crime_scene(crime_id)
);

-- 7. Forensic Reports Table
CREATE TABLE forensic_reports (
    report_id INT PRIMARY KEY,
    evidence_id INT,
    analysis_result TEXT,
    suspect_match VARCHAR(50), 
    FOREIGN KEY (evidence_id) REFERENCES evidence(evidence_id)
);

-- 8. Phone Records Table
CREATE TABLE phone_records (
    call_id INT PRIMARY KEY,
    caller_id INT,
    receiver_id INT,
    call_time VARCHAR(20),
    duration_minutes INT,
    FOREIGN KEY (caller_id) REFERENCES suspects(suspect_id),
    FOREIGN KEY (receiver_id) REFERENCES suspects(suspect_id)
);

-- 9. Suspect Relationships Table
CREATE TABLE suspect_relationships (
    relationship_id INT PRIMARY KEY,
    suspect_id INT,
    related_suspect_id INT,
    relationship_type VARCHAR(100),
    FOREIGN KEY (suspect_id) REFERENCES suspects(suspect_id),
    FOREIGN KEY (related_suspect_id) REFERENCES suspects(suspect_id)
);

-- 10. Interrogations Table
CREATE TABLE interrogations (
    interrogation_id INT PRIMARY KEY,
    suspect_id INT,
    interrogation_date DATE,
    response TEXT,
    suspicious_behavior VARCHAR(255),
    FOREIGN KEY (suspect_id) REFERENCES suspects(suspect_id)
);

-- 11. Case Status Table
CREATE TABLE case_status (
    case_id INT PRIMARY KEY,
    crime_id INT,
    assigned_detective VARCHAR(100),
    status VARCHAR(50),
    final_verdict VARCHAR(100),
    FOREIGN KEY (crime_id) REFERENCES crime_scene(crime_id)
);
