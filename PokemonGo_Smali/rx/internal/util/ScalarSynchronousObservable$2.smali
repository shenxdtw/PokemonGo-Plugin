.class Lrx/internal/util/ScalarSynchronousObservable$2;
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

.field final synthetic val$els:Lrx/internal/schedulers/EventLoopsScheduler;


# direct methods
.method constructor <init>(Lrx/internal/util/ScalarSynchronousObservable;Lrx/internal/schedulers/EventLoopsScheduler;)V
    .registers 3

    .prologue
    .line 105
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$2;, "Lrx/internal/util/ScalarSynchronousObservable.2;"
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable$2;->this$0:Lrx/internal/util/ScalarSynchronousObservable;

    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousObservable$2;->val$els:Lrx/internal/schedulers/EventLoopsScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 105
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$2;, "Lrx/internal/util/ScalarSynchronousObservable.2;"
    check-cast p1, Lrx/functions/Action0;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousObservable$2;->call(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/functions/Action0;)Lrx/Subscription;
    .registers 3
    .param p1, "a"    # Lrx/functions/Action0;

    .prologue
    .line 108
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$2;, "Lrx/internal/util/ScalarSynchronousObservable.2;"
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable$2;->val$els:Lrx/internal/schedulers/EventLoopsScheduler;

    invoke-virtual {v0, p1}, Lrx/internal/schedulers/EventLoopsScheduler;->scheduleDirect(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method
