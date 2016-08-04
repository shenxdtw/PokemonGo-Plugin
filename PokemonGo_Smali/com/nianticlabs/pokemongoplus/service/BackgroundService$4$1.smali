.class Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4$1;
.super Ljava/lang/Object;
.source "BackgroundService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4;Landroid/content/Intent;)V
    .registers 3
    .param p1, "this$1"    # Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4$1;->this$1:Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4;

    iput-object p2, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 342
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4$1;->this$1:Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4;

    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4$1;->val$intent:Landroid/content/Intent;

    # invokes: Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4;->onHandleBluetoothIntent(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4;->access$300(Lcom/nianticlabs/pokemongoplus/service/BackgroundService$4;Landroid/content/Intent;)V

    .line 343
    return-void
.end method
