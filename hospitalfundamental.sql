CREATE database hospital_data;

USE hospital_data;

		CREATE TABLE Medicos (
			MedicoID INT PRIMARY KEY,
			Nome VARCHAR (512),
			Especialidade VARCHAR (512),
			Consultas INT
		);

			INSERT INTO Medicos (MedicoID, Nome, Especialidade, Consultas) VALUES 
			(1, 'Gabriel Silva', 'Dermatologia', 459108),
			(2, 'Bruno Santos', 'Clínica Geral', 837245),
			(3, 'Lara Martins', 'Pediatria', 684201),
			(4, 'Mateus Costa', 'Gastrenterologia', 198467),
			(5, 'Valentina Rocha', 'Cardiologia', 376528),
			(6, 'Alice Ferreira', 'Clínica Geral', 920134),
			(7, 'Lucas Oliveira', 'Dermatologia', 310975),
			(8, 'Juan Pereira', 'Pediatria', 726534),
			(9, 'Sofia Almeida', 'Ortopedia', 572396),
			(10, 'Isabella Lima', 'Neurologia', 503892);

				ALTER TABLE Medicos
				ADD COLUMN Em_Atividade BOOLEAN;

				UPDATE Medicos SET Em_Atividade = false WHERE MedicoID IN (1, 3);
				UPDATE Medicos SET Em_Atividade = true WHERE MedicoID NOT IN (1, 3);

		CREATE TABLE Enfermeiros (
			EnfermeiroID INT PRIMARY KEY,
			Nome VARCHAR (512),
			CRE VARCHAR(512) )

			INSERT INTO Enfermeiros (EnfermeiroID, Nome, CRE) VALUES 
			(1, 'Isadora Ferreira', 'Ativo'),
			(2, 'Gustavo Rodrigues', 'Ativo'),
			(3, 'Marcos Oliveira', 'Ativo'),
			(4, 'Amanda Santos', 'Ativo'),
			(5, 'Eduardo Almeida', 'Ativo'),
			(6, 'Juliana Martins', 'Ativo'),
			(7, 'Leonardo Pereira', 'Ativo'),
			(8, 'Larissa Rocha', 'Ativo'),
			(9, 'Vinícius Silva', 'Ativo'),
			(10, 'Camila Costa', 'Ativo');

		CREATE TABLE Pacientes (
			PacienteID INT PRIMARY KEY,
			Nome VARCHAR (512),
			Nascimento DATE,
			Genero CHAR (9),
			RG VARCHAR(20),
			CPF VARCHAR(14),
			Convenio VARCHAR (512),
			Endereço VARCHAR (512),
			Telefone VARCHAR(15),
			Email VARCHAR (512)
		);

			INSERT INTO Pacientes (PacienteID, Nome, Nascimento, Genero, RG, CPF, Convenio, Endereço, Telefone, Email) VALUES 
    			(1, 'Mariana Alves', '2010-09-18', 'Feminino', '7865432109', '98765432101', 'Vida Plena', 'Rua das Flores, 123, Bairro Alegria, Cidade Feliz', '11987654321', 'mariana.alves@email.com'),
    			(2, 'Rafael Pereira', '1990-09-17', 'Masculino', '1234567890', '12345678902', 'Nenhum', 'Avenida do Sol, 456, Bairro Primavera, Cidade Tranquila', '21876543210', 'rafael.pereira@email.com'),
    (3, 'Fernanda Lima', '1985-03-05', 'Feminino', '9876543210', '87654321098', 'Nenhum', 'Travessa da Paz, 789, Bairro Harmonia, Cidade Serena', '31765432109', 'fernanda.lima@email.com'),
    			(4, 'Alexandre Santos', '2001-07-22', 'Masculino', '4567890123', '23456789012', 'Nenhum', 'Alameda das Estrelas, 210, Bairro Celestial, Cidade Radiante', '41654321098', 'alexandre.santos@email.com'),
    			(5, 'Bruna Oliveira', '1978-11-14', 'Feminino', '5678901234', '10987654321', 'Saúde Total', 'Praça da Liberdade, 543, Bairro Liberdade, Cidade Livre', '51543210987', 'bruna.oliveira@email.com'),
    			(6, 'Lucas Costa', '2015-12-25', 'Masculino', '3456789012', '32109876543', 'Nenhum', 'Rua da Amizade, 876, Bairro Amável, Cidade Amistosa', '61432109876', 'lucas.costa@email.com'),
    			(7, 'Vanessa Rodrigues', '1995-05-30', 'Feminino', '8901234567', '89012345678', 'Nenhum', 'Avenida do Mar, 321, Bairro Marítimo, Cidade Oceânica', '71321098765', 'vanessa.rodrigues@email.com'),
    			(8, 'Tiago Ferreira', '1982-12-08', 'Masculino', '2345678901', '54321098765', 'Nenhum', 'Estrada da Esperança, 654, Bairro Esperança, Cidade Esperançosa', '81210987654', 'tiago.ferreira@email.com'),
    			(9, 'Isabella Rocha', '2006-11-14', 'Feminino', '1098765432', '21098765432', 'Vida Plena', 'Travessa da Alegria, 987, Bairro Feliz, Cidade Acolhedora', '91109876543', 'isabella.rocha@email.com'),
    			(10, 'Pedro Martins', '2000-04-19', 'Masculino', '6789012345', '87654321098', 'Nenhum', 'Rua da Solidariedade, 132, Bairro Solidário, Cidade Solidária', '62432109876', 'pedro.martins@email.com'),
    			(11, 'Carolina Silva', '1989-09-11', 'Feminino', '5432109876', '45678901234', 'BemCuidar', 'Alameda das Árvores, 765, Bairro Arborizado, Cidade Verde', '12987654321', 'carolina.silva@email.com'),
    			(12, 'Victor Oliveira', '2012-08-02', 'Masculino', '4321098765', '12345678901', 'Nenhum', 'Praça da Felicidade, 294, Bairro Feliz, Cidade Alegre', '22876543210', 'victor.oliveira@email.com'),
    			(13, 'Leticia Pereira', '1973-01-27', 'Feminino', '8901234567', '87654321098', 'Nenhum', 'Rua da Tranquilidade, 501, Bairro Calmo, Cidade Pacífica', '32765432109', 'leticia.pereira@email.com'),
    			(14, 'Gabriel Souza', '1998-08-03', 'Masculino', '3456789012', '23456789012', 'Nenhum', 'Avenida da Harmonia, 879, Bairro Harmônico, Cidade Serena', '42654321098', 'gabriel.souza@email.com'),
    			(15, 'Camila Santos', '2007-03-07', 'Feminino', '5678901234', '56789012345', 'Equilíbrio Saúde', 'Travessa do Bem, 234, Bairro Bom, Cidade Boa', '52543210987', 'camila.santos@email.com');


		CREATE TABLE Internaçoes (
			InternaçaoID INT PRIMARY KEY,
			PacienteID INT,
			MedicoID INT,
			EnfermeiroID INT,
			EnfermeiroID2 INT,
			Data_da_Internaçao DATE,
			Hospedagem_Quarto VARCHAR (512),
			QuartoID INT,
			Descriçao_Textual_de_Procedimentos TEXT,
			Data_Prevista_de_Alta DATE,
			Data_Efetivada_de_Alta DATE
		);

			INSERT INTO Internaçoes (InternaçaoID, PacienteID, MedicoID, EnfermeiroID, EnfermeiroID2, Data_da_Internaçao, Hospedagem_Quarto, QuartoID, Descriçao_Textual_de_Procedimentos, Data_Prevista_de_Alta, Data_Efetivada_de_Alta) VALUES 
			(1, 1, 10, 5, 6, '2015-04-07', 'Enfermaria', 1, 'Diagnóstico e tratamento de distúrbios neuromusculares', '2015-04-07', '2015-04-07'),
			(2, 2, 1, 3, 8, '2019-10-22', 'Quarto duplo', 3, 'Remoção de lesões benignas; Exame de pele para detecção de câncer de pele', '2019-10-24', '2019-10-24'),
			(3, 6, 3, 9, 7, '2020-01-15', 'Quarto duplo', 4, 'Tratamento de infecções respiratórias em crianças; Acompanhamento de crescimento e peso', '2020-01-18', '2020-01-17'),
			(4, 2, 4, 1, 4, '2021-05-26', 'Quarto duplo', 3, 'Gerenciamento de distúrbios digestivos', '2021-05-26', '2021-05-26'),
			(5, 6, 3, 3, 5, '2021-11-08', 'Apartamento', 5, 'Monitoramento regular do desenvolvimento neurológico e psicomotor, identificando precocemente possíveis atrasos ou problemas', '2021-11-08', '2021-11-09'),
			(6, 11, 5, 4, 7, '2018-08-28', 'Apartamento', 6, 'Acompanhamento pós-infarto do miocárdio; Gerenciamento de pressão arterial elevada', '2018-08-29', '2018-08-30'),
			(7, 13, 10, 9, 2, '2017-09-12', 'Enfermaria', 2, 'EEG (eletroencefalograma) para avaliação da atividade cerebral', '2017-09-12', '2017-09-12');


		CREATE TABLE Consultas (
			ConsultasID INT PRIMARY KEY,
			Medico_Responsavel VARCHAR (512),
			Paciente VARCHAR (512),
			Data_e_Hora TIMESTAMP,
			Convenio VARCHAR (512),
			Valor_Consulta DECIMAL (10,2)
		);
			
			INSERT INTO Consultas (ConsultasID, Medico_Responsavel, Paciente, Data_e_Hora, Convenio, Valor_Consulta) VALUES
			(1, 'Dr. Gabriel Silva', 'Rafael Pereira', '2015-02-23 14:30:00', 'Nenhum', 120.00),
			(2, 'Dra. Lara Martins', 'Alexandre Santos', '2020-12-01 08:00:00', 'Nenhum', 90.50),
			(3, 'Dr. Mateus Costa', 'Bruna Oliveira', '2017-08-29 10:30:00', 'Saúde Total', 80.00),
			(4, 'Dr. Juan Pereira', 'Mariana Alves', '2015-01-15 15:00:00', 'Vida Plena', 110.75),
			(5, 'Dr. Lucas Oliveira', 'Vanessa Rodrigues', '2021-10-31 12:30:00', 'Nenhum', 95.25),
			(6, 'Dra. Sofia Almeida', 'Tiago Ferreira', '2016-09-14 16:00:00', 'Nenhum', 130.00),
			(7, 'Dra. Valentina Rocha', 'Pedro Martins', '2020-07-30 11:00:00', 'Nenhum', 105.50),
			(8, 'Dr. Gabriel Silva', 'Carolina Silva', '2015-12-20 17:30:00', 'BemCuidar', 75.00),
			(9, 'Dra. Isabella Lima', 'Leticia Pereira', '2019-05-15 09:00:00', 'Nenhum', 100.25),
			(10, 'Dra. Sofia Almeida', 'Gabriel Souza', '2021-08-10 10:00:00', 'Nenhum', 115.75),
			(11, 'Dr. Mateus Costa', 'Camila Santos', '2017-06-24 16:30:00', 'Equilíbrio Saúde', 125.50),
			(12, 'Dra. Isabella Lima', 'Bruna Oliveira', '2016-01-20 13:30:00', 'Saúde Total', 85.00),
			(13, 'Dr. Juan Pereira', 'Isabella Rocha', '2020-09-16 10:00:00', 'Vida Plena', 95.75),
			(14, 'Dra. Valentina Rocha', 'Leticia Pereira', '2015-10-26 14:00:00', 'Nenhum', 110.00),
			(15, 'Dr. Bruno Santos', 'Carolina Silva', '2021-06-18 11:30:00', 'BemCuidar', 120.25),
			(16, 'Dr. Lucas Oliveira', 'Rafael Pereira', '2017-04-01 16:00:00', 'Nenhum', 80.50),
			(17, 'Dr. Bruno Santos', 'Pedro Martins', '2018-03-02 07:30:00', 'Nenhum', 105.00),
			(18, 'Dra. Alice Ferreira', 'Tiago Ferreira', '2021-12-01 08:00:00', 'Nenhum', 90.25),
			(19, 'Dra. Alice Ferreira', 'Camila Santos', '2015-03-08 11:00:00', 'Equilíbrio Saúde', 115.50),
			(20, 'Dra. Lara Martins', 'Lucas Costa', '2019-02-12 10:00:00', 'Nenhum', 125.75);

		CREATE TABLE Quartos (
			QuartoID INT PRIMARY KEY,
			Número INT,
			Tipo TEXT (12), -- Apartamento, quarto duplo ou enfermaria
			Valor_Diario DECIMAL (10,2)
		);

			INSERT INTO Quartos (QuartoID, Número, Tipo, Valor_Diario) VALUES 
			(1, 101, 'Enfermaria', 50.00),
			(2, 102, 'Enfermaria', 50.00),
			(3, 103, 'Quarto duplo', 100.00),
			(4, 104, 'Quarto duplo', 100.00),
			(5, 105, 'Apartamento', 150.00),
			(6, 106, 'Apartamento', 150.00);

		CREATE TABLE Encerramento_de_Consulta (
			EncerramentoID INT PRIMARY KEY,
			Paciente VARCHAR (512),
			Receita VARCHAR (512),
			Valor_Total DECIMAL (10,2)
		);

			INSERT INTO Encerramento_de_Consulta (EncerramentoID, Paciente, Receita, Valor_Total) VALUES 
			(1, 'Rafael Pereira', 'Nenhum', 120.00),
			(2, 'Alexandre Santos', 'Loratadina 10mg (Tomar 1 comprimido diariamente); Colírio antialérgico (Aplicar 1 gota em cada olho a cada 12 horas)', 125.50),
			(3, 'Bruna Oliveira', 'Nenhum', 80.00),
			(4, 'Mariana Alves', 'Metformina 500mg (Tomar 1 comprimido duas vezes ao dia, antes das refeições); Glibenclamida 2,5 mg (Tomar 1 comprimido diário)', 196.00),
			(5, 'Vanessa Rodrigues', 'Nenhum', 95.25),
			(6, 'Tiago Ferreira', 'Paracetamol 500mg (Tomar 1 comprimido a cada 6 horas); Ibuprofeno 200mg (Tomar 1 comprimido a cada 8 horas); Xarope para tosse (Seguir instruções do rótulo)', 203.80),
			(7, 'Pedro Martins', 'Levotiroxina 50mcg (Tomar 1 comprimido diariamente, em jejum); Iodo (Seguir instruções do rótulo)', 160.35),
			(8, 'Carolina Silva', 'Nenhum', 75.00),
			(9, 'Leticia Pereira', 'Losartana 50mg (Tomar 1 comprimido diário); Hidroclorotiazida 25mg (Tomar 1 comprimido diário)', 191.00),
			(10, 'Gabriel Souza', 'Sertralina 50mg (Tomar 1 comprimido diário); Alprazolam 0,25mg (Tomar 1 comprimido conforme necessário para crises de ansiedade)', 159.30),
			(11, 'Camila Santos', 'Nenhum', 125.50),
			(12, 'Bruna Oliveira', 'Nenhum', 85.00),
			(13, 'Isabella Rocha', 'Amoxicilina 500mg (Tomar 1 comprimido a cada 8 horas); Xarope expectorante (Seguir instruções do rótulo)', 135.00),
			(14, 'Leticia Pereira', 'Nenhum', 110.00),
			(15, 'Carolina Silva', 'Omeprazol 20mg (Tomar 1 comprimido antes do café da manhã); Metoclopramida 10mg (Tomar 1 comprimido 30 minutos antes das refeições)', 193.15),
			(16, 'Rafael Pereira', 'Nenhum', 80.50),
			(17, 'Pedro Martins', 'Tramadol 50mg (Tomar 1 comprimido a cada 6 horas conforme necessário); Paracetamol 500mg (Tomar 1 comprimido a cada 4 horas se a dor persistir)', 138.30),
			(18, 'Tiago Ferreira', 'Nenhum', 90.25),
			(19, 'Camila Santos', 'Nenhum', 115.50),
			(20, 'Lucas Costa', 'Ciprofloxacino 500mg (Tomar 1 comprimido a cada 12 horas); Ibuprofeno 200mg (Tomar 1 comprimido a cada 8 horas se houver dor)', 169.75);
            
            
            