using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MaterialSwap : MonoBehaviour
{
  public Material m;
  public Vector3 baseRGB;
  public Vector3 changeRGB;
  bool baseColor = true;
  private void Update() {
    if (Input.GetKeyDown(KeyCode.E)) {//toggles base color base on an e press
      baseColor = !baseColor;
    }
    if (baseColor) {//sets material color based on the bool base color
      m.SetColor("_Color", new Color(baseRGB.x, baseRGB.y, baseRGB.z, 1));

    } else {
      m.SetColor("_Color", new Color(changeRGB.x, changeRGB.y, changeRGB.z, 1));

    }
  }
}
