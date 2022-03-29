
package com.emergentes;


public class Tareas {
    private int id;
    private String tarea;
    private String  nuevo;
    public Tareas(){
        
    }
    public Tareas(int id, String  tarea, String  nuevo){
        this.id =id;
        this.tarea = tarea;
        this.nuevo = nuevo;
        
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTarea() {
        return tarea;
    }

    public void setTarea(String tarea) {
        this.tarea = tarea;
    }

    public String getNuevo() {
        return nuevo;
    }

    public void setNuevo(String nuevo) {
        this.nuevo = nuevo;
    }
    
}
