$LOAD_PATH.unshift("#{__FILE__}/../lib")
require 'easing'
require 'gnuplot'

Gnuplot.open do |gp|
  Gnuplot::Plot.new(gp) do |plot|
    plot.title  "Easing Functions"
    plot.xlabel "x"
    plot.ylabel "y"
    plot.xrange "[0:100]"
    plot.yrange "[0:100]"

    x = (0 .. 100).map { |t| t.to_f }
    ease_funcs = Easing.instance_methods(false)

    plot.data = ease_funcs.map do |method|
      y = x.map { |t| Easing.send(method, t, 0, x.size, x.size) }

      Gnuplot::DataSet.new([x, y]) do |ds|
        ds.with = "lines"
        ds.title = method
      end
    end
  end
end
