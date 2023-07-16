SELECT C.CustomerID, SUM(OD.Quantity*P.Price) AS Total
FROM Customers AS C
JOIN Orders AS O ON C.CustomerID = O.CustomerID
JOIN OrderDetails AS OD ON O.OrderID = OD.OrderID
JOIN Products AS P ON OD.ProductID = P.ProductID
GROUP BY C.CustomerID;

SELECT C.CategoryName, SUM(OD.Quantity) AS `총 판매량`, SUM(P.Price*OD.Quantity) AS `총 판매 금액`
FROM OrderDetails AS OD
JOIN Products AS P ON OD.ProductID = P.ProductID
JOIN Categories AS C ON P.CategoryID = C.CategoryID
GROUP BY C.CategoryID HAVING `총 판매량` > 2000;

