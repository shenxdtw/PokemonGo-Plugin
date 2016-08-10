.class final Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;
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
    name = "WindowSkip"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorWindowWithSize$WindowSkip$WindowSkipProducer;
    }
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

.field final skip:I

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
.method public constructor <init>(Lrx/Subscriber;II)V
    .registers 6
    .param p2, "size"    # I
    .param p3, "skip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/Observable",
            "<TT;>;>;II)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/Observable<TT;>;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 187
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->actual:Lrx/Subscriber;

    .line 188
    iput p2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->size:I

    .line 189
    iput p3, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->skip:I

    .line 190
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 191
    invoke-static {p0}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->cancel:Lrx/Subscription;

    .line 192
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->cancel:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->add(Lrx/Subscription;)V

    .line 193
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->request(J)V

    .line 194
    return-void
.end method

.method static synthetic access$100(Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;J)V
    .registers 4
    .param p0, "x0"    # Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;
    .param p1, "x1"    # J

    .prologue
    .line 171
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->request(J)V

    return-void
.end method

.method static synthetic access$200(Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;J)V
    .registers 4
    .param p0, "x0"    # Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;
    .param p1, "x1"    # J

    .prologue
    .line 171
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->request(J)V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 2

    .prologue
    .line 256
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_b

    .line 257
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->unsubscribe()V

    .line 259
    :cond_b
    return-void
.end method

.method createProducer()Lrx/Producer;
    .registers 2

    .prologue
    .line 251
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip$WindowSkipProducer;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip$WindowSkipProducer;-><init>(Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;)V

    return-object v0
.end method

.method public onCompleted()V
    .registers 3

    .prologue
    .line 241
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->window:Lrx/subjects/Subject;

    .line 243
    .local v0, "w":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    if-eqz v0, :cond_a

    .line 244
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->window:Lrx/subjects/Subject;

    .line 245
    invoke-virtual {v0}, Lrx/subjects/Subject;->onCompleted()V

    .line 247
    :cond_a
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->actual:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    .line 248
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 230
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->window:Lrx/subjects/Subject;

    .line 232
    .local v0, "w":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    if-eqz v0, :cond_a

    .line 233
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->window:Lrx/subjects/Subject;

    .line 234
    invoke-virtual {v0, p1}, Lrx/subjects/Subject;->onError(Ljava/lang/Throwable;)V

    .line 236
    :cond_a
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->actual:Lrx/Subscriber;

    invoke-virtual {v1, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 237
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
    .line 198
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->index:I

    .line 200
    .local v0, "i":I
    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->window:Lrx/subjects/Subject;

    .line 201
    .local v1, "w":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TT;>;"
    if-nez v0, :cond_18

    .line 202
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 204
    iget v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->size:I

    invoke-static {v2, p0}, Lrx/internal/operators/UnicastSubject;->create(ILrx/functions/Action0;)Lrx/internal/operators/UnicastSubject;

    move-result-object v1

    .line 205
    iput-object v1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->window:Lrx/subjects/Subject;

    .line 207
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->actual:Lrx/Subscriber;

    invoke-virtual {v2, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 209
    :cond_18
    add-int/lit8 v0, v0, 0x1

    .line 211
    if-eqz v1, :cond_1f

    .line 212
    invoke-virtual {v1, p1}, Lrx/subjects/Subject;->onNext(Ljava/lang/Object;)V

    .line 215
    :cond_1f
    iget v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->size:I

    if-ne v0, v2, :cond_2c

    .line 216
    iput v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->index:I

    .line 217
    const/4 v2, 0x0

    iput-object v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->window:Lrx/subjects/Subject;

    .line 218
    invoke-virtual {v1}, Lrx/subjects/Subject;->onCompleted()V

    .line 226
    :goto_2b
    return-void

    .line 220
    :cond_2c
    iget v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->skip:I

    if-ne v0, v2, :cond_34

    .line 221
    const/4 v2, 0x0

    iput v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->index:I

    goto :goto_2b

    .line 223
    :cond_34
    iput v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->index:I

    goto :goto_2b
.end method
