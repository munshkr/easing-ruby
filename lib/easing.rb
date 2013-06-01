require "easing/version"

module Easing
  extend self

  def linear_tween(t, b, c, d)
    t = t.to_f; b = b.to_f; c = c.to_f; d = d.to_f

    c * t / d + b
  end

  def ease_in_quad(t, b, c, d)
    t = t.to_f; b = b.to_f; c = c.to_f; d = d.to_f

    return c*(t/=d)*t + b;
  end

  def ease_out_quad(t, b, c, d)
    t = t.to_f; b = b.to_f; c = c.to_f; d = d.to_f

    return -c *(t/=d)*(t-2) + b;
  end

  def ease_in_out_quad(t, b, c, d)
    t = t.to_f; b = b.to_f; c = c.to_f; d = d.to_f

    t /= d / 2
    return c / 2*t*t + b if (t < 1)
    t -= 1
    return -c/2 * (t*(t-2) - 1) + b
  end

  def ease_in_cubic(t, b, c, d)
    t = t.to_f; b = b.to_f; c = c.to_f; d = d.to_f

    return c*(t/=d)*t*t + b
  end

  def ease_out_cubic(t, b, c, d)
    t = t.to_f; b = b.to_f; c = c.to_f; d = d.to_f

    return c*((t=t/d-1)*t*t + 1) + b
  end

  def ease_in_out_cubic(t, b, c, d)
    t = t.to_f; b = b.to_f; c = c.to_f; d = d.to_f

    return c/2*t*t*t + b if ((t/=d/2) < 1)
    return c/2*((t-=2)*t*t + 2) + b
  end

  def ease_in_quart(t, b, c, d)
    t = t.to_f; b = b.to_f; c = c.to_f; d = d.to_f

    return c*(t/=d)*t*t*t + b
  end

  def ease_out_quart(t, b, c, d)
    t = t.to_f; b = b.to_f; c = c.to_f; d = d.to_f

    return -c * ((t=t/d-1)*t*t*t - 1) + b
  end

  def ease_in_out_quart(t, b, c, d)
    t = t.to_f; b = b.to_f; c = c.to_f; d = d.to_f

    return c/2*t*t*t*t + b if ((t/=d/2) < 1)
    return -c/2 * ((t-=2)*t*t*t - 2) + b
  end

  def ease_in_quint(t, b, c, d)
    t = t.to_f; b = b.to_f; c = c.to_f; d = d.to_f

    return c*(t/=d)*t*t*t*t + b
  end

  def ease_out_quint(t, b, c, d)
    t = t.to_f; b = b.to_f; c = c.to_f; d = d.to_f

    return c*((t=t/d-1)*t*t*t*t + 1) + b
  end

  def ease_in_out_quint(t, b, c, d)
    t = t.to_f; b = b.to_f; c = c.to_f; d = d.to_f

    return c/2*t*t*t*t*t + b if ((t/=d/2) < 1)
    return c/2*((t-=2)*t*t*t*t + 2) + b
  end

  def ease_in_sine(t, b, c, d)
    t = t.to_f; b = b.to_f; c = c.to_f; d = d.to_f

    return -c * Math.cos(t/d * (Math::PI/2)) + c + b
  end

  def ease_out_sine(t, b, c, d)
    t = t.to_f; b = b.to_f; c = c.to_f; d = d.to_f

    return c * Math.sin(t/d * (Math::PI/2)) + b
  end

  def ease_in_out_sine(t, b, c, d)
    t = t.to_f; b = b.to_f; c = c.to_f; d = d.to_f

    return -c/2 * (Math.cos(Math::PI*t/d) - 1) + b
  end

  def ease_in_expo(t, b, c, d)
    t = t.to_f; b = b.to_f; c = c.to_f; d = d.to_f

    return (t==0) ? b : c * (2 ** (10 * (t/d - 1))) + b
  end

  def ease_out_expo(t, b, c, d)
    t = t.to_f; b = b.to_f; c = c.to_f; d = d.to_f

    return (t==d) ? b+c : c * (-2**(-10 * t/d) + 1) + b
  end

  def ease_in_out_expo(t, b, c, d)
    t = t.to_f; b = b.to_f; c = c.to_f; d = d.to_f

    return b if t == 0
    return b + c if t == d
    return (c/2) * 2**(10 * (t-1)) + b if ((t /= d/2) < 1)
    return (c/2) * (-2**(-10 * t-=1) + 2) + b
  end

  def ease_in_circ(t, b, c, d)
    t = t.to_f; b = b.to_f; c = c.to_f; d = d.to_f

    return -c * (Math.sqrt(1 - (t/=d)*t) - 1) + b
  end

  def ease_out_circ(t, b, c, d)
    t = t.to_f; b = b.to_f; c = c.to_f; d = d.to_f

    return c * Math.sqrt(1 - (t=t/d-1)*t) + b
  end

  def ease_in_out_circ(t, b, c, d)
    t = t.to_f; b = b.to_f; c = c.to_f; d = d.to_f

    return -c/2 * (Math.sqrt(1 - t*t) - 1) + b if ((t/=d/2) < 1)
    return c/2 * (Math.sqrt(1 - (t-=2)*t) + 1) + b
  end
end
