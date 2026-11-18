-- mod-temucraft-well-of-eternity: script names for the converted creatures, objects, spells and area triggers (from the TrinityCore 4.3.4 world database)
INSERT INTO `instance_template` (`map`, `parent`, `script`, `allowMount`) VALUES (939, 0, 'instance_well_of_eternity', 0) ON DUPLICATE KEY UPDATE `script` = VALUES(`script`);
