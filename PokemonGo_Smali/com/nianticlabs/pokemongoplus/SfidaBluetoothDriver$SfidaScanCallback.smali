.class Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;
.super Ljava/lang/Object;
.source "SfidaBluetoothDriver.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SfidaScanCallback"
.end annotation


# instance fields
.field private peripheralName:Ljava/lang/String;

.field final synthetic this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;


# direct methods
.method public constructor <init>(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;Ljava/lang/String;)V
    .registers 3
    .param p2, "peripheralName"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p2, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;->peripheralName:Ljava/lang/String;

    .line 173
    return-void
.end method

.method static synthetic access$900(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;->peripheralName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    .prologue
    .line 177
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "address":Ljava/lang/String;
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->serialExecutor:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$HandlerExecutor;
    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$300(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$HandlerExecutor;

    move-result-object v1

    new-instance v2, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;

    invoke-direct {v2, p0, p1, v0, p3}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;[B)V

    invoke-virtual {v1, v2}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 205
    return-void
.end method
