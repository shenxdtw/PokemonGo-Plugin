.class Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$7;
.super Ljava/lang/Object;
.source "SfidaCharacteristic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onCharacteristicRead(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$7;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    iput p2, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$7;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 169
    iget v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$7;->val$status:I

    if-nez v0, :cond_40

    .line 170
    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCharacteristicRead: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$7;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-static {v3}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$500(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$7;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$7;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$500(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    # invokes: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->nativeSaveValueChangedCallback([B)V
    invoke-static {v0, v1}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$600(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;[B)V

    .line 172
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$7;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onReadCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$1000(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    move-result-object v0

    sget-object v1, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-interface {v0, v5, v1}, Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;->onCompletion(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    .line 176
    :goto_3f
    return-void

    .line 174
    :cond_40
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$7;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onReadCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$1000(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    move-result-object v0

    sget-object v1, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-interface {v0, v4, v1}, Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;->onCompletion(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    goto :goto_3f
.end method
