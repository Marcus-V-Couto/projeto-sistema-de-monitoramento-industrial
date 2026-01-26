INSERT INTO maquinas (nome, tempo_ciclo_ideal_segundos)
VALUES
('Prensa A', 30),
('Montagem B', 45);

INSERT INTO log_producao 
(id_maquina, turno, inicio, fim, qtde_producao, qtde_qualitativa)
VALUES
(1, 'Turno1', '2026-01-21 08:00', '2026-01-21 12:00', 400, 380),
(2, 'Turno1', '2026-01-21 08:00', '2026-01-21 12:00', 300, 290);

INSERT INTO log_inatividade
(id_maquina, inicio, fim, causa)
VALUES
(1, '2026-01-21 09:30', '2026-01-21 09:50', 'Manutenção'),
(2, '2026-01-21 10:10', '2026-01-21 10:20', 'Ajuste');

INSERT INTO defeitos
(id_producao, tipo_defeito, qtde)
VALUES
(1, 'Rebarba', 10),
(2, 'Falta de peça', 5);