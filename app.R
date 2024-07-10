library(plotly)

x <- seq(-2*pi, 2*pi, length.out = 1000)
df <- data.frame(x, y1 = sin(x))

fig <- plot_ly(df, x = ~x)
fig <- fig %>% add_lines(y = ~y1)


fig <- fig %>% layout(
  title = "Button Restyle",
  xaxis = list(domain = c(0.1, 1)),
  yaxis = list(title = "y"),
  updatemenus = list(
    list(
      type = "buttons",
      y = 0.8,
      buttons = list(
        
        list(method = "restyle",
             args = list("line.color", "blue"),
             label = "Blue"),
        
        list(method = "restyle",
             args = list("line.color", "red"),
             label = "Red")))
  ))

fig
