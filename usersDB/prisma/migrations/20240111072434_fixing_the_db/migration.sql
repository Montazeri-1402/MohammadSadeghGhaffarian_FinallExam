/*
  Warnings:

  - You are about to drop the `bmi` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "bmi";
PRAGMA foreign_keys=on;

-- CreateTable
CREATE TABLE "Bmi" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "gender" BOOLEAN NOT NULL DEFAULT false,
    "age" INTEGER,
    "weight" INTEGER,
    "height" REAL,
    "bmi" REAL
);
