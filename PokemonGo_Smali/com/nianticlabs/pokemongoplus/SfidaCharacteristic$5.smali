.class Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$5;
.super Ljava/lang/Object;
.source "SfidaCharacteristic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onCharacteristicChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;


# direct methods
.method constructor <init>(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$5;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 139
    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onCharacteristicChanged: %s"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$5;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-static {v5}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$500(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$5;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$500(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    .line 141
    .local v0, "receivedValue":[B
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$5;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # invokes: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->nativeSaveValueChangedCallback([B)V
    invoke-static {v1, v0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$600(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;[B)V

    .line 142
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$5;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onValueChangedCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ValueChangeCallback;
    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$700(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Lcom/nianticlabs/pokemongoplus/ble/callback/ValueChangeCallback;

    move-result-object v1

    if-eqz v1, :cond_4c

    .line 143
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$5;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->queue:Ljava/util/ArrayDeque;
    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$800(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$5;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onValueChangedCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ValueChangeCallback;
    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$700(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Lcom/nianticlabs/pokemongoplus/ble/callback/ValueChangeCallback;

    move-result-object v1

    sget-object v2, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-interface {v1, v6, v6, v2}, Lcom/nianticlabs/pokemongoplus/ble/callback/ValueChangeCallback;->OnValueChange(ZZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    .line 146
    :cond_4c
    return-void
.end method
