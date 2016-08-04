.class public Lcom/nianticlabs/pokemongoplus/SfidaService;
.super Lcom/nianticlabs/pokemongoplus/ble/Service;
.source "SfidaService.java"


# instance fields
.field private characteristicRef:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;",
            ">;"
        }
    .end annotation
.end field

.field private nativeHandle:J

.field private service:Landroid/bluetooth/BluetoothGattService;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/BluetoothGatt;)V
    .registers 8
    .param p1, "service"    # Landroid/bluetooth/BluetoothGattService;
    .param p2, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/ble/Service;-><init>()V

    .line 20
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaService;->characteristicRef:Ljava/util/ArrayList;

    .line 25
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaService;->service:Landroid/bluetooth/BluetoothGattService;

    .line 28
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v1

    .line 29
    .local v1, "characteristics":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 30
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    new-instance v2, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    invoke-direct {v2, v0, p2}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;-><init>(Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGatt;)V

    .line 35
    .local v2, "sfidaChar":Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    iget-object v4, p0, Lcom/nianticlabs/pokemongoplus/SfidaService;->characteristicRef:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 37
    .end local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v2    # "sfidaChar":Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    :cond_2b
    return-void
.end method


# virtual methods
.method public discoverCharacteristics(Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V
    .registers 2
    .param p1, "complete"    # Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .prologue
    .line 53
    return-void
.end method

.method public declared-synchronized getCharacteristic(I)Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 62
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/SfidaService;->getCharacteristicCount()I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_15

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_c

    .line 63
    const/4 v0, 0x0

    .line 65
    :goto_a
    monitor-exit p0

    return-object v0

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaService;->characteristicRef:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_a

    .line 62
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCharacteristic(Ljava/lang/String;)Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    .registers 7
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/SfidaService;->getCharacteristicCount()I

    move-result v2

    .line 70
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_5
    if-ge v3, v2, :cond_1d

    .line 71
    iget-object v4, p0, Lcom/nianticlabs/pokemongoplus/SfidaService;->characteristicRef:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    .line 72
    .local v0, "characteristic":Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->getUuid()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "check_uuid":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 77
    .end local v0    # "characteristic":Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    .end local v1    # "check_uuid":Ljava/lang/String;
    :goto_19
    return-object v0

    .line 70
    .restart local v0    # "characteristic":Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    .restart local v1    # "check_uuid":Ljava/lang/String;
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 77
    .end local v0    # "characteristic":Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    .end local v1    # "check_uuid":Ljava/lang/String;
    :cond_1d
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public declared-synchronized getCharacteristicCount()I
    .registers 2

    .prologue
    .line 57
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaService;->characteristicRef:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUuid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaService;->service:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPrimary()Z
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 7
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 95
    monitor-enter p0

    :try_start_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "uuid":Ljava/lang/String;
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaService;->characteristicRef:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    .line 97
    .local v0, "sfidaChar":Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 98
    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onCharacteristicChanged()V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 102
    .end local v0    # "sfidaChar":Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    :cond_28
    monitor-exit p0

    return-void

    .line 95
    .end local v1    # "uuid":Ljava/lang/String;
    :catchall_2a
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 8
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 107
    monitor-enter p0

    :try_start_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "uuid":Ljava/lang/String;
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaService;->characteristicRef:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    .line 109
    .local v0, "sfidaChar":Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 110
    invoke-virtual {v0, p3}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onCharacteristicRead(I)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 114
    .end local v0    # "sfidaChar":Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    :cond_28
    monitor-exit p0

    return-void

    .line 107
    .end local v1    # "uuid":Ljava/lang/String;
    :catchall_2a
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 8
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 84
    monitor-enter p0

    :try_start_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "uuid":Ljava/lang/String;
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaService;->characteristicRef:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    .line 86
    .local v0, "sfidaChar":Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 87
    invoke-virtual {v0, p3}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onCharacteristicWrite(I)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 91
    .end local v0    # "sfidaChar":Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    :cond_28
    monitor-exit p0

    return-void

    .line 84
    .end local v1    # "uuid":Ljava/lang/String;
    :catchall_2a
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .registers 8
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 118
    monitor-enter p0

    :try_start_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "uuid":Ljava/lang/String;
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaService;->characteristicRef:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    .line 120
    .local v0, "sfidaChar":Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 121
    invoke-virtual {v0, p2, p3}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onDescriptorWrite(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    .line 125
    .end local v0    # "sfidaChar":Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    :cond_2c
    monitor-exit p0

    return-void

    .line 118
    .end local v1    # "uuid":Ljava/lang/String;
    :catchall_2e
    move-exception v2

    monitor-exit p0

    throw v2
.end method
