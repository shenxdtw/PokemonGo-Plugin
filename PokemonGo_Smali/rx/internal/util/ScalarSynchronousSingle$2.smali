.class Lrx/internal/util/ScalarSynchronousSingle$2;
.super Ljava/lang/Object;
.source "ScalarSynchronousSingle.java"

# interfaces
.implements Lrx/Single$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/ScalarSynchronousSingle;->scalarFlatMap(Lrx/functions/Func1;)Lrx/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Single$OnSubscribe",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/util/ScalarSynchronousSingle;

.field final synthetic val$func:Lrx/functions/Func1;


# direct methods
.method constructor <init>(Lrx/internal/util/ScalarSynchronousSingle;Lrx/functions/Func1;)V
    .registers 3

    .prologue
    .line 128
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle$2;, "Lrx/internal/util/ScalarSynchronousSingle.2;"
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousSingle$2;->this$0:Lrx/internal/util/ScalarSynchronousSingle;

    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousSingle$2;->val$func:Lrx/functions/Func1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 128
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle$2;, "Lrx/internal/util/ScalarSynchronousSingle.2;"
    check-cast p1, Lrx/SingleSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousSingle$2;->call(Lrx/SingleSubscriber;)V

    return-void
.end method

.method public call(Lrx/SingleSubscriber;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/SingleSubscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle$2;, "Lrx/internal/util/ScalarSynchronousSingle.2;"
    .local p1, "child":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<-TR;>;"
    iget-object v2, p0, Lrx/internal/util/ScalarSynchronousSingle$2;->val$func:Lrx/functions/Func1;

    iget-object v3, p0, Lrx/internal/util/ScalarSynchronousSingle$2;->this$0:Lrx/internal/util/ScalarSynchronousSingle;

    iget-object v3, v3, Lrx/internal/util/ScalarSynchronousSingle;->value:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Single;

    .line 133
    .local v0, "o":Lrx/Single;, "Lrx/Single<+TR;>;"
    instance-of v2, v0, Lrx/internal/util/ScalarSynchronousSingle;

    if-eqz v2, :cond_18

    .line 134
    check-cast v0, Lrx/internal/util/ScalarSynchronousSingle;

    .end local v0    # "o":Lrx/Single;, "Lrx/Single<+TR;>;"
    iget-object v2, v0, Lrx/internal/util/ScalarSynchronousSingle;->value:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lrx/SingleSubscriber;->onSuccess(Ljava/lang/Object;)V

    .line 154
    :goto_17
    return-void

    .line 136
    .restart local v0    # "o":Lrx/Single;, "Lrx/Single<+TR;>;"
    :cond_18
    new-instance v1, Lrx/internal/util/ScalarSynchronousSingle$2$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/util/ScalarSynchronousSingle$2$1;-><init>(Lrx/internal/util/ScalarSynchronousSingle$2;Lrx/SingleSubscriber;)V

    .line 151
    .local v1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<TR;>;"
    invoke-virtual {p1, v1}, Lrx/SingleSubscriber;->add(Lrx/Subscription;)V

    .line 152
    invoke-virtual {v0, v1}, Lrx/Single;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_17
.end method
