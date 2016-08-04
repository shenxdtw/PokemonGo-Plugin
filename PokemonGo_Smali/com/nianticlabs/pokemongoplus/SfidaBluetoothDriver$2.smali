.class Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$2;
.super Ljava/lang/Object;
.source "SfidaBluetoothDriver.java"

# interfaces
.implements Lcom/nianticlabs/pokemongoplus/ble/callback/CentralStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->startDriver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;


# direct methods
.method constructor <init>(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$2;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnStateChanged(Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;)V
    .registers 4
    .param p1, "state"    # Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$2;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    # getter for: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->serialExecutor:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$HandlerExecutor;
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$300(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;)Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$HandlerExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$HandlerExecutor;->assertOnThread()V

    .line 115
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$2;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    invoke-virtual {p1}, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;->getInt()I

    move-result v1

    # invokes: Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->nativeStartCallback(I)V
    invoke-static {v0, v1}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->access$400(Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;I)V

    .line 116
    return-void
.end method
