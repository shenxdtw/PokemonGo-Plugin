.class public Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;
.super Ljava/lang/Object;
.source "ClientBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$SfidaRegisterDelegate;,
        Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$LoginDelegate;
    }
.end annotation


# static fields
.field public static final CLIENT_BROADCAST_DOMAIN:Ljava/lang/String; = "com.nianticlabs.pokemongoplus.service.ToClient"

.field private static final TAG:Ljava/lang/String;

.field public static currentContext:Landroid/content/Context;


# instance fields
.field loginDelegate:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$LoginDelegate;

.field private nativeHandle:J

.field sfidaRegisterDelegate:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$SfidaRegisterDelegate;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-class v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->initialize()V

    .line 49
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->TAG:Ljava/lang/String;

    const-string v1, "Initialize();"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method

.method public static createBridge(Landroid/content/Context;)Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    sput-object p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->currentContext:Landroid/content/Context;

    .line 54
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->TAG:Ljava/lang/String;

    const-class v2, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->nativeInit()V

    .line 56
    new-instance v0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;

    invoke-direct {v0}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;-><init>()V

    .line 57
    .local v0, "clientBridge":Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->TAG:Ljava/lang/String;

    const-string v2, "new ClientBridge"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-object v0
.end method

.method private static createIntentWithAction(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 63
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->currentContext:Landroid/content/Context;

    const-class v2, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.nianticlabs.holoholo.dev"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v1, "action"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    return-object v0
.end method

.method public static initBackgroundBridge()V
    .registers 4

    .prologue
    .line 70
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Init background bridge PROCESS_LOCAL_VALUE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->PROCESS_LOCAL_VALUE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->currentContext:Landroid/content/Context;

    const-class v2, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.nianticlabs.pokemongoplus.bridge"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v1, "action"

    const-string v2, "init"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->currentContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 75
    return-void
.end method

.method private native initialize()V
.end method

.method public static native nativeInit()V
.end method

.method public static sendPause()V
    .registers 3

    .prologue
    .line 100
    const-string v1, "pause"

    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->createIntentWithAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 101
    .local v0, "i":Landroid/content/Intent;
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->TAG:Ljava/lang/String;

    const-string v2, "send pause intent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->currentContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 103
    return-void
.end method

.method public static sendResume()V
    .registers 3

    .prologue
    .line 94
    const-string v1, "resume"

    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->createIntentWithAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 95
    .local v0, "i":Landroid/content/Intent;
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->TAG:Ljava/lang/String;

    const-string v2, "send resume intent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->currentContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 97
    return-void
.end method

.method public static sendStart()V
    .registers 4

    .prologue
    .line 86
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendStart PROCESS_LOCAL_VALUE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->PROCESS_LOCAL_VALUE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->currentContext:Landroid/content/Context;

    const-class v2, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.nianticlabs.pokemongoplus.bridge"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v1, "action"

    const-string v2, "start"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->currentContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 91
    return-void
.end method

.method public static sendStartScanning()V
    .registers 3

    .prologue
    .line 112
    const-string v1, "startScanning"

    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->createIntentWithAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 113
    .local v0, "i":Landroid/content/Intent;
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->TAG:Ljava/lang/String;

    const-string v2, "send startScanning intent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->currentContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 115
    return-void
.end method

.method public static sendStartSession(Ljava/lang/String;Ljava/lang/String;[BJ)V
    .registers 12
    .param p0, "hostPort"    # Ljava/lang/String;
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "authToken"    # [B
    .param p3, "pokemonId"    # J

    .prologue
    .line 125
    const-string v1, "startSession"

    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->createIntentWithAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 126
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "hostPort"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v1, "device"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v1, "authToken"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 129
    const-string v1, "pokemonId"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 130
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->TAG:Ljava/lang/String;

    const-string v2, "send startSession intent %s %s %s %d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    .line 131
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 130
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->currentContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 133
    return-void
.end method

.method public static sendStop()V
    .registers 3

    .prologue
    .line 106
    const-string v1, "stop"

    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->createIntentWithAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 107
    .local v0, "i":Landroid/content/Intent;
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->TAG:Ljava/lang/String;

    const-string v2, "send stop intent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->currentContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 109
    return-void
.end method

.method public static sendStopScanning()V
    .registers 3

    .prologue
    .line 118
    const-string v1, "stopScanning"

    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->createIntentWithAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 119
    .local v0, "i":Landroid/content/Intent;
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->TAG:Ljava/lang/String;

    const-string v2, "send stopScanning intent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->currentContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 121
    return-void
.end method

.method public static sendStopSession()V
    .registers 3

    .prologue
    .line 136
    const-string v1, "stopSession"

    invoke-static {v1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->createIntentWithAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 137
    .local v0, "i":Landroid/content/Intent;
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->TAG:Ljava/lang/String;

    const-string v2, "send stopSession intent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->currentContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 139
    return-void
.end method

.method public static shutdownBackgroundBridge()V
    .registers 4

    .prologue
    .line 78
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shutdown background bridge PROCESS_LOCAL_VALUE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->PROCESS_LOCAL_VALUE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->currentContext:Landroid/content/Context;

    const-class v2, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.nianticlabs.pokemongoplus.bridge"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v1, "action"

    const-string v2, "shutdown"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->currentContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 83
    return-void
.end method


# virtual methods
.method public native connectDevice(Ljava/lang/String;)V
.end method

.method public native disconnectDevice()V
.end method

.method public native dispose()V
.end method

.method public native login()V
.end method

.method public native logout()V
.end method

.method public onLogin(Z)V
    .registers 3
    .param p1, "success"    # Z

    .prologue
    .line 161
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->loginDelegate:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$LoginDelegate;

    if-eqz v0, :cond_c

    .line 162
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->loginDelegate:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$LoginDelegate;

    invoke-interface {v0, p1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$LoginDelegate;->onLogin(Z)V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->loginDelegate:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$LoginDelegate;

    .line 165
    :cond_c
    return-void
.end method

.method public onSfidaRegistered(ZLjava/lang/String;)V
    .registers 4
    .param p1, "success"    # Z
    .param p2, "device"    # Ljava/lang/String;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->sfidaRegisterDelegate:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$SfidaRegisterDelegate;

    if-eqz v0, :cond_c

    .line 168
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->sfidaRegisterDelegate:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$SfidaRegisterDelegate;

    invoke-interface {v0, p1, p2}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$SfidaRegisterDelegate;->onSfidaRegistered(ZLjava/lang/String;)V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->sfidaRegisterDelegate:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$SfidaRegisterDelegate;

    .line 171
    :cond_c
    return-void
.end method

.method public native pausePlugin()V
.end method

.method public native registerDevice(Ljava/lang/String;)V
.end method

.method public native resumePlugin()V
.end method

.method public native sendBatteryLevel(D)V
.end method

.method public native sendCentralState(I)V
.end method

.method public native sendEncounterId(J)V
.end method

.method public native sendPluginState(I)V
.end method

.method public native sendPokestopId(Ljava/lang/String;)V
.end method

.method public native sendScannedSfida(Ljava/lang/String;I)V
.end method

.method public native sendSfidaState(I)V
.end method

.method public native sendUpdateTimestamp(J)V
.end method

.method public native standaloneInit(J)V
.end method

.method public standaloneLogin(Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$LoginDelegate;)V
    .registers 2
    .param p1, "delegate"    # Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$LoginDelegate;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->loginDelegate:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$LoginDelegate;

    .line 154
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->login()V

    .line 155
    return-void
.end method

.method public standaloneSfidaRegister(Ljava/lang/String;Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$SfidaRegisterDelegate;)V
    .registers 3
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "delegate"    # Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$SfidaRegisterDelegate;

    .prologue
    .line 157
    iput-object p2, p0, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->sfidaRegisterDelegate:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge$SfidaRegisterDelegate;

    .line 158
    invoke-virtual {p0, p1}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->registerDevice(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public native standaloneUpdate()V
.end method

.method public native startPlugin()V
.end method

.method public native startScanning()V
.end method

.method public native stopPlugin()V
.end method

.method public native stopScanning()V
.end method
