.class public Lcom/nianticlabs/pokemongoplus/service/ClientService;
.super Landroid/app/Service;
.source "ClientService.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field static pgpClientBridge:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;


# instance fields
.field private sfidaReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/nianticlabs/pokemongoplus/service/ClientService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nianticlabs/pokemongoplus/service/ClientService;->TAG:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/nianticlabs/pokemongoplus/service/ClientService;->pgpClientBridge:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 20
    new-instance v0, Lcom/nianticlabs/pokemongoplus/service/ClientService$1;

    invoke-direct {v0, p0}, Lcom/nianticlabs/pokemongoplus/service/ClientService$1;-><init>(Lcom/nianticlabs/pokemongoplus/service/ClientService;)V

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/ClientService;->sfidaReceiver:Landroid/content/BroadcastReceiver;

    .line 29
    return-void
.end method

.method private static sendBackgroundServiceIntent(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceAction"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.nianticlabs.pokemongoplus.bridge"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 55
    return-void
.end method

.method private static sendClientServiceIntent(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceAction"    # Ljava/lang/String;

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nianticlabs/pokemongoplus/service/ClientService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.nianticlabs.pokemongoplus.bridge"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 36
    return-void
.end method

.method public static startClientService(Landroid/content/Context;Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bridge"    # Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;

    .prologue
    .line 39
    sput-object p1, Lcom/nianticlabs/pokemongoplus/service/ClientService;->pgpClientBridge:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;

    .line 40
    const-string v0, "startService"

    invoke-static {p0, v0}, Lcom/nianticlabs/pokemongoplus/service/ClientService;->sendClientServiceIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static stopClientService(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nianticlabs/pokemongoplus/service/ClientService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .local v0, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 46
    const/4 v1, 0x0

    sput-object v1, Lcom/nianticlabs/pokemongoplus/service/ClientService;->pgpClientBridge:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;

    .line 47
    return-void
.end method


# virtual methods
.method protected confirmBridgeShutdown()V
    .registers 1

    .prologue
    .line 58
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 63
    sget-object v1, Lcom/nianticlabs/pokemongoplus/service/ClientService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClientService onCreate PROCESS_LOCAL_VALUE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->PROCESS_LOCAL_VALUE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.nianticlabs.pokemongoplus.service.ToClient"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/service/ClientService;->sfidaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/nianticlabs/pokemongoplus/service/ClientService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/ClientService;->sfidaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/nianticlabs/pokemongoplus/service/ClientService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 71
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 72
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 22
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 89
    if-eqz p1, :cond_6

    sget-object v15, Lcom/nianticlabs/pokemongoplus/service/ClientService;->pgpClientBridge:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;

    if-nez v15, :cond_7

    .line 150
    :cond_6
    :goto_6
    :pswitch_6
    return-void

    .line 92
    :cond_7
    const-string v15, "action"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, "action":Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 96
    const/4 v15, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_156

    :cond_19
    :goto_19
    packed-switch v15, :pswitch_data_180

    .line 147
    const-string v15, "ClientService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Can\'t handle intent message: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 96
    :sswitch_39
    const-string v18, "updateTimestamp"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19

    const/4 v15, 0x0

    goto :goto_19

    :sswitch_45
    const-string v18, "sfidaState"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19

    const/4 v15, 0x1

    goto :goto_19

    :sswitch_51
    const-string v18, "encounterId"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19

    const/4 v15, 0x2

    goto :goto_19

    :sswitch_5d
    const-string v18, "pokestop"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19

    const/4 v15, 0x3

    goto :goto_19

    :sswitch_69
    const-string v18, "centralState"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19

    const/4 v15, 0x4

    goto :goto_19

    :sswitch_75
    const-string v18, "scannedSfida"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19

    const/4 v15, 0x5

    goto :goto_19

    :sswitch_81
    const-string v18, "pluginState"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19

    const/4 v15, 0x6

    goto :goto_19

    :sswitch_8d
    const-string v18, "batteryLevel"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19

    const/4 v15, 0x7

    goto :goto_19

    :sswitch_99
    const-string v18, "startService"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19

    const/16 v15, 0x8

    goto/16 :goto_19

    :sswitch_a7
    const-string v18, "confirmBridgeShutdown"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19

    const/16 v15, 0x9

    goto/16 :goto_19

    .line 98
    :pswitch_b5
    const-string v15, "timestamp"

    const-wide/16 v18, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v15, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .line 99
    .local v16, "timestampMs":J
    sget-object v15, Lcom/nianticlabs/pokemongoplus/service/ClientService;->pgpClientBridge:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;

    invoke-virtual/range {v15 .. v17}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->sendUpdateTimestamp(J)V

    goto/16 :goto_6

    .line 103
    .end local v16    # "timestampMs":J
    :pswitch_c8
    const-string v15, "state"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 104
    .local v14, "sfidaState":I
    sget-object v15, Lcom/nianticlabs/pokemongoplus/service/ClientService;->pgpClientBridge:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;

    invoke-virtual {v15, v14}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->sendSfidaState(I)V

    goto/16 :goto_6

    .line 108
    .end local v14    # "sfidaState":I
    :pswitch_db
    const-string v15, "id"

    const-wide/16 v18, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v15, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 109
    .local v10, "encounterId":J
    sget-object v15, Lcom/nianticlabs/pokemongoplus/service/ClientService;->pgpClientBridge:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;

    invoke-virtual {v15, v10, v11}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->sendEncounterId(J)V

    goto/16 :goto_6

    .line 113
    .end local v10    # "encounterId":J
    :pswitch_ee
    const-string v15, "id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 114
    .local v13, "pokestop":Ljava/lang/String;
    sget-object v15, Lcom/nianticlabs/pokemongoplus/service/ClientService;->pgpClientBridge:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;

    invoke-virtual {v15, v13}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->sendPokestopId(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 118
    .end local v13    # "pokestop":Ljava/lang/String;
    :pswitch_fd
    const-string v15, "state"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 119
    .local v8, "centralState":I
    sget-object v15, Lcom/nianticlabs/pokemongoplus/service/ClientService;->pgpClientBridge:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;

    invoke-virtual {v15, v8}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->sendCentralState(I)V

    goto/16 :goto_6

    .line 123
    .end local v8    # "centralState":I
    :pswitch_110
    const-string v15, "device"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 124
    .local v9, "device":Ljava/lang/String;
    const-string v15, "button"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 125
    .local v5, "button":I
    sget-object v15, Lcom/nianticlabs/pokemongoplus/service/ClientService;->pgpClientBridge:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;

    invoke-virtual {v15, v9, v5}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->sendScannedSfida(Ljava/lang/String;I)V

    goto/16 :goto_6

    .line 129
    .end local v5    # "button":I
    .end local v9    # "device":Ljava/lang/String;
    :pswitch_12b
    const-string v15, "state"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 130
    .local v12, "pluginState":I
    sget-object v15, Lcom/nianticlabs/pokemongoplus/service/ClientService;->pgpClientBridge:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;

    invoke-virtual {v15, v12}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->sendPluginState(I)V

    goto/16 :goto_6

    .line 134
    .end local v12    # "pluginState":I
    :pswitch_13e
    const-string v15, "level"

    const-wide/16 v18, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v15, v1, v2}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v6

    .line 135
    .local v6, "batteryLevel":D
    sget-object v15, Lcom/nianticlabs/pokemongoplus/service/ClientService;->pgpClientBridge:Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;

    invoke-virtual {v15, v6, v7}, Lcom/nianticlabs/pokemongoplus/bridge/ClientBridge;->sendBatteryLevel(D)V

    goto/16 :goto_6

    .line 144
    .end local v6    # "batteryLevel":D
    :pswitch_151
    invoke-virtual/range {p0 .. p0}, Lcom/nianticlabs/pokemongoplus/service/ClientService;->confirmBridgeShutdown()V

    goto/16 :goto_6

    .line 96
    :sswitch_data_156
    .sparse-switch
        -0x65d74289 -> :sswitch_8d
        -0x40257f22 -> :sswitch_45
        -0x16ebf7e4 -> :sswitch_69
        0x662f1ae -> :sswitch_51
        0x1eb32b1b -> :sswitch_5d
        0x34d4ed1e -> :sswitch_81
        0x4b23e24d -> :sswitch_39
        0x4fbe57df -> :sswitch_a7
        0x6e4047f3 -> :sswitch_99
        0x7f76d363 -> :sswitch_75
    .end sparse-switch

    :pswitch_data_180
    .packed-switch 0x0
        :pswitch_b5
        :pswitch_c8
        :pswitch_db
        :pswitch_ee
        :pswitch_fd
        :pswitch_110
        :pswitch_12b
        :pswitch_13e
        :pswitch_6
        :pswitch_151
    .end packed-switch
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/nianticlabs/pokemongoplus/service/ClientService;->onHandleIntent(Landroid/content/Intent;)V

    .line 77
    const/4 v0, 0x1

    return v0
.end method
