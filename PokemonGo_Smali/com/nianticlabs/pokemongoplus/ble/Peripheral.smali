.class public abstract Lcom/nianticlabs/pokemongoplus/ble/Peripheral;
.super Ljava/lang/Object;
.source "Peripheral.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract connect(Lcom/nianticlabs/pokemongoplus/ble/callback/ConnectCallback;)V
.end method

.method public abstract disconnect(Lcom/nianticlabs/pokemongoplus/ble/callback/ConnectCallback;)V
.end method

.method public abstract discoverServices(Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V
.end method

.method public abstract getAdvertisingServiceDataLongValue(Ljava/lang/String;)J
.end method

.method public abstract getIdentifier()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getService(I)Lcom/nianticlabs/pokemongoplus/ble/Service;
.end method

.method public abstract getServiceCount()I
.end method

.method public abstract getState()Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$PeripheralState;
.end method

.method public abstract setScanRecord([B)V
.end method
