.class public Lcom/nianticlabs/pokemongoplus/service/BackgroundService;
.super Landroid/app/Service;
.source "BackgroundService.java"


# static fields
.field public static PROCESS_LOCAL_VALUE:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field private static final kCapturedPokemon:I = 0x1

.field private static final kEmptyMessage:I = 0x0

.field private static final kItemInventoryFull:I = 0x9

.field private static final kOutOfPokeballs:I = 0x7

.field private static final kPokemonEscaped:I = 0x2

.field private static final kPokemonInventoryFull:I = 0x8

.field private static final kPokestopCooldown:I = 0x6

.field private static final kPokestopOutOfRange:I = 0x5

.field private static final kRetrievedItems:I = 0x4

.field private static final kRetrievedOneItem:I = 0x3

.field private static final kSessionEnded:I = 0xc

.field private static final kTrackedPokemonFound:I = 0xa

.field private static final kTrackedPokemonLost:I = 0xb

.field private static final notificationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static serviceStopped:Z


# instance fields
.field private batteryLevel:D

.field private handler:Landroid/os/Handler;

.field private handlerThread:Landroid/os/HandlerThread;

.field private isScanning:Z

.field private pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

.field private pluginState:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

.field private sfidaReceiver:Landroid/content/BroadcastReceiver;

.field private sfidaState:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

.field private shuttingDown:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->notificationMap:Ljava/util/Map;

    .line 48
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->notificationMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/nianticlabs/pokemongoplus/R$string;->Captured_Pokemon:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->notificationMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/nianticlabs/pokemongoplus/R$string;->Pokemon_Escaped:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->notificationMap:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/nianticlabs/pokemongoplus/R$string;->Retrieved_an_Item:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->notificationMap:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/nianticlabs/pokemongoplus/R$string;->Retrieved_Items:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->notificationMap:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/nianticlabs/pokemongoplus/R$string;->Pokestop_Out_Of_Range:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->notificationMap:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/nianticlabs/pokemongoplus/R$string;->Pokestop_Cooldown:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->notificationMap:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/nianticlabs/pokemongoplus/R$string;->Out_Of_Pokeballs:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->notificationMap:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/nianticlabs/pokemongoplus/R$string;->Pokemon_Inventory_Full:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->notificationMap:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/nianticlabs/pokemongoplus/R$string;->Item_Inventory_Full:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->notificationMap:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/nianticlabs/pokemongoplus/R$string;->Tracked_Pokemon_Found:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->notificationMap:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/nianticlabs/pokemongoplus/R$string;->Tracked_Pokemon_Lost:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->notificationMap:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/nianticlabs/pokemongoplus/R$string;->Session_Ended:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-class v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    sput v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->PROCESS_LOCAL_VALUE:I

    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->serviceStopped:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    .line 420
    new-instance v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$3;

    invoke-direct {v0, p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$3;-><init>(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;)V

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->sfidaReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    return-void
.end method

.method public static GetLauncherActivity(Landroid/content/Context;)Ljava/lang/Class;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 405
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 406
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 407
    .local v2, "launchIntent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "className":Ljava/lang/String;
    :try_start_14
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_14 .. :try_end_17} :catch_19

    move-result-object v4

    .line 412
    :goto_18
    return-object v4

    .line 410
    :catch_19
    move-exception v1

    .line 411
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v4, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Launcher class not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/4 v4, 0x0

    goto :goto_18
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->shuttingDown:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;)V
    .registers 1
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->continueStopService()V

    return-void
.end method

.method static synthetic access$102(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/service/BackgroundService;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->shuttingDown:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;)Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/service/BackgroundService;
    .param p1, "x1"    # Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pluginState:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    return-object p1
.end method

.method static synthetic access$202(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 29
    sput-boolean p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->serviceStopped:Z

    return p0
.end method

.method static synthetic access$300(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/service/BackgroundService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->formatNotification(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/service/BackgroundService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->createPlayerNotification(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;)V
    .registers 1
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->stopPlayerNotification()V

    return-void
.end method

.method static synthetic access$700(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;D)V
    .registers 4
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/service/BackgroundService;
    .param p1, "x1"    # D

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->updateBatteryLevel(D)V

    return-void
.end method

.method static synthetic access$800(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;)Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->sfidaState:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    return-object v0
.end method

.method static synthetic access$802(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;)Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/service/BackgroundService;
    .param p1, "x1"    # Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->sfidaState:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    return-object p1
.end method

.method static synthetic access$900(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;)V
    .registers 3
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/service/BackgroundService;
    .param p1, "x1"    # Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;
    .param p2, "x2"    # Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->updateNotificationForSfidaState(Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;)V

    return-void
.end method

.method private continueStopService()V
    .registers 3

    .prologue
    .line 299
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->sfidaState:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->Disconnecting:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    if-ne v0, v1, :cond_7

    .line 327
    :cond_6
    :goto_6
    return-void

    .line 301
    :cond_7
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->sfidaState:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->Connected:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    if-eq v0, v1, :cond_13

    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->sfidaState:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    sget-object v1, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->Certified:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    if-ne v0, v1, :cond_19

    .line 303
    :cond_13
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->stopSession()V

    goto :goto_6

    .line 304
    :cond_19
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    if-eqz v0, :cond_6

    .line 305
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4;->$SwitchMap$com$nianticlabs$pokemongoplus$bridge$BridgeConstants$PgpState:[I

    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pluginState:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    invoke-virtual {v1}, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3e

    goto :goto_6

    .line 308
    :pswitch_2b
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->pause()V

    goto :goto_6

    .line 313
    :pswitch_31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->shuttingDown:Z

    goto :goto_6

    .line 317
    :pswitch_35
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->finishStopService()V

    goto :goto_6

    .line 321
    :pswitch_39
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->forceStopService()V

    goto :goto_6

    .line 305
    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_2b
        :pswitch_31
        :pswitch_31
        :pswitch_35
        :pswitch_39
        :pswitch_39
    .end packed-switch
.end method

.method private createPlayerNotification(Ljava/lang/String;)V
    .registers 18
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 365
    sget-object v13, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "BackgroundService createPlayerNotification message = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-static/range {p0 .. p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->GetLauncherActivity(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v4

    .line 368
    .local v4, "mainContextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v12, Landroid/content/Intent;

    const-class v13, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 369
    .local v12, "stopSelf":Landroid/content/Intent;
    const-string v13, "stopService"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    const-string v13, "action"

    const-string v14, "stopService"

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    const/4 v13, 0x0

    const/high16 v14, 0x10000000

    move-object/from16 v0, p0

    invoke-static {v0, v13, v12, v14}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 373
    .local v8, "pendingStopSelf":Landroid/app/PendingIntent;
    new-instance v6, Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 375
    .local v6, "notificationIntent":Landroid/content/Intent;
    const/high16 v13, 0x4000000

    invoke-virtual {v6, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 376
    invoke-virtual/range {p0 .. p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/nianticlabs/pokemongoplus/R$drawable;->sfida_icon:I

    invoke-static {v13, v14}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 377
    .local v3, "largeIcon":Landroid/graphics/Bitmap;
    new-instance v13, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    sget v14, Lcom/nianticlabs/pokemongoplus/R$drawable;->ic_swap_horiz_white_24dp:I

    .line 378
    invoke-virtual {v13, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    .line 379
    invoke-virtual {v13, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/nianticlabs/pokemongoplus/R$string;->Pokemon_Go_Plus:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    .line 381
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    const/4 v14, 0x1

    .line 382
    invoke-virtual {v13, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    sget v14, Lcom/nianticlabs/pokemongoplus/R$drawable;->ic_media_pause:I

    const-string v15, "Stop"

    .line 383
    invoke-virtual {v13, v14, v15, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 385
    .local v1, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    new-instance v2, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v2}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    .line 388
    .local v2, "inboxStyle":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    invoke-static/range {p0 .. p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v11

    .line 389
    .local v11, "stackBuilder":Landroid/app/TaskStackBuilder;
    invoke-virtual {v11, v4}, Landroid/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/app/TaskStackBuilder;

    .line 390
    invoke-virtual {v11, v6}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 392
    const/16 v7, 0x5eb

    .line 393
    .local v7, "notifyId":I
    const/16 v9, 0x5ec

    .line 394
    .local v9, "requestId":I
    const/high16 v13, 0x8000000

    .line 395
    invoke-virtual {v11, v9, v13}, Landroid/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v10

    .line 399
    .local v10, "resultPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v1, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 400
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    .line 401
    .local v5, "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v5}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->startForeground(ILandroid/app/Notification;)V

    .line 402
    return-void
.end method

.method private finishStopService()V
    .registers 1

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->shutdownBackgroundBridge()V

    .line 291
    return-void
.end method

.method private forceStopService()V
    .registers 1

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->stopPlayerNotification()V

    .line 295
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->stopSelf()V

    .line 296
    return-void
.end method

.method private formatNotification(ILjava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "message"    # I
    .param p2, "arg"    # Ljava/lang/String;

    .prologue
    .line 352
    sget-object v2, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->notificationMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 353
    .local v1, "tag":Ljava/lang/Integer;
    if-eqz v1, :cond_25

    .line 354
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "format":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 357
    .end local v0    # "format":Ljava/lang/String;
    :goto_24
    return-object v2

    :cond_25
    const-string v2, ""

    goto :goto_24
.end method

.method private handleStartSession(Landroid/content/Intent;)V
    .registers 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 330
    const-string v0, "hostPort"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, "hostPort":Ljava/lang/String;
    const-string v0, "device"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, "device":Ljava/lang/String;
    const-string v0, "authToken"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 333
    .local v3, "authToken":[B
    const-string v0, "pokemonId"

    const-wide/16 v8, 0x0

    invoke-virtual {p1, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 335
    .local v4, "pokemonId":J
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v7, Lcom/nianticlabs/pokemongoplus/R$string;->Connecting_GO_Plus:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 336
    .local v6, "message":Ljava/lang/String;
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    const-string v7, "Start session: %s %s %d \"%s\""

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    const/4 v9, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-direct {p0, v6}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->createPlayerNotification(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    invoke-virtual/range {v0 .. v5}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->startSession(Ljava/lang/String;Ljava/lang/String;[BJ)V

    .line 339
    return-void
.end method

.method private static sendClientIntent(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceAction"    # Ljava/lang/String;

    .prologue
    .line 163
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nianticlabs/pokemongoplus/service/ClientService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.nianticlabs.pokemongoplus.bridge"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 167
    return-void
.end method

.method private stopPlayerNotification()V
    .registers 4

    .prologue
    .line 342
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    const-string v1, "stopping notification"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->stopForeground(Z)V

    .line 344
    return-void
.end method

.method private stopService()V
    .registers 2

    .prologue
    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->shuttingDown:Z

    .line 286
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->continueStopService()V

    .line 287
    return-void
.end method

.method private updateBatteryLevel(D)V
    .registers 4
    .param p1, "batteryLevel"    # D

    .prologue
    .line 347
    iput-wide p1, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->batteryLevel:D

    .line 349
    return-void
.end method

.method private updateNotificationForSfidaState(Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;)V
    .registers 6
    .param p1, "newSfidaState"    # Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;
    .param p2, "sfidaState"    # Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    .prologue
    .line 468
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    if-eq p1, p2, :cond_29

    .line 470
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4;->$SwitchMap$com$nianticlabs$pokemongoplus$bridge$BridgeConstants$SfidaState:[I

    invoke-virtual {p1}, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_46

    .line 487
    :cond_29
    :goto_29
    return-void

    .line 472
    :pswitch_2a
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nianticlabs/pokemongoplus/R$string;->Disconnecting_GO_Plus:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->createPlayerNotification(Ljava/lang/String;)V

    goto :goto_29

    .line 475
    :pswitch_38
    sget-object v0, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->Disconnecting:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    if-ne p2, v0, :cond_29

    .line 476
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->stopPlayerNotification()V

    goto :goto_29

    .line 481
    :pswitch_40
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->createPlayerNotification(Ljava/lang/String;)V

    goto :goto_29

    .line 470
    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_38
        :pswitch_40
        :pswitch_40
    .end packed-switch
.end method


# virtual methods
.method public finishShutdownBackgroundBridge()V
    .registers 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$2;

    invoke-direct {v1, p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$2;-><init>(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 202
    return-void
.end method

.method public initBackgroundBridge()V
    .registers 4

    .prologue
    .line 158
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackgroundService onCreate PROCESS_LOCAL_VALUE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->PROCESS_LOCAL_VALUE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-static {p0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->createBridge(Landroid/content/Context;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    .line 160
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 207
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 87
    sget-object v1, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BackgroundService onCreate() PROCESS_LOCAL_VALUE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->PROCESS_LOCAL_VALUE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "BackgroundService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->handlerThread:Landroid/os/HandlerThread;

    .line 90
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 91
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->handler:Landroid/os/Handler;

    .line 94
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 95
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.nianticlabs.pokemongoplus.service.ToClient"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->sfidaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    return-void
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 101
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 102
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackgroundService onDestroy PROCESS_LOCAL_VALUE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->PROCESS_LOCAL_VALUE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->shutdownBackgroundBridge()V

    .line 104
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->sfidaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 105
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 106
    iput-object v3, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->handler:Landroid/os/Handler;

    .line 107
    iput-object v3, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->handlerThread:Landroid/os/HandlerThread;

    .line 108
    return-void
.end method

.method protected onHandleBridgedIntent(Ljava/lang/String;Landroid/content/Intent;)V
    .registers 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 232
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->PROCESS_LOCAL_VALUE:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    if-nez v0, :cond_64

    const-string v0, "stop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 235
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    const-string v3, "BackgroundService onHandleBridgedIntent (pgpBackgroundBridge == null)"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->initBackgroundBridge()V

    .line 237
    const-string v0, "start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 239
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Background servic iunintialized when received \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\", PROCESS_LOCAL_VALUE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->PROCESS_LOCAL_VALUE:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-string p1, "start"

    .line 244
    :cond_64
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BackgroundService onHandleBridgedIntent action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_13e

    :cond_84
    :goto_84
    packed-switch v0, :pswitch_data_164

    .line 279
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t handle intent message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :goto_9f
    return-void

    .line 245
    :sswitch_a0
    const-string v3, "start"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    move v0, v1

    goto :goto_84

    :sswitch_aa
    const-string v3, "resume"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    move v0, v2

    goto :goto_84

    :sswitch_b4
    const-string v3, "pause"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    const/4 v0, 0x2

    goto :goto_84

    :sswitch_be
    const-string v3, "stop"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    const/4 v0, 0x3

    goto :goto_84

    :sswitch_c8
    const-string v3, "startScanning"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    const/4 v0, 0x4

    goto :goto_84

    :sswitch_d2
    const-string v3, "stopScanning"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    const/4 v0, 0x5

    goto :goto_84

    :sswitch_dc
    const-string v3, "startSession"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    const/4 v0, 0x6

    goto :goto_84

    :sswitch_e6
    const-string v3, "stopSession"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    const/4 v0, 0x7

    goto :goto_84

    :sswitch_f0
    const-string v3, "stopService"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    const/16 v0, 0x8

    goto :goto_84

    .line 247
    :pswitch_fb
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->start()V

    goto :goto_9f

    .line 250
    :pswitch_101
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->resume()V

    goto :goto_9f

    .line 253
    :pswitch_107
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->pause()V

    goto :goto_9f

    .line 256
    :pswitch_10d
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    if-eqz v0, :cond_116

    .line 257
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->stop()V

    .line 259
    :cond_116
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->shutdownBackgroundBridge()V

    goto :goto_9f

    .line 262
    :pswitch_11a
    iput-boolean v2, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->isScanning:Z

    .line 263
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->startScanning()V

    goto/16 :goto_9f

    .line 266
    :pswitch_123
    iput-boolean v1, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->isScanning:Z

    .line 267
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->stopScanning()V

    goto/16 :goto_9f

    .line 270
    :pswitch_12c
    invoke-direct {p0, p2}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->handleStartSession(Landroid/content/Intent;)V

    goto/16 :goto_9f

    .line 273
    :pswitch_131
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->stopSession()V

    goto/16 :goto_9f

    .line 276
    :pswitch_138
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->stopService()V

    goto/16 :goto_9f

    .line 245
    nop

    :sswitch_data_13e
    .sparse-switch
        -0x7af6dd2d -> :sswitch_d2
        -0x37b237d3 -> :sswitch_aa
        -0x2d7480cd -> :sswitch_c8
        0x360802 -> :sswitch_be
        0x65825f6 -> :sswitch_b4
        0x68ac462 -> :sswitch_a0
        0x29afb053 -> :sswitch_f0
        0x29bc6c34 -> :sswitch_e6
        0x6e4d03d4 -> :sswitch_dc
    .end sparse-switch

    :pswitch_data_164
    .packed-switch 0x0
        :pswitch_fb
        :pswitch_101
        :pswitch_107
        :pswitch_10d
        :pswitch_11a
        :pswitch_123
        :pswitch_12c
        :pswitch_131
        :pswitch_138
    .end packed-switch
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 211
    if-nez p1, :cond_a

    .line 212
    sget-object v1, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    const-string v2, "BackgroundService onHandleIntent (intent == null)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_9
    return-void

    .line 215
    :cond_a
    const-string v1, "action"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_34

    .line 217
    sget-object v1, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    const-string v2, "BackgroundService onHandleIntent (action == null)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    sget-object v1, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing action  PROCESS_LOCAL_VALUE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->PROCESS_LOCAL_VALUE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 221
    :cond_34
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_52

    :cond_3c
    :goto_3c
    packed-switch v1, :pswitch_data_58

    .line 226
    invoke-virtual {p0, v0, p1}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->onHandleBridgedIntent(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_9

    .line 221
    :pswitch_43
    const-string v2, "finishShutdown"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    const/4 v1, 0x0

    goto :goto_3c

    .line 223
    :pswitch_4d
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->finishShutdownBackgroundBridge()V

    goto :goto_9

    .line 221
    nop

    :pswitch_data_52
    .packed-switch 0x24cbb409
        :pswitch_43
    .end packed-switch

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_4d
    .end packed-switch
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 112
    sget-object v3, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BackgroundService onStartCommand() PROCESS_LOCAL_VALUE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->PROCESS_LOCAL_VALUE:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    if-nez p1, :cond_44

    .line 116
    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pluginState:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    if-eqz v3, :cond_29

    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pluginState:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    sget-object v4, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;->Unknown:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    if-ne v3, v4, :cond_2e

    .line 119
    :cond_29
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->stopPlayerNotification()V

    move v1, v2

    .line 154
    :goto_2d
    return v1

    .line 123
    :cond_2e
    sget-object v2, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    const-string v3, "Null intent but valid state: %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pluginState:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    invoke-virtual {v5}, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 126
    :cond_44
    const-string v3, "action"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "action":Ljava/lang/String;
    sget-boolean v3, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->serviceStopped:Z

    if-eqz v3, :cond_5a

    .line 130
    if-eqz v0, :cond_76

    const-string v3, "start"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 132
    sput-boolean v6, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->serviceStopped:Z

    .line 141
    :cond_5a
    iget-boolean v2, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->shuttingDown:Z

    if-eqz v2, :cond_87

    const-string v2, "finishShutdown"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_87

    .line 143
    sget-object v2, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    const-string v3, "Ignoring \"%s\" intent because shutting down"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 135
    :cond_76
    sget-object v3, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    const-string v4, "Ignoring \"%s\" intent because stopped"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v6

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 136
    goto :goto_2d

    .line 148
    :cond_87
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$1;

    invoke-direct {v3, p0, p1}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$1;-><init>(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2d
.end method

.method public shutdownBackgroundBridge()V
    .registers 5

    .prologue
    .line 172
    sget-object v1, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BackgroundService shutdownBackgroundBridge() PROCESS_LOCAL_VALUE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->PROCESS_LOCAL_VALUE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v1, "confirmBridgeShutdown"

    invoke-static {p0, v1}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->sendClientIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    if-eqz v1, :cond_32

    .line 177
    sget-object v1, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    const-string v2, "BackgroundService destroy the bridge "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    invoke-virtual {v1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->destroyBridge()V

    .line 179
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    .line 181
    :cond_32
    sget-object v1, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DONE BackgroundService shutdownBackgroundBridge() PROCESS_LOCAL_VALUE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->PROCESS_LOCAL_VALUE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.nianticlabs.pokemongoplus.bridge"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v1, "action"

    const-string v2, "finishShutdown"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0, v0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 188
    return-void
.end method
