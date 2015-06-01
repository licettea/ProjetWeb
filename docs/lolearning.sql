
--
-- Base de données :  `lolearning`
--

-- --------------------------------------------------------

--
-- Structure de la table `rang`
--

CREATE TABLE Rang (
  Num_Rang Integer NOT NULL,
  Nom_Rang varchar(25) NOT NULL,
  CONSTRAINT pk_Rang PRIMARY KEY (Num_Rang)
) ENGINE=InnoDB;

--
-- Contenu de la table `rang`
--

INSERT INTO Rang (Num_Rang, Nom_Rang) VALUES
(1, 'Challenger'),
(2, 'Master'),
(3, 'Diamond 1'),
(4, 'Diamond 2'),
(5, 'Diamond 3'),
(6, 'Diamond 4'),
(7, 'Diamond 5'),
(8, 'Platine 1'),
(9, 'Platine 2'),
(10, 'Platine 3'),
(11, 'Platine 4'),
(12, 'Platine 5'),
(13, 'Gold 1'),
(14, 'Gold 2'),
(15, 'Gold 3'),
(16, 'Gold 4'),
(17, 'Gold 5'),
(18, 'Silver 1'),
(19, 'Silver 2'),
(20, 'Silver 3'),
(21, 'Silver 4'),
(22, 'Silver 5'),
(23, 'Bronze 1'),
(24, 'Bronze 2'),
(25, 'Bronze 3'),
(26, 'Bronze 4'),
(27, 'Bronze 5');

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE Role (
  Num_Role INTEGER NOT NULL,
  Nom_Role varchar(7) NOT NULL,
  CONSTRAINT pk_Role PRIMARY KEY (Num_Role)
) ENGINE=InnoDB;

--
-- Contenu de la table `role`
--

INSERT INTO Role (Num_Role, Nom_Role) VALUES
(1, 'Top'),
(2, 'Jungle'),
(3, 'Mid'),
(4, 'Adc'),
(5, 'Support');

-- --------------------------------------------------------

--
-- Structure de la table `serveur`
--

CREATE TABLE Serveur (
  Num_Serveur INTEGER NOT NULL,
  Nom_Serveur varchar(50) NOT NULL,
  CONSTRAINT pk_Serveur PRIMARY KEY (Num_Serveur)
) ENGINE=InnoDB;

--
-- Contenu de la table `serveur`
--

INSERT INTO Serveur (Num_Serveur, Nom_Serveur) VALUES
(1, 'Brazil'),
(2, 'EU Nordic & East'),
(3, 'EU West'),
(4, 'Latin America North'),
(5, 'Latin America South'),
(6, 'North America'),
(7, 'Oceania'),
(8, 'Russia'),
(9, 'Turkey');

--
-- Structure de la table `invocateur`
--

CREATE TABLE Invocateur (
  Num_Invocateur INTEGER NOT NULL AUTO_INCREMENT,
  Nom_Invocateur varchar(50) NOT NULL,
  Date_Naissance date NOT NULL,
  Num_Serveur INTEGER NOT NULL,
  Num_Role INTEGER NOT NULL,
  Num_Rang INTEGER NOT NULL,
  Mdp_Invocateur varchar(100),
  Num_Token varchar(100),
  CONSTRAINT pk_Invocateur PRIMARY KEY (Num_Invocateur),
  CONSTRAINT fk_Invocateur_Serveur FOREIGN KEY (Num_Serveur) REFERENCES Serveur(Num_Serveur) ON DELETE CASCADE,
  CONSTRAINT fk_Invocateur_Role FOREIGN KEY (Num_Role) REFERENCES Role(Num_Role) ON DELETE CASCADE,
  CONSTRAINT fk_Invocateur_Rang FOREIGN KEY (Num_Rang) REFERENCES Rang(Num_Rang) ON DELETE CASCADE
)ENGINE=InnoDB;

--
-- Contenu de la table `invocateur`
--

insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (1, 'tcooper0', '1987/09/08', 2, 5, 2, 'c4JZCwUKSno', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (2, 'ssims1', '1982/01/06', 7, 5, 7, 'I1K7sDz', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (3, 'swilson2', '1996/04/26', 7, 5, 1, 'dCW5oYF', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (4, 'eowens3', '1997/04/05', 3, 3, 1, 'RwYGt7IHCkE', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (5, 'cjones4', '1982/10/06', 9, 1, 3, 'Um05jw', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (6, 'tmcdonald5', '1995/07/27', 7, 5, 1, 'LS4QMYo7', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (7, 'lramirez6', '1997/10/26', 7, 3, 7, 'zugGNK', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (8, 'aferguson7', '1998/11/24', 2, 4, 1, 'Fjs0vyu9waK', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (9, 'rgilbert8', '1987/11/23', 7, 3, 6, 'eNlAQe4', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (10, 'cjordan9', '1990/06/14', 6, 2, 3, 'mGIz7v1OgTgq', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (11, 'jchapmana', '1996/10/22', 5, 3, 3, 'lNNs7JLuMghB', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (12, 'cyoungb', '1998/07/11', 5, 3, 3, 'EqCjmhH', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (13, 'ebennettc', '1984/05/12', 3, 5, 5, 'X0uVo16cRg0', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (14, 'lbakerd', '1988/07/13', 4, 3, 4, '2FuYXh9q', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (15, 'mhille', '1990/03/04', 3, 3, 6, '7fCy9XyXCUGT', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (16, 'atuckerf', '1994/01/04', 8, 2, 5, 'MvjTDthnn', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (17, 'bpierceg', '1988/11/29', 6, 1, 7, '71Sz36FXo', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (18, 'amurrayh', '1991/08/17', 4, 3, 4, 'Ij12Km8J', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (19, 'jstephensi', '1981/01/27', 4, 2, 6, 'lyI2AWr', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (20, 'akimj', '1996/05/05', 5, 3, 1, 'dUYCJ9e', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (21, 'kfullerk', '1988/12/18', 3, 5, 6, 'csnRpZ', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (22, 'psandersl', '1996/08/23', 6, 4, 6, 'CrmR9TgcV0lC', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (23, 'wcolem', '1994/07/25', 4, 3, 5, 'yscCT251LSxi', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (24, 'ageorgen', '1996/04/27', 6, 5, 6, 'BY6j8EWP', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (25, 'mgonzaleso', '1988/12/10', 5, 4, 4, 'gBd5JO', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (26, 'tbutlerp', '1995/05/19', 4, 3, 4, '6C8HVwXMlk', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (27, 'lriveraq', '1988/08/10', 7, 4, 4, 'Qgmqa9j6CZbo', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (28, 'amorganr', '1994/03/25', 5, 2, 7, 'CqxFO4L', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (29, 'bthomass', '1988/07/01', 5, 5, 2, 'YD5THq', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (30, 'tedwardst', '1997/02/28', 9, 4, 2, 'mDpyv5Z', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (31, 'vbishopu', '1996/02/17', 6, 5, 4, 'pTQuOy7FgNRF', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (32, 'jhartv', '1995/03/21', 4, 3, 3, 'F2jobh', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (33, 'jfoxw', '1984/02/19', 4, 4, 7, 'mhrskWtQd', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (34, 'lhamiltonx', '1990/03/15', 3, 2, 7, '0KLr43Mrq6ws', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (35, 'bharrisy', '1994/10/16', 7, 3, 6, 'ouE2d1nAplf', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (36, 'kkennedyz', '1992/12/12', 9, 2, 7, 'eqAh8mb4z', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (37, 'dparker10', '1980/07/14', 8, 4, 7, 'PqoxhL', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (38, 'lowens11', '1987/04/23', 3, 3, 7, 'ePGWdT6W7', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (39, 'tturner12', '1991/02/03', 3, 5, 6, 'peDNU9', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (40, 'krussell13', '1999/08/21', 8, 3, 6, 'HCIatpFxe', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (41, 'lbell14', '1981/04/29', 9, 3, 5, 'QzKoNJ2sg4', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (42, 'sreynolds15', '1982/06/14', 4, 4, 5, '3tFg4mwk7fr6', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (43, 'srose16', '1991/01/24', 7, 3, 2, 'Y3GCFoPTYt', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (44, 'aday17', '1987/05/11', 2, 4, 4, 'nLa2rQSjo5Qq', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (45, 'jsimmons18', '1989/04/25', 6, 1, 3, 'YMaABy', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (46, 'kfox19', '1998/05/16', 1, 2, 7, 'tk648Qjf9', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (47, 'mmills1a', '1986/05/13', 6, 2, 7, 'UiK2Y0ozMw', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (48, 'jbanks1b', '1984/08/23', 9, 2, 1, '6Dovan2SdS9i', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (49, 'rmedina1c', '1989/02/10', 8, 4, 4, '3RuBGL', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (50, 'ebrown1d', '1981/10/20', 9, 1, 3, 'SUHGugpQOPf', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (51, 'bgilbert1e', '1989/12/24', 5, 4, 5, '6oGmi8', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (52, 'vwallace1f', '1993/07/21', 1, 2, 6, 'apnZ1sCdz', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (53, 'kwarren1g', '1982/01/19', 3, 1, 2, 'JzLBdK5WIY', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (54, 'acarter1h', '1981/07/07', 8, 2, 2, 'XmJQ4h', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (55, 'mlong1i', '1990/01/05', 6, 2, 1, '2Y2HgLVMB', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (56, 'pjohnston1j', '1999/01/24', 8, 3, 4, 'PW3eXLf4He46', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (57, 'sandrews1k', '1991/07/27', 5, 2, 6, 'aQ6I0t0', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (58, 'sjohnson1l', '1989/09/05', 5, 4, 1, 'DwXzEY9q', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (59, 'akelly1m', '1987/11/22', 7, 4, 3, 'TIhf31ZG', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (60, 'rcarr1n', '1984/04/14', 4, 2, 1, 'VUHpWIXDse9', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (61, 'brodriguez1o', '1996/05/03', 4, 5, 3, 'Yrdy3HxloNp', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (62, 'rmurray1p', '1989/12/28', 9, 4, 7, 'i5FRzo', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (63, 'nstone1q', '1992/09/23', 1, 3, 2, 'WLzRyy', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (64, 'rscott1r', '1988/10/03', 7, 3, 7, 'nSFNrEYf', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (65, 'nschmidt1s', '1997/10/12', 9, 4, 6, 'hqqVh4noIUt', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (66, 'vholmes1t', '1985/05/12', 4, 3, 4, 'abp2rT0GVHy', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (67, 'gmurphy1u', '1994/02/05', 8, 2, 2, '6vN95O6EN', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (68, 'aflores1v', '1980/09/20', 1, 1, 2, 'BZtVx7u8', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (69, 'apatterson1w', '1993/10/25', 2, 2, 1, 'H5ITen', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (70, 'pharrison1x', '1990/06/28', 6, 2, 6, 'FgjPGv', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (71, 'mlittle1y', '1980/12/13', 4, 5, 7, 'PEwfSM0d', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (72, 'wlong1z', '1994/12/17', 9, 1, 7, 'yMT8QWcSwlCT', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (73, 'tmontgomery20', '1983/05/31', 3, 3, 1, '0YPDmiI', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (74, 'nwoods21', '1991/10/18', 9, 2, 6, 'rjaHsaGv', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (75, 'blee22', '1999/12/11', 3, 3, 7, 'jUgRJPM8A', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (76, 'sgraham23', '1993/04/15', 5, 1, 4, 'aifmdjk7kIj', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (77, 'drobertson24', '1993/12/01', 3, 4, 3, 'uVQi5vfe2t', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (78, 'panderson25', '1982/08/19', 1, 4, 4, '6M6URT', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (79, 'ggomez26', '1995/02/14', 7, 4, 7, 'vhYI6KI84Q', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (80, 'lporter27', '1993/09/03', 7, 1, 6, 'By2sa0pl', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (81, 'kryan28', '1985/12/02', 8, 5, 5, 'soaoUjFZUF', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (82, 'dnguyen29', '1997/04/29', 3, 1, 5, 'EvEPfSYvw0', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (83, 'jprice2a', '1992/10/02', 5, 3, 3, 'rNaFgoyojVQ', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (84, 'amurphy2b', '1998/09/18', 7, 3, 7, 'Z4mENzB', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (85, 'drichardson2c', '1984/10/08', 1, 2, 6, 'H4SZiK6lA', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (86, 'wkelly2d', '1997/11/22', 3, 4, 4, 'vP40fQ0Es', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (87, 'nhall2e', '1983/06/21', 3, 4, 6, 'QKcaxtgTbcN', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (88, 'rphillips2f', '1982/12/31', 3, 5, 2, 'uza4MZTTM', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (89, 'dmitchell2g', '1986/06/25', 2, 1, 3, 'AK7kEbk', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (90, 'fboyd2h', '1998/02/04', 9, 5, 2, 'HfOtdtdQO', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (91, 'kcook2i', '1995/04/04', 6, 3, 5, 'OHO7V8', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (92, 'sknight2j', '1997/09/22', 5, 5, 4, 'wvD1C7iVWUQ', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (93, 'rchavez2k', '1998/04/05', 9, 2, 6, 'Q9YzTp', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (94, 'rsullivan2l', '1998/01/25', 7, 1, 1, 'sbSj0M3', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (95, 'earnold2m', '1991/01/19', 4, 5, 2, '8Wy2VN', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (96, 'mkim2n', '1999/12/27', 6, 5, 7, '5EGi23ix', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (97, 'dmccoy2o', '1999/08/03', 1, 4, 3, 'hMjnbF', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (98, 'bhawkins2p', '1980/08/16', 7, 3, 2, 'UOuCkXvr', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (99, 'lbishop2q', '1998/10/31', 5, 1, 3, 'iNGw6XRm', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (100, 'csullivan2r', '1981/07/30', 3, 5, 2, 'JTy60G5oD2', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (101, 'jbanks2s', '1994/01/22', 4, 4, 3, 'rCiUIOpX', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (102, 'tdean2t', '1990/08/10', 2, 4, 5, 'oEtvjk', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (103, 'nburke2u', '1991/08/02', 3, 4, 6, 'YuIJBM5', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (104, 'rramos2v', '1986/05/09', 7, 4, 7, 'pwjR78ZaPH', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (105, 'amontgomery2w', '1984/08/24', 1, 5, 2, 'XnIjOgmRywj', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (106, 'dpowell2x', '1991/07/02', 7, 3, 3, 'SOe0wQYyHIZM', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (107, 'jgomez2y', '1985/07/23', 7, 3, 3, 'ED0RWe3g', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (108, 'brichardson2z', '1982/06/27', 2, 4, 5, 'oxAgsOEB', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (109, 'aelliott30', '1989/06/29', 6, 1, 7, '0aIZ5yT4Zasc', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (110, 'lharper31', '1993/03/03', 1, 2, 2, '7vtJIZ', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (111, 'rmartinez32', '1992/12/20', 1, 1, 3, 'IMQotul', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (112, 'gsmith33', '1993/04/15', 2, 4, 3, 'vhAtjoOEa6', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (113, 'hknight34', '1985/05/07', 4, 1, 3, 'e9DeiBqPwgU7', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (114, 'tlawson35', '1994/05/30', 8, 3, 4, 'VspTyT', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (115, 'howens36', '1986/04/20', 4, 1, 2, 'HjXCIVZ', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (116, 'hwarren37', '1989/01/08', 4, 3, 1, 'V0BKhAcGR', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (117, 'ejacobs38', '1981/11/09', 2, 2, 2, 'tt8N5EQU', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (118, 'twest39', '1993/02/17', 2, 3, 7, 'YAgAFPJ8i0tA', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (119, 'dcampbell3a', '1999/11/29', 4, 1, 4, 'HyYAtPyO', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (120, 'emurray3b', '1994/05/09', 3, 2, 5, '2LYuxhiP', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (121, 'bstone3c', '1996/05/31', 3, 1, 7, 'E9HNLWgo0', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (122, 'sschmidt3d', '1999/11/13', 7, 3, 3, 'zDrnJ34', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (123, 'ghansen3e', '1981/02/19', 7, 1, 1, 'NkgNszHPat0', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (124, 'awashington3f', '1999/03/17', 1, 1, 5, 'Us82Khnupy8', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (125, 'kmatthews3g', '1989/11/07', 8, 5, 3, 'P62PA8h2', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (126, 'dclark3h', '1997/06/02', 1, 5, 7, 'a3LYLkKIGMX', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (127, 'jjackson3i', '1997/04/05', 3, 4, 1, '1A8gMVSWw', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (128, 'cchavez3j', '1980/02/18', 5, 3, 3, 'tR2hL6yTHr', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (129, 'kvasquez3k', '1996/11/07', 1, 5, 1, '80tjxvS', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (130, 'kray3l', '1982/10/01', 1, 1, 3, '8nLXwGgqY', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (131, 'bnichols3m', '1983/07/28', 8, 3, 3, 'HnkzLgWETnJ', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (132, 'ghunter3n', '1997/12/06', 9, 5, 3, '7OYkKC', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (133, 'ktaylor3o', '1990/01/23', 4, 1, 5, 'uXGIGhX', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (134, 'sferguson3p', '1993/09/09', 8, 1, 7, 'UkjjKs', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (135, 'smontgomery3q', '1981/06/29', 4, 1, 2, 't0obooIIjVAr', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (136, 'kcarter3r', '1984/06/11', 5, 3, 7, 'md4Nz5FUKq5X', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (137, 'jhernandez3s', '1991/06/09', 7, 3, 2, 'spIWNMb', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (138, 'galvarez3t', '1992/07/10', 3, 5, 1, 'v4Z0qMIbnj', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (139, 'kschmidt3u', '1986/05/20', 2, 5, 4, 'Qi7u49C', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (140, 'gfoster3v', '1980/11/09', 2, 4, 1, 'kKUHbRs', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (141, 'bcunningham3w', '1990/05/30', 7, 4, 2, 'vY2F5TckewF', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (142, 'mstanley3x', '1988/02/09', 9, 1, 7, 'iTdckCSIqX4d', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (143, 'bcunningham3y', '1997/09/16', 8, 2, 1, 'UPeeBmYjoB', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (144, 'cflores3z', '1999/02/04', 7, 5, 7, 'jHEdAn3CT', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (145, 'rhall40', '1982/10/16', 5, 3, 1, 'mlPHifk', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (146, 'kjohnston41', '1983/08/10', 2, 2, 5, 'SuS2kYWMvW', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (147, 'kmartinez42', '1992/06/24', 1, 4, 6, '4EZHPozotv2p', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (148, 'mduncan43', '1989/01/05', 9, 4, 1, 'UHCIluO', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (149, 'lfoster44', '1989/11/09', 4, 5, 3, 'XBpn59J2D', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (150, 'kpowell45', '1994/04/18', 5, 2, 7, 'qVwVUw', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (151, 'jhayes46', '1982/07/25', 2, 3, 1, 'ThsuHGCR', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (152, 'sbarnes47', '1989/06/13', 2, 1, 2, 'GyckHPHjt', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (153, 'llittle48', '1987/07/15', 5, 1, 4, 'Kat7cSsbrum', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (154, 'abowman49', '1981/07/19', 6, 1, 3, 'ZqHbQtu', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (155, 'aford4a', '1980/04/09', 3, 3, 7, 'IvIlK2T3O', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (156, 'mperry4b', '1984/09/28', 2, 1, 3, 'bc8eke65D', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (157, 'ihernandez4c', '1994/12/14', 4, 1, 1, 'KE1VKGG9Z3M', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (158, 'kreyes4d', '1983/05/01', 3, 5, 3, 'enAnZY', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (159, 'acruz4e', '1991/03/30', 1, 2, 1, '6G98lzan8', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (160, 'gcollins4f', '1982/10/06', 7, 3, 7, 'kH3jE8qBg', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (161, 'bmitchell4g', '1992/08/19', 8, 2, 4, 'rVi0WpFY7', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (162, 'dhudson4h', '1988/10/05', 1, 4, 2, 'vvHx1IlP', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (163, 'jvasquez4i', '1992/11/10', 2, 3, 4, 'QtLfRLq48O', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (164, 'tortiz4j', '1986/11/15', 6, 5, 4, 'JBlRBD', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (165, 'bmorales4k', '1991/10/19', 3, 5, 3, 'XnCaka0uU62', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (166, 'gburton4l', '1990/06/24', 1, 5, 4, 'Atggi5YvWAD', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (167, 'rsimpson4m', '1995/09/28', 2, 2, 5, 'aLUZsR', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (168, 'hmills4n', '1998/05/04', 3, 5, 5, 'KwHqlxUCmw0', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (169, 'rburton4o', '1987/06/06', 9, 1, 6, 'oIeogld2b', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (170, 'padams4p', '1999/02/12', 5, 1, 2, 'ewmiRXG7a', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (171, 'cthomas4q', '1984/01/04', 2, 4, 7, 'Fjgw6WxM', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (172, 'hdavis4r', '1980/05/06', 7, 4, 5, 'iAEO2J', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (173, 'jdean4s', '1993/01/12', 8, 1, 2, 'E7eOyZ', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (174, 'hsimpson4t', '1992/04/21', 3, 3, 4, 'GxBKMFa', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (175, 'khernandez4u', '1992/08/03', 3, 2, 6, 'HS2y0H', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (176, 'jdunn4v', '1992/07/14', 2, 5, 1, '18iH1Em', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (177, 'showell4w', '1986/02/28', 4, 1, 1, 'ECFzF43k', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (178, 'rgilbert4x', '1983/02/13', 9, 1, 7, '9hbKHx7oN', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (179, 'jday4y', '1987/10/09', 9, 3, 6, 'OVYmKDV', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (180, 'rrogers4z', '1990/07/25', 5, 3, 6, 'xuREi7Y9yP', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (181, 'jburns50', '1984/12/23', 1, 5, 7, 'vEQ8A5', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (182, 'cfisher51', '1992/10/15', 1, 3, 4, 'l3qlWPSS6jor', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (183, 'dwallace52', '1988/01/04', 2, 3, 1, '31313LB', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (184, 'lgomez53', '1999/10/27', 2, 3, 5, 'HW7MIJ3EI', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (185, 'badams54', '1982/03/20', 3, 4, 7, 'npvZQhOU5', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (186, 'dmills55', '1986/07/11', 5, 1, 4, 'J6VVVWdUxY', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (187, 'dromero56', '1993/08/20', 1, 4, 5, 'iBvBrOTl', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (188, 'ascott57', '1995/09/14', 7, 5, 1, 'gsKEde7eF1ZU', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (189, 'abishop58', '1998/01/05', 9, 3, 2, 'cz85eK5', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (190, 'showard59', '1993/10/23', 6, 5, 7, '3tkSFTo9X3', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (191, 'syoung5a', '1985/12/12', 9, 1, 3, 'xvKVf76vl', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (192, 'jcruz5b', '1983/07/16', 6, 3, 1, '36O2505DFFsj', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (193, 'skennedy5c', '1982/05/16', 1, 2, 4, 'Chqfdf1Xla', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (194, 'kward5d', '1996/05/25', 7, 2, 4, '35Q3et9vJigq', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (195, 'smatthews5e', '1986/08/18', 5, 5, 1, 'ox6TMHr35C', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (196, 'djacobs5f', '1986/08/30', 7, 3, 4, 'J5yvnxmu', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (197, 'jnguyen5g', '1988/05/26', 2, 2, 1, '6PuHOOY', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (198, 'charper5h', '1981/02/20', 2, 4, 3, 'szb2t26', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (199, 'ahernandez5i', '1983/08/31', 5, 3, 3, 'EGCcpA', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (200, 'jbryant5j', '1984/09/17', 7, 4, 5, 'ixuXYdL66', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (201, 'sdixon5k', '1997/09/27', 9, 3, 6, 'outoeNMZeCF', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (202, 'lfisher5l', '1995/04/15', 2, 4, 3, 'g0HAa30JPtw', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (203, 'jturner5m', '1990/10/05', 2, 3, 7, 'kvUqYXHk', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (204, 'cstewart5n', '1989/03/11', 9, 4, 2, '4xIuSKRi', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (205, 'jrose5o', '1988/07/06', 9, 1, 5, 'Gorago9HQrK', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (206, 'jcoleman5p', '1985/11/28', 4, 4, 4, 'lKmUAtj', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (207, 'cshaw5q', '1980/01/05', 1, 4, 4, 'MfWijC', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (208, 'fwarren5r', '1997/03/01', 9, 2, 2, 'AR8hjn', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (209, 'awashington5s', '1981/02/06', 7, 5, 4, 'HlaWF4Ey6v', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (210, 'moliver5t', '1989/01/03', 5, 1, 2, 'uqXS4YU', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (211, 'jstevens5u', '1994/07/03', 8, 3, 6, 'oaEIOxzP', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (212, 'twhite5v', '1984/05/12', 8, 2, 4, 'mQAqT3Li0Lu', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (213, 'enichols5w', '1983/03/05', 3, 1, 5, 'z1Y7kl38GI', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (214, 'bgraham5x', '1999/08/05', 6, 2, 6, 'xLRWoEQfyPpU', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (215, 'jharris5y', '1989/08/18', 3, 1, 4, 'so5UYE', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (216, 'aarmstrong5z', '1981/04/21', 3, 2, 4, 'RQqnlpOe', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (217, 'jwilliamson60', '1985/03/09', 4, 2, 1, 'kSXjiOQtGx', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (218, 'ksmith61', '1991/10/16', 7, 5, 1, 'LJhBog2AW44z', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (219, 'hmartin62', '1991/08/21', 8, 2, 2, 'MbSV1MNipkdW', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (220, 'vmarshall63', '1988/12/17', 5, 5, 1, 'R4ZJHG9', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (221, 'rhayes64', '1996/10/18', 1, 4, 2, 'qNJe57', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (222, 'cjordan65', '1990/12/03', 9, 2, 7, 'gozYbGWEeAz', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (223, 'mward66', '1995/10/23', 4, 1, 7, '3sBCDIdfjt', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (224, 'vhamilton67', '1999/02/07', 6, 5, 4, 'uTixT9', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (225, 'ngarza68', '1996/09/13', 8, 1, 1, 'lck8le0q', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (226, 'asimpson69', '1987/04/17', 9, 3, 1, 'TYxY3fMc5', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (227, 'lrodriguez6a', '1991/09/26', 5, 2, 3, 'QUMTid7Z', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (228, 'karmstrong6b', '1992/09/20', 9, 2, 6, 'kRBcetA4', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (229, 'twatson6c', '1999/04/12', 6, 1, 5, 'w3K9swv', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (230, 'ahenry6d', '1994/06/23', 6, 3, 1, 'yk9Jp5yohp', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (231, 'akennedy6e', '1986/12/05', 6, 5, 6, '3WR595fYxO0', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (232, 'rallen6f', '1990/07/18', 8, 2, 5, 'yzU4QQn', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (233, 'mhenderson6g', '1996/04/23', 8, 5, 3, 'WWcGie', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (234, 'bbennett6h', '1985/08/02', 4, 1, 5, '92Glyc0uxh', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (235, 'hrussell6i', '1997/10/19', 9, 3, 4, '7tvhfu2nfXv8', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (236, 'koliver6j', '1999/05/25', 5, 3, 7, 'f1VivXQhF', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (237, 'kmartin6k', '1982/12/09', 3, 1, 7, '48WnIdqh91Fv', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (238, 'wnguyen6l', '1981/04/07', 3, 3, 2, 'h37gHI', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (239, 'dmcdonald6m', '1999/09/11', 7, 4, 6, 'njHBuY3', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (240, 'jharris6n', '1986/02/23', 6, 1, 7, 'CcXpizj8eF1C', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (241, 'wcarr6o', '1995/07/24', 6, 1, 7, 'UHV5RzHW', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (242, 'gjordan6p', '1981/11/06', 1, 2, 1, 'IxjV06Pz', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (243, 'cgeorge6q', '1995/12/10', 1, 4, 3, '7M5fVDP', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (244, 'amurphy6r', '1996/08/03', 4, 1, 3, 'ruBX2e', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (245, 'mholmes6s', '1981/05/30', 1, 3, 1, 'Ov1iAn', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (246, 'emcdonald6t', '1997/01/03', 7, 4, 2, '94v7cQdh', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (247, 'smyers6u', '1985/05/25', 8, 4, 7, 'w7Ht8r', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (248, 'wmyers6v', '1983/07/14', 3, 1, 1, '4pw5IFXROJ', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (249, 'mhenderson6w', '1995/03/15', 2, 4, 6, 'tmIW7nwp', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (250, 'dlane6x', '1987/02/15', 9, 5, 4, 'WpDJ1Odu7', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (251, 'rmorrison6y', '1980/05/25', 1, 2, 24, '0RHhoUbGcVA', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (252, 'jbowman6z', '1993/10/25', 3, 1, 25, 'itPLON6O0V', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (253, 'cford70', '1988/01/11', 4, 2, 13, 'fCVIlZZRYIg', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (254, 'mfisher71', '1999/01/14', 6, 3, 15, 'oMcI14bP', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (255, 'tchavez72', '1992/04/20', 9, 5, 12, 'KUkpFwr107Md', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (256, 'afox73', '1992/02/07', 2, 4, 21, '1r75viTln', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (257, 'jmcdonald74', '1982/10/05', 5, 5, 16, '8mLRXFewmVR', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (258, 'lbowman75', '1986/05/24', 9, 1, 23, 'Ljqolk2tk7H', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (259, 'kfisher76', '1985/09/13', 7, 4, 22, 'bx0L7m5H', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (260, 'jlewis77', '1988/05/28', 2, 3, 21, 'S2RHNc94j1dn', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (261, 'dcrawford78', '1995/12/03', 1, 1, 14, '9GTstc', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (262, 'rgilbert79', '1990/04/11', 8, 1, 25, 'H8Fkb9', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (263, 'jthomas7a', '1985/07/23', 4, 4, 9, 'k6Gkl24pO', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (264, 'dprice7b', '1998/11/15', 3, 4, 10, 'RaEFIvZsqWLn', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (265, 'brobertson7c', '1984/04/27', 6, 4, 11, 'pppIVqqQyR', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (266, 'dhamilton7d', '1999/07/14', 6, 1, 18, 'Ma2Ry4yVq', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (267, 'cwilliamson7e', '1992/07/29', 8, 2, 23, 'vPGtqs48S1', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (268, 'storres7f', '1997/10/21', 7, 4, 21, 'cSozKUNKvWu', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (269, 'twilson7g', '1994/04/28', 9, 1, 25, '6IQ9DtW40Wh', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (270, 'cmiller7h', '1997/08/31', 7, 3, 25, 'ZKPs7lX1', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (271, 'wjohnston7i', '1986/04/08', 5, 4, 16, 'xlFkUYVHn0', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (272, 'ataylor7j', '1995/03/26', 6, 1, 16, 'T4Ng3w', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (273, 'mgilbert7k', '1996/03/29', 6, 3, 19, '9xezhcZlRBZ', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (274, 'wweaver7l', '1998/05/18', 3, 4, 11, '7VDJ54wfQy', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (275, 'agilbert7m', '1989/04/02', 8, 2, 17, '43EFhpJ0MW', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (276, 'rellis7n', '1995/07/01', 1, 5, 23, 'C136euGr6zw', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (277, 'csimmons7o', '1980/03/09', 2, 1, 9, '1zxFPxxYTfEb', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (278, 'jlopez7p', '1998/03/17', 5, 4, 8, 'wZEx2LNKY6T', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (279, 'nwarren7q', '1995/03/04', 3, 4, 17, 'NnJPjUm', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (280, 'gsanchez7r', '1991/04/30', 8, 3, 13, 'b9YKFkggGVK', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (281, 'clynch7s', '1986/03/03', 3, 1, 20, 'Vc5zd0tAP', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (282, 'dprice7t', '1993/06/13', 4, 4, 25, 'HDBPkbprGa', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (283, 'jparker7u', '1992/07/20', 8, 1, 21, 'YIEVvmg', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (284, 'mday7v', '1993/10/07', 6, 2, 21, 'VXphDKeo', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (285, 'lgreen7w', '1986/04/15', 5, 1, 10, 'NEQjmSdlKGTS', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (286, 'charris7x', '1998/01/14', 4, 1, 22, '2xP23F', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (287, 'wpowell7y', '1997/04/18', 2, 5, 10, '4oOs6eRcJ5T', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (288, 'rrobertson7z', '1986/01/13', 7, 4, 25, '9JHCyYM5j', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (289, 'dstevens80', '1989/06/10', 6, 3, 25, 'TcUgM3JiYig', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (290, 'aperry81', '1997/07/01', 3, 5, 8, 'IsNdo3wDPZn', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (291, 'pwalker82', '1981/12/29', 7, 2, 19, 'pBwVXKb0jdZV', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (292, 'escott83', '1982/09/20', 3, 4, 8, 'SEWOaxt', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (293, 'cbishop84', '1988/08/05', 4, 5, 17, 'xvzXbJ9lYmq', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (294, 'pgordon85', '1992/03/20', 3, 2, 12, 'jcT8Xpx6bx5', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (295, 'pwalker86', '1982/09/15', 9, 4, 22, 'Gofd59d79i3e', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (296, 'vhill87', '1987/10/08', 5, 4, 25, '5T1KGH8X0c', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (297, 'srogers88', '1983/10/15', 9, 1, 12, 'tFRjIJk', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (298, 'shawkins89', '1991/11/15', 9, 5, 24, 'M9HVvuo8g04', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (299, 'hsims8a', '1984/10/31', 2, 3, 10, 'ZDlahBk', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (300, 'mcarr8b', '1996/12/09', 1, 3, 21, 'ZuOR7tTnK4B', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (301, 'evasquez8c', '1986/05/31', 8, 2, 25, 'UFXPq5O', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (302, 'phawkins8d', '1999/08/08', 9, 4, 25, 'RwTkFtBV', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (303, 'bpeters8e', '1986/09/01', 4, 3, 17, '0FCWmkNI0dzO', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (304, 'along8f', '1986/06/30', 3, 3, 22, 'u5smJ9eU5', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (305, 'bwilliams8g', '1995/05/22', 6, 5, 15, 'LtIitvrF9eC', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (306, 'clawrence8h', '1998/09/02', 2, 5, 16, 'fEVGTuAjnCJ8', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (307, 'aarnold8i', '1999/08/23', 7, 1, 25, 'V2KLAyJB', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (308, 'lsimpson8j', '1992/10/01', 6, 2, 12, '2990J3jT', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (309, 'scooper8k', '1989/06/30', 8, 5, 23, 'AwVR2m', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (310, 'jwoods8l', '1987/09/09', 7, 5, 10, 'Jl79ICbwwD', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (311, 'kcarroll8m', '1992/01/11', 8, 1, 25, 'S06W2aQ', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (312, 'ljacobs8n', '1990/03/30', 2, 2, 14, 'Ysj5mxxBJt', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (313, 'bhicks8o', '1987/11/27', 9, 1, 15, 'KypFRMO3L', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (314, 'jmason8p', '1995/12/06', 1, 5, 22, '1JKIBO', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (315, 'jmason8q', '1982/05/21', 5, 4, 23, 'XHtKug27c6', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (316, 'tgreene8r', '1983/10/19', 5, 2, 10, 'zkWzqC4', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (317, 'jkennedy8s', '1989/12/21', 2, 1, 11, 'AJIVWZi6', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (318, 'plynch8t', '1993/12/07', 2, 4, 21, 'nDYneR5av', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (319, 'astone8u', '1991/09/12', 7, 3, 22, 'qkc47C3ovTgy', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (320, 'dsims8v', '1982/06/04', 1, 1, 21, 'Ac46B0', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (321, 'ataylor8w', '1995/08/26', 4, 3, 13, 'FJhgUlR', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (322, 'pcarter8x', '1981/08/22', 1, 5, 18, 'K9S1ke4oZ0', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (323, 'fmorgan8y', '1981/10/18', 6, 4, 9, '5cadw2', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (324, 'ahawkins8z', '1989/09/15', 4, 4, 15, 'aMtHON7E2Er', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (325, 'jferguson90', '1991/04/28', 6, 5, 10, 'RTcXei4N9', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (326, 'kgonzalez91', '1998/07/30', 1, 3, 19, 'AZKvkd4s2', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (327, 'sweaver92', '1986/08/12', 2, 3, 17, 'xgMVdPNP8VCn', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (328, 'jsmith93', '1990/11/09', 2, 3, 21, 'A3Ijltyo6OyT', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (329, 'jwatkins94', '1986/07/10', 1, 1, 9, 'lDgXnjPw', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (330, 'pwashington95', '1997/07/30', 1, 3, 25, '1GuhMaPzqu', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (331, 'fjordan96', '1988/05/06', 6, 3, 23, 'gxmhzDBswkqG', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (332, 'jmorrison97', '1983/03/13', 7, 4, 20, 'WPOcKYrw', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (333, 'kwoods98', '1993/11/26', 6, 4, 17, 'CQEmzyX', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (334, 'wellis99', '1983/02/21', 7, 5, 19, 's5agKF2cy5b', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (335, 'charris9a', '1981/08/10', 9, 3, 8, 'wbsz9FNqUFX', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (336, 'jwallace9b', '1997/01/01', 8, 2, 20, 'wTzmDyTcO', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (337, 'jlittle9c', '1996/06/06', 1, 3, 24, 'v9D5AF', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (338, 'tchavez9d', '1995/01/04', 9, 5, 8, 'vWNuCRAPShvs', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (339, 'aromero9e', '1988/10/21', 3, 2, 24, 'wXuvDJCsuM', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (340, 'agriffin9f', '1999/09/23', 7, 1, 18, 'BOSDmaCzJV', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (341, 'jhansen9g', '1989/01/02', 4, 1, 9, 'ILI41Q8YBs', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (342, 'tspencer9h', '1999/04/08', 9, 3, 21, 'tJaIN6BP41', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (343, 'gperez9i', '1997/07/05', 8, 3, 16, 'ptJwKXieD2q', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (344, 'dgarcia9j', '1985/07/05', 4, 5, 24, 'JTI7uzlqc', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (345, 'sjohnston9k', '1987/08/11', 2, 3, 11, 'ib39fHca', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (346, 'whanson9l', '1980/02/16', 3, 3, 24, 'z99m6BY', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (347, 'sdaniels9m', '1999/08/20', 5, 2, 21, '7ILbHKYY4', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (348, 'jdiaz9n', '1996/06/07', 1, 1, 17, 'OWc4l1kci', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (349, 'pflores9o', '1990/08/30', 1, 4, 9, 'Ytj9OVbvv', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (350, 'jhart9p', '1995/07/21', 2, 1, 15, 'BI0Y80', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (351, 'dwest9q', '1988/01/21', 9, 2, 8, 'nZFmjm5J6OAJ', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (352, 'pburns9r', '1986/07/30', 9, 3, 21, 'PmWCx0A', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (353, 'agardner9s', '1996/07/29', 5, 1, 13, '2at1ljPaQB50', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (354, 'emorales9t', '1985/04/17', 2, 2, 12, 'n7Rn4d', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (355, 'lwalker9u', '1981/10/25', 5, 3, 21, 'Ezeqqkf', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (356, 'dcox9v', '1987/05/18', 6, 4, 10, 'K9hSKl1uiW', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (357, 'ewebb9w', '1996/06/22', 1, 5, 21, 'zWVtNc', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (358, 'amiller9x', '1986/06/16', 2, 1, 16, 'RxatIZXiE', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (359, 'levans9y', '1986/11/05', 6, 1, 17, 'iDMv77', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (360, 'gfuller9z', '1990/06/12', 8, 5, 11, 'WqLZcOPSQY', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (361, 'cmasona0', '1983/01/04', 4, 4, 21, 'o6TK7Acq', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (362, 'sburnsa1', '1984/11/09', 8, 5, 18, 'X8f3twwIlJ', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (363, 'bchapmana2', '1996/05/03', 2, 4, 17, 'R7ObnYvH', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (364, 'pwheelera3', '1981/03/19', 4, 1, 10, '9hS0V6z3qf', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (365, 'akellya4', '1984/09/03', 4, 5, 8, 'RZZeoxfW3', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (366, 'ewarrena5', '1984/11/16', 5, 1, 25, 'SSQt3QOL', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (367, 'gcunninghama6', '1991/06/25', 9, 3, 19, 'vgDoYyx0bAyq', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (368, 'cwarda7', '1986/08/11', 3, 4, 22, 'Cqd4gbp', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (369, 'karnolda8', '1990/08/05', 2, 1, 13, 'JsHNOLRV6o', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (370, 'rcastilloa9', '1995/07/24', 5, 3, 10, 'ddt9oslk', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (371, 'dsullivanaa', '1987/06/02', 6, 3, 10, 'hEYVcUP', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (372, 'darmstrongab', '1985/08/30', 9, 4, 11, 'jkVzJHJie', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (373, 'rhudsonac', '1991/01/16', 5, 5, 14, 'BGhGr1', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (374, 'dfranklinad', '1996/06/14', 4, 1, 9, 'd40nrDzb', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (375, 'jrobertsonae', '1998/11/08', 5, 4, 21, 'lzjUIfk5', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (376, 'krileyaf', '1983/01/08', 1, 5, 18, 'kOe9dJuS', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (377, 'kmitchellag', '1991/04/02', 5, 3, 12, 'cqIRzyBDKUCl', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (378, 'dcoleah', '1982/04/09', 7, 2, 18, 'd6Q2N0fOh80', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (379, 'rhernandezai', '1987/06/03', 1, 2, 18, 'rB6AWfzw', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (380, 'dmyersaj', '1990/07/24', 9, 5, 17, '1In5Wjx', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (381, 'fkimak', '1991/06/14', 8, 4, 16, '1IXdebEdlg', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (382, 'jduncanal', '1991/09/19', 2, 2, 22, 'sq3JLKpIy26', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (383, 'lsimsam', '1987/02/27', 5, 2, 20, 'AUFSpyXWn', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (384, 'gowensan', '1996/12/19', 8, 2, 14, 'IS1F8mB', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (385, 'cwilliamsonao', '1994/02/16', 4, 3, 22, 'iMwqGPn', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (386, 'ccampbellap', '1996/08/09', 1, 5, 10, 'LHDYmBUhZ', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (387, 'jgrantaq', '1993/03/13', 1, 5, 12, 'GmNayXf8qrc', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (388, 'hpattersonar', '1993/09/29', 5, 2, 16, 'jnUuOOcxf', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (389, 'rwellsas', '1980/08/03', 9, 5, 23, 'mRBLhxpi', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (390, 'bsimsat', '1981/04/02', 6, 4, 17, '0pfGIbFpE', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (391, 'sparkerau', '1986/11/26', 8, 4, 15, 'hOU8roxZq4iR', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (392, 'jgeorgeav', '1988/07/13', 3, 5, 12, 'pgkaNQ', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (393, 'tboydaw', '1996/09/12', 9, 3, 23, 'Td6KHXu', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (394, 'ngrahamax', '1994/09/12', 1, 1, 11, 'oCTuJnh7u5sh', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (395, 'wdanielsay', '1993/11/24', 9, 5, 13, 'dAgQ7YXgFuI', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (396, 'egordonaz', '1995/08/19', 7, 2, 15, 'LF4SCbSKf', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (397, 'mrogersb0', '1986/11/06', 5, 5, 24, '902UA68OF4', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (398, 'jwatsonb1', '1980/09/03', 6, 3, 15, 'xO0KBsj', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (399, 'nhawkinsb2', '1994/04/03', 2, 3, 10, 'BpyNb2', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (400, 'dpetersb3', '1989/10/03', 4, 1, 15, 'pIyLb8d', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (401, 'bfieldsb4', '1984/10/11', 7, 4, 8, 'idcN4y', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (402, 'rperkinsb5', '1989/01/20', 7, 3, 24, 'B4wqwws', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (403, 'pjacksonb6', '1981/03/09', 2, 1, 17, 'aBHCJuz', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (404, 'rortizb7', '1980/01/23', 7, 1, 18, 'rQFzOl', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (405, 'mgrayb8', '1998/09/22', 7, 4, 23, 'jwNr7EGQZ', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (406, 'chowellb9', '1987/09/02', 7, 1, 24, 'JnYK2RgSam9', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (407, 'astevensba', '1994/12/23', 6, 1, 25, 'o3z1Ms', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (408, 'swheelerbb', '1997/04/16', 8, 4, 13, 'EP9dzh1e65', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (409, 'ewatkinsbc', '1995/12/26', 1, 3, 16, 'tfSYVDdy7f3', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (410, 'rhowellbd', '1993/08/23', 6, 3, 11, 'xmzEzpOs6IV', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (411, 'bmartinezbe', '1980/05/29', 1, 4, 15, 'KvZZs8ITzdW', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (412, 'mmurraybf', '1994/04/07', 1, 1, 10, 'byD9kGaGH', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (413, 'rbryantbg', '1986/03/25', 3, 4, 15, 'kMRuK2es', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (414, 'gevansbh', '1987/03/09', 7, 4, 19, '5O2YFYHWNm3', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (415, 'jdaybi', '1992/02/25', 7, 4, 18, 'qwNDZle872VB', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (416, 'drosebj', '1986/12/17', 7, 2, 22, 'gNYN05', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (417, 'jcolemanbk', '1994/01/13', 4, 2, 22, 'cstGgaQb2w', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (418, 'wmoorebl', '1986/08/06', 1, 2, 24, 'WalDKN', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (419, 'rfoxbm', '1990/02/22', 4, 1, 17, 'r2GEI6', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (420, 'pperkinsbn', '1990/04/06', 3, 2, 15, '4Xooz6X', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (421, 'jyoungbo', '1988/09/08', 3, 5, 9, 'Mq4arUs8sjd', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (422, 'jmorrisonbp', '1994/03/11', 2, 2, 17, 'm6HPFnVj1HE', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (423, 'lmendozabq', '1999/12/14', 3, 5, 23, 'KFvSjbmBfQ3', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (424, 'hgeorgebr', '1989/11/07', 4, 5, 21, 'JqvJ4C39', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (425, 'cpetersbs', '1983/02/12', 4, 1, 14, 'OSwGW4ur', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (426, 'pjonesbt', '1992/02/04', 7, 4, 12, 'wSypXUhD2r', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (427, 'wleebu', '1990/09/09', 8, 3, 20, '7dkioj', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (428, 'rdavisbv', '1988/11/04', 9, 1, 16, 'XrPv1H78oHL', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (429, 'amoralesbw', '1985/06/04', 4, 4, 10, 'tEJwM4j0tU', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (430, 'mmartinbx', '1983/07/27', 9, 2, 8, 'Dk3wSDK8ir', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (431, 'gwillisby', '1989/10/27', 5, 1, 25, 'NpurK5o', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (432, 'dpricebz', '1982/07/03', 8, 1, 16, 'L1ZnBIaRAfc', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (433, 'jbarnesc0', '1999/05/21', 4, 3, 18, 'XITt03ru', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (434, 'jortizc1', '1987/11/02', 6, 1, 8, 'avz3LdiF0K', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (435, 'ijohnsonc2', '1987/08/29', 7, 3, 23, 'aArl7NVOphmL', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (436, 'agrahamc3', '1981/06/08', 6, 3, 12, 'c83wnq8', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (437, 'jmoorec4', '1998/02/12', 4, 5, 23, 'o9shl6rkkiW', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (438, 'dlawrencec5', '1998/08/02', 5, 5, 20, 'C0JwLYAmXL', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (439, 'sfreemanc6', '1997/06/10', 8, 1, 11, '6llbrMK', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (440, 'jshawc7', '1991/09/30', 2, 4, 13, '9pzO31FR', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (441, 'jkennedyc8', '1984/02/20', 7, 2, 14, 'AVfo6D026Uil', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (442, 'rriverac9', '1995/11/07', 6, 1, 14, 'AReHG9', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (443, 'jmorrisonca', '1997/09/25', 3, 1, 17, 'lKJu2ptT', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (444, 'jfranklincb', '1993/06/16', 9, 3, 22, 'c2MNmjIA', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (445, 'breedcc', '1997/06/05', 1, 1, 19, 'WZN3nmdeJjY', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (446, 'abrowncd', '1996/01/19', 3, 5, 14, 'yKLQr4hwns41', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (447, 'dmedinace', '1992/03/08', 1, 4, 22, 'oMIeAk9lqDv', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (448, 'rmitchellcf', '1985/04/26', 5, 2, 21, 'OQfrDAN', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (449, 'mgonzalezcg', '1995/05/30', 9, 2, 23, 'KweXdd15i', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (450, 'jgrantch', '1985/03/13', 9, 3, 12, 'ZWXc83bu6H', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (451, 'pwarrenci', '1999/10/01', 9, 2, 11, 'Myc6fnKf4f4', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (452, 'swatkinscj', '1987/06/10', 3, 2, 25, 'H5DcvOSJ', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (453, 'sbellck', '1992/10/08', 9, 2, 22, '2Xxd9rKvp9p', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (454, 'kgomezcl', '1980/12/30', 5, 3, 8, 'sVBUVzq1Z8j', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (455, 'ashawcm', '1996/06/25', 5, 1, 23, 'W4Htx2fn8FzX', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (456, 'tarnoldcn', '1992/10/01', 5, 2, 12, 'F096an', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (457, 'mbowmanco', '1982/12/07', 7, 2, 16, 'YKKLYp', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (458, 'ewilliamsoncp', '1994/08/16', 4, 1, 22, 'PtowHNdD1t', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (459, 'bmasoncq', '1989/10/10', 1, 4, 15, 'DAza0rPh2sT', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (460, 'vrichardsoncr', '1992/12/02', 7, 5, 8, 'H3YVFmbSW1H', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (461, 'sarmstrongcs', '1982/11/26', 4, 1, 15, 'mLdXVxbko', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (462, 'ghawkinsct', '1993/03/27', 7, 5, 22, 'UFi9Aq', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (463, 'wgrantcu', '1997/10/03', 4, 5, 8, 'sgB1k3E', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (464, 'dthompsoncv', '1980/02/21', 5, 4, 10, 'mW9MLm', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (465, 'lgarzacw', '1982/12/14', 4, 2, 25, 'c2pUTT5zyL', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (466, 'khayescx', '1992/05/01', 1, 4, 24, 'w9aS6VsdLM', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (467, 'gmcdonaldcy', '1980/10/30', 7, 1, 18, 'a3pumV8V8t', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (468, 'jolivercz', '1981/10/16', 5, 5, 10, 'tWAJHpe', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (469, 'pgutierrezd0', '1992/05/23', 5, 1, 19, 'kyps2Zye', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (470, 'rcunninghamd1', '1999/10/11', 6, 5, 15, 'HpaXjjRWL', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (471, 'msanchezd2', '1996/03/03', 3, 2, 20, 'UtwWgZXLQ', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (472, 'swebbd3', '1996/07/18', 2, 3, 8, 'VwAqZVCp3Cvr', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (473, 'fadamsd4', '1992/07/10', 2, 2, 24, '4rO0fMV7id0', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (474, 'rscottd5', '1988/09/25', 6, 1, 13, '6USic8o8kPU', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (475, 'rowensd6', '1981/11/10', 8, 5, 12, 'jgDqj0f1', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (476, 'cblackd7', '1986/09/25', 3, 2, 18, 'm7s8SJq2K', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (477, 'thamiltond8', '1984/01/22', 6, 5, 17, 'GCn7a4l', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (478, 'cfranklind9', '1990/02/23', 4, 3, 12, 'BoC0Yb4g2LjJ', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (479, 'tperkinsda', '1992/01/25', 7, 4, 11, 'ufOwNLz', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (480, 'ssanchezdb', '1993/10/02', 7, 4, 11, 'wuXAYVr', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (481, 'kgarrettdc', '1989/03/31', 6, 2, 10, 'GEJIvaM5M8BS', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (482, 'jburtondd', '1993/06/13', 6, 3, 25, 'HOlhRxkrMC', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (483, 'tcampbellde', '1989/02/01', 4, 1, 19, '6ZuA2WGdd', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (484, 'kharperdf', '1984/11/05', 5, 5, 21, 'rS81og', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (485, 'pgeorgedg', '1995/12/13', 2, 5, 9, 'p0rlEA9gB8', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (486, 'ldiazdh', '1993/07/24', 4, 5, 8, 'JEKfdh98iGdU', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (487, 'jjohnstondi', '1985/10/02', 3, 5, 18, 'EXGXxZHIL', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (488, 'hhalldj', '1984/07/22', 2, 3, 11, 'EBTHDqdEuzX', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (489, 'kwagnerdk', '1991/03/21', 7, 4, 22, 'T6lADEV5MiR', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (490, 'ctaylordl', '1984/10/13', 3, 1, 20, 'xWkMXUz', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (491, 'klanedm', '1990/12/20', 5, 4, 17, 'RGOfDdsL3PJ', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (492, 'ewooddn', '1996/11/21', 9, 2, 25, 'N06oVzo', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (493, 'bfergusondo', '1997/11/19', 1, 5, 23, '0uhLAkA7g', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (494, 'cgeorgedp', '1998/08/15', 8, 2, 18, '114EGeY4f', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (495, 'kstevensdq', '1990/03/28', 1, 4, 12, 'OLkJy0', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (496, 'krosedr', '1995/09/02', 2, 5, 20, 'S3S1lwb', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (497, 'tholmesds', '1991/12/17', 1, 1, 13, 'pJ6Y9u', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (498, 'astevensdt', '1998/01/20', 8, 4, 18, '1iLk9FL', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (499, 'mgarzadu', '1997/03/08', 2, 5, 13, 'Rvh55os5c', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (500, 'sperrydv', '1995/04/26', 9, 2, 17, 'GDoIQl26z3cl', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (501, 'rharveydw', '1991/04/08', 2, 5, 12, 'JkmoVR0W', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (502, 'jsnyderdx', '1987/10/06', 5, 4, 25, 'YoNeeiHUO4', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (503, 'araydy', '1991/02/11', 8, 5, 11, 'd86ncjwYY', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (504, 'dellisdz', '1983/09/24', 6, 1, 8, 'IjeKec', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (505, 'hmorrise0', '1992/03/03', 2, 2, 8, 'UpkheI', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (506, 'jmurphye1', '1993/07/22', 9, 3, 25, '4Qd1pHmjzNE3', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (507, 'msancheze2', '1997/05/05', 2, 3, 19, 'RmG78E7yCgYY', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (508, 'lmendozae3', '1994/04/25', 3, 3, 22, 'oB2r8LvA', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (509, 'wbelle4', '1984/09/29', 3, 2, 23, 'yjz8Fs', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (510, 'aphillipse5', '1986/10/13', 1, 2, 24, '8FljbjtxYm', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (511, 'amorenoe6', '1998/01/09', 9, 1, 18, 'WhGX1Sxa', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (512, 'sarmstronge7', '1992/02/01', 8, 5, 18, 'SlzpnF2lDZt', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (513, 'arileye8', '1987/01/22', 8, 4, 15, 'FL7XULnp5CH9', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (514, 'sbowmane9', '1980/06/21', 2, 2, 15, 'YuSso3K', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (515, 'lcunninghamea', '1993/12/19', 8, 3, 19, '7zNwRaRkd', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (516, 'rhernandezeb', '1997/05/19', 5, 2, 15, 'anjVTzNY6gh', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (517, 'dschmidtec', '1993/04/16', 9, 3, 20, 'WHn4RHXslCS', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (518, 'afloresed', '1992/07/26', 5, 3, 9, 'ZjWdvpZRlxQZ', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (519, 'gjamesee', '1984/04/25', 7, 5, 11, 'ZhKaoq2i9', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (520, 'mhawkinsef', '1995/09/02', 9, 5, 18, '6UJow2Z', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (521, 'hburnseg', '1984/09/16', 7, 4, 13, '9epjRKAh5CH', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (522, 'sstewarteh', '1983/11/24', 3, 5, 25, 'qAfxdBASB2', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (523, 'bfullerei', '1993/03/01', 5, 2, 12, 'h6Ip2VOy9', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (524, 'rwallaceej', '1983/07/13', 1, 3, 16, 'Lo0fYTU6LgwA', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (525, 'jbryantek', '1981/10/12', 9, 3, 8, 'Blnsco3cN', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (526, 'lbradleyel', '1980/07/25', 3, 3, 10, 'kyXFKDfvU', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (527, 'csimpsonem', '1991/11/17', 9, 1, 8, 'a3572YPPjJ', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (528, 'rwarden', '1996/05/28', 4, 3, 20, 'qTINs9ho', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (529, 'aburnseo', '1996/11/27', 4, 1, 17, '0YKZc6Aqj', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (530, 'lhansonep', '1997/08/25', 8, 4, 16, 'WdTnlIV2U', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (531, 'areyeseq', '1990/06/21', 3, 4, 16, 'PX2wt0U1', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (532, 'cwatkinser', '1983/09/20', 7, 4, 13, 'rnDvhLg', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (533, 'pnicholses', '1983/07/08', 7, 5, 12, 'RJjvXbXEyj', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (534, 'swhiteet', '1990/04/10', 2, 3, 21, 'ah09v81', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (535, 'apeterseu', '1995/03/11', 6, 5, 17, 'h4qxNoT', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (536, 'abryantev', '1999/08/23', 9, 4, 16, 'dgos1jelj', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (537, 'jwilliamsew', '1982/11/08', 3, 1, 17, 'iaOEwdX', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (538, 'arobinsonex', '1991/09/06', 6, 3, 18, 'wstnVYzsm4Lt', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (539, 'pwalkerey', '1980/01/13', 8, 5, 11, 'ZbdXHWd0Yte', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (540, 'pwillisez', '1991/09/02', 6, 1, 10, 'jrwV2gAkphW3', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (541, 'cgrahamf0', '1982/02/13', 6, 4, 23, 'sizIuQc', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (542, 'jpricef1', '1999/10/01', 7, 2, 25, '4nfNJehjJD9i', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (543, 'brobinsonf2', '1984/02/02', 8, 4, 9, 'JI1Ed1L', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (544, 'dgutierrezf3', '1997/12/06', 4, 1, 19, 'OMdExu1cOq', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (545, 'dberryf4', '1985/04/11', 1, 4, 16, '8ZnxtqHE1I', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (546, 'agonzalezf5', '1995/10/11', 9, 3, 25, 'sNS4IrjyiAFo', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (547, 'mgarzaf6', '1996/05/20', 2, 1, 23, 'f33OcEPwgDsR', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (548, 'wsandersf7', '1989/12/19', 7, 5, 9, 'Fe8JeX', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (549, 'afergusonf8', '1998/06/15', 8, 5, 20, 'RcQWQxH', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (550, 'pphillipsf9', '1995/06/18', 8, 4, 14, 'DSdHopE7vqVx', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (551, 'kfowlerfa', '1987/09/21', 3, 5, 10, '4kaGwEHjUd', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (552, 'scolefb', '1996/11/28', 3, 4, 14, 'rhwe1KO4q5', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (553, 'dmyersfc', '1980/11/17', 5, 3, 14, '4BZpO5P', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (554, 'areedfd', '1983/07/14', 3, 4, 25, 'McLEghQBIZ', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (555, 'agarzafe', '1994/05/01', 3, 3, 10, 'yrSdP6c', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (556, 'sreidff', '1984/03/30', 5, 5, 15, '87vM3Ufqw', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (557, 'ijohnsonfg', '1985/01/20', 6, 2, 21, 'hqYfggtik', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (558, 'rwatsonfh', '1991/06/22', 3, 4, 8, 'vpEPul4', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (559, 'acookfi', '1983/11/21', 5, 1, 16, 'ocOHZWYgPe', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (560, 'bdunnfj', '1991/04/11', 5, 2, 9, 'okemV1yC', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (561, 'grobinsonfk', '1983/08/01', 2, 3, 20, 'xQIXUH', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (562, 'drosefl', '1984/10/30', 2, 2, 12, 'WtXlHi0W', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (563, 'areynoldsfm', '1994/09/18', 1, 2, 12, 'ui4oX5F', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (564, 'wriverafn', '1990/02/03', 9, 1, 18, 'NnIrgHV', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (565, 'bwhitefo', '1986/06/05', 9, 1, 13, 'omomeL5Zh', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (566, 'jcoxfp', '1984/12/02', 8, 5, 23, 'PerCdKu9H3f2', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (567, 'smorenofq', '1986/05/12', 1, 4, 9, 'VexcOU', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (568, 'bgardnerfr', '1986/08/12', 5, 2, 13, 'fHmBQSF', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (569, 'ccolemanfs', '1992/03/25', 8, 4, 10, 'VRF1QDu', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (570, 'hcoleft', '1991/06/04', 1, 2, 13, 'WeJor5', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (571, 'ajohnstonfu', '1994/05/02', 6, 5, 20, 'FP4WY7343', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (572, 'sricefv', '1992/06/22', 4, 1, 24, 'FuFjPMzcz', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (573, 'pgonzalezfw', '1982/04/09', 9, 5, 24, 'sr9wQ81vA', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (574, 'vknightfx', '1998/07/22', 5, 5, 23, 's8HOHm', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (575, 'hramosfy', '1983/10/30', 9, 2, 15, 'DoFB50K', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (576, 'mnelsonfz', '1996/06/10', 4, 2, 9, 'wDVV51MosYE', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (577, 'rwebbg0', '1996/01/31', 1, 5, 20, 'rhl9ux2NH', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (578, 'iromerog1', '1987/06/23', 3, 5, 23, 'gjyWdBZvsbAa', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (579, 'gmendozag2', '1980/10/21', 9, 4, 14, '8PTLcBcmJ', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (580, 'cbrooksg3', '1983/09/09', 5, 1, 12, 'DXjo8E8', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (581, 'lhowellg4', '1998/08/09', 2, 2, 25, 'fRAZcmRWqB', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (582, 'hfisherg5', '1983/04/09', 7, 5, 23, 'PId89V', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (583, 'ngilbertg6', '1988/05/10', 3, 4, 8, 'suLwWDQ', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (584, 'areynoldsg7', '1985/02/10', 2, 5, 8, 'b2VM64CFvoCj', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (585, 'ewilliamsg8', '1981/05/06', 1, 5, 23, 'IO6G416vZw', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (586, 'dwalkerg9', '1992/05/28', 5, 2, 9, 'fTFUDvmV9', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (587, 'jwagnerga', '1997/08/12', 2, 2, 13, 'N2kncLJe', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (588, 'anicholsgb', '1988/12/04', 8, 2, 24, 'S9eBoMlq', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (589, 'cgonzalesgc', '1996/02/05', 8, 3, 21, 'QbZDkW', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (590, 'tturnergd', '1999/09/05', 2, 5, 12, 'QfedOq9Q5Q', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (591, 'amasonge', '1994/12/23', 8, 3, 18, 'pwBFSCQF', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (592, 'dhawkinsgf', '1991/08/21', 3, 3, 15, 'lFfkF6H', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (593, 'ajacobsgg', '1993/12/05', 8, 2, 20, 'uWX3qhXBSiz', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (594, 'bwatsongh', '1987/01/18', 2, 2, 11, '0NQaUGt7AZ9u', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (595, 'bruizgi', '1981/07/13', 6, 4, 22, 'bHNLfs7ui', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (596, 'jgarrettgj', '1983/11/01', 3, 4, 18, '6e99EMGI', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (597, 'pedwardsgk', '1995/08/09', 4, 5, 23, '1s9foeC9YD8N', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (598, 'rbradleygl', '1983/10/06', 5, 1, 11, '3SPoLR', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (599, 'hcastillogm', '1988/04/14', 8, 5, 20, 'wbmmT5rHHyW', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (600, 'hlynchgn', '1985/01/20', 7, 1, 8, 'zZB99V6Ls5lZ', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (601, 'dlewisgo', '1985/09/13', 3, 5, 14, 'H0gPQtsM', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (602, 'rboydgp', '1987/04/18', 9, 4, 18, 'ZcWwYvgefa', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (603, 'bjohnstongq', '1989/04/21', 2, 5, 11, 'GCrw6pnLNyu6', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (604, 'kkimgr', '1988/12/20', 8, 3, 14, 'RzQaFOFeeE', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (605, 'fromerogs', '1997/12/01', 8, 4, 22, 'kD3KeO', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (606, 'cwebbgt', '1994/01/07', 2, 5, 14, 'QZLH8OSsZgD', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (607, 'dpiercegu', '1990/12/26', 3, 5, 16, 'sOT2fXVGz', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (608, 'slittlegv', '1998/03/25', 4, 5, 22, 'RvAhxktq', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (609, 'srogersgw', '1982/12/24', 3, 5, 25, 'lRIu6tiWV', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (610, 'amillergx', '1985/01/16', 8, 5, 17, 'vsiTWl6', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (611, 'bhicksgy', '1989/10/27', 3, 3, 15, 'GQRSEl21L', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (612, 'padamsgz', '1988/03/21', 9, 1, 9, 'LkmLsxkQS', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (613, 'cgutierrezh0', '1992/01/15', 1, 2, 25, 'dYKgtIaS', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (614, 'jlopezh1', '1992/10/26', 2, 4, 22, '1cDgvSRc0', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (615, 'jhicksh2', '1981/04/21', 5, 2, 25, 'peUHsHpy6aMe', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (616, 'tjohnsonh3', '1991/01/06', 3, 3, 10, 'nYhcmJX18A', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (617, 'ssimpsonh4', '1986/06/28', 1, 1, 11, 'ssChPKDfu', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (618, 'rjonesh5', '1985/11/22', 3, 5, 19, '9bc5LAvi3', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (619, 'amorrish6', '1984/04/30', 2, 2, 16, 'n4u8HZ4HsTE1', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (620, 'athompsonh7', '1980/12/17', 7, 4, 16, '5vDEIe', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (621, 'bcolemanh8', '1994/08/29', 6, 4, 11, 'dI08n4A4OL', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (622, 'ewardh9', '1997/08/08', 8, 1, 9, 'JP5rbJ', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (623, 'cburtonha', '1995/01/31', 7, 1, 11, 'UKgkblaKOq8', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (624, 'dfrazierhb', '1994/09/27', 3, 5, 15, 'S6zfsk', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (625, 'jcolemanhc', '1988/10/27', 7, 4, 25, 'F9m1AagD', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (626, 'esimshd', '1983/03/04', 3, 1, 8, 'st4vsJMao6AO', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (627, 'vhawkinshe', '1986/07/01', 8, 5, 18, 'htPN7FivV', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (628, 'cmorrisonhf', '1999/03/03', 6, 5, 9, 'H689ciN', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (629, 'tcarterhg', '1993/01/02', 9, 2, 9, 'X6vBaWdhF', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (630, 'kcolemanhh', '1984/06/01', 2, 4, 11, 'UaYRxl3PiFb', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (631, 'jgordonhi', '1996/08/30', 8, 4, 25, 'j85oQZ4f', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (632, 'lrosehj', '1997/09/24', 3, 1, 10, 'DpLqzQI1e2rm', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (633, 'tburtonhk', '1988/03/27', 4, 5, 24, 'RqJAlv', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (634, 'fcastillohl', '1995/01/05', 3, 5, 21, '2jsYDviTJO', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (635, 'jjacobshm', '1984/11/27', 7, 1, 25, 'inIOrS', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (636, 'msimpsonhn', '1993/12/14', 5, 1, 24, 'yWMeH7pwUo', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (637, 'rbryantho', '1987/04/18', 7, 2, 21, 'naHdEAplGR', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (638, 'hmeyerhp', '1991/12/05', 1, 5, 20, '5laZuZk6', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (639, 'mpricehq', '1980/06/22', 2, 2, 20, '7m0ni4bfTKjS', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (640, 'areidhr', '1996/04/10', 8, 5, 23, 'GZBkwDuYHIW', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (641, 'dkennedyhs', '1987/02/25', 8, 2, 21, '7eenMo87Dr', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (642, 'cfrazierht', '1989/08/30', 7, 3, 21, 'o7IDWFz41kT', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (643, 'lmorganhu', '1992/07/15', 7, 3, 12, 'g5PrKRH', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (644, 'jshawhv', '1989/11/18', 5, 5, 21, 'BB9XrhNn2Vc', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (645, 'wruizhw', '1989/03/09', 4, 4, 11, 'pTa4aupaXn', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (646, 'swallacehx', '1991/12/08', 2, 3, 14, 'yMX6hwulw', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (647, 'tphillipshy', '1989/09/11', 4, 5, 22, 'joxs2q', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (648, 'rharrishz', '1982/04/06', 5, 2, 17, '1CuYdCYm6gO', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (649, 'jsimmonsi0', '1986/01/17', 8, 4, 22, '4MV4dQ8NS73', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (650, 'kmccoyi1', '1989/08/18', 1, 2, 19, 'Hxn3Vjr9EO7i', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (651, 'rricei2', '1993/05/19', 3, 4, 19, '5wB4Pxr', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (652, 'dwatsoni3', '1989/09/22', 9, 5, 16, '3uxIggbUs', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (653, 'spiercei4', '1984/08/31', 9, 3, 17, 'TZSpcZFY85H8', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (654, 'mandrewsi5', '1981/12/18', 9, 2, 25, 'eFpZgDbsb', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (655, 'solsoni6', '1998/01/11', 3, 4, 10, 'FCtZDZ', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (656, 'wmorgani7', '1993/09/22', 5, 5, 13, 'lwiLFVBWLWAA', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (657, 'rpiercei8', '1980/12/03', 4, 4, 14, '0GYTvE', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (658, 'amorenoi9', '1985/02/22', 5, 5, 16, '8Ds1LVLudj', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (659, 'sdanielsia', '1999/12/19', 8, 5, 18, 'U2NZfh', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (660, 'ccoxib', '1990/12/17', 1, 3, 23, '5zH2JrR1', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (661, 'bfloresic', '1998/12/10', 5, 2, 12, 'X2Tm9fS5mL', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (662, 'efisherid', '1991/08/29', 4, 5, 25, 'UaZpjPfZeO2', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (663, 'celliottie', '1992/04/03', 1, 4, 8, '4Hba7UeF', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (664, 'rmorrisif', '1990/05/09', 4, 2, 8, 'wKFXlwasXF', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (665, 'tgilbertig', '1982/12/19', 2, 1, 25, 'Fkj54nCx', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (666, 'sknightih', '1999/02/12', 9, 1, 21, 'sadz2z', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (667, 'mnelsonii', '1987/05/30', 1, 2, 17, 'ERyxrd', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (668, 'kholmesij', '1998/06/24', 1, 5, 9, 'bdzffQdPJP', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (669, 'jjohnsonik', '1992/02/08', 4, 5, 17, 'dOvHFcJoAW', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (670, 'snguyenil', '1989/01/28', 8, 1, 11, '7JVjgZndTaWi', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (671, 'kwoodsim', '1984/08/31', 5, 5, 25, '5WTMBAkR35Z', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (672, 'lhuntin', '1988/08/03', 1, 3, 9, 'sCf1fG64rvcX', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (673, 'phowellio', '1993/10/31', 3, 3, 15, 'mdGrbGfWF', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (674, 'sperkinsip', '1986/06/26', 6, 2, 17, 'DoNkQJYJ', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (675, 'cchaveziq', '1983/07/28', 6, 3, 9, '2pMBRks', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (676, 'scruzir', '1996/06/19', 2, 3, 21, 'dRss8CA', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (677, 'sfulleris', '1982/05/13', 7, 3, 8, 'C3zQDi', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (678, 'ncarrollit', '1992/10/14', 5, 3, 18, 'mxzATEi', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (679, 'koliveriu', '1983/11/03', 3, 4, 20, 'fL7Hc0wvVC', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (680, 'gmccoyiv', '1991/08/18', 5, 5, 18, 'gSomkboEb', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (681, 'efernandeziw', '1990/09/11', 7, 3, 15, 'ARvqMDHvRDK', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (682, 'tchavezix', '1994/05/23', 1, 4, 12, 'wABp0XSuwd', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (683, 'gbakeriy', '1980/06/14', 6, 2, 11, 'gOYfcjue2a', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (684, 'mwashingtoniz', '1995/12/03', 5, 2, 10, 'HmgohYG7iVE', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (685, 'mcampbellj0', '1997/04/04', 4, 5, 17, '9jqm5oD', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (686, 'anicholsj1', '1995/03/13', 4, 3, 11, 'CI55wYyyPr', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (687, 'nandrewsj2', '1988/06/15', 7, 4, 20, 'x1xyedrQ', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (688, 'pharrisj3', '1980/11/23', 9, 3, 22, 'I7Vo2Nb4xr', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (689, 'cwatsonj4', '1988/12/18', 8, 2, 14, 'EnhktdEnjDoa', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (690, 'sgrantj5', '1994/09/10', 5, 3, 17, 'zmA4fLNd', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (691, 'jgarzaj6', '1998/08/26', 3, 2, 15, 'k08FwWmpB7A', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (692, 'jharperj7', '1992/09/21', 5, 3, 10, 'kyPsFGIJFGIk', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (693, 'cperezj8', '1982/05/04', 5, 2, 24, 'CNjGwIfTPZx', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (694, 'jrobertsj9', '1986/10/12', 6, 2, 13, 'hXOBqiEPfHui', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (695, 'ksmithja', '1995/09/11', 5, 5, 21, 'aHrDPDQ', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (696, 'slarsonjb', '1984/11/22', 4, 4, 12, 'EWu1zB', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (697, 'bporterjc', '1982/07/14', 7, 4, 10, 'aaBivX5Q8BNo', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (698, 'randersonjd', '1985/09/03', 3, 2, 11, 'nNFy99gHYM7', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (699, 'amyersje', '1985/08/09', 3, 4, 23, 'j77C8Ke', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (700, 'dbowmanjf', '1984/04/25', 1, 1, 11, 'ekwRym5', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (701, 'wowensjg', '1993/04/22', 1, 1, 15, 'b3FD9QtAsUl', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (702, 'gmorganjh', '1982/05/10', 1, 1, 17, 'XCJgwO8mazV', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (703, 'jphillipsji', '1988/11/10', 1, 2, 17, 'DSvPkJ', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (704, 'cwoodjj', '1988/12/15', 3, 4, 12, '5UUgism', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (705, 'areedjk', '1985/04/01', 2, 3, 22, 'Mp5YJtsK5MQE', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (706, 'mparkerjl', '1997/09/25', 6, 4, 15, 'QRPwHDvDnjHG', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (707, 'tburtonjm', '1990/12/07', 4, 4, 11, '5t2WhC9', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (708, 'cclarkjn', '1988/08/24', 1, 1, 25, 'qczLMw9IZy3', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (709, 'ephillipsjo', '1998/05/10', 8, 4, 13, 'lulZa3twH', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (710, 'druizjp', '1980/05/26', 8, 1, 9, 'PfTY3aB', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (711, 'tgibsonjq', '1982/07/13', 7, 5, 16, 'tPPhvCKvio', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (712, 'tgarrettjr', '1997/01/22', 7, 5, 10, 'orwHxy', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (713, 'helliottjs', '1991/12/10', 8, 3, 24, 'ZVxPxCiMao', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (714, 'awoodjt', '1998/03/19', 6, 4, 15, 'Xl41NJS', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (715, 'blewisju', '1997/02/17', 1, 5, 19, 'GUsDXX', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (716, 'ehudsonjv', '1988/11/02', 2, 4, 17, 'T4IOJg', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (717, 'mperryjw', '1989/12/14', 8, 3, 19, '5WG4hRyZ4h', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (718, 'scoxjx', '1980/01/17', 4, 1, 10, 'RXOVsLtiL', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (719, 'sryanjy', '1989/06/03', 7, 3, 25, 'K1JD7mTVE', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (720, 'dpattersonjz', '1997/02/01', 2, 5, 13, 'WZxSpqpkDlL', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (721, 'kedwardsk0', '1986/05/25', 8, 3, 10, 'e9UPWJ', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (722, 'jthompsonk1', '1996/03/03', 4, 3, 10, 'vPmLlGl87orp', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (723, 'nshawk2', '1999/05/25', 3, 4, 10, 'Wvu5gl2tWGhC', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (724, 'ccrawfordk3', '1980/09/11', 3, 2, 19, 'lKc4GebhE', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (725, 'scarrollk4', '1982/05/24', 7, 3, 13, 'YkaFY7', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (726, 'jcoxk5', '1990/12/27', 4, 4, 17, 'Ih9S3U', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (727, 'acrawfordk6', '1997/09/29', 1, 2, 22, 'ouX3NrR1', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (728, 'scollinsk7', '1990/08/10', 6, 3, 8, 'MvQ8rM4j', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (729, 'rreynoldsk8', '1994/11/29', 3, 4, 20, 'aVoKBoX', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (730, 'jdeank9', '1982/01/12', 1, 2, 8, 'SrRik3K', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (731, 'dfrazierka', '1994/02/25', 8, 4, 20, 'C9GAPaFj', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (732, 'nelliskb', '1989/11/15', 6, 2, 25, 'Q0xWSERXUIua', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (733, 'jmurphykc', '1985/11/18', 9, 1, 25, 'MMDnR3n', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (734, 'jgarzakd', '1988/07/05', 9, 4, 24, 'D78TeNhwJQa', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (735, 'ematthewske', '1986/04/13', 4, 5, 8, '95Re34Gsbi', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (736, 'ibutlerkf', '1980/04/07', 4, 2, 10, '1mRWUx2d2E', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (737, 'cwelchkg', '1986/06/16', 1, 3, 14, 'KXN4Qm', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (738, 'wmccoykh', '1990/01/25', 4, 2, 22, 'ZuptU4r5bG', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (739, 'mriceki', '1983/07/18', 4, 1, 18, 'Vxa5dwG', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (740, 'chernandezkj', '1997/09/19', 3, 3, 15, 'XqvXGxPKj8j', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (741, 'eduncankk', '1990/08/25', 3, 1, 21, 'fiZaL6pSm', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (742, 'haustinkl', '1989/11/02', 2, 3, 15, 'amcLstdWr', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (743, 'jwoodkm', '1989/08/10', 9, 2, 25, 'vY3IbE5', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (744, 'wwellskn', '1987/09/03', 6, 4, 24, 'V6QAxJLI317', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (745, 'amyersko', '1986/10/31', 2, 2, 11, 'qe9HaH7SeWWr', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (746, 'cmillerkp', '1981/08/22', 8, 4, 19, 'lBNYtcdtZU', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (747, 'dperkinskq', '1983/09/19', 6, 1, 24, '10Qo3yAE', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (748, 'jgarrettkr', '1994/09/20', 1, 4, 14, 'JvaEZnJKx2zu', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (749, 'mpriceks', '1989/09/07', 2, 2, 14, 'bcbjur', null);
insert into Invocateur (Num_Invocateur, Nom_Invocateur, Date_Naissance, Num_Serveur, Num_Role, Num_Rang, Mdp_Invocateur, Num_Token) values (750, 'mcarpenterkt', '1990/02/26', 7, 4, 24, '6hqKyw9PiOs4', null);

-- --------------------------------------------------------


--
-- Structure de la table `coach`
--

CREATE TABLE Coach (
  Num_Invocateur_Coach INTEGER NOT NULL,
  CONSTRAINT pk_Coach PRIMARY KEY (Num_Invocateur_Coach),
  CONSTRAINT fk_Num_Coach FOREIGN KEY (Num_Invocateur_Coach) REFERENCES Invocateur(Num_Invocateur) ON DELETE CASCADE
) ENGINE=InnoDB;

--
-- Contenu de la table `coach`
--

INSERT INTO Coach (Num_Invocateur_Coach) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31),
(32),
(33),
(34),
(35),
(36),
(37),
(38),
(39),
(40),
(41),
(42),
(43),
(44),
(45),
(46),
(47),
(48),
(49),
(50),
(51),
(52),
(53),
(54),
(55),
(56),
(57),
(58),
(59),
(60),
(61),
(62),
(63),
(64),
(65),
(66),
(67),
(68),
(69),
(70),
(71),
(72),
(73),
(74),
(75),
(76),
(77),
(78),
(79),
(80),
(81),
(82),
(83),
(84),
(85),
(86),
(87),
(88),
(89),
(90),
(91),
(92),
(93),
(94),
(95),
(96),
(97),
(98),
(99),
(100),
(101),
(102),
(103),
(104),
(105),
(106),
(107),
(108),
(109),
(110),
(111),
(112),
(113),
(114),
(115),
(116),
(117),
(118),
(119),
(120),
(121),
(122),
(123),
(124),
(125),
(126),
(127),
(128),
(129),
(130),
(131),
(132),
(133),
(134),
(135),
(136),
(137),
(138),
(139),
(140),
(141),
(142),
(143),
(144),
(145),
(146),
(147),
(148),
(149),
(150),
(151),
(152),
(153),
(154),
(155),
(156),
(157),
(158),
(159),
(160),
(161),
(162),
(163),
(164),
(165),
(166),
(167),
(168),
(169),
(170),
(171),
(172),
(173),
(174),
(175),
(176),
(177),
(178),
(179),
(180),
(181),
(182),
(183),
(184),
(185),
(186),
(187),
(188),
(189),
(190),
(191),
(192),
(193),
(194),
(195),
(196),
(197),
(198),
(199),
(200),
(201),
(202),
(203),
(204),
(205),
(206),
(207),
(208),
(209),
(210),
(211),
(212),
(213),
(214),
(215),
(216),
(217),
(218),
(219),
(220),
(221),
(222),
(223),
(224),
(225),
(226),
(227),
(228),
(229),
(230),
(231),
(232),
(233),
(234),
(235),
(236),
(237),
(238),
(239),
(240),
(241),
(242),
(243),
(244),
(245),
(246),
(247),
(248),
(249),
(250);



--
-- Structure de la table `eleve`
--

CREATE TABLE Eleve (
  Num_Invocateur_Eleve INTEGER NOT NULL,
  CONSTRAINT pk_Eleve PRIMARY KEY (Num_Invocateur_Eleve),
  CONSTRAINT fk_Num_Eleve FOREIGN KEY (Num_Invocateur_Eleve) REFERENCES Invocateur(Num_Invocateur) ON DELETE CASCADE
) ENGINE=InnoDB;

--
-- Contenu de la table `eleve`
--

INSERT INTO Eleve (Num_Invocateur_Eleve) VALUES
(251),
(252),
(253),
(254),
(255),
(256),
(257),
(258),
(259),
(260),
(261),
(262),
(263),
(264),
(265),
(266),
(267),
(268),
(269),
(270),
(271),
(272),
(273),
(274),
(275),
(276),
(277),
(278),
(279),
(280),
(281),
(282),
(283),
(284),
(285),
(286),
(287),
(288),
(289),
(290),
(291),
(292),
(293),
(294),
(295),
(296),
(297),
(298),
(299),
(300),
(301),
(302),
(303),
(304),
(305),
(306),
(307),
(308),
(309),
(310),
(311),
(312),
(313),
(314),
(315),
(316),
(317),
(318),
(319),
(320),
(321),
(322),
(323),
(324),
(325),
(326),
(327),
(328),
(329),
(330),
(331),
(332),
(333),
(334),
(335),
(336),
(337),
(338),
(339),
(340),
(341),
(342),
(343),
(344),
(345),
(346),
(347),
(348),
(349),
(350),
(351),
(352),
(353),
(354),
(355),
(356),
(357),
(358),
(359),
(360),
(361),
(362),
(363),
(364),
(365),
(366),
(367),
(368),
(369),
(370),
(371),
(372),
(373),
(374),
(375),
(376),
(377),
(378),
(379),
(380),
(381),
(382),
(383),
(384),
(385),
(386),
(387),
(388),
(389),
(390),
(391),
(392),
(393),
(394),
(395),
(396),
(397),
(398),
(399),
(400),
(401),
(402),
(403),
(404),
(405),
(406),
(407),
(408),
(409),
(410),
(411),
(412),
(413),
(414),
(415),
(416),
(417),
(418),
(419),
(420),
(421),
(422),
(423),
(424),
(425),
(426),
(427),
(428),
(429),
(430),
(431),
(432),
(433),
(434),
(435),
(436),
(437),
(438),
(439),
(440),
(441),
(442),
(443),
(444),
(445),
(446),
(447),
(448),
(449),
(450),
(451),
(452),
(453),
(454),
(455),
(456),
(457),
(458),
(459),
(460),
(461),
(462),
(463),
(464),
(465),
(466),
(467),
(468),
(469),
(470),
(471),
(472),
(473),
(474),
(475),
(476),
(477),
(478),
(479),
(480),
(481),
(482),
(483),
(484),
(485),
(486),
(487),
(488),
(489),
(490),
(491),
(492),
(493),
(494),
(495),
(496),
(497),
(498),
(499),
(500),
(501),
(502),
(503),
(504),
(505),
(506),
(507),
(508),
(509),
(510),
(511),
(512),
(513),
(514),
(515),
(516),
(517),
(518),
(519),
(520),
(521),
(522),
(523),
(524),
(525),
(526),
(527),
(528),
(529),
(530),
(531),
(532),
(533),
(534),
(535),
(536),
(537),
(538),
(539),
(540),
(541),
(542),
(543),
(544),
(545),
(546),
(547),
(548),
(549),
(550),
(551),
(552),
(553),
(554),
(555),
(556),
(557),
(558),
(559),
(560),
(561),
(562),
(563),
(564),
(565),
(566),
(567),
(568),
(569),
(570),
(571),
(572),
(573),
(574),
(575),
(576),
(577),
(578),
(579),
(580),
(581),
(582),
(583),
(584),
(585),
(586),
(587),
(588),
(589),
(590),
(591),
(592),
(593),
(594),
(595),
(596),
(597),
(598),
(599),
(600),
(601),
(602),
(603),
(604),
(605),
(606),
(607),
(608),
(609),
(610),
(611),
(612),
(613),
(614),
(615),
(616),
(617),
(618),
(619),
(620),
(621),
(622),
(623),
(624),
(625),
(626),
(627),
(628),
(629),
(630),
(631),
(632),
(633),
(634),
(635),
(636),
(637),
(638),
(639),
(640),
(641),
(642),
(643),
(644),
(645),
(646),
(647),
(648),
(649),
(650),
(651),
(652),
(653),
(654),
(655),
(656),
(657),
(658),
(659),
(660),
(661),
(662),
(663),
(664),
(665),
(666),
(667),
(668),
(669),
(670),
(671),
(672),
(673),
(674),
(675),
(676),
(677),
(678),
(679),
(680),
(681),
(682),
(683),
(684),
(685),
(686),
(687),
(688),
(689),
(690),
(691),
(692),
(693),
(694),
(695),
(696),
(697),
(698),
(699),
(700);
insert into Eleve (Num_Invocateur_Eleve) values (701);
insert into Eleve (Num_Invocateur_Eleve) values (702);
insert into Eleve (Num_Invocateur_Eleve) values (703);
insert into Eleve (Num_Invocateur_Eleve) values (704);
insert into Eleve (Num_Invocateur_Eleve) values (705);
insert into Eleve (Num_Invocateur_Eleve) values (706);
insert into Eleve (Num_Invocateur_Eleve) values (707);
insert into Eleve (Num_Invocateur_Eleve) values (708);
insert into Eleve (Num_Invocateur_Eleve) values (709);
insert into Eleve (Num_Invocateur_Eleve) values (710);
insert into Eleve (Num_Invocateur_Eleve) values (711);
insert into Eleve (Num_Invocateur_Eleve) values (712);
insert into Eleve (Num_Invocateur_Eleve) values (713);
insert into Eleve (Num_Invocateur_Eleve) values (714);
insert into Eleve (Num_Invocateur_Eleve) values (715);
insert into Eleve (Num_Invocateur_Eleve) values (716);
insert into Eleve (Num_Invocateur_Eleve) values (717);
insert into Eleve (Num_Invocateur_Eleve) values (718);
insert into Eleve (Num_Invocateur_Eleve) values (719);
insert into Eleve (Num_Invocateur_Eleve) values (720);
insert into Eleve (Num_Invocateur_Eleve) values (721);
insert into Eleve (Num_Invocateur_Eleve) values (722);
insert into Eleve (Num_Invocateur_Eleve) values (723);
insert into Eleve (Num_Invocateur_Eleve) values (724);
insert into Eleve (Num_Invocateur_Eleve) values (725);
insert into Eleve (Num_Invocateur_Eleve) values (726);
insert into Eleve (Num_Invocateur_Eleve) values (727);
insert into Eleve (Num_Invocateur_Eleve) values (728);
insert into Eleve (Num_Invocateur_Eleve) values (729);
insert into Eleve (Num_Invocateur_Eleve) values (730);
insert into Eleve (Num_Invocateur_Eleve) values (731);
insert into Eleve (Num_Invocateur_Eleve) values (732);
insert into Eleve (Num_Invocateur_Eleve) values (733);
insert into Eleve (Num_Invocateur_Eleve) values (734);
insert into Eleve (Num_Invocateur_Eleve) values (735);
insert into Eleve (Num_Invocateur_Eleve) values (736);
insert into Eleve (Num_Invocateur_Eleve) values (737);
insert into Eleve (Num_Invocateur_Eleve) values (738);
insert into Eleve (Num_Invocateur_Eleve) values (739);
insert into Eleve (Num_Invocateur_Eleve) values (740);
insert into Eleve (Num_Invocateur_Eleve) values (741);
insert into Eleve (Num_Invocateur_Eleve) values (742);
insert into Eleve (Num_Invocateur_Eleve) values (743);
insert into Eleve (Num_Invocateur_Eleve) values (744);
insert into Eleve (Num_Invocateur_Eleve) values (745);
insert into Eleve (Num_Invocateur_Eleve) values (746);
insert into Eleve (Num_Invocateur_Eleve) values (747);
insert into Eleve (Num_Invocateur_Eleve) values (748);
insert into Eleve (Num_Invocateur_Eleve) values (749);
insert into Eleve (Num_Invocateur_Eleve) values (750);

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Structure de la table `coaching`
--

CREATE TABLE Coaching (
  Num_Sceance INTEGER NOT NULL AUTO_INCREMENT,
  Date_Sceance date NOT NULL,
  Num_Invocateur_Eleve INTEGER NOT NULL,
  Num_Invocateur_Coach INTEGER NOT NULL,
  CONSTRAINT pk_Coaching PRIMARY KEY (Num_Sceance),
  CONSTRAINT fk_Coaching_Eleve FOREIGN KEY (Num_Invocateur_Eleve) REFERENCES Eleve(Num_Invocateur_Eleve) ON DELETE CASCADE,
  CONSTRAINT fk_Coaching_Coach FOREIGN KEY (Num_Invocateur_Coach) REFERENCES Coach(Num_Invocateur_Coach) ON DELETE CASCADE
) ENGINE=InnoDB;

--
-- Contenu de la table `coaching`
--

INSERT INTO Coaching (Num_Sceance, Date_Sceance, Num_Invocateur_Eleve, Num_Invocateur_Coach) VALUES
(1, '2015-12-17', 322, 75),
(2, '2015-04-18', 566, 46),
(3, '2015-12-30', 445, 214),
(4, '2015-06-16', 707, 29),
(5, '2015-07-04', 689, 154),
(6, '2015-11-09', 601, 165),
(7, '2015-06-10', 278, 155),
(8, '2015-09-01', 352, 32),
(9, '2015-07-21', 303, 177),
(10, '2015-07-20', 377, 75),
(11, '2015-10-30', 469, 164),
(12, '2015-10-18', 570, 32),
(13, '2015-01-15', 713, 53),
(14, '2015-09-24', 674, 58),
(15, '2015-03-16', 736, 193),
(16, '2015-10-05', 331, 16),
(17, '2015-03-20', 720, 96),
(18, '2015-12-25', 378, 218),
(19, '2015-09-29', 710, 241),
(20, '2015-09-19', 506, 149),
(21, '2015-11-09', 447, 237),
(22, '2015-03-16', 606, 154),
(23, '2015-06-20', 484, 72),
(24, '2015-12-13', 447, 35),
(25, '2015-09-04', 455, 106),
(26, '2015-01-23', 620, 223),
(27, '2015-08-03', 449, 116),
(28, '2015-12-25', 462, 76),
(29, '2015-08-17', 382, 60),
(30, '2015-09-24', 686, 218),
(31, '2015-09-16', 711, 136),
(32, '2015-04-23', 748, 114),
(33, '2015-09-06', 690, 140),
(34, '2015-09-07', 432, 101),
(35, '2015-03-15', 377, 236),
(36, '2015-02-26', 258, 20),
(37, '2015-11-30', 555, 103),
(38, '2015-08-15', 402, 204),
(39, '2015-07-11', 475, 190),
(40, '2015-08-31', 258, 224),
(41, '2015-05-27', 610, 79),
(42, '2015-04-19', 562, 10),
(43, '2015-03-08', 602, 91),
(44, '2015-11-23', 423, 124),
(45, '2015-09-15', 287, 244),
(46, '2015-10-10', 603, 16),
(47, '2015-10-08', 634, 44),
(48, '2015-06-28', 292, 220),
(49, '2015-02-07', 496, 228),
(50, '2015-05-23', 679, 168),
(51, '2015-09-27', 561, 165),
(52, '2015-04-11', 349, 171),
(53, '2015-07-19', 624, 236),
(54, '2015-07-16', 443, 43),
(55, '2015-12-08', 317, 29),
(56, '2015-07-23', 586, 67),
(57, '2015-07-06', 669, 4),
(58, '2015-04-06', 486, 227),
(59, '2015-03-29', 383, 114),
(60, '2015-09-29', 407, 91),
(61, '2015-09-11', 412, 160),
(62, '2015-09-13', 421, 237),
(63, '2015-03-07', 288, 150),
(64, '2015-05-26', 503, 68),
(65, '2015-05-19', 344, 40),
(66, '2015-04-01', 348, 158),
(67, '2015-04-09', 640, 195),
(68, '2015-06-23', 654, 157),
(69, '2015-07-25', 515, 16),
(70, '2015-06-21', 454, 20),
(71, '2015-07-30', 460, 25),
(72, '2015-01-27', 322, 24),
(73, '2015-03-20', 515, 216),
(74, '2015-01-13', 411, 57),
(75, '2015-09-18', 414, 53),
(76, '2015-08-04', 271, 233),
(77, '2015-07-04', 267, 210),
(78, '2015-08-05', 413, 41),
(79, '2015-06-09', 291, 149),
(80, '2015-02-21', 655, 91),
(81, '2015-07-10', 704, 190),
(82, '2015-06-27', 333, 15),
(83, '2015-11-11', 741, 97),
(84, '2015-04-30', 453, 80),
(85, '2015-04-17', 380, 117),
(86, '2015-06-28', 608, 163),
(87, '2015-06-06', 677, 51),
(88, '2015-02-04', 620, 9),
(89, '2015-10-08', 594, 212),
(90, '2015-08-09', 595, 223),
(91, '2015-10-23', 503, 202),
(92, '2015-03-06', 317, 222),
(93, '2015-02-12', 364, 160),
(94, '2015-02-06', 735, 176),
(95, '2015-03-22', 391, 247),
(96, '2015-01-14', 588, 8),
(97, '2015-06-30', 623, 10),
(98, '2015-06-29', 316, 51),
(99, '2015-05-01', 516, 83),
(100, '2015-03-12', 432, 15),
(101, '2015-04-21', 689, 30),
(102, '2015-12-28', 400, 87),
(103, '2015-05-05', 577, 4),
(104, '2015-11-27', 579, 180),
(105, '2015-09-04', 493, 236),
(106, '2015-11-22', 629, 208),
(107, '2015-04-16', 675, 96),
(108, '2015-03-26', 719, 173),
(109, '2015-04-08', 480, 185),
(110, '2015-11-10', 328, 87),
(111, '2015-11-29', 319, 48),
(112, '2015-01-16', 477, 161),
(113, '2015-11-16', 285, 7),
(114, '2015-11-22', 466, 112),
(115, '2015-06-18', 355, 84),
(116, '2015-04-18', 739, 5),
(117, '2015-06-11', 732, 169),
(118, '2015-08-13', 699, 99),
(119, '2015-05-05', 722, 227),
(120, '2015-05-09', 357, 137),
(121, '2015-11-18', 695, 102),
(122, '2015-05-20', 636, 2),
(123, '2015-07-20', 285, 93),
(124, '2015-07-11', 545, 41),
(125, '2015-11-20', 534, 248),
(126, '2015-09-01', 632, 235),
(127, '2015-09-13', 745, 129),
(128, '2015-11-26', 477, 76),
(129, '2015-06-17', 522, 56),
(130, '2015-05-17', 414, 90),
(131, '2015-01-25', 721, 101),
(132, '2015-07-13', 537, 66),
(133, '2015-09-02', 427, 146),
(134, '2015-02-18', 658, 231),
(135, '2015-08-20', 515, 182),
(136, '2015-08-04', 584, 47),
(137, '2015-01-03', 517, 200),
(138, '2015-01-19', 525, 214),
(139, '2015-08-09', 590, 155),
(140, '2015-04-07', 629, 204),
(141, '2015-09-30', 327, 153),
(142, '2015-02-05', 559, 162),
(143, '2015-11-24', 624, 37),
(144, '2015-09-12', 272, 93),
(145, '2015-05-09', 319, 182),
(146, '2015-12-02', 546, 187),
(147, '2015-12-06', 654, 112),
(148, '2015-08-13', 479, 14),
(149, '2015-02-08', 533, 79),
(150, '2015-05-01', 643, 105),
(151, '2015-07-09', 735, 72),
(152, '2015-08-20', 703, 68),
(153, '2015-05-16', 346, 91),
(154, '2015-01-07', 662, 188),
(155, '2015-04-20', 379, 249),
(156, '2015-06-26', 329, 248),
(157, '2015-05-29', 547, 47),
(158, '2015-01-13', 405, 111),
(159, '2015-05-19', 425, 202),
(160, '2015-03-14', 384, 75),
(161, '2015-03-11', 315, 143),
(162, '2015-03-31', 720, 121),
(163, '2015-02-16', 642, 140),
(164, '2015-08-07', 582, 229),
(165, '2015-08-21', 375, 128),
(166, '2015-11-23', 354, 108),
(167, '2015-03-28', 387, 100),
(168, '2015-08-23', 691, 178),
(169, '2015-04-26', 464, 174),
(170, '2015-07-31', 256, 216),
(171, '2015-08-07', 429, 59),
(172, '2015-11-07', 344, 191),
(173, '2015-12-17', 591, 172),
(174, '2015-12-20', 378, 70),
(175, '2015-07-27', 626, 57),
(176, '2015-02-18', 564, 42),
(177, '2015-04-04', 318, 177),
(178, '2015-07-04', 588, 171),
(179, '2015-03-22', 266, 22),
(180, '2015-02-13', 712, 238),
(181, '2015-09-01', 578, 230),
(182, '2015-04-29', 364, 209),
(183, '2015-01-20', 690, 103),
(184, '2015-11-13', 559, 85),
(185, '2015-11-23', 385, 28),
(186, '2015-04-06', 570, 68),
(187, '2015-01-03', 372, 184),
(188, '2015-07-07', 732, 79),
(189, '2015-11-24', 628, 174),
(190, '2015-10-21', 475, 168),
(191, '2015-05-11', 570, 239),
(192, '2015-08-23', 436, 239),
(193, '2015-12-01', 509, 14),
(194, '2015-12-27', 382, 240),
(195, '2015-04-29', 339, 228),
(196, '2015-05-30', 632, 127),
(197, '2015-06-29', 434, 102),
(198, '2015-02-22', 607, 34),
(199, '2015-06-05', 531, 229),
(200, '2015-12-06', 362, 98);

--
-- Trigger 
--

-- Création de la table Erreur
CREATE TABLE Erreur (
    Num_Erreur INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nom_Erreur VARCHAR(255) UNIQUE);
	
-- Insertion de l'erreur qui nous intéresse
INSERT INTO Erreur (Nom_Erreur) VALUES ('Erreur : You must be at least 16');
INSERT INTO Erreur (Nom_Erreur) VALUES ('Erreur : The coach must have a higher rank');



delimiter // 
CREATE TRIGGER rankCoach 
  BEFORE INSERT ON Coach
  FOR EACH ROW 
  BEGIN
	  DECLARE numRang integer;
		SELECT Num_Rang into numRang FROM Invocateur WHERE Num_Invocateur = NEW.Num_Invocateur_Coach;
		IF numRang > 7 THEN
			INSERT INTO Erreur (Nom_Erreur) VALUES ('Erreur : The coach must have a higher rank');
		END IF;
	END// 
delimiter ;



delimiter // 
CREATE TRIGGER ageRequired 
  BEFORE INSERT ON Invocateur
  FOR EACH ROW 
  BEGIN
		IF NEW.Date_Naissance > "2000-01-01" THEN
			INSERT INTO Erreur (Nom_Erreur) VALUES ('Erreur : You must be at least 16');
		END IF;
	END// 
delimiter ;










