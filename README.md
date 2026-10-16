# 🕵️ SQL Murder Mystery: The Case of SQL Manor

An interactive, educational game that teaches and sharpens SQL querying skills through a compelling murder investigation. Step into the role of a detective and use SQL queries to analyze suspects, evidence, movements, and a timeline of events — all to uncover who committed murder at SQL Manor.

---

## 📖 Overview

**SQL Murder Mystery** turns SQL practice into an adventure. Instead of abstract tables like `employees` and `orders`, you get a narrative-driven whodunit where every query reveals a new clue.

Perfect for:
- 🎓 SQL beginners looking for a practical, engaging way to learn
- 🧑‍🏫 Instructors seeking a fun classroom activity
- 🧩 Anyone who enjoys puzzles and data analysis

---

## 🎯 Why This Game?

Learning SQL can be dry when all you have are abstract tables. This game provides a hands-on, story-driven experience that makes SQL memorable and fun.

### Key Benefits

| Benefit | Description |
|---|---|
| **Practical Application** | Write real SQL queries to solve a mystery |
| **Progressive Difficulty** | Start with simple `SELECT` statements, advance to complex `JOIN`s and subqueries |
| **Engaging Story** | A classic whodunit keeps you motivated |
| **Self-Paced** | Work through the investigation at your own speed |
| **Immediate Feedback** | Query results directly reveal new information |

---

## 🕵️ The Case

A wealthy tech entrepreneur, **Mr. Jonathan Dataware**, is found dead at his estate, **SQL Manor**, following a dinner party with six guests. Each guest has a motive — one of them is the killer.

The crime scene has been processed, and all relevant data has been compiled into a relational database. As the detective, you have access to:

- **Suspects** — personal details, relationships, and motives
- **Movements** — who was in which room, and when
- **Evidence** — items found and where they were discovered
- **Timeline** — a chronological log of key events

Your mission: write SQL queries to interrogate the data, cross-reference clues, and **name the killer**.

> No prior knowledge of the story is required — the database *is* the story. You uncover it piece by piece through your queries.

---

## 🧩 How to Play

1. **Set up** the database using the provided SQL scripts.
2. **Read** the initial scenario to understand the context.
3. **Write SQL queries** to answer a series of investigative questions.
4. **Analyze** the results to eliminate suspects and build your case.
5. **Submit** your final answer: who is the killer?

The game includes a series of guided questions (basic → advanced) and an answer key for instructors. Feel free to explore the data on your own and form your own hypotheses.

---

## 🗄️ Database Schema ( * for example purpose only table schema and data may vary * )

| Table | Description |
|---|---|
| `suspects` | Personal information about each guest |
| `rooms` | Locations within SQL Manor |
| `movements` | Logs when each suspect entered and exited each room |
| `evidence` | Items found and their associated suspect/room |
| `timeline` | Chronological events of the evening |

All data is fictional and logically consistent, allowing players to solve the mystery purely through deduction and SQL.

---

### `crime_scene`

| crime_id | date | location | crime_type | description |
|---|---|---|---|---|
| 101 | 2026-09-15 | City Library | Murder | Victim found dead at 9:30 PM |
| 102 | 2026-09-16 | Central Park | Theft | Valuable watch reported missing |
| 103 | 2026-09-17 | Old Warehouse | Murder | Body discovered near the entrance |

### `victims`

| victim_id | name | age | occupation | last_seen_location |
|---|---|---|---|---|
| 1 | Robert Hayes | 42 | Businessman | City Library |
| 2 | Emily Carter | 29 | Journalist | Central Park |
| 3 | Michael Brown | 35 | Shopkeeper | Old Warehouse |

### `suspects`

| suspect_id | name | age | occupation | motive |
|---|---|---|---|---|
| 1 | Daniel Smith | 38 | Business Partner | Financial Dispute |
| 2 | Olivia Wilson | 31 | Journalist | Professional Rivalry |
| 3 | James Miller | 45 | Security Guard | Personal Revenge |
| 4 | Sophia Davis | 27 | Accountant | Blackmail |
| 5 | Ethan Taylor | 34 | Businessman | Property Dispute |

### `witnesses`

| witness_id | name | statement | confidence_level |
|---|---|---|---|
| 1 | John Parker | Saw a person leaving the library | High |
| 2 | Sarah Johnson | Heard an argument before the incident | Medium |
| 3 | David Wilson | Noticed a suspicious vehicle nearby | High |
| 4 | Rachel Adams | Saw someone near the warehouse entrance | Low |

### `alibis`

| alibi_id | suspect_id | claimed_location | claimed_time | verified |
|---|---|---|---|---|
| 1 | 1 | Office | 08:30 PM | Yes |
| 2 | 2 | Coffee Shop | 09:00 PM | No |
| 3 | 3 | City Library | 09:15 PM | No |
| 4 | 4 | Home | 08:45 PM | Yes |
| 5 | 5 | Parking Lot | 09:20 PM | No |

### `evidence`

| evidence_id | crime_id | evidence_type | description | found_location |
|---|---|---|---|---|
| 1 | 101 | Fingerprint | Partial fingerprint on a glass | Reading Room |
| 2 | 101 | CCTV Footage | Unknown person entering the building | Main Entrance |
| 3 | 101 | Mobile Phone | Phone found near the victim | Bookshelf 12 |
| 4 | 103 | Weapon | Knife recovered near the body | Warehouse Entrance |
| 5 | 103 | Footprint | Muddy footprints leading outside | Back Door |

### `forensic_reports`

| report_id | evidence_id | analysis_result | suspect_match |
|---|---|---|---|
| 1 | 1 | Fingerprint partially recovered | Suspect 3 |
| 2 | 2 | Person entered at 09:05 PM | Unknown |
| 3 | 3 | Last call made at 08:55 PM | Suspect 1 |
| 4 | 4 | Fingerprints detected on handle | Suspect 5 |
| 5 | 5 | Shoe pattern identified | Suspect 2 |

### `phone_records`

| call_id | caller_id | receiver_id | call_time | duration_minutes |
|---|---|---|---|---|
| 1 | 1 | 4 | 08:30 PM | 4 |
| 2 | 2 | 3 | 08:45 PM | 7 |
| 3 | 3 | 1 | 08:55 PM | 2 |
| 4 | 5 | 2 | 09:10 PM | 5 |
| 5 | 4 | 1 | 09:15 PM | 3 |

### `suspect_relationships`

| relationship_id | suspect_id | related_suspect_id | relationship_type |
|---|---|---|---|
| 1 | 1 | 4 | Business Partners |
| 2 | 2 | 3 | Former Colleagues |
| 3 | 3 | 5 | Financial Associates |
| 4 | 4 | 5 | Family Friends |
| 5 | 1 | 5 | Business Rivals |

### `interrogations`

| interrogation_id | suspect_id | interrogation_date | response | suspicious_behavior |
|---|---|---|---|---|
| 1 | 1 | 2026-09-16 | Denied visiting the library | Avoided eye contact |
| 2 | 2 | 2026-09-16 | Claimed to be at a coffee shop | Changed statement |
| 3 | 3 | 2026-09-16 | Denied knowing the victim | Nervous behavior |
| 4 | 4 | 2026-09-16 | Confirmed being at home | Consistent statement |
| 5 | 5 | 2026-09-16 | Refused to explain whereabouts | Contradictory answers |

### `case_status`

| case_id | crime_id | assigned_detective | status | final_verdict |
|---|---|---|---|---|
| 1 | 101 | Detective Morgan | Under Investigation | Pending |
| 2 | 102 | Detective Lewis | Closed | Theft Solved |
| 3 | 103 | Detective Morgan | Under Investigation | Pending |

---
## Table schema construction Phase 

# date 3 oct 2026 # 

- case tables :
  ** College Event , Trip , Police Station , suspects , evidence **
# date 12 oct 2026 
  ** CCTV footage 

---

## 🤝 Contributing

Contributions, new cases, and additional puzzle levels are welcome! Feel free to open an issue or submit a pull request.

## 📄 License

This project is open source and available under the [MIT License](LICENSE).
