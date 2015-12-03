class Rotacion {
  float x, y, x2, y2;
  float r, a, angulo;
  color c, d;
  String fecha, eventos;
  float temax, temed, temin, pdro, medro, mindro, maxhum, medhum, minhum, maxpre, minpre, maxvi, minvi, vientomax, vientomed, rafaga, nube, dirviento;

  // constructor
  Rotacion(String _fecha, float _temax, float _temed, float _temin, float _pdro, float _medro, float _mindro, float _maxhum, float _medhum, float _minhum, float _maxpre, float _minpre, float _maxvi, float _minvi, float _vientomax, float _vientomed, float _rafaga, float _nube, String _eventos, float _dirviento) {
    fecha = _fecha;// 2005
    temax = _temax;// 2004
    temin = _temin;// 2004
    temed = _temed;// 2005
    pdro = _pdro;//2007
    medro = _medro;//2009
    mindro = _mindro;//2007
    maxhum = _maxhum;//2006
    medhum = _medhum;//2009
    minhum = _minhum;//2006
    maxpre = _maxpre;//2008
    minpre = _minpre;//2008
    maxvi = _maxvi;//2010
    minvi = _minvi;//2010
    vientomax = _vientomax;
    vientomed = _vientomed;
    rafaga = _rafaga;//2011
    nube = _nube;//2011
    dirviento = _dirviento;
    eventos =_eventos;

    //angulo = 0;
    r = width/2 + 110;
    c = color (254,239,81);
    d = color(112,15,119);

    float angulo2 = angulo - 90;
    a = angulo2 * (TWO_PI/360);
  }

  // cambiar codigo de aca para abajo
  void go(int i) {
    float a = i * (TWO_PI/365);

    x = width/2 + maxvi* sin(a);
    y = height/2 + maxvi * cos(a);
    
      x2 = width/2 * sin(a);
    y2 = height/2 * cos(a);
  }
  void display(int i) {
    fill(d);
    //noStroke();
    //ellipse(x, y, 3, minhum);
    //fill(d);
    //  text(eventos,x,y);//medro

    pushMatrix();
    float a = i * (TWO_PI/365);
    translate(x, y);
    rotate(-a);
    
    //son tus figuras
      noStroke();
      fill(d);
      ellipse(maxvi*12,maxvi*12,3,3);
    
      fill(c);
      ellipse(minvi*11,minvi*11,3,3);

      
     popMatrix();
    
      
      
  }
}