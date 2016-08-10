.class final Lrx/internal/operators/OperatorPublish$2;
.super Ljava/lang/Object;
.source "OperatorPublish.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorPublish;->create(Lrx/Observable;Lrx/functions/Func1;Z)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$delayError:Z

.field final synthetic val$selector:Lrx/functions/Func1;

.field final synthetic val$source:Lrx/Observable;


# direct methods
.method constructor <init>(ZLrx/functions/Func1;Lrx/Observable;)V
    .registers 4

    .prologue
    .line 125
    iput-boolean p1, p0, Lrx/internal/operators/OperatorPublish$2;->val$delayError:Z

    iput-object p2, p0, Lrx/internal/operators/OperatorPublish$2;->val$selector:Lrx/functions/Func1;

    iput-object p3, p0, Lrx/internal/operators/OperatorPublish$2;->val$source:Lrx/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 125
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorPublish$2;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribePublishMulticast;

    sget v2, Lrx/internal/util/RxRingBuffer;->SIZE:I

    iget-boolean v3, p0, Lrx/internal/operators/OperatorPublish$2;->val$delayError:Z

    invoke-direct {v0, v2, v3}, Lrx/internal/operators/OnSubscribePublishMulticast;-><init>(IZ)V

    .line 130
    .local v0, "op":Lrx/internal/operators/OnSubscribePublishMulticast;, "Lrx/internal/operators/OnSubscribePublishMulticast<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorPublish$2$1;

    invoke-direct {v1, p0, p1, v0}, Lrx/internal/operators/OperatorPublish$2$1;-><init>(Lrx/internal/operators/OperatorPublish$2;Lrx/Subscriber;Lrx/internal/operators/OnSubscribePublishMulticast;)V

    .line 154
    .local v1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<TR;>;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 155
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 157
    iget-object v2, p0, Lrx/internal/operators/OperatorPublish$2;->val$selector:Lrx/functions/Func1;

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v3

    invoke-interface {v2, v3}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/Observable;

    invoke-virtual {v2, v1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 159
    iget-object v2, p0, Lrx/internal/operators/OperatorPublish$2;->val$source:Lrx/Observable;

    invoke-virtual {v0}, Lrx/internal/operators/OnSubscribePublishMulticast;->subscriber()Lrx/Subscriber;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 160
    return-void
.end method
