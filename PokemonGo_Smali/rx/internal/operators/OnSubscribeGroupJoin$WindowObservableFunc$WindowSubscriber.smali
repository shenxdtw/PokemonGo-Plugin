.class final Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc$WindowSubscriber;
.super Lrx/Subscriber;
.source "OnSubscribeGroupJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WindowSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final ref:Lrx/Subscription;

.field final subscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc;Lrx/Subscriber;Lrx/Subscription;)V
    .registers 4
    .param p3, "ref"    # Lrx/Subscription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;",
            "Lrx/Subscription;",
            ")V"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc$WindowSubscriber;, "Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc<TT;>.WindowSubscriber;"
    .local p2, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc$WindowSubscriber;->this$0:Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc;

    .line 358
    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 359
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc$WindowSubscriber;->subscriber:Lrx/Subscriber;

    .line 360
    iput-object p3, p0, Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc$WindowSubscriber;->ref:Lrx/Subscription;

    .line 361
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 376
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc$WindowSubscriber;, "Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc<TT;>.WindowSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc$WindowSubscriber;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 377
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc$WindowSubscriber;->ref:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 378
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 370
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc$WindowSubscriber;, "Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc<TT;>.WindowSubscriber;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc$WindowSubscriber;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 371
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc$WindowSubscriber;->ref:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 372
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 365
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc$WindowSubscriber;, "Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc<TT;>.WindowSubscriber;"
    .local p1, "args":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc$WindowSubscriber;->subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 366
    return-void
.end method
