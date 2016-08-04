.class Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$4;
.super Ljava/lang/Object;
.source "SfidaPeripheral.java"

# interfaces
.implements Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->disconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;


# direct methods
.method constructor <init>(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$4;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V
    .registers 5
    .param p1, "success"    # Z
    .param p2, "error"    # Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral$4;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;

    invoke-virtual {p2}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->getInt()I

    move-result v1

    # invokes: Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->nativeDisconnectCallback(ZI)V
    invoke-static {v0, p1, v1}, Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;->access$400(Lcom/nianticlabs/pokemongoplus/SfidaPeripheral;ZI)V

    .line 229
    return-void
.end method
