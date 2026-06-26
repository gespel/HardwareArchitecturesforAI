#!/usr/bin/env python
# coding: utf-8

# In[1]:


# This script is used for HAAI Lab3 @ UP SoSe 25
# Author: Jianan Wen
# Contact: André Lucas Chinazzo
# chinazzo@ihp-microelectronics.com


# In[2]:


# import necessary libraries
from sklearn import datasets
import numpy as np
import matplotlib.pyplot as plt
from tensorflow.keras.layers import Input, Dense 
from tensorflow.keras.models import Model
from tensorflow.keras.models import load_model


# In[3]:


diabetes = datasets.load_diabetes()


# In[4]:


# display 10 features provided in the dataset
diabetes['feature_names']


# In[5]:


# we select the **bmi** as the used feature to train the mode
features = diabetes.data[:,2:3]


# In[6]:


# display the number of patients
len(features)


# In[7]:


# modify the shape of features
print(features.shape)
features = np.squeeze(features)
print(features.shape)


# In[8]:


# a quantitative measure of disease progression one year after baseline
targets = diabetes.target


# In[9]:


# dataset observation
plt.scatter(features,targets)
plt.xlabel("BMI")
plt.ylabel("Disease progression")


# In[10]:


# implement the single neuron with tensorflow
# "Input" and "Dense" are the tensorflow components imported before
inputs = Input(shape=(1,))
output = Dense(1, activation='linear')(inputs)


# In[11]:


# construct the model
# the funcaction "Model" is a function imported from tensorflow
linear_model = Model(inputs, output)


# In[12]:


# check details of tahe model
linear_model.summary()


# In[13]:


# compile the model with tensorflow and predefined optimizer and loss function
linear_model.compile(optimizer='sgd', loss='mse')


# In[14]:


# model training with features and targets in dataset for a limited number of epochs
EPOCH = 1000
r = linear_model.fit(features, targets, epochs=EPOCH)


# In[15]:


# plot the statistics of training
x = np.linspace(1,EPOCH,EPOCH)
plt.plot(x, r.history['loss'],'o', label='loss')
plt.xlabel("Epoch")
plt.ylabel("Loss")
plt.legend()


# In[16]:


# Plot the transfer function of the trained neuron
pred = linear_model.predict(features)


# In[17]:


plt.scatter(features,targets, label = 'raw data')
plt.plot(features,pred,'r', label = "transfer_function")
plt.xlabel("BMI")
plt.ylabel("Disease progression")
plt.legend()


# In[18]:


# plot the function of neuron by definition
weight = linear_model.get_weights()[0].item()
bias = linear_model.get_weights()[1].item()

plt.scatter(features,targets, label = 'raw data')
plt.plot(features, __FILL_ME__, 'r', label = 'transfer function y = wx+b')
plt.xlabel("BMI")
plt.ylabel("Disease progression")
plt.legend()


# In[19]:


# introduce the new feature, the experiments with **BMI** and **blood pressure**
features_2d = __FILL_ME__


# In[20]:


# observing the correlation between BP and progression

x = features_2d[__FILL_ME__]
y = targets
plt.xlabel("Blood Pressure")
plt.ylabel("Disease progression")


plt.scatter(x,y)


# In[21]:


# observing the correlation between BMI & BP and diabetes progression
# fill the missing information according to the labels
fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')

x = features_2d[__FILL_ME__]
y = features_2d[__FILL_ME__]
z = targets

ax.set_xlabel('BMI')
ax.set_ylabel('Blood pressure')
ax.set_zlabel('Disease progression')


ax.scatter(x, y, z, marker='o')


# In[22]:


# implement the single neuron with tensorflow
# "Input" and "Dense" are the tensorflow components imported before
inputs = Input(__FILL_ME__)
output = Dense(__FILL_ME__)(inputs)


# In[23]:


# construct the model
# The funcaction "Model" is imported from tensorflow
linear_model_bmi_bp = Model(inputs, output)


# In[24]:


# check details of the model
linear_model_bmi_bp.summary()


# In[25]:


# compile the model with tensorflow with predefined optimizer and loss function
linear_model_bmi_bp.compile(optimizer='sgd', loss='mse')


# In[26]:


# model training with features and targets in dataset
EPOCH = 1000
r_2d = linear_model_bmi_bp.fit(__FILL_ME__, epochs=EPOCH)


# In[27]:


# plot the statistics of training and compare the results between two models
x = np.linspace(1,EPOCH,EPOCH)
plt.plot(x, __FILL_ME__,'o', label='loss_bmi')
plt.plot(x, __FILL_ME__,'o', label='loss_bmi_bp')

plt.xlabel("Epoch")
plt.ylabel("Loss")

plt.legend()


# In[28]:


# plot the statistics of training and compare the results
x = np.linspace(1,EPOCH,EPOCH)
plt.plot(x[100:1000], __FILL_ME__,'o', label='loss_bmi')
plt.plot(x[100:1000], __FILL_ME__,'o', label='loss_bmi_bp')

plt.xlabel("Epoch")
plt.ylabel("Loss")

plt.legend()


# In[51]:


# observing the transfer function
fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')

weight_1 = __FILL_ME__
weight_2 = __FILL_ME__
bias = linear_model_bmi_bp.get_weights()[1].item()


x = features_2d[__FILL_ME__]
y = features_2d[__FILL_ME__]
z = targets
xx = np.linspace(-0.1,0.15,1000)
yy = np.linspace(-0.1,0.1,1000)

ax.set_xlabel('BMI')
ax.set_ylabel('Blood pressure')
ax.set_zlabel('Disease progression')




ax.scatter(x, y, z, marker='o', label = 'raw data')
ax.plot(x, y, __FILL_ME__, 'o', color= 'orange', label = 'transfer function')
ax.plot(xx, yy, __FILL_ME__, color= 'r', label = 'transfer function sweep')

plt.legend()


# In[30]:


# save the trained model
linear_model_bmi_bp.save("Lab_3_neuron.h5")
linear_model_bmi_bp.summary()


# In[ ]:


# experiments with all features
features_all = __FILL_ME__


# In[ ]:


features_all.shape


# In[ ]:


# implement the single neuron with tensorflow
# "Input" and "Dense" are the tensorflow components imported before
inputs = Input(__FILL_ME__)
output = Dense(1, __FILL_ME__)(inputs)


# In[ ]:


# construct the model
# the funcaction "Model" is a function imported from tensorflow
linear_model_all = Model(inputs, output)


# In[ ]:


linear_model_all.summary()


# In[ ]:


# compile the model with tensorflow and predefined optimizer and loss function
linear_model_all.compile(optimizer='sgd', loss='mse')


# In[ ]:


# model training with features and targets in dataset for a limited number of epochs
EPOCH = 1000
r_all = linear_model_all.fit(__FILL_ME__, epochs=EPOCH)


# In[ ]:


# plot the statistics of training and compare the results
x = np.linspace(1,EPOCH,EPOCH)
plt.plot(x[100:1000], r.history['loss'][100:1000],'o', label='loss_bmi')
plt.plot(x[100:1000], r_2d.history['loss'][100:1000],'o', label='loss_bmi_bp')
plt.plot(x[100:1000], r_all.history['loss'][100:1000],'o', label='loss_all')


plt.xlabel("Epoch")
plt.ylabel("Loss")

plt.legend()

