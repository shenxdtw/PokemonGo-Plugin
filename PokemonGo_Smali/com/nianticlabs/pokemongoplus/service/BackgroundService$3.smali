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
    .line 272
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$3;->this$0:Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method onHandleBroadcastIntent(Landroid/content/Intent;)V
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 284
    const-string v4, "action"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "action":Ljava/lang/String;
    const/4 v4, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_52

    :cond_e
    :goto_e
    packed-switch v4, :pswitch_data_60

    .line 300
    :cond_11
    :goto_11
    return-void

    .line 285
    :sswitch_12
    const-string v5, "sendNotification"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v4, 0x0

    goto :goto_e

    :sswitch_1c
    const-string v5, "stopNotification"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v4, 0x1

    goto :goto_e

    :sswitch_26
    const-string v5, "batteryLevel"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v4, 0x2

    goto :goto_e

    .line 287
    :pswitch_30
    const-string v4, "message"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "message":Ljava/lang/String;
    if-eqz v1, :cond_11

    .line 289
    iget-object v4, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$3;->this$0:Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    # invokes: Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->createPlayerNotification(Ljava/lang/String;)V
    invoke-static {v4, v1}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->access$200(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;Ljava/lang/String;)V

    goto :goto_11

    .line 293
    .end local v1    # "message":Ljava/lang/String;
    :pswitch_3e
    iget-object v4, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$3;->this$0:Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    # invokes: Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->stopPlayerNotification()V
    invoke-static {v4}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->access$300(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;)V

    goto :goto_11

    .line 296
    :pswitch_44
    const-string v4, "level"

    const-wide/16 v6, 0x0

    invoke-virtual {p1, v4, v6, v7}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v2

    .line 297
    .local v2, "batteryLevel":D
    iget-object v4, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$3;->this$0:Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    # invokes: Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->updateBatteryLevel(D)V
    invoke-static {v4, v2, v3}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->access$400(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;D)V

    goto :goto_11

    .line 285
    :sswitch_data_52
    .sparse-switch
        -0x7e4a0df3 -> :sswitch_1c
        -0x65d74289 -> :sswitch_26
        0x2dd8a093 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_30
        :pswitch_3e
        :pswitch_44
    .end packed-switch
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$3;->this$0:Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    # getter for: Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->access$100(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$3$1;

    invoke-direct {v1, p0, p2}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$3$1;-><init>(Lcom/nianticlabs/pokemongoplus/service/BackgroundService$3;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 281
    return-void
.end method
