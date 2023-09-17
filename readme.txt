Команды со сбору образа и запуску контейнера:
docker build -t test_image:latest .
docker run -d –p 5432:5432 --name test_container test_image:latest

Задание 2. Пополнение таблицы
docker start test_container // старт контейнера
docker exec -it test_container bash // запускаем оболочку и открывает ввод
psql -U username database //заходим для для работы с sql и скриптом
INSERT INTO index_mass (user_id, weight, height) VALUES  (1, '60', 175),  (2, '80', 182),  (3, '70', 181);