.class Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$7;
.super Ljava/lang/Object;
.source "SfidaCharacteristic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onCharacteristicWrite(I)V
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
    .line 234
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$7;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    iput p2, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$7;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 237
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$7;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onWriteCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$1000(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 238
    iget v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$7;->val$status:I

    if-nez v0, :cond_19

    .line 239
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$7;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onWriteCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$1000(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    move-result-object v0

    const/4 v1, 0x1

    sget-object v2, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-interface {v0, v1, v2}, Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;->onCompletion(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    .line 244
    :cond_18
    :goto_18
    return-void

    .line 241
    :cond_19
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$7;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onWriteCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$1000(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-interface {v0, v1, v2}, Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;->onCompletion(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    goto :goto_18
.end method
