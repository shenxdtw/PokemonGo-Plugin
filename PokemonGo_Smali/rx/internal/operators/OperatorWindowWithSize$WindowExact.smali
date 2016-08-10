.class final Lrx/internal/operators/OperatorWindowWithSize$WindowExact;
.super Lrx/Subscriber;
.source "OperatorWindowWithSize.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorWindowWithSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WindowExact"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;",
        "Lrx/functions/Action0;"
    }
.end annotation


# instance fields
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final cancel:Lrx/Subscription;

.field index:I

.field final size:I

.field window:Lrx/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/Subject",
            "<TT;TT;>;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lrx/Subscriber;I)V
    .registers 5
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/Observable",
            "<TT;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowExact;, "Lrx/internal/operators/OperatorWindowWithSize$WindowExact<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/Observable<TT;>;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 92
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->actual:Lrx/Subscriber;

    .line 93
    iput p2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->size:I

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 95
    invoke-static {p0}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->cancel:Lrx/Subscription;

    .line 96
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->cancel:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->add(Lrx/Subscription;)V

    .line 97
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->request(J)V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorWindowWithSize$WindowExact;J)V
    .registers 4
    .param p0, "x0"    # Lrx/internal/operators/OperatorWindowWithSize$WindowExact;
    .param p1, "x1"    # J

    .prologue
    .line 78
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->request(J)V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 2

    .prologue
    .line 165
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowExact;, "Lrx/internal/operators/OperatorWindowWithSize$WindowExact<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_b

    .line 166
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->unsubscribe()V

    .line 168
    :cond_b
    return-void
.end method

.method createProducer()Lrx/Producer;
    .registers 2

    .prologue
    .line 149
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowExact;, "Lrx/internal/operators/OperatorWindowWithSize$WindowExact<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorWindowWithSize$WindowExact$1;-><init>(Lrx/internal/operators/OperatorWindowWithSize$WindowExact;)V

    return-object v0
.end method

.method public onCompleted()V
    .registers 3

    .prologue
    .line 139
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowExact;, "Lrx/internal/operators/OperatorWindowWithSize$WindowExact<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->window:Lrx/subjects/Subject;

    .line 141
    .local v0, "w":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    if-eqz v0, :cond_a

    .line 142
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->window:Lrx/subjects/Subject;

    .line 143
    invoke-virtual {v0}, Lrx/subjects/Subject;->onCompleted()V

    .line 145
    :cond_a
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->actual:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    .line 146
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 128
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowExact;, "Lrx/internal/operators/OperatorWindowWithSize$WindowExact<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->window:Lrx/subjects/Subject;

    .line 130
    .local v0, "w":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    if-eqz v0, :cond_a

    .line 131
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->window:Lrx/subjects/Subject;

    .line 132
    invoke-virtual {v0, p1}, Lrx/subjects/Subject;->onError(Ljava/lang/Throwable;)V

    .line 134
    :cond_a
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->actual:Lrx/Subscriber;

    invoke-virtual {v1, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 135
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowExact;, "Lrx/internal/operators/OperatorWindowWithSize$WindowExact<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->index:I

    .line 104
    .local v0, "i":I
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->window:Lrx/subjects/Subject;

    .line 105
    .local v1, "w":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    if-nez v0, :cond_18

    .line 106
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 108
    iget v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->size:I

    invoke-static {v2, p0}, Lrx/internal/operators/UnicastSubject;->create(ILrx/functions/Action0;)Lrx/internal/operators/UnicastSubject;

    move-result-object v1

    .line 109
    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->window:Lrx/subjects/Subject;

    .line 111
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->actual:Lrx/Subscriber;

    invoke-virtual {v2, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 113
    :cond_18
    add-int/lit8 v0, v0, 0x1

    .line 115
    invoke-virtual {v1, p1}, Lrx/subjects/Subject;->onNext(Ljava/lang/Object;)V

    .line 117
    iget v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->size:I

    if-ne v0, v2, :cond_2b

    .line 118
    const/4 v2, 0x0

    iput v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->index:I

    .line 119
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->window:Lrx/subjects/Subject;

    .line 120
    invoke-virtual {v1}, Lrx/subjects/Subject;->onCompleted()V

    .line 124
    :goto_2a
    return-void

    .line 122
    :cond_2b
    iput v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->index:I

    goto :goto_2a
.end method
