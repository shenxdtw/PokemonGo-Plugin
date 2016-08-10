.class Lrx/internal/util/ScalarSynchronousObservable$4;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/ScalarSynchronousObservable;->scalarFlatMap(Lrx/functions/Func1;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/util/ScalarSynchronousObservable;

.field final synthetic val$func:Lrx/functions/Func1;


# direct methods
.method constructor <init>(Lrx/internal/util/ScalarSynchronousObservable;Lrx/functions/Func1;)V
    .registers 3

    .prologue
    .line 220
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$4;, "Lrx/internal/util/ScalarSynchronousObservable.4;"
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable$4;->this$0:Lrx/internal/util/ScalarSynchronousObservable;

    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousObservable$4;->val$func:Lrx/functions/Func1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 220
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$4;, "Lrx/internal/util/ScalarSynchronousObservable.4;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousObservable$4;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$4;, "Lrx/internal/util/ScalarSynchronousObservable.4;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    iget-object v1, p0, Lrx/internal/util/ScalarSynchronousObservable$4;->val$func:Lrx/functions/Func1;

    iget-object v2, p0, Lrx/internal/util/ScalarSynchronousObservable$4;->this$0:Lrx/internal/util/ScalarSynchronousObservable;

    iget-object v2, v2, Lrx/internal/util/ScalarSynchronousObservable;->t:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observable;

    .line 224
    .local v0, "o":Lrx/Observable;, "Lrx/Observable<+TR;>;"
    instance-of v1, v0, Lrx/internal/util/ScalarSynchronousObservable;

    if-eqz v1, :cond_1c

    .line 225
    check-cast v0, Lrx/internal/util/ScalarSynchronousObservable;

    .end local v0    # "o":Lrx/Observable;, "Lrx/Observable<+TR;>;"
    iget-object v1, v0, Lrx/internal/util/ScalarSynchronousObservable;->t:Ljava/lang/Object;

    invoke-static {p1, v1}, Lrx/internal/util/ScalarSynchronousObservable;->createProducer(Lrx/Subscriber;Ljava/lang/Object;)Lrx/Producer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 229
    :goto_1b
    return-void

    .line 227
    .restart local v0    # "o":Lrx/Observable;, "Lrx/Observable<+TR;>;"
    :cond_1c
    invoke-static {p1}, Lrx/observers/Subscribers;->wrap(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_1b
.end method
