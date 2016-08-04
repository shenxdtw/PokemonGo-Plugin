.class Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$1;
.super Ljava/lang/Object;
.source "SfidaCharacteristic.java"

# interfaces
.implements Lcom/nianticlabs/pokemongoplus/ble/callback/ValueChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->notifyValueChanged()V
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
    .line 53
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$1;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnValueChange(ZZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V
    .registers 6
    .param p1, "success"    # Z
    .param p2, "valueChanged"    # Z
    .param p3, "error"    # Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$1;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    invoke-virtual {p3}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->getInt()I

    move-result v1

    # invokes: Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->nativeValueChangedCallback(ZZI)V
    invoke-static {v0, p1, p2, v1}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->access$000(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;ZZI)V

    .line 57
    return-void
.end method
