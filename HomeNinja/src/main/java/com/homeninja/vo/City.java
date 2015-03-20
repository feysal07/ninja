package com.homeninja.vo;

public class City implements Comparable<City> {

    private long masterDataId;
    private String name;
    private long stateOrderId;

    public long getMasterDataId() {
        return masterDataId;
    }

    public void setMasterDataId(long masterDataId) {
        this.masterDataId = masterDataId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public long getStateOrderId() {
        return stateOrderId;
    }

    public void setStateOrderId(long stateOrderId) {
        this.stateOrderId = stateOrderId;
    }

    @Override
    public int compareTo(City o) {
        return this.name.compareTo(o.getName());
    }

}
