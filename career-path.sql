PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE milestone (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT NOT NULL,
      description TEXT,
      links json -- example: [{name: string, url: string, date: string}]
    );
INSERT INTO milestone VALUES(10,'MPPSC, Madhya Pradesh, 2023','Madhya Pradesh Public Service Commission (MPPSC)','[{"name":"Apply Online","url":"https://www.mponline.gov.in/Portal/Examinations/MPPSC/2023/S22/Declaration.aspx","date":"2023-01-27T12:40:07.240Z"},{"name":"Application Correction","url":"https://www.mponline.gov.in/Portal/Examinations/MPPSC/2023/S22/Edit/EditFormEntry.aspx","date":"2023-03-17T12:40:24.275Z"},{"name":"Syllabus","url":"https://mppsc.mp.gov.in/Syllabus","date":"2023-03-17T12:40:41.580Z"}]');
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('milestone',29);
COMMIT;
