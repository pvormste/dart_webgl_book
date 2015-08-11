import 'dart:web_gl' as webgl;
import 'dart:html';

void main() {
  // Create WebGL Class
  Chapter01 chap = new Chapter01(document.querySelector('#canvas3d'));

  // Listen to key input
  window.onKeyDown.listen(chap.handleInput);
}

class Chapter01 {
  // Rendering Context
  webgl.RenderingContext gl;

  // Constructor
  Chapter01(CanvasElement c) {
    gl = c.getContext('experimental-webgl');
  }

  void clearGL() {
    gl.clear(webgl.COLOR_BUFFER_BIT);
    gl.viewport(0, 0, 800, 600);
  }

  void handleInput(KeyboardEvent e) {
    switch(e.keyCode) {
      case KeyCode.A:
        gl.clearColor(0.3, 0.7, 0.2, 1.0);
        clearGL();
        break;
      case KeyCode.S:
        gl.clearColor(0.3, 0.2, 0.7, 1.0);
        clearGL();
        break;
      case KeyCode.D:
        num color = gl.getParameter(webgl.COLOR_CLEAR_VALUE);
        window.alert(color.toString());
        break;
    }
  }

}