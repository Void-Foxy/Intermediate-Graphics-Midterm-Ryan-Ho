using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LightMovement : MonoBehaviour
{
  public float spinRate; // degree * 60 per second
  private void FixedUpdate() {
    Quaternion newAngle = Quaternion.Euler(transform.rotation.eulerAngles + new Vector3(0, spinRate, 0)); //create and calc new angle
    transform.rotation = newAngle;//set new angle
  }
}
