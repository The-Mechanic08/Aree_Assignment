CREATE TABLE whatsapp_grp_msgs (  -- Table holding all the individual messages sent by users on any group
    msg_id INT PRIMARY KEY,
    grp_id INT,
    sender_id INT,
    msg_text TEXT,
    msg_snd_timestamp TIMESTAMP,
    deleted_msg BOOLEAN,
    deleted_msg_timestamp TIMESTAMP,

    media_presence BOOLEAN,
    media_attach TEXT,
    media_attach_type TEXT
    media_attach_size INT,

    file_presence BOOLEAN,
    file_attach TEXT,
    file_attach_type TEXT
    file_attach_size INT,

    archive_msg BOOLEAN,
    archive_msg_time TIMESTAMP,

    edited_msg BOOLEAN,     -- Possible additional feature to be added, similar to discord or slack.                                                      
    edited_msg_time TIMESTAMP

);

CREATE TABLE users (    -- Table to hold all user details 
    user_id INT PRIMARY KEY,
    user_name VARCHAR(100) NOT NULL,
    user_phoneno VARCHAR(10),
    user_email VARCHAR(100) UNIQUE NOT NULL,
    user_gender ENUM('Male','Female','Not mentioned') NOT NULL,
    user_pfp TEXT,
    user_initialcreation TIMESTAMP NOT NULL,
    user_updatetime TIMESTAMP
)