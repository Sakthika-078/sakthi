
CREATE TABLE User (
    userID INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    password VARCHAR(100),
    role VARCHAR(50)
);
CREATE TABLE Admin (
    adminID INT PRIMARY KEY,
    userID INT,
    FOREIGN KEY (userID) REFERENCES User(userID)
);

CREATE TABLE Voter (
    voterID INT PRIMARY KEY,
    userID INT,
    dateOfBirth DATE,
    address VARCHAR(255),
    FOREIGN KEY (userID) REFERENCES User(userID)
);

CREATE TABLE Candidate (
    candidateID INT PRIMARY KEY,
    userID INT,
    party VARCHAR(100),
    symbol VARCHAR(100),
    constituency VARCHAR(100),
    FOREIGN KEY (userID) REFERENCES User(userID)
);

CREATE TABLE Election (
    electionID INT PRIMARY KEY,
    title VARCHAR(100),
    startDate DATE,
    endDate DATE,
    status VARCHAR(50)
);

CREATE TABLE Vote (
    voteID INT PRIMARY KEY,
    voterID INT,
    candidateID INT,
    electionID INT,
    voteDate DATETIME,
    FOREIGN KEY (voterID) REFERENCES Voter(voterID),
    FOREIGN KEY (candidateID) REFERENCES Candidate(candidateID),
    FOREIGN KEY (electionID) REFERENCES Election(electionID)
);
#to insert the value user table
INSERT INTO User (userID, name, email, password, role) VALUES
(1, 'Alice', 'alice@example.com', 'pass1', 'admin'),
(2, 'Bob', 'bob@example.com', 'pass2', 'voter'),
(3, 'Charlie', 'charlie@example.com', 'pass3', 'candidate'),
(4, 'David', 'david@example.com', 'pass4', 'voter'),
(5, 'Eve', 'eve@example.com', 'pass5', 'admin'),
(6, 'Frank', 'frank@example.com', 'pass6', 'candidate'),
(7, 'Grace', 'grace@example.com', 'pass7', 'voter'),
(8, 'Heidi', 'heidi@example.com', 'pass8', 'voter'),
(9, 'Ivan', 'ivan@example.com', 'pass9', 'admin'),
(10, 'Judy', 'judy@example.com', 'pass10', 'voter'),
(11, 'Karl', 'karl@example.com', 'pass11', 'candidate'),
(12, 'Laura', 'laura@example.com', 'pass12', 'voter'),
(13, 'Mallory', 'mallory@example.com', 'pass13', 'admin'),
(14, 'Niaj', 'niaj@example.com', 'pass14', 'voter'),
(15, 'Olivia', 'olivia@example.com', 'pass15', 'candidate'),
(16, 'Peggy', 'peggy@example.com', 'pass16', 'voter'),
(17, 'Quentin', 'quentin@example.com', 'pass17', 'admin'),
(18, 'Rupert', 'rupert@example.com', 'pass18', 'voter'),
(19, 'Sybil', 'sybil@example.com', 'pass19', 'candidate'),
(20, 'Trent', 'trent@example.com', 'pass20', 'voter'),
(21, 'Uma', 'uma@example.com', 'pass21', 'admin'),
(22, 'Victor', 'victor@example.com', 'pass22', 'voter'),
(23, 'Wendy', 'wendy@example.com', 'pass23', 'candidate'),
(24, 'Xavier', 'xavier@example.com', 'pass24', 'voter'),
(25, 'Yvonne', 'yvonne@example.com', 'pass25', 'voter'),
(26, 'Zack', 'zack@example.com', 'pass26', 'admin'),
(27, 'Adam', 'adam@example.com', 'pass27', 'voter'),
(28, 'Betty', 'betty@example.com', 'pass28', 'candidate'),
(29, 'Carl', 'carl@example.com', 'pass29', 'voter'),
(30, 'Diane', 'diane@example.com', 'pass30', 'voter');
#to insert the value admin values
INSERT INTO Admin (adminID, userID) VALUES
(1, 1),
(2, 5),
(3, 9),
(4, 13),
(5, 17),
(6, 21),
(7, 26),
(8, 3),
(9, 6),
(10, 11),
(11, 15),
(12, 19),
(13, 23),
(14, 28),
(15, 2),
(16, 4),
(17, 7),
(18, 8),
(19, 10),
(20, 12),
(21, 14),
(22, 16),
(23, 18),
(24, 20),
(25, 22),
(26, 24),
(27, 25),
(28, 27),
(29, 29),
(30, 30);
#to insert the voter values
INSERT INTO Voter (voterID, userID, dateOfBirth, address) VALUES
(1, 2, '1990-02-15', '123 Main St'),
(2, 4, '1985-04-22', '456 Elm St'),
(3, 7, '1993-06-18', '789 Oak St'),
(4, 8, '1991-03-03', '321 Maple Ave'),
(5, 10, '1989-12-12', '654 Pine Rd'),
(6, 12, '1995-07-07', '987 Cedar Dr'),
(7, 14, '1987-09-30', '147 Birch Blvd'),
(8, 16, '1992-11-25', '258 Spruce Ln'),
(9, 18, '1990-01-10', '369 Walnut St'),
(10, 20, '1988-08-08', '741 Chestnut Ct'),
(11, 22, '1994-05-20', '852 Redwood Ave'),
(12, 24, '1996-10-01', '963 Aspen Blvd'),
(13, 25, '1990-06-17', '159 Dogwood St'),
(14, 27, '1993-03-13', '951 Poplar Ln'),
(15, 29, '1991-09-09', '753 Cottonwood Dr'),
(16, 30, '1995-11-11', '357 Juniper St'),
(17, 1, '1985-01-01', '100 Apple Ave'),
(18, 5, '1986-02-02', '101 Orange Rd'),
(19, 9, '1987-03-03', '102 Banana Blvd'),
(20, 13, '1988-04-04', '103 Grape St'),
(21, 17, '1989-05-05', '104 Lemon Ln'),
(22, 21, '1990-06-06', '105 Mango Ct'),
(23, 26, '1991-07-07', '106 Peach Dr'),
(24, 3, '1984-08-08', '107 Pear St'),
(25, 6, '1983-09-09', '108 Plum Ave'),
(26, 11, '1982-10-10', '109 Cherry Rd'),
(27, 15, '1981-11-11', '110 Berry Ln'),
(28, 19, '1980-12-12', '111 Kiwi Blvd'),
(29, 23, '1996-01-01', '112 Melon Ct'),
(30, 28, '1997-02-02', '113 Fig St');
#to insert the value election
INSERT INTO election (election_id, election_name, start_date, end_date) 
VALUES 
(1, 'Presidential Election 2025', '2025-11-01', '2025-11-10'),
(2, 'Congressional Election 2025', '2025-11-05', '2025-11-15'),
(3, 'Local Election 2025', '2025-10-01', '2025-10-10'),
(4, 'Gubernatorial Election 2025', '2025-12-01', '2025-12-10'),
(5, 'School Board Election 2025', '2025-09-01', '2025-09-05'),
(6, 'National Referendum 2025', '2025-11-15', '2025-11-30'),
(7, 'Senatorial Election 2025', '2025-11-10', '2025-11-20'),
(8, 'City Council Election 2025', '2025-10-05', '2025-10-15'),
(9, 'County Supervisor Election 2025', '2025-12-10', '2025-12-20'),
(10, 'Governor’s Race 2025', '2025-12-01', '2025-12-15'),
(11, 'Statewide Election 2025', '2025-11-25', '2025-12-05'),
(12, 'Mayoral Election 2025', '2025-10-01', '2025-10-10'),
(13, 'Township Election 2025', '2025-09-15', '2025-09-25'),
(14, 'District Election 2025', '2025-10-10', '2025-10-20'),
(15, 'Education Board Election 2025', '2025-08-01', '2025-08-10'),
(16, 'Public Opinion Poll 2025', '2025-10-15', '2025-10-25'),
(17, 'Veterans Affairs Election 2025', '2025-11-01', '2025-11-15'),
(18, 'Parks and Rec Election 2025', '2025-12-01', '2025-12-10'),
(19, 'Fire Department Election 2025', '2025-11-05', '2025-11-15'),
(20, 'Police Commission Election 2025', '2025-11-10', '2025-11-20'),
(21, 'Labor Union Election 2025', '2025-10-20', '2025-10-30'),
(22, 'Healthcare Board Election 2025', '2025-11-15', '2025-11-25'),
(23, 'Taxation Policy Election 2025', '2025-11-01', '2025-11-10'),
(24, 'Environmental Election 2025', '2025-09-10', '2025-09-20'),
(25, 'Infrastructure Election 2025', '2025-12-05', '2025-12-15'),
(26, 'Agriculture Board Election 2025', '2025-08-15', '2025-08-25'),
(27, 'Energy Election 2025', '2025-10-25', '2025-11-05'),
(28, 'Public Safety Election 2025', '2025-11-10', '2025-11-20'),
(29, 'Transportation Board Election 2025', '2025-09-01', '2025-09-10'),
(30, 'Water and Sewer Election 2025', '2025-11-20', '2025-11-30');
# to insert the vote values
INSERT INTO voter (voter_id, voter_name, age, gender, address)
VALUES
(1, 'Alice Johnson', 30, 'Female', '123 Elm Street'),
(2, 'Bob Smith', 45, 'Male', '456 Oak Avenue'),
(3, 'Catherine Lee', 29, 'Female', '789 Pine Road'),
(4, 'Daniel Kim', 34, 'Male', '101 Maple Lane'),
(5, 'Ella Brown', 41, 'Female', '202 Cedar Court'),
(6, 'Frank Green', 50, 'Male', '303 Spruce Way'),
(7, 'Grace White', 27, 'Female', '404 Birch Blvd'),
(8, 'Henry Hall', 32, 'Male', '505 Walnut Drive'),
(9, 'Irene Young', 38, 'Female', '606 Chestnut Trail'),
(10, 'Jack Lewis', 29, 'Male', '707 Willow Parkway'),
(11, 'Karen Scott', 33, 'Female', '808 Poplar Circle'),
(12, 'Larry Adams', 47, 'Male', '909 Aspen Terrace'),
(13, 'Mona Clark', 36, 'Female', '111 Redwood St'),
(14, 'Nathan Walker', 42, 'Male', '222 Cypress Ave'),
(15, 'Olivia Turner', 31, 'Female', '333 Dogwood Pl'),
(16, 'Paul Baker', 39, 'Male', '444 Magnolia St'),
(17, 'Queen James', 28, 'Female', '555 Juniper Ln'),
(18, 'Robert Moore', 53, 'Male', '666 Sycamore Rd'),
(19, 'Sophia Martin', 26, 'Female', '777 Sequoia Way'),
(20, 'Tom Anderson', 37, 'Male', '888 Palm Dr'),
(21, 'Ursula Perez', 35, 'Female', '999 Fir Ct'),
(22, 'Victor Collins', 40, 'Male', '1211 Beech Ln'),
(23, 'Wendy Stewart', 44, 'Female', '1312 Alder St'),
(24, 'Xander Hughes', 30, 'Male', '1413 Ironwood Blvd'),
(25, 'Yasmine Reed', 33, 'Female', '1514 Hickory Rd'),
(26, 'Zachary Watson', 49, 'Male', '1615 Larch St'),
(27, 'Abigail Flores', 29, 'Female', '1716 Maple Grove'),
(28, 'Brandon Murphy', 41, 'Male', '1817 Evergreen Cir'),
(29, 'Chloe Rivera', 32, 'Female', '1918 Laurel Ln'),
(30, 'Dylan Patterson', 38, 'Male', '2019 Ashwood Dr');
# to create insert values candidates
VALUES
(1, 'Alice Johnson', 'Party A', 45, 'Female', 'District 1'),
(2, 'Bob Smith', 'Party B', 50, 'Male', 'District 2'),
(3, 'Carlos Reyes', 'Party C', 38, 'Male', 'District 3'),
(4, 'Diana Lee', 'Party A', 42, 'Female', 'District 4'),
(5, 'Ethan Kim', 'Party B', 55, 'Male', 'District 5'),
(6, 'Farah Nasser', 'Party C', 37, 'Female', 'District 6'),
(7, 'George Patel', 'Party A', 46, 'Male', 'District 7'),
(8, 'Hannah Singh', 'Party B', 39, 'Female', 'District 8'),
(9, 'Ian Wright', 'Party C', 41, 'Male', 'District 9'),
(10, 'Jade Wu', 'Party A', 43, 'Female', 'District 10'),
(11, 'Kyle Adams', 'Party B', 47, 'Male', 'District 11'),
(12, 'Lara Brooks', 'Party C', 40, 'Female', 'District 12'),
(13, 'Mike Chen', 'Party A', 36, 'Male', 'District 13'),
(14, 'Nina Davis', 'Party B', 44, 'Female', 'District 14'),
(15, 'Oscar Evans', 'Party C', 49, 'Male', 'District 15'),
(16, 'Priya Ghosh', 'Party A', 35, 'Female', 'District 16'),
(17, 'Quinn Harris', 'Party B', 53, 'Male', 'District 17'),
(18, 'Rita Iyer', 'Party C', 38, 'Female', 'District 18'),
(19, 'Samir Jain', 'Party A', 41, 'Male', 'District 19'),
(20, 'Tina Kapoor', 'Party B', 40, 'Female', 'District 20'),
(21, 'Umar Latif', 'Party C', 46, 'Male', 'District 21'),
(22, 'Vera Malik', 'Party A', 39, 'Female', 'District 22'),
(23, 'Will Novak', 'Party B', 48, 'Male', 'District 23'),
(24, 'Xena Omar', 'Party C', 37, 'Female', 'District 24'),
(25, 'Yusuf Patel', 'Party A', 52, 'Male', 'District 25'),
(26, 'Zara Qureshi', 'Party B', 34, 'Female', 'District 26'),
(27, 'Amir Rafiq', 'Party C', 45, 'Male', 'District 27'),
(28, 'Bella Shah', 'Party A', 43, 'Female', 'District 28'),
(29, 'Cory Tran', 'Party B', 50, 'Male', 'District 29'),
(30, 'Dana Umari', 'Party C', 36, 'Female', 'District 30');
#create view as election result
CREATE VIEW election_results AS
SELECT 
    e.id AS election_id,
    e.name AS election_name,
    c.id AS candidate_id,
    c.name AS candidate_name,
    COUNT(v.id) AS total_votes
FROM 
    votes v
JOIN 
    candidates c ON v.candidate_id = c.id
JOIN 
    elections e ON v.election_id = e.id
GROUP BY 
    e.id, e.name, c.id, c.name;
#create the procedure voting
DELIMITER $$
CREATE PROCEDURE cast_vote(
    IN in_voter_id INT, 
    IN in_candidate_id INT, 
    IN in_election_id INT
)
BEGIN
    DECLARE voter_exists INT;
    DECLARE already_voted INT;

    -- Check if the voter exists
    SELECT COUNT(*) INTO voter_exists
    FROM voters
    WHERE id = in_voter_id;
    
    IF voter_exists = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Voter does not exist';
        RETURN;
    END IF;

    -- Check if the voter has already voted in this election
    SELECT COUNT(*) INTO already_voted
    FROM votes
    WHERE voter_id = in_voter_id AND election_id = in_election_id;
    
    IF already_voted > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Voter has already voted';
        RETURN;
    END IF;

    -- Record the vote
    INSERT INTO votes (voter_id, candidate_id, election_id)
    VALUES (in_voter_id, in_candidate_id, in_election_id);

    -- Update vote count in candidates table
    UPDATE candidates
    SET vote_count = vote_count + 1
    WHERE id = in_candidate_id;
END$$
DELIMITER ;


