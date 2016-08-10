.class Lcom/nianticlabs/pokemongoplus/service/BackgroundService$3;
.super Landroid/content/BroadcastReceiver;
.source "BackgroundService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/pokemongoplus/service/BackgroundService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/pokemongoplus/service/BackgroundService;


# direct methods
.method constructor <init>(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    .prologue
    .line 420
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$3;->this$0:Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method onHandleBroadcastIntent(Landroid/content/Intent;)V
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 432
    const-string v7, "action"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "action":Ljava/lang/String;
    const/4 v7, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_b8

    :cond_f
    :goto_f
    packed-switch v7, :pswitch_data_ce

    .line 464
    :cond_12
    :goto_12
    return-void

    .line 433
    :sswitch_13
    const-string v9, "sendNotification"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    move v7, v8

    goto :goto_f

    :sswitch_1d
    const-string v9, "stopNotification"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    const/4 v7, 0x1

    goto :goto_f

    :sswitch_27
    const-string v9, "batteryLevel"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    const/4 v7, 0x2

    goto :goto_f

    :sswitch_31
    const-string v9, "sfidaState"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    const/4 v7, 0x3

    goto :goto_f

    :sswitch_3b
    const-string v9, "pluginState"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    const/4 v7, 0x4

    goto :goto_f

    .line 435
    :pswitch_45
    const-string v7, "message"

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 436
    .local v5, "message":I
    const-string v7, "arg"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, "arg":Ljava/lang/String;
    iget-object v7, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$3;->this$0:Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    # invokes: Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->formatNotification(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v7, v5, v1}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->access$400(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 438
    .local v4, "formatted":Ljava/lang/String;
    iget-object v7, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$3;->this$0:Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    # invokes: Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->createPlayerNotification(Ljava/lang/String;)V
    invoke-static {v7, v4}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->access$500(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;Ljava/lang/String;)V

    goto :goto_12

    .line 441
    .end local v1    # "arg":Ljava/lang/String;
    .end local v4    # "formatted":Ljava/lang/String;
    .end local v5    # "message":I
    :pswitch_5d
    iget-object v7, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$3;->this$0:Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    # invokes: Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->stopPlayerNotification()V
    invoke-static {v7}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->access$600(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;)V

    goto :goto_12

    .line 444
    :pswitch_63
    const-string v7, "level"

    const-wide/16 v8, 0x0

    invoke-virtual {p1, v7, v8, v9}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v2

    .line 445
    .local v2, "batteryLevel":D
    iget-object v7, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$3;->this$0:Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    # invokes: Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->updateBatteryLevel(D)V
    invoke-static {v7, v2, v3}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->access$700(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;D)V

    goto :goto_12

    .line 448
    .end local v2    # "batteryLevel":D
    :pswitch_71
    const-string v7, "state"

    .line 449
    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;->fromInt(I)Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    move-result-object v6

    .line 450
    .local v6, "newSfidaState":Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;
    iget-object v7, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$3;->this$0:Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    iget-object v8, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$3;->this$0:Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    # getter for: Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->sfidaState:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;
    invoke-static {v8}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->access$800(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;)Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    move-result-object v8

    # invokes: Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->updateNotificationForSfidaState(Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;)V
    invoke-static {v7, v6, v8}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->access$900(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;)V

    .line 451
    iget-object v7, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$3;->this$0:Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    # setter for: Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->sfidaState:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;
    invoke-static {v7, v6}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->access$802(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;)Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;

    .line 452
    iget-object v7, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$3;->this$0:Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    # getter for: Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->shuttingDown:Z
    invoke-static {v7}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->access$100(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 453
    iget-object v7, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$3;->this$0:Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    # invokes: Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->continueStopService()V
    invoke-static {v7}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->access$1000(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;)V

    goto/16 :goto_12

    .line 458
    .end local v6    # "newSfidaState":Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$SfidaState;
    :pswitch_9a
    iget-object v7, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$3;->this$0:Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    const-string v9, "state"

    invoke-virtual {p1, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;->fromInt(I)Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    move-result-object v8

    # setter for: Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->pluginState:Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;
    invoke-static {v7, v8}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->access$1102(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;)Lcom/nianticlabs/pokemongoplus/bridge/BridgeConstants$PgpState;

    .line 459
    iget-object v7, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$3;->this$0:Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    # getter for: Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->shuttingDown:Z
    invoke-static {v7}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->access$100(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 460
    iget-object v7, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$3;->this$0:Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    # invokes: Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->continueStopService()V
    invoke-static {v7}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->access$1000(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;)V

    goto/16 :goto_12

    .line 433
    :sswitch_data_b8
    .sparse-switch
        -0x7e4a0df3 -> :sswitch_1d
        -0x65d74289 -> :sswitch_27
        -0x40257f22 -> :sswitch_31
        0x2dd8a093 -> :sswitch_13
        0x34d4ed1e -> :sswitch_3b
    .end sparse-switch

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_45
        :pswitch_5d
        :pswitch_63
        :pswitch_71
        :pswitch_9a
    .end packed-switch
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 423
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$3;->this$0:Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    # getter for: Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->access$300(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$3$1;

    invoke-direct {v1, p0, p2}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$3$1;-><init>(Lcom/nianticlabs/pokemongoplus/service/BackgroundService$3;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 429
    return-void
.end method
