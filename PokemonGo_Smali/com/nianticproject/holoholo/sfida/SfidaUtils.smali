.class public Lcom/nianticproject/holoholo/sfida/SfidaUtils;
.super Ljava/lang/Object;
.source "SfidaUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/nianticproject/holoholo/sfida/SfidaUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/holoholo/sfida/SfidaUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToBitString([B)Ljava/lang/String;
    .registers 9
    .param p0, "byteArray"    # [B

    .prologue
    const/4 v4, 0x0

    .line 35
    const-string v2, ""

    .line 36
    .local v2, "string":Ljava/lang/String;
    array-length v6, p0

    move v5, v4

    :goto_5
    if-ge v5, v6, :cond_46

    aget-byte v0, p0, v5

    .line 37
    .local v0, "b":B
    const/4 v1, 0x0

    .local v1, "count":I
    :goto_a
    const/16 v3, 0x8

    if-ge v1, v3, :cond_2f

    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v3, 0x80

    shr-int/2addr v3, v1

    and-int/2addr v3, v0

    if-eqz v3, :cond_2d

    const/4 v3, 0x1

    :goto_1e
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_2d
    move v3, v4

    .line 38
    goto :goto_1e

    .line 40
    :cond_2f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 36
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_5

    .line 42
    .end local v0    # "b":B
    .end local v1    # "count":I
    :cond_46
    return-object v2
.end method

.method public static byteArrayToString([B)Ljava/lang/String;
    .registers 7
    .param p0, "byteArray"    # [B

    .prologue
    .line 27
    const-string v1, ""

    .line 28
    .local v1, "string":Ljava/lang/String;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_20

    aget-byte v0, p0, v2

    .line 29
    .local v0, "b":B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 28
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 31
    .end local v0    # "b":B
    :cond_20
    return-object v1
.end method

.method public static createBond(Landroid/bluetooth/BluetoothDevice;)V
    .registers 6
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 62
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_11

    .line 63
    sget-object v2, Lcom/nianticproject/holoholo/sfida/SfidaUtils;->TAG:Ljava/lang/String;

    const-string v3, "createBond() Start Pairing..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    .line 75
    :goto_10
    return-void

    .line 67
    :cond_11
    :try_start_11
    sget-object v2, Lcom/nianticproject/holoholo/sfida/SfidaUtils;->TAG:Ljava/lang/String;

    const-string v3, "createBond() Start Pairing..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "createBond"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 69
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v2, Lcom/nianticproject/holoholo/sfida/SfidaUtils;->TAG:Ljava/lang/String;

    const-string v3, "createBond() Pairing finished."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_32} :catch_33

    goto :goto_10

    .line 71
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :catch_33
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/nianticproject/holoholo/sfida/SfidaUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public static getBondStateName(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .prologue
    .line 151
    packed-switch p0, :pswitch_data_12

    .line 159
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    .line 153
    :pswitch_8
    const-string v0, "BOND_NONE"

    goto :goto_7

    .line 155
    :pswitch_b
    const-string v0, "BOND_BONDING"

    goto :goto_7

    .line 157
    :pswitch_e
    const-string v0, "BOND_BONDED"

    goto :goto_7

    .line 151
    nop

    :pswitch_data_12
    .packed-switch 0xa
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public static getConnectionStateName(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .prologue
    .line 103
    packed-switch p0, :pswitch_data_14

    .line 113
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    .line 105
    :pswitch_8
    const-string v0, "STATE_DISCONNECTED"

    goto :goto_7

    .line 107
    :pswitch_b
    const-string v0, "STATE_CONNECTING"

    goto :goto_7

    .line 109
    :pswitch_e
    const-string v0, "STATE_CONNECTED"

    goto :goto_7

    .line 111
    :pswitch_11
    const-string v0, "STATE_DISCONNECTING"

    goto :goto_7

    .line 103
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method public static getGattStateName(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .prologue
    .line 118
    sparse-switch p0, :sswitch_data_30

    .line 146
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    .line 120
    :sswitch_8
    const-string v0, "GATT_SUCCESS"

    goto :goto_7

    .line 122
    :sswitch_b
    const-string v0, "GATT_READ_NOT_PERMITTED"

    goto :goto_7

    .line 124
    :sswitch_e
    const-string v0, "GATT_WRITE_NOT_PERMITTED"

    goto :goto_7

    .line 126
    :sswitch_11
    const-string v0, "GATT_INSUFFICIENT_AUTHENTICATION"

    goto :goto_7

    .line 128
    :sswitch_14
    const-string v0, "GATT_REQUEST_NOT_SUPPORTED"

    goto :goto_7

    .line 130
    :sswitch_17
    const-string v0, "GATT_INSUFFICIENT_ENCRYPTION"

    goto :goto_7

    .line 132
    :sswitch_1a
    const-string v0, "GATT_INVALID_OFFSET"

    goto :goto_7

    .line 134
    :sswitch_1d
    const-string v0, "GATT_INVALID_ATTRIBUTE_LENGTH"

    goto :goto_7

    .line 136
    :sswitch_20
    const-string v0, "GATT_CONNECTION_CONGESTED"

    goto :goto_7

    .line 138
    :sswitch_23
    const-string v0, "GATT_FAILURE"

    goto :goto_7

    .line 140
    :sswitch_26
    const-string v0, "GATT_INSUF_AUTHENTICATION"

    goto :goto_7

    .line 142
    :sswitch_29
    const-string v0, "GATT_INTERNAL_ERROR"

    goto :goto_7

    .line 144
    :sswitch_2c
    const-string v0, "GATT_ERROR"

    goto :goto_7

    .line 118
    nop

    :sswitch_data_30
    .sparse-switch
        0x0 -> :sswitch_8
        0x2 -> :sswitch_b
        0x3 -> :sswitch_e
        0x5 -> :sswitch_11
        0x6 -> :sswitch_14
        0x7 -> :sswitch_1a
        0x8 -> :sswitch_26
        0xd -> :sswitch_1d
        0xf -> :sswitch_17
        0x81 -> :sswitch_29
        0x85 -> :sswitch_2c
        0x8f -> :sswitch_20
        0x101 -> :sswitch_23
    .end sparse-switch
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .registers 8
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 164
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 165
    .local v2, "len":I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 166
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v2, :cond_2a

    .line 167
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    .line 168
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 166
    add-int/lit8 v1, v1, 0x2

    goto :goto_b

    .line 170
    :cond_2a
    return-object v0
.end method

.method public static refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;)Z
    .registers 7
    .param p0, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    const/4 v3, 0x0

    .line 50
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "refresh"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 51
    .local v1, "localMethod":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_26

    .line 52
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_1e

    move-result v2

    .line 57
    .end local v1    # "localMethod":Ljava/lang/reflect/Method;
    :goto_1d
    return v2

    .line 54
    :catch_1e
    move-exception v0

    .line 55
    .local v0, "localException":Ljava/lang/Exception;
    sget-object v2, Lcom/nianticproject/holoholo/sfida/SfidaUtils;->TAG:Ljava/lang/String;

    const-string v4, "An exception occurred while refreshing device"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "localException":Ljava/lang/Exception;
    :cond_26
    move v2, v3

    .line 57
    goto :goto_1d
.end method

.method public static removeBond(Landroid/bluetooth/BluetoothDevice;)V
    .registers 6
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 79
    :try_start_0
    const-string v2, "removeBond()"

    const-string v3, "Start remove bond..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "removeBond"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 81
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v2, "removeBond()"

    const-string v3, "remove bond finished."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    .line 86
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_21
    return-void

    .line 83
    :catch_22
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "removeBond()"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public static toast(Landroid/app/Activity;Ljava/lang/String;I)V
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    .line 89
    if-eqz p0, :cond_a

    .line 90
    new-instance v0, Lcom/nianticproject/holoholo/sfida/SfidaUtils$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/nianticproject/holoholo/sfida/SfidaUtils$1;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 100
    :cond_a
    return-void
.end method
