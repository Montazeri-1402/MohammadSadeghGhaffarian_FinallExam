/*
  Warnings:

  - You are about to drop the `Post` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Profile` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `User` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "Post";
PRAGMA foreign_keys=on;

-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "Profile";
PRAGMA foreign_keys=on;

-- DropTable
PRAGMA foreign_keys=off;
DROP TABLE "User";
PRAGMA foreign_keys=on;

-- CreateTable
CREATE TABLE "bmi" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "sex" BOOLEAN,
    "age" INTEGER,
    "height" INTEGER,
    "weight" INTEGER,
    "bmi" INTEGER,
    "CreatedTime" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
