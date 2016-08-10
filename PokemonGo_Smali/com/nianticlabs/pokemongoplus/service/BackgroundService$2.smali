.class Lcom/nianticlabs/pokemongoplus/service/BackgroundService$2;
.super Ljava/lang/Object;
.source "BackgroundService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->finishShutdownBackgroundBridge()V
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
    .line 193
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$2;->this$0:Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 196
    # getter for: Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackgroundService stopSelf "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$2;->this$0:Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    const/4 v1, 0x0

    # setter for: Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->shuttingDown:Z
    invoke-static {v0, v1}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->access$102(Lcom/nianticlabs/pokemongoplus/service/BackgroundService;Z)Z

    .line 198
    const/4 v0, 0x1

    # setter for: Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->serviceStopped:Z
    invoke-static {v0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->access$202(Z)Z

    .line 199
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$2;->this$0:Lcom/nianticlabs/pokemongoplus/service/BackgroundService;

    invoke-virtual {v0}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService;->stopSelf()V

    .line 200
    return-void
.end method
