.class public Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;
.super Ljava/lang/Object;
.source "BackgroundBridge.java"


# static fields
.field public static final BACKGROUND_BROADCAST_DOMAIN:Ljava/lang/String; = "com.nianticlabs.pokemongoplus.service.ToServer"

.field private static final TAG:Ljava/lang/String;

.field public static currentContext:Landroid/content/Context;


# instance fields
.field private nativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const-class v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    .line 136
    const-string v0, "libpgpplugin.so"

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->initialize()V

    .line 17
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    const-string v1, "Initialize();"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void
.end method

.method public static createBridge(Landroid/content/Context;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    sput-object p0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->currentContext:Landroid/content/Context;

    .line 22
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    const-class v2, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->nativeInit()V

    .line 24
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    const-string v2, "BackgroundBridge createBridge"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    invoke-direct {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;-><init>()V

    .line 26
    .local v0, "pgpwrap":Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    const-string v2, "new BackgroundBridge"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-object v0
.end method

.method private static createIntentWithAction(Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nianticlabs.pokemongoplus.service.ToClient"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "action"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createIntentWithAction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-object v0
.end method

.method private native initialize()V
.end method

.method public static native nativeInit()V
.end method

.method public static sendBatteryLevel(D)V
    .registers 6
    .param p0, "batteryLevel"    # D

    .prologue
    .line 115
    const-string v1, "batteryLevel"

    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->createIntentWithAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 116
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "level"

    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 117
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendBatteryLevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->currentContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 119
    return-void
.end method

.method public static sendCentralState(I)V
    .registers 5
    .param p0, "state"    # I

    .prologue
    .line 86
    const-string v1, "centralState"

    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->createIntentWithAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 87
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "centralState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->currentContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 90
    return-void
.end method

.method public static sendEncounterId(J)V
    .registers 6
    .param p0, "encounterId"    # J

    .prologue
    .line 72
    const-string v1, "encounterId"

    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->createIntentWithAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 73
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "id"

    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 74
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendEncounterId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->currentContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 76
    return-void
.end method

.method public static sendIsScanning(I)V
    .registers 5
    .param p0, "isScanning"    # I

    .prologue
    .line 101
    const-string v1, "isScanning"

    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->createIntentWithAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 102
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "isScanning"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendIsScanning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->currentContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 105
    return-void
.end method

.method public static sendNotification(ILjava/lang/String;)V
    .registers 6
    .param p0, "message"    # I
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    .line 122
    const-string v1, "sendNotification"

    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->createIntentWithAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 123
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "message"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    const-string v1, "arg"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendNotification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->currentContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 127
    return-void
.end method

.method public static sendPluginState(I)V
    .registers 5
    .param p0, "state"    # I

    .prologue
    .line 108
    const-string v1, "pluginState"

    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->createIntentWithAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 109
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendPluginState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->currentContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 112
    return-void
.end method

.method public static sendPokestopId(Ljava/lang/String;)V
    .registers 5
    .param p0, "pokestop"    # Ljava/lang/String;

    .prologue
    .line 79
    const-string v1, "pokestop"

    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->createIntentWithAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 80
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "id"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendPokestopId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->currentContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 83
    return-void
.end method

.method public static sendScannedSfida(Ljava/lang/String;I)V
    .registers 6
    .param p0, "deviceId"    # Ljava/lang/String;
    .param p1, "buttonValue"    # I

    .prologue
    .line 93
    const-string v1, "scannedSfida"

    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->createIntentWithAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 94
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "device"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v1, "button"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendScannedSfida: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->currentContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 98
    return-void
.end method

.method public static sendSfidaState(I)V
    .registers 5
    .param p0, "state"    # I

    .prologue
    .line 65
    const-string v1, "sfidaState"

    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->createIntentWithAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 66
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sfidaState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->currentContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 69
    return-void
.end method

.method public static sendUpdateTimestamp(J)V
    .registers 4
    .param p0, "timestampMs"    # J

    .prologue
    .line 59
    const-string v1, "updateTimestamp"

    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->createIntentWithAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 60
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "timestamp"

    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 61
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->currentContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 62
    return-void
.end method

.method public static stopNotification()V
    .registers 3

    .prologue
    .line 130
    const-string v1, "stopNotification"

    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->createIntentWithAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 131
    .local v0, "i":Landroid/content/Intent;
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->TAG:Ljava/lang/String;

    const-string v2, "stopNotification"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->currentContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 133
    return-void
.end method


# virtual methods
.method public destroyBridge()V
    .registers 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->dispose()V

    .line 33
    return-void
.end method

.method public native dispose()V
.end method

.method public native pause()V
.end method

.method public native resume()V
.end method

.method public native start()V
.end method

.method public native startScanning()V
.end method

.method public native startSession(Ljava/lang/String;Ljava/lang/String;[BJ)V
.end method

.method public native stop()V
.end method

.method public native stopScanning()V
.end method

.method public native stopSession()V
.end method
