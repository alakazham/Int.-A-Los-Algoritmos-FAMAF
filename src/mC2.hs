--- Parcialito

--- Ejercicio 1  (10p)
algunOrden :: (Int, Int, Int) -> Bool 
algunOrden (x,y,z) = (((x >= y) && (y>=z)) || ((z>=y) && (y>=x)))
                   
--- Ejercicio 2.a (10p)
--- Definir la función absoluto que dada una lista de números cosntruye una lista con los valores absolutos 
--- dela primera  
absoluto :: [Int] -> [Int]
absoluto [] = [] --- caso base 
absoluto (x:xs) | x>=0 = x:absoluto xs --- recursion 
                | otherwise = absoluto xs --- completo para todos los casos    

--- Esjercicio  2.b (5p)
--- Evaluar la funcion anterior explicando cada paso 

--- Ejercicio 3.a (15p)
--- Definir la funcion recursiva superaNota que dado un numero N y
--- una lista de números xs, devuelv cúantos elementos de xs son 
--- mayores o iguales a N 

superaNota :: [Int] -> Int -> Int 
superaNota [] xs = 0
superaNota (x:xs) y | (x >= y) = 1+superaNota xs y
                    | otherwise = superaNota xs y

--- Ejercicio 3.b (5p)
--- Usar la funcion anterior para definir la funcion regulares 
--- [Num] -> Num que dada una lista xs de notas de alumnos devulev la
--- cantidad de alumnos que regularizaron pero no promocionaron, es decir
--- las otas de n en xs que cumpen 4=<n<0 

regulares :: [Int] -> Int
regulares (x:xs) = (superaNota (x:xs) 4) - (superaNota (x:xs) 6)












