.class Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;
.super Ljava/lang/Object;
.source "SfidaBluetoothDriver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic val$scanRecord:[B


# direct methods
.method constructor <init>(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;[B)V
    .registers 5
    .param p1, "this$1"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    iput-object p2, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    iput-object p3, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;->val$address:Ljava/lang/String;

    iput-object p4, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;->val$scanRecord:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 181
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    iget-object v2, v2, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    invoke-virtual {v2}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->IsScanning()Z

    move-result v2

    if-nez v2, :cond_b

    .line 203
    :cond_a
    :goto_a
    return-void

    .line 185
    :cond_b
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "deviceName":Ljava/lang/String;
    if-eqz v0, :cond_a

    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;->peripheralName:Ljava/lang/String;
    invoke-static {v2}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;->access$900(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 188
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    iget-object v2, v2, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->scanCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;
    invoke-static {v2}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$500(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 191
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    iget-object v2, v2, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->peripheralMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$1000(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;->val$address:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_63

    .line 192
    new-instance v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    iget-object v2, v2, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$000(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    iget-object v4, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;->val$scanRecord:[B

    invoke-direct {v1, v2, v3, v4}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;[B)V

    .line 193
    .local v1, "foundPeripheral":Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    iget-object v2, v2, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->peripheralMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$1000(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;->val$address:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :goto_57
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    iget-object v2, v2, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->scanCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;
    invoke-static {v2}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$500(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;->onScan(Lcom/nianticlabs/pokemongoplus/ble/Peripheral;)V

    goto :goto_a

    .line 195
    .end local v1    # "foundPeripheral":Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;
    :cond_63
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;->this$1:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;

    iget-object v2, v2, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->peripheralMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$1000(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;->val$address:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    .line 196
    .restart local v1    # "foundPeripheral":Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$SfidaScanCallback$1;->val$scanRecord:[B

    invoke-virtual {v1, v2}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->setScanRecord([B)V

    goto :goto_57
.end method
