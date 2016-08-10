.class Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$5;
.super Ljava/lang/Object;
.source "SfidaCharacteristic.java"

# interfaces
.implements Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->disableNotify()V
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
    .line 208
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$5;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V
    .registers 8
    .param p1, "success"    # Z
    .param p2, "error"    # Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    .prologue
    .line 211
    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "disableNotify callback success: %b error[%d]:%s UUID:%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 212
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->getInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p2}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$5;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    invoke-virtual {v4}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->getUuid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 211
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$5;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    invoke-virtual {p2}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->getInt()I

    move-result v1

    # invokes: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->nativeDisableNotifyCallback(ZI)V
    invoke-static {v0, p1, v1}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$500(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;ZI)V

    .line 214
    return-void
.end method
