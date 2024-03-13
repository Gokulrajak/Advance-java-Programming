package objectserialization;
import java.io.*;
public class Circle implements Serializable {

double radius;
double diameter;
double area;
Circle(double radius){
this.radius=radius;
diameter=2*radius;
area=3.14*radius*radius;
}
public void setRadius(double radius){
this.radius=radius;
diameter=2*radius;
area=3.14*radius*radius;
}
public double getRadius(){
return radius;
}
public String toString(){
return "[radius = "+radius+"; diameter = "+diameter+"; area = "+area;
}
}package objectserialization;

import java.io.*;
public class TestCircle {public static void main(String[] args) throws Exception{

Circle c1=new Circle(2.0);
Circle c2=new Circle(3.0);
Circle c3=new Circle(4.0);
FileOutputStream f1 = new FileOutputStream("C:\\Users\\student\\Desktop\\New

folder\\e115\\Circle.txt");

ObjectOutputStream out = new ObjectOutputStream(f1);
out.writeObject(c1);
out.writeObject(c2);
out.writeObject(c3);
out.close();
f1.close();

System.out.println("Objects has been serialized");
Circle c4=null;
Circle c5=null;
Circle c6=null;
FileInputStream f2 = new

FileInputStream("C:\\Users\\student\\Desktop\\New folder\\e115\\Circle.txt");

ObjectInputStream in = new ObjectInputStream(f2);
c4 = (Circle)in.readObject();
c5 = (Circle)in.readObject();
c6 = (Circle)in.readObject();
in.close();
f2.close();
System.out.println("Object 1 has been deserialized ");
System.out.println("radius = " + c4.radius);
System.out.println("diameter = " + c4.diameter);
System.out.println("area = " + c4.area);
System.out.println("Object 2 has been deserialized ");
System.out.println("radius = " + c5.radius);
System.out.println("diameter = " + c5.diameter);
System.out.println("area = " + c5.area);
System.out.println("Object 3 has been deserialized ");
System.out.println("radius = " + c6.radius);
System.out.println("diameter = " + c6.diameter);
System.out.println("area = " + c6.area);
}

}
