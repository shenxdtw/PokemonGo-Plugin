.class public Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;
.super Lcom/nianticlabs/pokemongoplus/ble/BluetoothDriver;
.source "SfidaBluetoothDriver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;,
        Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$HandlerExecutor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private context:Landroid/content/Context;

.field private isScanning:Z

.field private nativeHandle:J

.field private peripheral:Lcom/nianticlabs/pokemongoplus/ble/Peripheral;

.field private peripheralMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;",
            ">;"
        }
    .end annotation
.end field

.field private scanCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;

.field private serialExecutor:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$HandlerExecutor;

.field private sfidaScanCallback:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/ble/BluetoothDriver;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->peripheralMap:Ljava/util/Map;

    .line 68
    new-instance v0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$HandlerExecutor;

    const-string v1, "SfidaBluetoothDriver"

    invoke-direct {v0, v1}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$HandlerExecutor;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->serialExecutor:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$HandlerExecutor;

    .line 70
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->context:Landroid/content/Context;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Landroid/bluetooth/BluetoothAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->peripheralMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$102(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothAdapter;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$HandlerExecutor;
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->serialExecutor:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$HandlerExecutor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;I)V
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;
    .param p1, "x1"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->nativeStartCallback(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->scanCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;

    return-object v0
.end method

.method static synthetic access$502(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;)Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;
    .param p1, "x1"    # Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->scanCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;

    return-object p1
.end method

.method static synthetic access$600(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->sfidaScanCallback:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    return-object v0
.end method

.method static synthetic access$602(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;)Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;
    .param p1, "x1"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->sfidaScanCallback:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    return-object p1
.end method

.method static synthetic access$702(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->isScanning:Z

    return p1
.end method

.method static synthetic access$800(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;Lcom/nianticlabs/pokemongoplus/ble/Peripheral;)V
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;
    .param p1, "x1"    # Lcom/nianticlabs/pokemongoplus/ble/Peripheral;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->nativeScanCallback(Lcom/nianticlabs/pokemongoplus/ble/Peripheral;)V

    return-void
.end method

.method private native nativeScanCallback(Lcom/nianticlabs/pokemongoplus/ble/Peripheral;)V
.end method

.method private native nativeStartCallback(I)V
.end method


# virtual methods
.method public IsScanning()Z
    .registers 2

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->isScanning:Z

    return v0
.end method

.method public isEnabledBluetoothLe()Z
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    .line 161
    :cond_c
    const/4 v0, 0x0

    .line 163
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public start(Lcom/nianticlabs/pokemongoplus/ble/callback/CentralStateCallback;)I
    .registers 4
    .param p1, "callback"    # Lcom/nianticlabs/pokemongoplus/ble/callback/CentralStateCallback;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->serialExecutor:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$HandlerExecutor;

    new-instance v1, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$1;

    invoke-direct {v1, p0, p1}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$1;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;Lcom/nianticlabs/pokemongoplus/ble/callback/CentralStateCallback;)V

    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public startDriver()V
    .registers 2

    .prologue
    .line 111
    new-instance v0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$2;

    invoke-direct {v0, p0}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$2;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)V

    invoke-virtual {p0, v0}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->start(Lcom/nianticlabs/pokemongoplus/ble/callback/CentralStateCallback;)I

    .line 118
    return-void
.end method

.method public startScanning(Ljava/lang/String;)V
    .registers 6
    .param p1, "peripheralName"    # Ljava/lang/String;

    .prologue
    .line 137
    sget-object v0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->TAG:Ljava/lang/String;

    const-string v1, "startScanning(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$4;

    invoke-direct {v0, p0}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$4;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)V

    invoke-virtual {p0, p1, v0}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->startScanning(Ljava/lang/String;Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;)V

    .line 144
    return-void
.end method

.method public startScanning(Ljava/lang/String;Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;)V
    .registers 5
    .param p1, "peripheralName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->serialExecutor:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$HandlerExecutor;

    new-instance v1, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$3;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method

.method public stop(I)V
    .registers 4
    .param p1, "unusedTag"    # I

    .prologue
    .line 103
    sget-object v0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->TAG:Ljava/lang/String;

    const-string v1, "stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method public stopDriver()V
    .registers 2

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->stop(I)V

    .line 108
    return-void
.end method

.method public stopScanning(Ljava/lang/String;)V
    .registers 6
    .param p1, "peripheralName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 149
    sget-object v0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->TAG:Ljava/lang/String;

    const-string v1, "stopScanning(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->sfidaScanCallback:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    if-eqz v0, :cond_1e

    .line 152
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->sfidaScanCallback:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 153
    iput-boolean v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->isScanning:Z

    .line 155
    :cond_1e
    return-void
.end method
