// ====GET SERVICE====
void dlms_get(uint8_t obis[6]) {
    for (int i = 0; i < meterObjectCount; i++) {
        if (obis_match(obis, meterobjects[i].obis)) {
            printf("[GET] %s = %d\n", meterObjects[i].name, meterObjects[i].value);
            return;
        }
    }
    printf("[GET] OBIS not found.\n");
}


//===SET Service===

void dlms_set(uint8_t obis[6], int32_t newvalue) {

    for (int i = 0; i < meterObjectCount; i++) {
        if (obis_match(obis, meterobjects[i].obis)) {
            meterobjects[i].value = newvalue;
            printf("[SET] %s updated to %d\n", meterobjects[i].name, newvalue);
            return;
        }
    }
    printf("[GET] OBIS not found.\n");
}

 