.class public abstract Lcom/nianticlabs/pokemongoplus/ble/BluetoothDriver;
.super Ljava/lang/Object;
.source "BluetoothDriver.java"


# instance fields
.field private currentState:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object v0, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/ble/BluetoothDriver;->currentState:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$CentralState;

    return-void
.end method


# virtual methods
.method public abstract IsScanning()Z
.end method

.method public abstract start(Lcom/nianticlabs/pokemongoplus/ble/callback/CentralStateCallback;)I
.end method

.method public abstract startScanning(Ljava/lang/String;Lcom/nianticlabs/pokemongoplus/ble/callback/ScanCallback;)V
.end method

.method public abstract stop(I)V
.end method

.method public abstract stopScanning(Ljava/lang/String;)V
.end method
