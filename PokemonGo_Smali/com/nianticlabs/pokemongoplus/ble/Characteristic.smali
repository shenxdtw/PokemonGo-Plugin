.class public abstract Lcom/nianticlabs/pokemongoplus/ble/Characteristic;
.super Ljava/lang/Object;
.source "Characteristic.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract enableNotify(Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V
.end method

.method public abstract getLongValue()J
.end method

.method public abstract getUuid()Ljava/lang/String;
.end method

.method public abstract getValue()[B
.end method

.method public abstract readValue(Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V
.end method

.method public abstract writeByteArray([BLcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V
.end method
