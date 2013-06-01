require "easing/version"

module Easing
  extend self

  def linear_tween(t, b, c, d)
    t = t.to_f; b = b.to_f; c = c.to_f; d = d.to_f

    c * t / d + b
  end

  def ease_in_out_quad(t, b, c, d)
    t = t.to_f; b = b.to_f; c = c.to_f; d = d.to_f

    t /= d / 2
    return c / 2*t*t + b if (t < 1)
    t -= 1
    return -c/2 * (t*(t-2) - 1) + b
  end

  def ease_in_out_expo(t, b, c, d)
    t = t.to_f; b = b.to_f; c = c.to_f; d = d.to_f

    return b if t == 0
    return b + c if t == d
    return (c/2) * 2**(10 * (t-1)) + b if ((t /= d/2) < 1)
    return (c/2) * (-2**(-10 * t-=1) + 2) + b
  end

  def ease_out_expo(t, b, c, d)
    t = t.to_f; b = b.to_f; c = c.to_f; d = d.to_f

    return (t==d) ? b+c : c * (-2**(-10 * t/d) + 1) + b
  end
end
