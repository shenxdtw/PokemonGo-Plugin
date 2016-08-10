.class Lrx/internal/util/ScalarSynchronousObservable$3;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/ScalarSynchronousObservable;->scalarScheduleOn(Lrx/Scheduler;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lrx/functions/Action0;",
        "Lrx/Subscription;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/util/ScalarSynchronousObservable;

.field final synthetic val$scheduler:Lrx/Scheduler;


# direct methods
.method constructor <init>(Lrx/internal/util/ScalarSynchronousObservable;Lrx/Scheduler;)V
    .registers 3

    .prologue
    .line 112
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$3;, "Lrx/internal/util/ScalarSynchronousObservable.3;"
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable$3;->this$0:Lrx/internal/util/ScalarSynchronousObservable;

    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousObservable$3;->val$scheduler:Lrx/Scheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 112
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$3;, "Lrx/internal/util/ScalarSynchronousObservable.3;"
    check-cast p1, Lrx/functions/Action0;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousObservable$3;->call(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/functions/Action0;)Lrx/Subscription;
    .registers 4
    .param p1, "a"    # Lrx/functions/Action0;

    .prologue
    .line 115
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$3;, "Lrx/internal/util/ScalarSynchronousObservable.3;"
    iget-object v1, p0, Lrx/internal/util/ScalarSynchronousObservable$3;->val$scheduler:Lrx/Scheduler;

    invoke-virtual {v1}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    .line 116
    .local v0, "w":Lrx/Scheduler$Worker;
    new-instance v1, Lrx/internal/util/ScalarSynchronousObservable$3$1;

    invoke-direct {v1, p0, p1, v0}, Lrx/internal/util/ScalarSynchronousObservable$3$1;-><init>(Lrx/internal/util/ScalarSynchronousObservable$3;Lrx/functions/Action0;Lrx/Scheduler$Worker;)V

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 126
    return-object v0
.end method
