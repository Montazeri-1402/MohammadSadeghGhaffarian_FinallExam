/*
  Warnings:

  - You are about to alter the column `bmi` on the `bmi` table. The data in that column could be lost. The data in that column will be cast from `Int` to `Float`.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_bmi" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "sex" BOOLEAN,
    "age" INTEGER,
    "height" INTEGER,
    "weight" INTEGER,
    "bmi" REAL,
    "CreatedTime" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO "new_bmi" ("CreatedTime", "age", "bmi", "height", "id", "sex", "weight") SELECT "CreatedTime", "age", "bmi", "height", "id", "sex", "weight" FROM "bmi";
DROP TABLE "bmi";
ALTER TABLE "new_bmi" RENAME TO "bmi";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
