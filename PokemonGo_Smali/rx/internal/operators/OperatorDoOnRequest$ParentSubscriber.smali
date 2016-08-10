.class final Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;
.super Lrx/Subscriber;
.source "OperatorDoOnRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorDoOnRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParentSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/Subscriber;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;, "Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 59
    iput-object p1, p0, Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;->child:Lrx/Subscriber;

    .line 60
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;->request(J)V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;J)V
    .registers 4
    .param p0, "x0"    # Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;
    .param p1, "x1"    # J

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;->requestMore(J)V

    return-void
.end method

.method private requestMore(J)V
    .registers 4
    .param p1, "n"    # J

    .prologue
    .line 64
    .local p0, "this":Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;, "Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber<TT;>;"
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;->request(J)V

    .line 65
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 69
    .local p0, "this":Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;, "Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 70
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 74
    .local p0, "this":Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;, "Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 75
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
    .line 79
    .local p0, "this":Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;, "Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OperatorDoOnRequest$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 80
    return-void
.end method
