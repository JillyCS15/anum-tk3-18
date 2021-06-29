function plot_2(x, y)
  
  % plot var_x with var_y1
  plot(x, y);
  
  % hold the above plot or figure
  hold on;
    
  % adding label to the x-axis
  xlabel('year');
    
  % adding lable to the y-axis
  ylabel('result of interpolation');
    
  % adding title for the plot
  title('Number of Prediction Populations in million');
  
endfunction