.class Lcom/nianticlabs/nia/contextservice/ContextService$2;
.super Ljava/lang/Object;
.source "ContextService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/nia/contextservice/ContextService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/nia/contextservice/ContextService;


# direct methods
.method constructor <init>(Lcom/nianticlabs/nia/contextservice/ContextService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nianticlabs/nia/contextservice/ContextService;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/nianticlabs/nia/contextservice/ContextService$2;->this$0:Lcom/nianticlabs/nia/contextservice/ContextService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/nianticlabs/nia/contextservice/ContextService$2;->this$0:Lcom/nianticlabs/nia/contextservice/ContextService;

    invoke-virtual {v0}, Lcom/nianticlabs/nia/contextservice/ContextService;->onStop()V

    .line 209
    return-void
.end method
