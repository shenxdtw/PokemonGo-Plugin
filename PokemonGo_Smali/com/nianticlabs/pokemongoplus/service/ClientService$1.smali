.class Lcom/nianticlabs/pokemongoplus/service/ClientService$1;
.super Landroid/content/BroadcastReceiver;
.source "ClientService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/pokemongoplus/service/ClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/pokemongoplus/service/ClientService;


# direct methods
.method constructor <init>(Lcom/nianticlabs/pokemongoplus/service/ClientService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nianticlabs/pokemongoplus/service/ClientService;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/service/ClientService$1;->this$0:Lcom/nianticlabs/pokemongoplus/service/ClientService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/ClientService$1;->this$0:Lcom/nianticlabs/pokemongoplus/service/ClientService;

    invoke-virtual {v0, p2}, Lcom/nianticlabs/pokemongoplus/service/ClientService;->onHandleIntent(Landroid/content/Intent;)V

    .line 24
    return-void
.end method
