.class Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$1;
.super Ljava/lang/Object;
.source "SfidaBluetoothDriver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->start(Lcom/nianticlabs/pokemongoplus/ble/callback/CentralStateCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

.field final synthetic val$callback:Lcom/nianticlabs/pokemongoplus/ble/callback/CentralStateCallback;


# direct methods
.method constructor <init>(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;Lcom/nianticlabs/pokemongoplus/ble/callback/CentralStateCallback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$1;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    iput-object p2, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$1;->val$callback:Lcom/nianticlabs/pokemongoplus/ble/callback/CentralStateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 84
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$1;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$000(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/SfidaUtils;->getBluetoothManager(Landroid/content/Context;)Landroid/bluetooth/BluetoothManager;

    move-result-object v0

    .line 85
    .local v0, "bluetoothManager":Landroid/bluetooth/BluetoothManager;
    if-eqz v0, :cond_2c

    .line 86
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$1;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    # setter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1, v2}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$102(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothAdapter;

    .line 87
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$1;->val$callback:Lcom/nianticlabs/pokemongoplus/ble/callback/CentralStateCallback;

    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$1;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$100(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_29

    sget-object v1, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;->PoweredOn:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

    :goto_25
    invoke-interface {v2, v1}, Lcom/nianticlabs/pokemongoplus/ble/callback/CentralStateCallback;->OnStateChanged(Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;)V

    .line 95
    :goto_28
    return-void

    .line 87
    :cond_29
    sget-object v1, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;->PoweredOff:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

    goto :goto_25

    .line 92
    :cond_2c
    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "start(CentralStateCallback): Could not find bluetooth manager."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$1;->val$callback:Lcom/nianticlabs/pokemongoplus/ble/callback/CentralStateCallback;

    sget-object v2, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

    invoke-interface {v1, v2}, Lcom/nianticlabs/pokemongoplus/ble/callback/CentralStateCallback;->OnStateChanged(Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;)V

    goto :goto_28
.end method
