.class public Lcom/nianticlabs/pokemongoplus/SfidaUtils;
.super Ljava/lang/Object;
.source "SfidaUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/nianticlabs/pokemongoplus/SfidaUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nianticlabs/pokemongoplus/SfidaUtils;->TAG:Ljava/lang/String;

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

    .line 39
    const-string v2, ""

    .line 40
    .local v2, "string":Ljava/lang/String;
    array-length v6, p0

    move v5, v4

    :goto_5
    if-ge v5, v6, :cond_46

    aget-byte v0, p0, v5

    .line 41
    .local v0, "b":B
    const/4 v1, 0x0

    .local v1, "count":I
    :goto_a
    const/16 v3, 0x8

    if-ge v1, v3, :cond_2f

    .line 42
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

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_2d
    move v3, v4

    .line 42
    goto :goto_1e

    .line 44
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

    .line 40
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_5

    .line 46
    .end local v0    # "b":B
    .end local v1    # "count":I
    :cond_46
    return-object v2
.end method

.method public static byteArrayToString([B)Ljava/lang/String;
    .registers 7
    .param p0, "byteArray"    # [B

    .prologue
    .line 31
    const-string v1, ""

    .line 32
    .local v1, "string":Ljava/lang/String;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_20

    aget-byte v0, p0, v2

    .line 33
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

    .line 32
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 35
    .end local v0    # "b":B
    :cond_20
    return-object v1
.end method

.method public static checkBluetoothLeSupported(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 108
    const/4 v0, 0x0

    .line 110
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public static createBond(Landroid/bluetooth/BluetoothDevice;)V
    .registers 6
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 51
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_11

    .line 52
    sget-object v2, Lcom/nianticlabs/pokemongoplus/SfidaUtils;->TAG:Ljava/lang/String;

    const-string v3, "createBond() Start Pairing..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    .line 64
    :goto_10
    return-void

    .line 56
    :cond_11
    :try_start_11
    sget-object v2, Lcom/nianticlabs/pokemongoplus/SfidaUtils;->TAG:Ljava/lang/String;

    const-string v3, "createBond() Start Pairing..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "createBond"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 58
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v2, Lcom/nianticlabs/pokemongoplus/SfidaUtils;->TAG:Ljava/lang/String;

    const-string v3, "createBond() Pairing finished."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_32} :catch_33

    goto :goto_10

    .line 60
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :catch_33
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/nianticlabs/pokemongoplus/SfidaUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public static getBluetoothManager(Landroid/content/Context;)Landroid/bluetooth/BluetoothManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    return-object v0
.end method

.method public static getBondStateName(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .prologue
    .line 77
    packed-switch p0, :pswitch_data_12

    .line 85
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    .line 79
    :pswitch_8
    const-string v0, "BOND_NONE"

    goto :goto_7

    .line 81
    :pswitch_b
    const-string v0, "BOND_BONDING"

    goto :goto_7

    .line 83
    :pswitch_e
    const-string v0, "BOND_BONDED"

    goto :goto_7

    .line 77
    nop

    :pswitch_data_12
    .packed-switch 0xa
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .registers 8
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 67
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 68
    .local v2, "len":I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 69
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v2, :cond_2a

    .line 70
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    .line 71
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 69
    add-int/lit8 v1, v1, 0x2

    goto :goto_b

    .line 73
    :cond_2a
    return-object v0
.end method

.method public static refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;)Z
    .registers 7
    .param p0, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    const/4 v3, 0x0

    .line 94
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "refresh"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 95
    .local v1, "localMethod":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_26

    .line 96
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_1e

    move-result v2

    .line 101
    .end local v1    # "localMethod":Ljava/lang/reflect/Method;
    :goto_1d
    return v2

    .line 98
    :catch_1e
    move-exception v0

    .line 99
    .local v0, "localException":Ljava/lang/Exception;
    sget-object v2, Lcom/nianticlabs/pokemongoplus/SfidaUtils;->TAG:Ljava/lang/String;

    const-string v4, "An exception occurred while refreshing device"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "localException":Ljava/lang/Exception;
    :cond_26
    move v2, v3

    .line 101
    goto :goto_1d
.end method
