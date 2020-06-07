clc;
clear all;

A = importdata ('adjMatrix.mat'); %I imported the input and assign to A
reachableVertices(A); %I call the reachableVerticates function with A input
