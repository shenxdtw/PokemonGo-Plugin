.class public abstract Lcom/nianticlabs/pokemongoplus/ble/Service;
.super Ljava/lang/Object;
.source "Service.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract discoverCharacteristics(Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V
.end method

.method public abstract getCharacteristicCount()I
.end method

.method public abstract getUuid()Ljava/lang/String;
.end method

.method public abstract isPrimary()Z
.end method
