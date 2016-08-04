.class Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$3;
.super Ljava/lang/Object;
.source "SfidaBluetoothDriver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->startScanning(Ljava/lang/String;Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

.field final synthetic val$callback:Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;

.field final synthetic val$peripheralName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$3;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    iput-object p2, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$3;->val$callback:Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;

    iput-object p3, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$3;->val$peripheralName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 126
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$3;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$3;->val$callback:Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;

    # setter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->scanCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;
    invoke-static {v0, v1}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$502(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;)Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;

    .line 127
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$3;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$100(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 128
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$3;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    new-instance v1, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$3;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$3;->val$peripheralName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;Ljava/lang/String;)V

    # setter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->sfidaScanCallback:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;
    invoke-static {v0, v1}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$602(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;)Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    .line 129
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$3;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$100(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$3;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->sfidaScanCallback:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;
    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$600(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    .line 130
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$3;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    const/4 v1, 0x1

    # setter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->isScanning:Z
    invoke-static {v0, v1}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$702(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;Z)Z

    .line 132
    :cond_36
    return-void
.end method
