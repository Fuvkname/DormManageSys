package net.dorm.bean;

import lombok.ToString;

@ToString
public class TbDorm {
    private String building;
    private String room;
    private int water;
    private int electricity;
    private int mem1id;
    private int mem2id;
    private int mem3id;
    private int mem4id;

    public String getBuilding() {
        return building;
    }

    public void setBuilding(String building) {
        this.building = building;
    }

    public String getRoom() {
        return room;
    }

    public void setRoom(String room) {
        this.room = room;
    }

    public int getWater() {
        return water;
    }

    public void setWater(int water) {
        this.water = water;
    }

    public int getElectricity() {
        return electricity;
    }

    public void setElectricity(int electricity) {
        this.electricity = electricity;
    }

    public int getMem1id() {
        return mem1id;
    }

    public void setMem1id(int mem1id) {
        this.mem1id = mem1id;
    }

    public int getMem2id() {
        return mem2id;
    }

    public void setMem2id(int mem2id) {
        this.mem2id = mem2id;
    }

    public int getMem3id() {
        return mem3id;
    }

    public void setMem3id(int mem3id) {
        this.mem3id = mem3id;
    }

    public int getMem4id() {
        return mem4id;
    }

    public void setMem4id(int mem4id) {
        this.mem4id = mem4id;
    }
}
