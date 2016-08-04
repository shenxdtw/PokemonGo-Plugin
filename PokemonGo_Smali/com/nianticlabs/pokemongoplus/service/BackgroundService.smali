.class public Lcom/nianticlabs/pokemongoplus/service/BackgroundService;
.super Landroid/app/Service;
.source "BackgroundService.java"


# static fields
.field public static PROCESS_LOCAL_VALUE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private handler:Landroid/os/Handler;

.field private handlerThread:Landroid/os/HandlerThread;

.field private pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

.field private sfidaReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-class v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    sput v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->PROCESS_LOCAL_VALUE:I

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    .line 272
    new-instance v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$3;

    invoke-direct {v0, p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$3;-><init>(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;)V

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->sfidaReceiver:Landroid/content/BroadcastReceiver;

    .line 46
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
    .line 257
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 259
    .local v2, "launchIntent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "className":Ljava/lang/String;
    :try_start_14
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_14 .. :try_end_17} :catch_19

    move-result-object v4

    .line 264
    :goto_18
    return-object v4

    .line 262
    :catch_19
    move-exception v1

    .line 263
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

    .line 264
    const/4 v4, 0x0

    goto :goto_18
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/service/BackgroundService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->createPlayerNotification(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;)V
    .registers 1
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->stopPlayerNotification()V

    return-void
.end method

.method static synthetic access$400(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;D)V
    .registers 4
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/service/BackgroundService;
    .param p1, "x1"    # D

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->updateBatteryLevel(D)V

    return-void
.end method

.method private createPlayerNotification(Ljava/lang/String;)V
    .registers 14
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 229
    sget-object v9, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BackgroundService createPlayerNotification message = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-static {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->GetLauncherActivity(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v2

    .line 231
    .local v2, "mainContextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    .local v4, "notificationIntent":Landroid/content/Intent;
    const/high16 v9, 0x4000000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 233
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/nianticlabs/pokemongoplus/R$drawable;->sfida_icon:I

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 234
    .local v1, "largeIcon":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v9, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    sget v10, Lcom/nianticlabs/pokemongoplus/R$drawable;->ic_swap_horiz_white_24dp:I

    .line 235
    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 236
    invoke-virtual {v9, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const-string v10, "Pok\u00e9mon GO Plus"

    .line 237
    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 238
    invoke-virtual {v9, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 240
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v8

    .line 241
    .local v8, "stackBuilder":Landroid/app/TaskStackBuilder;
    invoke-virtual {v8, v2}, Landroid/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/app/TaskStackBuilder;

    .line 242
    invoke-virtual {v8, v4}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 244
    const/16 v5, 0x5eb

    .line 245
    .local v5, "notifyId":I
    const/16 v6, 0x5ec

    .line 246
    .local v6, "requestId":I
    const/high16 v9, 0x8000000

    .line 247
    invoke-virtual {v8, v6, v9}, Landroid/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v7

    .line 251
    .local v7, "resultPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 252
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 253
    .local v3, "notification":Landroid/app/Notification;
    invoke-virtual {p0, v5, v3}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->startForeground(ILandroid/app/Notification;)V

    .line 254
    return-void
.end method

.method private handleStartSession(Landroid/content/Intent;)V
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 208
    const-string v0, "hostPort"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "hostPort":Ljava/lang/String;
    const-string v0, "device"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "device":Ljava/lang/String;
    const-string v0, "authToken"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 211
    .local v3, "authToken":[B
    const-string v0, "pokemonId"

    const-wide/16 v6, 0x0

    invoke-virtual {p1, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 213
    .local v4, "pokemonId":J
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    const-string v6, "Start session: %s %s %d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const/4 v8, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    invoke-virtual/range {v0 .. v5}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->startSession(Ljava/lang/String;Ljava/lang/String;[BJ)V

    .line 215
    return-void
.end method

.method private static sendClientIntent(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceAction"    # Ljava/lang/String;

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nianticlabs/pokemongoplus/service/ClientService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.nianticlabs.pokemongoplus.bridge"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 97
    return-void
.end method

.method private stopPlayerNotification()V
    .registers 2

    .prologue
    .line 218
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->stopForeground(Z)V

    .line 219
    return-void
.end method

.method private updateBatteryLevel(D)V
    .registers 3
    .param p1, "batteryLevel"    # D

    .prologue
    .line 223
    return-void
.end method


# virtual methods
.method public finishShutdownBackgroundBridge()V
    .registers 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$2;

    invoke-direct {v1, p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$2;-><init>(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 130
    return-void
.end method

.method public initBackgroundBridge()V
    .registers 4

    .prologue
    .line 87
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

    .line 88
    invoke-static {p0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->createBridge(Landroid/content/Context;)Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    .line 89
    const-string v0, "Background bridge initialized"

    invoke-direct {p0, v0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->createPlayerNotification(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 51
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

    .line 53
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "BackgroundService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->handlerThread:Landroid/os/HandlerThread;

    .line 54
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 55
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->handler:Landroid/os/Handler;

    .line 58
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 59
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.nianticlabs.pokemongoplus.service.ToClient"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->sfidaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 61
    return-void
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 66
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackgroundService onDestroy IF NOT REALLY DONE WITH SERVICE, THIS IS A BIG PROBLEM! PROCESS_LOCAL_VALUE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->PROCESS_LOCAL_VALUE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->sfidaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 69
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 70
    iput-object v3, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->handler:Landroid/os/Handler;

    .line 71
    iput-object v3, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->handlerThread:Landroid/os/HandlerThread;

    .line 72
    return-void
.end method

.method protected onHandleBridgedIntent(Ljava/lang/String;Landroid/content/Intent;)V
    .registers 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 160
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->PROCESS_LOCAL_VALUE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    if-nez v0, :cond_62

    const-string v0, "stop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 163
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    const-string v1, "BackgroundService onHandleBridgedIntent (pgpBackgroundBridge == null)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->initBackgroundBridge()V

    .line 165
    const-string v0, "start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 167
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Background servic iunintialized when received \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", PROCESS_LOCAL_VALUE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->PROCESS_LOCAL_VALUE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string p1, "start"

    .line 172
    :cond_62
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackgroundService onHandleBridgedIntent action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_124

    :cond_82
    :goto_82
    packed-switch v0, :pswitch_data_146

    .line 202
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

    .line 205
    :goto_9d
    return-void

    .line 173
    :sswitch_9e
    const-string v1, "start"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    const/4 v0, 0x0

    goto :goto_82

    :sswitch_a8
    const-string v1, "resume"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    const/4 v0, 0x1

    goto :goto_82

    :sswitch_b2
    const-string v1, "pause"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    const/4 v0, 0x2

    goto :goto_82

    :sswitch_bc
    const-string v1, "stop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    const/4 v0, 0x3

    goto :goto_82

    :sswitch_c6
    const-string v1, "startScanning"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    const/4 v0, 0x4

    goto :goto_82

    :sswitch_d0
    const-string v1, "stopScanning"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    const/4 v0, 0x5

    goto :goto_82

    :sswitch_da
    const-string v1, "startSession"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    const/4 v0, 0x6

    goto :goto_82

    :sswitch_e4
    const-string v1, "stopSession"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    const/4 v0, 0x7

    goto :goto_82

    .line 175
    :pswitch_ee
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->start()V

    goto :goto_9d

    .line 178
    :pswitch_f4
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->resume()V

    goto :goto_9d

    .line 181
    :pswitch_fa
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->pause()V

    goto :goto_9d

    .line 184
    :pswitch_100
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    if-eqz v0, :cond_109

    .line 185
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->stop()V

    .line 187
    :cond_109
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->shutdownBackgroundBridge()V

    goto :goto_9d

    .line 190
    :pswitch_10d
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->startScanning()V

    goto :goto_9d

    .line 193
    :pswitch_113
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->stopScanning()V

    goto :goto_9d

    .line 196
    :pswitch_119
    invoke-direct {p0, p2}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->handleStartSession(Landroid/content/Intent;)V

    goto :goto_9d

    .line 199
    :pswitch_11d
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->stopSession()V

    goto/16 :goto_9d

    .line 173
    :sswitch_data_124
    .sparse-switch
        -0x7af6dd2d -> :sswitch_d0
        -0x37b237d3 -> :sswitch_a8
        -0x2d7480cd -> :sswitch_c6
        0x360802 -> :sswitch_bc
        0x65825f6 -> :sswitch_b2
        0x68ac462 -> :sswitch_9e
        0x29bc6c34 -> :sswitch_e4
        0x6e4d03d4 -> :sswitch_da
    .end sparse-switch

    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_ee
        :pswitch_f4
        :pswitch_fa
        :pswitch_100
        :pswitch_10d
        :pswitch_113
        :pswitch_119
        :pswitch_11d
    .end packed-switch
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 139
    if-nez p1, :cond_a

    .line 140
    sget-object v1, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    const-string v2, "BackgroundService onHandleIntent (intent == null)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :goto_9
    return-void

    .line 143
    :cond_a
    const-string v1, "action"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_34

    .line 145
    sget-object v1, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    const-string v2, "BackgroundService onHandleIntent (action == null)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
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

    .line 149
    :cond_34
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_52

    :cond_3c
    :goto_3c
    packed-switch v1, :pswitch_data_58

    .line 154
    invoke-virtual {p0, v0, p1}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->onHandleBridgedIntent(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_9

    .line 149
    :pswitch_43
    const-string v2, "finishShutdown"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    const/4 v1, 0x0

    goto :goto_3c

    .line 151
    :pswitch_4d
    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->finishShutdownBackgroundBridge()V

    goto :goto_9

    .line 149
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
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 76
    sget-object v0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BackgroundService onStartCommand() PROCESS_LOCAL_VALUE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->PROCESS_LOCAL_VALUE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$1;

    invoke-direct {v1, p0, p1}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$1;-><init>(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public shutdownBackgroundBridge()V
    .registers 5

    .prologue
    .line 102
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

    .line 103
    const-string v1, "Background bridge shutting down"

    invoke-direct {p0, v1}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->createPlayerNotification(Ljava/lang/String;)V

    .line 104
    const-string v1, "confirmBridgeShutdown"

    invoke-static {p0, v1}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->sendClientIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    if-eqz v1, :cond_37

    .line 108
    sget-object v1, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;

    const-string v2, "BackgroundService destroy the bridge "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    invoke-virtual {v1}, Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;->destroyBridge()V

    .line 110
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pgpBackgroundBridge:Lcom/nianticlabs/pokemongoplus/bridge/BackgroundBridge;

    .line 114
    :cond_37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.nianticlabs.pokemongoplus.bridge"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v1, "action"

    const-string v2, "finishShutdown"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0, v0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 118
    return-void
.end method
