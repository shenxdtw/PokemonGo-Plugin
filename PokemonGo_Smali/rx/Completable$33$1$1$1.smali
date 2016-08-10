.class Lrx/Completable$33$1$1$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$33$1$1;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lrx/Completable$33$1$1;

.field final synthetic val$w:Lrx/Scheduler$Worker;


# direct methods
.method constructor <init>(Lrx/Completable$33$1$1;Lrx/Scheduler$Worker;)V
    .registers 3

    .prologue
    .line 2242
    iput-object p1, p0, Lrx/Completable$33$1$1$1;->this$3:Lrx/Completable$33$1$1;

    iput-object p2, p0, Lrx/Completable$33$1$1$1;->val$w:Lrx/Scheduler$Worker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .prologue
    .line 2246
    :try_start_0
    iget-object v0, p0, Lrx/Completable$33$1$1$1;->this$3:Lrx/Completable$33$1$1;

    iget-object v0, v0, Lrx/Completable$33$1$1;->val$d:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_d

    .line 2248
    iget-object v0, p0, Lrx/Completable$33$1$1$1;->val$w:Lrx/Scheduler$Worker;

    invoke-virtual {v0}, Lrx/Scheduler$Worker;->unsubscribe()V

    .line 2250
    return-void

    .line 2248
    :catchall_d
    move-exception v0

    iget-object v1, p0, Lrx/Completable$33$1$1$1;->val$w:Lrx/Scheduler$Worker;

    invoke-virtual {v1}, Lrx/Scheduler$Worker;->unsubscribe()V

    throw v0
.end method
