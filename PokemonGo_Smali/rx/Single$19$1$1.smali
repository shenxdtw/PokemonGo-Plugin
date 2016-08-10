.class Lrx/Single$19$1$1;
.super Lrx/SingleSubscriber;
.source "Single.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Single$19$1;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/SingleSubscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lrx/Single$19$1;


# direct methods
.method constructor <init>(Lrx/Single$19$1;)V
    .registers 2

    .prologue
    .line 1835
    .local p0, "this":Lrx/Single$19$1$1;, "Lrx/Single$19$1.1;"
    iput-object p1, p0, Lrx/Single$19$1$1;->this$2:Lrx/Single$19$1;

    invoke-direct {p0}, Lrx/SingleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 1848
    .local p0, "this":Lrx/Single$19$1$1;, "Lrx/Single$19$1.1;"
    :try_start_0
    iget-object v0, p0, Lrx/Single$19$1$1;->this$2:Lrx/Single$19$1;

    iget-object v0, v0, Lrx/Single$19$1;->val$t:Lrx/SingleSubscriber;

    invoke-virtual {v0, p1}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_f

    .line 1850
    iget-object v0, p0, Lrx/Single$19$1$1;->this$2:Lrx/Single$19$1;

    iget-object v0, v0, Lrx/Single$19$1;->val$w:Lrx/Scheduler$Worker;

    invoke-virtual {v0}, Lrx/Scheduler$Worker;->unsubscribe()V

    .line 1852
    return-void

    .line 1850
    :catchall_f
    move-exception v0

    iget-object v1, p0, Lrx/Single$19$1$1;->this$2:Lrx/Single$19$1;

    iget-object v1, v1, Lrx/Single$19$1;->val$w:Lrx/Scheduler$Worker;

    invoke-virtual {v1}, Lrx/Scheduler$Worker;->unsubscribe()V

    throw v0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1839
    .local p0, "this":Lrx/Single$19$1$1;, "Lrx/Single$19$1.1;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v0, p0, Lrx/Single$19$1$1;->this$2:Lrx/Single$19$1;

    iget-object v0, v0, Lrx/Single$19$1;->val$t:Lrx/SingleSubscriber;

    invoke-virtual {v0, p1}, Lrx/SingleSubscriber;->onSuccess(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_f

    .line 1841
    iget-object v0, p0, Lrx/Single$19$1$1;->this$2:Lrx/Single$19$1;

    iget-object v0, v0, Lrx/Single$19$1;->val$w:Lrx/Scheduler$Worker;

    invoke-virtual {v0}, Lrx/Scheduler$Worker;->unsubscribe()V

    .line 1843
    return-void

    .line 1841
    :catchall_f
    move-exception v0

    iget-object v1, p0, Lrx/Single$19$1$1;->this$2:Lrx/Single$19$1;

    iget-object v1, v1, Lrx/Single$19$1;->val$w:Lrx/Scheduler$Worker;

    invoke-virtual {v1}, Lrx/Scheduler$Worker;->unsubscribe()V

    throw v0
.end method
