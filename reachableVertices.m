%For the function I used Warshall's algorithm
%Warshall's Algorithm
%Set M0= M.To get M1, for every row in M0
%that has a 1 in col 1, add (Boolean) row 1 to
%that row; i.e., look down col 1 and if there's a 1 in a row, add row 1 to that row.
%To get M2, for every row in M1with a 1 in col 2, add row 2 to that row.
%In general, to go from M k-1 .to Mk, for every row in M k-1 that has a 1 in col k, 
%add row k to that row.Continue until you have Mn.

function [ reachableSet ] = reachableVertices( a )

[m,n] = size(a); %I got the edge distance to compare next steps to chect is it a square matrix 

for i=1:1:numel(a) %I found the number of all element in matrix with numel(a) 
      
  if a(i)==0 || a(i) ==1;  %I compared all element of matrix in for loop if they equal to zero(0) or one(1) zeroarray gets one more zero(0) 
      zeroarray(i) = 0;    %else (the element diffrent from 1 and zero, for instance:2) zeroarray gets one more one(1)
  else
      zeroarray(i) = 1;       
  end
end

if m == n && sum(zeroarray)==0   %To decide the input is a valid adjacency matrix or not. I used if command and I compared m and n equilibrium to decide is it a square matrix
                                 %and I sum up all the elements in zero with sum(zeroarray) if the sum is equal to zero that means the matrix contains only ones and zeros   
                                        
col = mat2cell(a,length(a),linspace(1,1,length(a))); %I divided matrix columbs along length of matrix to find the ones on the columb 
row = mat2cell(a,linspace(1,1,length(a)),length(a)); %I divided matrix rows along matrix height to compare the rows

for i=1:1:length(a);
    
    b = cell2mat(col(i));               %I turned the cell array to matrix array to use find() function
    qq = find(b);                       %I look at col 1 in find the row start with a one(1) and I logically compare with "or" first row and the row that the first columb is one(1)
                                        %and leave the other rows alone I
                                        %wrote a for loop to do this for each columbs and rows 
                                      
    for j=1:1:length(qq);                         
    
    z = cell2mat(row(qq(j))) | cell2mat(row(i));
    
    a(qq(j),:) = z;
    col = mat2cell(a,length(a),linspace(1,1,length(a))); %I turned again to cell because in for loop a must renew itself because every result added the result that resulted one step before
    row = mat2cell(a,linspace(1,1,length(a)),length(a));
    
    end
    
end   

resultrow = mat2cell(a',linspace(1,1,length(a)),length(a)) ; %I tranpose the matrix divide cellarrays

for h=1:1:length(a')      %For output I wrote a for loop and a fprintf command to get the output that shoen on the project1 sheet
    
    bb = cell2mat(resultrow(h));
    
    show = find(bb);
    show2 = num2str(show);       %I turned the num array to string array to show on outpu on tru format
   fprintf('reachableSet{%d} = [%s]\n',h,show2)     
    
end

else
    
     disp ('ERROR... It is not a valid adjacency matrix, input must be a square matrix and contain only ones and zeros.') %Error message if the matrix not square or not consist of ones and zeros
end 
end

