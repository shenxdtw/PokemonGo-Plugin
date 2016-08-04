.class Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4;
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
    .line 336
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4;->this$0:Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4;->onHandleBluetoothIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private onHandleBluetoothIntent(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 349
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_10

    .line 351
    # getter for: Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onReceived() action was null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :goto_f
    return-void

    .line 355
    :cond_10
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_58

    :cond_18
    :goto_18
    packed-switch v1, :pswitch_data_62

    .line 364
    # getter for: Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 355
    :sswitch_36
    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v1, 0x0

    goto :goto_18

    :sswitch_40
    const-string v2, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v1, 0x1

    goto :goto_18

    .line 357
    :pswitch_4a
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4;->this$0:Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    invoke-static {v1, p1}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->access$400(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;Landroid/content/Intent;)V

    goto :goto_f

    .line 361
    :pswitch_50
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4;->this$0:Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    const-string v2, "BluetoothDevice.ACTION_PAIRING_REQUEST"

    # invokes: Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->createPlayerNotification(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->access$200(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;Ljava/lang/String;)V

    goto :goto_f

    .line 355
    :sswitch_data_58
    .sparse-switch
        -0xd553507 -> :sswitch_40
        0x7e2cc189 -> :sswitch_36
    .end sparse-switch

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_50
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4;->this$0:Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    # getter for: Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->access$100(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4$1;

    invoke-direct {v1, p0, p2}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4$1;-><init>(Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 345
    # getter for: Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return-void
.end method
