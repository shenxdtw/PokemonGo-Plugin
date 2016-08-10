.class Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9;
.super Ljava/lang/Object;
.source "SfidaCharacteristic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onDescriptorWrite(Landroid/bluetooth/BluetoothGattDescriptor;I)V
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
    .line 265
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    iput p2, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 269
    const/16 v0, 0x8

    .line 270
    .local v0, "GATT_NOTIFY_ALREADY_ENABLED":I
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onEnableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$1200(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 271
    iget v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9;->val$status:I

    if-eqz v1, :cond_17

    iget v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9;->val$status:I

    if-ne v1, v2, :cond_28

    .line 272
    :cond_17
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onEnableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$1200(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    move-result-object v1

    sget-object v2, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-interface {v1, v4, v2}, Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;->onCompletion(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    .line 276
    :goto_22
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # setter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onEnableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    invoke-static {v1, v5}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$1202(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .line 286
    :cond_27
    :goto_27
    return-void

    .line 274
    :cond_28
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onEnableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$1200(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    move-result-object v1

    sget-object v2, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-interface {v1, v3, v2}, Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;->onCompletion(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    goto :goto_22

    .line 278
    :cond_34
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onDisableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$1300(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 279
    iget v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9;->val$status:I

    if-eqz v1, :cond_44

    iget v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9;->val$status:I

    if-ne v1, v2, :cond_55

    .line 280
    :cond_44
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onDisableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$1300(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    move-result-object v1

    sget-object v2, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-interface {v1, v4, v2}, Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;->onCompletion(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    .line 284
    :goto_4f
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # setter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onDisableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    invoke-static {v1, v5}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$1302(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    goto :goto_27

    .line 282
    :cond_55
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onDisableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$1300(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    move-result-object v1

    sget-object v2, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-interface {v1, v3, v2}, Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;->onCompletion(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    goto :goto_4f
.end method
