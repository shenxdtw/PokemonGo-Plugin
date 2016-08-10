.class Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$2;
.super Ljava/lang/Object;
.source "SfidaBluetoothDriver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->stop(I)V
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
    .line 106
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$2;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver$2;->this$0:Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;

    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/SfidaBluetoothDriver;->releasePeripherals()V

    .line 110
    return-void
.end method
