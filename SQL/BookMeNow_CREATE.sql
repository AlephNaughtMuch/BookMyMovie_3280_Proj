DROP DATABASE IF EXISTS BookMeNow;

CREATE DATABASE BookMeNow;
USE BookMeNow;

CREATE TABLE subscription (
    SubscriptionID INT AUTO_INCREMENT PRIMARY KEY,
    SubscriptionName VARCHAR(25) NOT NULL,
    DiscountRate DECIMAL(3,2) NOT NULL
);

CREATE TABLE user_details (
    Email VARCHAR(40) PRIMARY KEY,
    FirstName VARCHAR(40) NOT NULL,
    LastName VARCHAR(40),
    SubscriptionType INT NOT NULL,
    
    FOREIGN KEY (SubscriptionType) REFERENCES subscription(SubscriptionID)
);

CREATE TABLE user (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    Password VARCHAR(30) NOT NULL,
    Email VARCHAR(30) NOT NULL,
    
    FOREIGN KEY (Email) REFERENCES user_details(Email)
);

CREATE TABLE event (
    EventID INT AUTO_INCREMENT PRIMARY KEY,
    EventName VARCHAR(30) NOT NULL,
    EventType VARCHAR(30),
    Description TEXT,
    Location VARCHAR(30) NOT NULL,
    StartingDateTime VARCHAR(30) NOT NULL,
    Duration VARCHAR(30),
    MaximumCapacity INT,
    CurrentlyBooked INT
);

CREATE TABLE booking (
    BookingID INT AUTO_INCREMENT,
    EventID INT,
    NumberOfTickets INT,
    UserID INT,
    
    PRIMARY KEY (BookingID, EventID),
    FOREIGN KEY (EventID) REFERENCES event (EventID),
    FOREIGN KEY (UserID) REFERENCES user (UserID)
);
