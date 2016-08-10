.class Lrx/Completable$29$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$29;->call(Lrx/Completable$CompletableSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/Completable$29;

.field final synthetic val$s:Lrx/Completable$CompletableSubscriber;

.field final synthetic val$w:Lrx/Scheduler$Worker;


# direct methods
.method constructor <init>(Lrx/Completable$29;Lrx/Completable$CompletableSubscriber;Lrx/Scheduler$Worker;)V
    .registers 4

    .prologue
    .line 2036
    iput-object p1, p0, Lrx/Completable$29$1;->this$1:Lrx/Completable$29;

    iput-object p2, p0, Lrx/Completable$29$1;->val$s:Lrx/Completable$CompletableSubscriber;

    iput-object p3, p0, Lrx/Completable$29$1;->val$w:Lrx/Scheduler$Worker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .prologue
    .line 2040
    :try_start_0
    iget-object v0, p0, Lrx/Completable$29$1;->this$1:Lrx/Completable$29;

    iget-object v0, v0, Lrx/Completable$29;->this$0:Lrx/Completable;

    iget-object v1, p0, Lrx/Completable$29$1;->val$s:Lrx/Completable$CompletableSubscriber;

    invoke-virtual {v0, v1}, Lrx/Completable;->subscribe(Lrx/Completable$CompletableSubscriber;)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_f

    .line 2042
    iget-object v0, p0, Lrx/Completable$29$1;->val$w:Lrx/Scheduler$Worker;

    invoke-virtual {v0}, Lrx/Scheduler$Worker;->unsubscribe()V

    .line 2044
    return-void

    .line 2042
    :catchall_f
    move-exception v0

    iget-object v1, p0, Lrx/Completable$29$1;->val$w:Lrx/Scheduler$Worker;

    invoke-virtual {v1}, Lrx/Scheduler$Worker;->unsubscribe()V

    throw v0
.end method
