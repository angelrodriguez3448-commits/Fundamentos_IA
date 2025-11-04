import numpy as np
import skfuzzy as fuzz
import matplotlib.pyplot as plt

#Entrada del usuario
print("Bienvenido al sistema de propinas")
servicio = int(input('Del 0 al 10, ¿Como estuvo el servicio?'))
comida = int(input('Del 0 al 10, ¿Como estuvo la comida?'))

#Crear variables linguisticas de entrada
#Variable de servicio
x_servicio = np.linspace(0, 10, 100)
s_malo = fuzz.trapmf(x_servicio, [0, 2, 3, 5])
s_normal = fuzz.trimf(x_servicio, [2, 5, 8])
s_bueno = fuzz.smf(x_servicio, 6, 9)

#Variable de comida
x_comida = np.linspace(0, 10, 100)
c_rancia = fuzz.zmf(x_comida, 0, 5)
c_normal = fuzz.pimf(x_comida, 0, 3, 7, 10)
c_deliciosa = fuzz.smf(x_comida, 5, 10)

#Variables linguisticas de salida   
#Variable de propina
x_propina = np.linspace(0, 35, 100)
p_trabajador = fuzz.gaussmf(x_propina, 0, 10)
p_normal = fuzz.gauss2mf(x_propina, 7, 12, 20, 28)
p_rico = fuzz.gaussmf(x_propina, 25, 35)

#Fuzzificacion
s_mal = fuzz.interp_membership(x_servicio, s_malo, servicio)
s_nor = fuzz.interp_membership(x_servicio, s_normal, servicio)
s_bue = fuzz.interp_membership(x_servicio, s_bueno, servicio)

c_ran = fuzz.interp_membership(x_servicio, c_rancia, servicio)
c_nor = fuzz.interp_membership(x_servicio, c_normal, servicio)
c_del = fuzz.interp_membership(x_servicio, c_deliciosa, servicio)

#Reglas
#Regla 1: Si el servicio es malo O la comida es rancia, entonces la propina es nivel trabajador
regla_1 = np.fmin(np.fmax(s_mal, c_ran), p_trabajador)
#Regla 2: Si el servicio es normal, entonces la propina es nivel normal
regla_2 = np.fmin(s_nor, p_normal)
#Regla 3: Si el servicio es bueno Y la comida es deliciosa, entonces la propina es nivel rico
regla_3 = np.fmin(np.fmin(s_bue, c_del), p_rico)

#Agregar todas las reglas
agregado = np.fmax(regla_1, np.fmax(regla_2, regla_3))

#Defuzzificacion
propina_centroide = fuzz.defuzz(x_propina, agregado, 'centroid')
propina_bisectriz = fuzz.defuzz(x_propina, agregado, 'bisector')
propina_medio = fuzz.defuzz(x_propina, agregado, 'mom')
propina_pequeño = fuzz.defuzz(x_propina, agregado, 'som')
propina_grande = fuzz.defuzz(x_propina, agregado, 'lom')

#Mostrar resultados
print(f'Propina por centroide: {propina_centroide:.5f}%')
print(f'Propina por bisectriz: {propina_bisectriz:.5f}%')
print(f'Propina por medio de maximos: {propina_medio:.5f}%')
print(f'Propina por menor maximo: {propina_pequeño:.5f}%')
print(f'Propina por mayor maximo: {propina_grande:.5f}%')

#Visualizacion
fig = plt.figure(figsize=(27, 10))

plt.subplot(2, 3, 1)
plt.title('Calidad del Servicio')
plt.plot(x_servicio, s_malo, label='Malo', color='r')
plt.plot(x_servicio, s_normal, label='Normal', color='y')
plt.plot(x_servicio, s_bueno, label='Bueno', color='g')
plt.legend(loc='upper left')
plt.ylim([0, 1])

plt.subplot(2, 3, 2)
plt.title('Calidad de la Comida')
plt.plot(x_comida, c_rancia, label='Rancia', color='r')
plt.plot(x_comida, c_normal, label='Normal', color='y')
plt.plot(x_comida, c_deliciosa, label='Deliciosa', color='g')
plt.legend(loc='upper left')
plt.ylim([0, 1])

plt.subplot(2, 3, 3)
plt.title('Nivel de Propina')
plt.plot(x_propina, p_trabajador, label='Trabajador', color='r')
plt.plot(x_propina, p_normal, label='Normal', color='y')
plt.plot(x_propina, p_rico, label='Rico', color='g')
plt.legend(loc='upper left')
plt.ylim([0, 1])

plt.show()