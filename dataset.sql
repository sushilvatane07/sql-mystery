-- ==========================================
-- MASTER DATASET: SQL MURDER MYSTERY
-- Consolidated INSERT statements (All 18 Tables)
-- Ordered to satisfy Foreign Key dependencies
-- ==========================================

-- 1. Crime Scene
INSERT INTO crime_scene (crime_id, date, location, crime_type, description) VALUES
(101, '2026-09-15', 'City Library', 'Murder', 'Victim found dead at 9:30 PM'),
(102, '2026-09-16', 'Central Park', 'Theft', 'Valuable watch reported missing'),
(103, '2026-09-17', 'Old Warehouse', 'Murder', 'Body discovered near the entrance'),
(104, '2026-09-14', 'SQL Manor', 'Murder', 'Jonathan Dataware poisoned in the Study during the dinner party at 10:15 PM'),
(105, '2026-09-18', 'Grand Oak College', 'Arson', 'Server room set on fire to destroy backup financial ledgers at 11:00 PM'),
(106, '2026-09-19', 'Harbor Pier 4', 'Smuggling', 'Attempted getaway on a private yacht intercepted by coast guard');

-- 2. Victims
INSERT INTO victims (victim_id, name, age, occupation, last_seen_location) VALUES
(1, 'Robert Hayes', 42, 'Businessman', 'City Library'),
(2, 'Emily Carter', 29, 'Journalist', 'Central Park'),
(3, 'Michael Brown', 35, 'Shopkeeper', 'Old Warehouse'),
(4, 'Jonathan Dataware', 58, 'Tech Entrepreneur', 'SQL Manor'),
(5, 'Dr. Alan Turington', 62, 'College Dean', 'Grand Oak College');

-- 3. Suspects
INSERT INTO suspects (suspect_id, name, age, occupation, motive) VALUES
(1, 'Daniel Smith', 38, 'Business Partner', 'Financial Dispute'),
(2, 'Olivia Wilson', 31, 'Journalist', 'Professional Rivalry'),
(3, 'James Miller', 45, 'Security Guard', 'Personal Revenge'),
(4, 'Sophia Davis', 27, 'Accountant', 'Blackmail'),
(5, 'Ethan Taylor', 34, 'Businessman', 'Property Dispute'),
(6, 'Victoria Vance', 36, 'Personal Chef', 'Cut out of Jonathan Dataware will'),
(7, 'Marcus Sterling', 49, 'Chief Technology Officer', 'Stolen source code & embezzlement cover-up'),
(8, 'Elena Rostova', 29, 'Art Dealer', 'Owed $500k in high-stakes underground debt'),
(9, 'Dr. Gregory Houseman', 52, 'Private Physician', 'Malpractice blackmail by Jonathan and Robert'),
(10, 'Chloe Bennett', 24, 'Grad Student & Intern', 'Threatened with expulsion after discovering fraud');

-- 4. Witnesses
INSERT INTO witnesses (witness_id, name, statement, confidence_level) VALUES
(1, 'John Parker', 'Saw a person leaving the library', 'High'),
(2, 'Sarah Johnson', 'Heard an argument before the incident', 'Medium'),
(3, 'David Wilson', 'Noticed a suspicious vehicle nearby', 'High'),
(4, 'Rachel Adams', 'Saw someone near the warehouse entrance', 'Low'),
(5, 'Arthur Pendelton', 'Saw Suspect 7 arguing furiously with Jonathan in the SQL Manor Conservatory at 9:30 PM', 'High'),
(6, 'Beatrice Vance', 'Noticed a woman in a red coat dropping a vial near the Manor Kitchen', 'Medium'),
(7, 'Officer Higgins', 'Spotted a black sedan speeding away from the Old Warehouse toward the Pier', 'High'),
(8, 'Liam O''Connor', 'Saw James Miller (Suspect 3) disabling the library security alarm at 8:50 PM', 'High'),
(9, 'Prof. McGonagall', 'Saw Chloe and Marcus entering the College Server Room carrying a locked briefcase', 'Medium');

-- 5. Alibis
INSERT INTO alibis (alibi_id, suspect_id, claimed_location, claimed_time, verified) VALUES
(1, 1, 'Office', '08:30 PM', 'Yes'),
(2, 2, 'Coffee Shop', '09:00 PM', 'No'),
(3, 3, 'City Library', '09:15 PM', 'No'),
(4, 4, 'Home', '08:45 PM', 'Yes'),
(5, 5, 'Parking Lot', '09:20 PM', 'No'),
(6, 6, 'SQL Manor Kitchen', '10:15 PM', 'Yes'),
(7, 7, 'SQL Manor Dining Room', '10:15 PM', 'No'),
(8, 8, 'Art Gallery Downtown', '09:30 PM', 'Yes'),
(9, 9, 'City Hospital ER', '10:00 PM', 'No'),
(10, 10, 'College Library', '11:00 PM', 'No');

-- 6. Evidence
INSERT INTO evidence (evidence_id, crime_id, evidence_type, description, found_location) VALUES
(1, 101, 'Fingerprint', 'Partial fingerprint on a glass', 'Reading Room'),
(2, 101, 'CCTV Footage', 'Unknown person entering the building', 'Main Entrance'),
(3, 101, 'Mobile Phone', 'Phone found near the victim', 'Bookshelf 12'),
(4, 103, 'Weapon', 'Knife recovered near the body', 'Warehouse Entrance'),
(5, 103, 'Footprint', 'Muddy footprints leading outside', 'Back Door'),
(6, 104, 'Poison Vial', 'Empty cyanide bottle with wiped prints', 'SQL Manor Study Trash Bin'),
(7, 104, 'Wine Glass', 'Half-empty glass of vintage port containing cyanide', 'SQL Manor Study Desk'),
(8, 104, 'Encrypted USB', 'Thumb drive containing offshore bank transfers', 'Hidden Wall Safe'),
(9, 101, 'Keycard Log', 'Overridden security swipe using a master guard badge', 'City Library Back Door'),
(10, 103, 'Tire Tracks', 'Pirelli P-Zero tire marks matching a luxury sports car', 'Old Warehouse Alley'),
(11, 105, 'Gasoline Canister', 'Melted plastic container with partial glove fibers', 'College Server Room'),
(12, 106, 'Burner Phone', 'Prepaid phone with texts organizing the hits', 'Harbor Pier 4 Dock');

-- 7. Forensic Reports
INSERT INTO forensic_reports (report_id, evidence_id, analysis_result, suspect_match) VALUES
(1, 1, 'Fingerprint partially recovered', 'Suspect 3'),
(2, 2, 'Person entered at 09:05 PM', 'Unknown'),
(3, 3, 'Last call made at 08:55 PM', 'Suspect 1'),
(4, 4, 'Fingerprints detected on handle', 'Suspect 5'),
(5, 5, 'Shoe pattern identified', 'Suspect 2'),
(6, 6, 'Trace surgical latex powder found inside cap', 'Suspect 9'),
(7, 7, 'Lipstick smudge and DNA on rim', 'Suspect 6'),
(8, 8, 'Digital signature belongs to CTO login credentials', 'Suspect 7'),
(9, 9, 'Badge ID #003 used to bypass alarm', 'Suspect 3'),
(10, 10, 'Registered to vehicle owned by Marcus Sterling', 'Suspect 7'),
(11, 11, 'Lab coat fibers match university chemistry department', 'Suspect 10'),
(12, 12, 'SIM card registered under fake alias linked to Daniel Smith', 'Suspect 1');

-- 8. Phone Records
INSERT INTO phone_records (call_id, caller_id, receiver_id, call_time, duration_minutes) VALUES
(1, 1, 4, '08:30 PM', 4),
(2, 2, 3, '08:45 PM', 7),
(3, 3, 1, '08:55 PM', 2),
(4, 5, 2, '09:10 PM', 5),
(5, 4, 1, '09:15 PM', 3),
(6, 7, 9, '09:40 PM', 6),
(7, 9, 3, '10:20 PM', 3),
(8, 7, 1, '08:40 PM', 12),
(9, 1, 5, '09:25 PM', 2),
(10, 10, 7, '10:50 PM', 8),
(11, 5, 8, '11:30 PM', 4);

-- 9. Suspect Relationships
INSERT INTO suspect_relationships (relationship_id, suspect_id, related_suspect_id, relationship_type) VALUES
(1, 1, 4, 'Business Partners'),
(2, 2, 3, 'Former Colleagues'),
(3, 3, 5, 'Financial Associates'),
(4, 4, 5, 'Family Friends'),
(5, 1, 5, 'Business Rivals'),
(6, 7, 9, 'Secret Conspirators'),
(7, 7, 10, 'Mentor and Protege'),
(8, 1, 7, 'Offshore Shell Company Partners'),
(9, 6, 8, 'Romantically Involved'),
(10, 3, 7, 'Bribed Security Contractor');

-- 10. Interrogations
INSERT INTO interrogations (interrogation_id, suspect_id, interrogation_date, response, suspicious_behavior) VALUES
(1, 1, '2026-09-16', 'Denied visiting the library', 'Avoided eye contact'),
(2, 2, '2026-09-16', 'Claimed to be at a coffee shop', 'Changed statement'),
(3, 3, '2026-09-16', 'Denied knowing the victim', 'Nervous behavior'),
(4, 4, '2026-09-16', 'Confirmed being at home', 'Consistent statement'),
(5, 5, '2026-09-16', 'Refused to explain whereabouts', 'Contradictory answers'),
(6, 6, '2026-09-15', 'Admitted pouring the wine, but swore it was untampered', 'Crying, cooperative'),
(7, 7, '2026-09-15', 'Claimed he never entered the Study all night', 'Sweating, tapping fingers'),
(8, 8, '2026-09-16', 'Showed time-stamped receipts from the Art Gallery', 'Calm and composed'),
(9, 9, '2026-09-16', 'Claimed he was on call at the ER, refused to show pager logs', 'Defensive and hostile'),
(10, 10, '2026-09-19', 'Said she was studying, smelled faintly of smoke', 'Burn mark on sleeve');

-- 11. Case Status
INSERT INTO case_status (case_id, crime_id, assigned_detective, status, final_verdict) VALUES
(1, 101, 'Detective Morgan', 'Under Investigation', 'Pending'),
(2, 102, 'Detective Lewis', 'Closed', 'Theft Solved'),
(3, 103, 'Detective Morgan', 'Under Investigation', 'Pending'),
(4, 104, 'Detective Morgan', 'Under Investigation', 'Pending'),
(5, 105, 'Detective Chen', 'Under Investigation', 'Pending'),
(6, 106, 'Detective Chen', 'Closed', 'Suspects Intercepted');

-- 12. Rooms (SQL Manor)
INSERT INTO rooms (room_id, room_name, floor) VALUES
(1, 'Grand Dining Room', 1),
(2, 'Manor Kitchen', 1),
(3, 'Conservatory', 1),
(4, 'Private Study', 2),
(5, 'Wine Cellar', 0),
(6, 'Main Hallway', 1);

-- 13. Movements (SQL Manor)
INSERT INTO movements (movement_id, suspect_id, room_id, entry_time, exit_time) VALUES
(1, 6, 2, '08:00 PM', '10:30 PM'),
(2, 7, 1, '08:30 PM', '09:20 PM'),
(3, 7, 3, '09:25 PM', '09:45 PM'),
(4, 7, 4, '09:50 PM', '10:05 PM'),
(5, 9, 5, '09:30 PM', '09:45 PM'),
(6, 9, 4, '10:00 PM', '10:12 PM'),
(7, 1, 1, '08:30 PM', '10:30 PM'),
(8, 4, 3, '09:50 PM', '10:20 PM');

-- 14. Timeline (SQL Manor)
INSERT INTO timeline (event_id, event_time, event_description, room_id) VALUES
(1, '08:30 PM', 'Dinner party begins in the Grand Dining Room', 1),
(2, '09:15 PM', 'Chef Victoria sends vintage port wine up to the Private Study', 2),
(3, '09:30 PM', 'Loud argument overheard between Jonathan Dataware and CTO Marcus Sterling', 3),
(4, '09:55 PM', 'Wall safe in the Private Study is unlocked using digital override', 4),
(5, '10:05 PM', 'Cyanide is mixed into the decanter of vintage port', 4),
(6, '10:15 PM', 'Jonathan Dataware drinks the port and collapses at his desk', 4),
(7, '10:30 PM', 'Body is discovered when the butler brings coffee', 4);

-- 15. College Event
INSERT INTO college_event (event_id, event_name, event_date, location, attendee_suspect_id) VALUES
(1, 'Annual Tech FinTech Symposium', '2026-09-10', 'Grand Oak Auditorium', 7),
(2, 'Annual Tech FinTech Symposium', '2026-09-10', 'Grand Oak Auditorium', 1),
(3, 'Annual Tech FinTech Symposium', '2026-09-10', 'Grand Oak Auditorium', 10),
(4, 'Medical Ethics Fundraiser', '2026-09-12', 'Campus Faculty Lounge', 9),
(5, 'Investigative Journalism Panel', '2026-09-12', 'Campus Media Hall', 2);

-- 16. Trip
INSERT INTO trip (trip_id, suspect_id, destination, departure_date, return_date, purpose) VALUES
(1, 7, 'Cayman Islands', '2026-09-20', NULL, 'One-way flight booked under alias (Flight Risk)'),
(2, 1, 'Zurich, Switzerland', '2026-09-21', NULL, 'Opening offshore bank vault'),
(3, 8, 'Paris, France', '2026-09-10', '2026-09-13', 'Art Auction (Returned before murders)'),
(4, 9, 'Mexico City', '2026-09-19', NULL, 'Sudden unannounced medical sabbatical'),
(5, 5, 'Chicago', '2026-09-18', '2026-09-22', 'Real estate conference');

-- 17. Police Station
INSERT INTO police_station (station_id, station_name, district, lead_detective, crime_id) VALUES
(1, '1st Precinct - Central', 'Downtown', 'Detective Morgan', 101),
(2, '2nd Precinct - Parkside', 'Midtown', 'Detective Lewis', 102),
(3, '3rd Precinct - Docklands', 'Industrial', 'Detective Morgan', 103),
(4, '1st Precinct - Central', 'Manor Estates', 'Detective Morgan', 104),
(5, '4th Precinct - University', 'Campus', 'Detective Chen', 105);

-- 18. CCTV Footage
INSERT INTO cctv_footage (footage_id, camera_location, recorded_date, timestamp, suspect_id, activity_description) VALUES
(1, 'SQL Manor - 2nd Floor Hallway', '2026-09-14', '09:50 PM', 7, 'Entering Private Study carrying a blank USB drive'),
(2, 'SQL Manor - 2nd Floor Hallway', '2026-09-14', '10:00 PM', 9, 'Entering Private Study wearing surgical gloves'),
(3, 'City Library - Main Entrance', '2026-09-15', '09:05 PM', 3, 'Letting Suspect 1 (Daniel Smith) inside through side door'),
(4, 'City Library - Reading Room', '2026-09-15', '09:12 PM', 1, 'Confronting victim Robert Hayes near Bookshelf 12'),
(5, 'Old Warehouse - Back Alley', '2026-09-17', '09:22 PM', 5, 'Handing a knife to Suspect 2 (Olivia Wilson)'),
(6, 'Grand Oak College - Server Room', '2026-09-18', '10:55 PM', 10, 'Carrying red gasoline canister into hallway');
