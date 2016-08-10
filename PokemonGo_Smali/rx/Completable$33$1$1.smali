.class Lrx/Completable$33$1$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Completable$33$1;->onSubscribe(Lrx/Subscription;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lrx/Completable$33$1;

.field final synthetic val$d:Lrx/Subscription;


# direct methods
.method constructor <init>(Lrx/Completable$33$1;Lrx/Subscription;)V
    .registers 3

    .prologue
    .line 2238
    iput-object p1, p0, Lrx/Completable$33$1$1;->this$2:Lrx/Completable$33$1;

    iput-object p2, p0, Lrx/Completable$33$1$1;->val$d:Lrx/Subscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 3

    .prologue
    .line 2241
    iget-object v1, p0, Lrx/Completable$33$1$1;->this$2:Lrx/Completable$33$1;

    iget-object v1, v1, Lrx/Completable$33$1;->this$1:Lrx/Completable$33;

    iget-object v1, v1, Lrx/Completable$33;->val$scheduler:Lrx/Scheduler;

    invoke-virtual {v1}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    .line 2242
    .local v0, "w":Lrx/Scheduler$Worker;
    new-instance v1, Lrx/Completable$33$1$1$1;

    invoke-direct {v1, p0, v0}, Lrx/Completable$33$1$1$1;-><init>(Lrx/Completable$33$1$1;Lrx/Scheduler$Worker;)V

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 2252
    return-void
.end method
