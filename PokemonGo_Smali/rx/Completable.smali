.class public Lrx/Completable;
.super Ljava/lang/Object;
.source "Completable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/Completable$CompletableTransformer;,
        Lrx/Completable$CompletableSubscriber;,
        Lrx/Completable$CompletableOperator;,
        Lrx/Completable$CompletableOnSubscribe;
    }
.end annotation

.annotation build Lrx/annotations/Experimental;
.end annotation


# static fields
.field static final COMPLETE:Lrx/Completable;

.field static final ERROR_HANDLER:Lrx/plugins/RxJavaErrorHandler;

.field static final NEVER:Lrx/Completable;


# instance fields
.field private final onSubscribe:Lrx/Completable$CompletableOnSubscribe;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 87
    new-instance v0, Lrx/Completable$1;

    invoke-direct {v0}, Lrx/Completable$1;-><init>()V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    sput-object v0, Lrx/Completable;->COMPLETE:Lrx/Completable;

    .line 96
    new-instance v0, Lrx/Completable$2;

    invoke-direct {v0}, Lrx/Completable$2;-><init>()V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    sput-object v0, Lrx/Completable;->NEVER:Lrx/Completable;

    .line 104
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    sput-object v0, Lrx/Completable;->ERROR_HANDLER:Lrx/plugins/RxJavaErrorHandler;

    return-void
.end method

.method protected constructor <init>(Lrx/Completable$CompletableOnSubscribe;)V
    .registers 2
    .param p1, "onSubscribe"    # Lrx/Completable$CompletableOnSubscribe;

    .prologue
    .line 976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 977
    iput-object p1, p0, Lrx/Completable;->onSubscribe:Lrx/Completable$CompletableOnSubscribe;

    .line 978
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Throwable;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/Throwable;

    .prologue
    .line 39
    invoke-static {p0}, Lrx/Completable;->deliverUncaughtException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static amb(Ljava/lang/Iterable;)Lrx/Completable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Completable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Completable;>;"
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    new-instance v0, Lrx/Completable$4;

    invoke-direct {v0, p0}, Lrx/Completable$4;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static varargs amb([Lrx/Completable;)Lrx/Completable;
    .registers 3
    .param p0, "sources"    # [Lrx/Completable;

    .prologue
    .line 114
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    array-length v0, p0

    if-nez v0, :cond_b

    .line 116
    invoke-static {}, Lrx/Completable;->complete()Lrx/Completable;

    move-result-object v0

    .line 122
    :goto_a
    return-object v0

    .line 118
    :cond_b
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 119
    const/4 v0, 0x0

    aget-object v0, p0, v0

    goto :goto_a

    .line 122
    :cond_13
    new-instance v0, Lrx/Completable$3;

    invoke-direct {v0, p0}, Lrx/Completable$3;-><init>([Lrx/Completable;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    goto :goto_a
.end method

.method public static complete()Lrx/Completable;
    .registers 1

    .prologue
    .line 314
    sget-object v0, Lrx/Completable;->COMPLETE:Lrx/Completable;

    return-object v0
.end method

.method public static concat(Ljava/lang/Iterable;)Lrx/Completable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Completable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 341
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Completable;>;"
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeConcatIterable;

    invoke-direct {v0, p0}, Lrx/internal/operators/CompletableOnSubscribeConcatIterable;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lrx/Observable;)Lrx/Completable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+",
            "Lrx/Completable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 353
    .local p0, "sources":Lrx/Observable;, "Lrx/Observable<+Lrx/Completable;>;"
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lrx/Completable;->concat(Lrx/Observable;I)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static concat(Lrx/Observable;I)Lrx/Completable;
    .registers 5
    .param p1, "prefetch"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+",
            "Lrx/Completable;",
            ">;I)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 364
    .local p0, "sources":Lrx/Observable;, "Lrx/Observable<+Lrx/Completable;>;"
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const/4 v0, 0x1

    if-ge p1, v0, :cond_1f

    .line 366
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prefetch > 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_1f
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeConcat;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/CompletableOnSubscribeConcat;-><init>(Lrx/Observable;I)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static varargs concat([Lrx/Completable;)Lrx/Completable;
    .registers 3
    .param p0, "sources"    # [Lrx/Completable;

    .prologue
    .line 324
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    array-length v0, p0

    if-nez v0, :cond_b

    .line 326
    invoke-static {}, Lrx/Completable;->complete()Lrx/Completable;

    move-result-object v0

    .line 331
    :goto_a
    return-object v0

    .line 328
    :cond_b
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 329
    const/4 v0, 0x0

    aget-object v0, p0, v0

    goto :goto_a

    .line 331
    :cond_13
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeConcatArray;

    invoke-direct {v0, p0}, Lrx/internal/operators/CompletableOnSubscribeConcatArray;-><init>([Lrx/Completable;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    goto :goto_a
.end method

.method public static create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;
    .registers 3
    .param p0, "onSubscribe"    # Lrx/Completable$CompletableOnSubscribe;

    .prologue
    .line 379
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    :try_start_3
    new-instance v1, Lrx/Completable;

    invoke-direct {v1, p0}, Lrx/Completable;-><init>(Lrx/Completable$CompletableOnSubscribe;)V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_8} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8} :catch_b

    return-object v1

    .line 384
    :catch_9
    move-exception v0

    .line 385
    .local v0, "ex":Ljava/lang/NullPointerException;
    throw v0

    .line 386
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_b
    move-exception v0

    .line 387
    .local v0, "ex":Ljava/lang/Throwable;
    sget-object v1, Lrx/Completable;->ERROR_HANDLER:Lrx/plugins/RxJavaErrorHandler;

    invoke-virtual {v1, v0}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 388
    invoke-static {v0}, Lrx/Completable;->toNpe(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object v1

    throw v1
.end method

.method public static defer(Lrx/functions/Func0;)Lrx/Completable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func0",
            "<+",
            "Lrx/Completable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 398
    .local p0, "completableFunc0":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/Completable;>;"
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    new-instance v0, Lrx/Completable$5;

    invoke-direct {v0, p0}, Lrx/Completable$5;-><init>(Lrx/functions/Func0;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method private static deliverUncaughtException(Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1956
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 1957
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 1958
    return-void
.end method

.method public static error(Ljava/lang/Throwable;)Lrx/Completable;
    .registers 2
    .param p0, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 462
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    new-instance v0, Lrx/Completable$7;

    invoke-direct {v0, p0}, Lrx/Completable$7;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static error(Lrx/functions/Func0;)Lrx/Completable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func0",
            "<+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 434
    .local p0, "errorFunc0":Lrx/functions/Func0;, "Lrx/functions/Func0<+Ljava/lang/Throwable;>;"
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    new-instance v0, Lrx/Completable$6;

    invoke-direct {v0, p0}, Lrx/Completable$6;-><init>(Lrx/functions/Func0;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static fromAction(Lrx/functions/Action0;)Lrx/Completable;
    .registers 2
    .param p0, "action"    # Lrx/functions/Action0;

    .prologue
    .line 480
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    new-instance v0, Lrx/Completable$8;

    invoke-direct {v0, p0}, Lrx/Completable$8;-><init>(Lrx/functions/Action0;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static fromCallable(Ljava/util/concurrent/Callable;)Lrx/Completable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<*>;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 508
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<*>;"
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    new-instance v0, Lrx/Completable$9;

    invoke-direct {v0, p0}, Lrx/Completable$9;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static fromFuture(Ljava/util/concurrent/Future;)Lrx/Completable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 537
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    invoke-static {p0}, Lrx/Observable;->from(Ljava/util/concurrent/Future;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Completable;->fromObservable(Lrx/Observable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static fromObservable(Lrx/Observable;)Lrx/Completable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<*>;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 549
    .local p0, "flowable":Lrx/Observable;, "Lrx/Observable<*>;"
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    new-instance v0, Lrx/Completable$10;

    invoke-direct {v0, p0}, Lrx/Completable$10;-><init>(Lrx/Observable;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static fromSingle(Lrx/Single;)Lrx/Completable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single",
            "<*>;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 584
    .local p0, "single":Lrx/Single;, "Lrx/Single<*>;"
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    new-instance v0, Lrx/Completable$11;

    invoke-direct {v0, p0}, Lrx/Completable$11;-><init>(Lrx/Single;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Ljava/lang/Iterable;)Lrx/Completable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Completable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 633
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Completable;>;"
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeMergeIterable;

    invoke-direct {v0, p0}, Lrx/internal/operators/CompletableOnSubscribeMergeIterable;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lrx/Observable;)Lrx/Completable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+",
            "Lrx/Completable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 645
    .local p0, "sources":Lrx/Observable;, "Lrx/Observable<+Lrx/Completable;>;"
    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lrx/Completable;->merge0(Lrx/Observable;IZ)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static merge(Lrx/Observable;I)Lrx/Completable;
    .registers 3
    .param p1, "maxConcurrency"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+",
            "Lrx/Completable;",
            ">;I)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 658
    .local p0, "sources":Lrx/Observable;, "Lrx/Observable<+Lrx/Completable;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lrx/Completable;->merge0(Lrx/Observable;IZ)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static varargs merge([Lrx/Completable;)Lrx/Completable;
    .registers 3
    .param p0, "sources"    # [Lrx/Completable;

    .prologue
    .line 615
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    array-length v0, p0

    if-nez v0, :cond_b

    .line 617
    invoke-static {}, Lrx/Completable;->complete()Lrx/Completable;

    move-result-object v0

    .line 622
    :goto_a
    return-object v0

    .line 619
    :cond_b
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 620
    const/4 v0, 0x0

    aget-object v0, p0, v0

    goto :goto_a

    .line 622
    :cond_13
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeMergeArray;

    invoke-direct {v0, p0}, Lrx/internal/operators/CompletableOnSubscribeMergeArray;-><init>([Lrx/Completable;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    goto :goto_a
.end method

.method protected static merge0(Lrx/Observable;IZ)Lrx/Completable;
    .registers 6
    .param p1, "maxConcurrency"    # I
    .param p2, "delayErrors"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+",
            "Lrx/Completable;",
            ">;IZ)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 674
    .local p0, "sources":Lrx/Observable;, "Lrx/Observable<+Lrx/Completable;>;"
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    const/4 v0, 0x1

    if-ge p1, v0, :cond_1f

    .line 676
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxConcurrency > 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 678
    :cond_1f
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeMerge;

    invoke-direct {v0, p0, p1, p2}, Lrx/internal/operators/CompletableOnSubscribeMerge;-><init>(Lrx/Observable;IZ)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Ljava/lang/Iterable;)Lrx/Completable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Completable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 703
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Completable;>;"
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorIterable;

    invoke-direct {v0, p0}, Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorIterable;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Lrx/Observable;)Lrx/Completable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+",
            "Lrx/Completable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 716
    .local p0, "sources":Lrx/Observable;, "Lrx/Observable<+Lrx/Completable;>;"
    const v0, 0x7fffffff

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lrx/Completable;->merge0(Lrx/Observable;IZ)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static mergeDelayError(Lrx/Observable;I)Lrx/Completable;
    .registers 3
    .param p1, "maxConcurrency"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+",
            "Lrx/Completable;",
            ">;I)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 730
    .local p0, "sources":Lrx/Observable;, "Lrx/Observable<+Lrx/Completable;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lrx/Completable;->merge0(Lrx/Observable;IZ)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static varargs mergeDelayError([Lrx/Completable;)Lrx/Completable;
    .registers 2
    .param p0, "sources"    # [Lrx/Completable;

    .prologue
    .line 690
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorArray;

    invoke-direct {v0, p0}, Lrx/internal/operators/CompletableOnSubscribeMergeDelayErrorArray;-><init>([Lrx/Completable;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static never()Lrx/Completable;
    .registers 1

    .prologue
    .line 738
    sget-object v0, Lrx/Completable;->NEVER:Lrx/Completable;

    return-object v0
.end method

.method static requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 748
    .local p0, "o":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_8

    .line 749
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 751
    :cond_8
    return-object p0
.end method

.method public static timer(JLjava/util/concurrent/TimeUnit;)Lrx/Completable;
    .registers 5
    .param p0, "delay"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 761
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lrx/Completable;->timer(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static timer(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Completable;
    .registers 6
    .param p0, "delay"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 772
    invoke-static {p2}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    invoke-static {p3}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    new-instance v0, Lrx/Completable$12;

    invoke-direct {v0, p3, p0, p1, p2}, Lrx/Completable$12;-><init>(Lrx/Scheduler;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method static toNpe(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;
    .registers 3
    .param p0, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 803
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t pass out an exception otherwise..."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 804
    .local v0, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v0, p0}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 805
    return-object v0
.end method

.method public static using(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;)Lrx/Completable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<TR;>;",
            "Lrx/functions/Func1",
            "<-TR;+",
            "Lrx/Completable;",
            ">;",
            "Lrx/functions/Action1",
            "<-TR;>;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 822
    .local p0, "resourceFunc0":Lrx/functions/Func0;, "Lrx/functions/Func0<TR;>;"
    .local p1, "completableFunc1":Lrx/functions/Func1;, "Lrx/functions/Func1<-TR;+Lrx/Completable;>;"
    .local p2, "disposer":Lrx/functions/Action1;, "Lrx/functions/Action1<-TR;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lrx/Completable;->using(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;Z)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public static using(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;Z)Lrx/Completable;
    .registers 5
    .param p3, "eager"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<TR;>;",
            "Lrx/functions/Func1",
            "<-TR;+",
            "Lrx/Completable;",
            ">;",
            "Lrx/functions/Action1",
            "<-TR;>;Z)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 845
    .local p0, "resourceFunc0":Lrx/functions/Func0;, "Lrx/functions/Func0<TR;>;"
    .local p1, "completableFunc1":Lrx/functions/Func1;, "Lrx/functions/Func1<-TR;+Lrx/Completable;>;"
    .local p2, "disposer":Lrx/functions/Action1;, "Lrx/functions/Action1<-TR;>;"
    invoke-static {p0}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    invoke-static {p2}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    new-instance v0, Lrx/Completable$13;

    invoke-direct {v0, p0, p1, p2, p3}, Lrx/Completable$13;-><init>(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;Z)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final ambWith(Lrx/Completable;)Lrx/Completable;
    .registers 4
    .param p1, "other"    # Lrx/Completable;

    .prologue
    .line 988
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/Completable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lrx/Completable;->amb([Lrx/Completable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final andThen(Lrx/Observable;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1114
    .local p1, "next":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    invoke-virtual {p0}, Lrx/Completable;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->delaySubscription(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final andThen(Lrx/Single;)Lrx/Single;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<TT;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1132
    .local p1, "next":Lrx/Single;, "Lrx/Single<TT;>;"
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    invoke-virtual {p0}, Lrx/Completable;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Single;->delaySubscription(Lrx/Observable;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final await()V
    .registers 10

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 998
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 999
    .local v0, "cdl":Ljava/util/concurrent/CountDownLatch;
    new-array v1, v3, [Ljava/lang/Throwable;

    .line 1001
    .local v1, "err":[Ljava/lang/Throwable;
    new-instance v3, Lrx/Completable$14;

    invoke-direct {v3, p0, v0, v1}, Lrx/Completable$14;-><init>(Lrx/Completable;Ljava/util/concurrent/CountDownLatch;[Ljava/lang/Throwable;)V

    invoke-virtual {p0, v3}, Lrx/Completable;->subscribe(Lrx/Completable$CompletableSubscriber;)V

    .line 1021
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_25

    .line 1022
    aget-object v3, v1, v8

    if-eqz v3, :cond_24

    .line 1023
    aget-object v3, v1, v8

    invoke-static {v3}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 1035
    :cond_24
    :goto_24
    return-void

    .line 1028
    :cond_25
    :try_start_25
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_28} :catch_32

    .line 1032
    aget-object v3, v1, v8

    if-eqz v3, :cond_24

    .line 1033
    aget-object v3, v1, v8

    invoke-static {v3}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    goto :goto_24

    .line 1029
    :catch_32
    move-exception v2

    .line 1030
    .local v2, "ex":Ljava/lang/InterruptedException;
    invoke-static {v2}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public final await(JLjava/util/concurrent/TimeUnit;)Z
    .registers 13
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 1047
    invoke-static {p3}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1050
    .local v1, "cdl":Ljava/util/concurrent/CountDownLatch;
    new-array v2, v0, [Ljava/lang/Throwable;

    .line 1052
    .local v2, "err":[Ljava/lang/Throwable;
    new-instance v4, Lrx/Completable$15;

    invoke-direct {v4, p0, v1, v2}, Lrx/Completable$15;-><init>(Lrx/Completable;Ljava/util/concurrent/CountDownLatch;[Ljava/lang/Throwable;)V

    invoke-virtual {p0, v4}, Lrx/Completable;->subscribe(Lrx/Completable$CompletableSubscriber;)V

    .line 1072
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_28

    .line 1073
    aget-object v4, v2, v8

    if-eqz v4, :cond_27

    .line 1074
    aget-object v4, v2, v8

    invoke-static {v4}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 1089
    :cond_27
    :goto_27
    return v0

    .line 1080
    :cond_28
    :try_start_28
    invoke-virtual {v1, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2b} :catch_38

    move-result v0

    .line 1084
    .local v0, "b":Z
    if-eqz v0, :cond_27

    .line 1085
    aget-object v4, v2, v8

    if-eqz v4, :cond_27

    .line 1086
    aget-object v4, v2, v8

    invoke-static {v4}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    goto :goto_27

    .line 1081
    .end local v0    # "b":Z
    :catch_38
    move-exception v3

    .line 1082
    .local v3, "ex":Ljava/lang/InterruptedException;
    invoke-static {v3}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public final compose(Lrx/Completable$CompletableTransformer;)Lrx/Completable;
    .registers 3
    .param p1, "transformer"    # Lrx/Completable$CompletableTransformer;

    .prologue
    .line 1100
    invoke-virtual {p0, p1}, Lrx/Completable;->to(Lrx/functions/Func1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Completable;

    return-object v0
.end method

.method public final concatWith(Lrx/Completable;)Lrx/Completable;
    .registers 4
    .param p1, "other"    # Lrx/Completable;

    .prologue
    .line 1143
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/Completable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lrx/Completable;->concat([Lrx/Completable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;)Lrx/Completable;
    .registers 11
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 1155
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lrx/Completable;->delay(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;Z)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Completable;
    .registers 12
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 1168
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lrx/Completable;->delay(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;Z)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;Z)Lrx/Completable;
    .registers 15
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .param p5, "delayError"    # Z

    .prologue
    .line 1182
    invoke-static {p3}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    invoke-static {p4}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    new-instance v1, Lrx/Completable$16;

    move-object v2, p0

    move-object v3, p4

    move-wide v4, p1

    move-object v6, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lrx/Completable$16;-><init>(Lrx/Completable;Lrx/Scheduler;JLjava/util/concurrent/TimeUnit;Z)V

    invoke-static {v1}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final doAfterTerminate(Lrx/functions/Action0;)Lrx/Completable;
    .registers 8
    .param p1, "onAfterComplete"    # Lrx/functions/Action0;

    .prologue
    .line 1423
    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v1

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v2

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v3

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v5

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lrx/Completable;->doOnLifecycle(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action0;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final doOnComplete(Lrx/functions/Action0;)Lrx/Completable;
    .registers 3
    .param p1, "onComplete"    # Lrx/functions/Action0;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1246
    invoke-virtual {p0, p1}, Lrx/Completable;->doOnCompleted(Lrx/functions/Action0;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final doOnCompleted(Lrx/functions/Action0;)Lrx/Completable;
    .registers 8
    .param p1, "onCompleted"    # Lrx/functions/Action0;

    .prologue
    .line 1256
    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v1

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v2

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v4

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v5

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lrx/Completable;->doOnLifecycle(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action0;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final doOnError(Lrx/functions/Action1;)Lrx/Completable;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 1277
    .local p1, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<-Ljava/lang/Throwable;>;"
    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v1

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v3

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v4

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lrx/Completable;->doOnLifecycle(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action0;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method protected final doOnLifecycle(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action0;)Lrx/Completable;
    .registers 13
    .param p3, "onComplete"    # Lrx/functions/Action0;
    .param p4, "onAfterComplete"    # Lrx/functions/Action0;
    .param p5, "onUnsubscribe"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-",
            "Lrx/Subscription;",
            ">;",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lrx/functions/Action0;",
            "Lrx/functions/Action0;",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 1296
    .local p1, "onSubscribe":Lrx/functions/Action1;, "Lrx/functions/Action1<-Lrx/Subscription;>;"
    .local p2, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<-Ljava/lang/Throwable;>;"
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    invoke-static {p2}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    invoke-static {p3}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    invoke-static {p4}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    invoke-static {p5}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    new-instance v0, Lrx/Completable$17;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p2

    move-object v5, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lrx/Completable$17;-><init>(Lrx/Completable;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final doOnSubscribe(Lrx/functions/Action1;)Lrx/Completable;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-",
            "Lrx/Subscription;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 1373
    .local p1, "onSubscribe":Lrx/functions/Action1;, "Lrx/functions/Action1<-Lrx/Subscription;>;"
    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v2

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v3

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v4

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lrx/Completable;->doOnLifecycle(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action0;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final doOnTerminate(Lrx/functions/Action0;)Lrx/Completable;
    .registers 8
    .param p1, "onTerminate"    # Lrx/functions/Action0;

    .prologue
    .line 1383
    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v1

    new-instance v2, Lrx/Completable$18;

    invoke-direct {v2, p0, p1}, Lrx/Completable$18;-><init>(Lrx/Completable;Lrx/functions/Action0;)V

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v4

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v5

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lrx/Completable;->doOnLifecycle(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action0;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final doOnUnsubscribe(Lrx/functions/Action0;)Lrx/Completable;
    .registers 8
    .param p1, "onUnsubscribe"    # Lrx/functions/Action0;

    .prologue
    .line 1267
    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v1

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v2

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v3

    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v4

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lrx/Completable;->doOnLifecycle(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;Lrx/functions/Action0;Lrx/functions/Action0;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final endWith(Lrx/Completable;)Lrx/Completable;
    .registers 3
    .param p1, "other"    # Lrx/Completable;

    .prologue
    .line 1401
    invoke-virtual {p0, p1}, Lrx/Completable;->concatWith(Lrx/Completable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final endWith(Lrx/Observable;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1412
    .local p1, "next":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0}, Lrx/Completable;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Observable;->startWith(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final get()Ljava/lang/Throwable;
    .registers 10

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 1433
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1434
    .local v0, "cdl":Ljava/util/concurrent/CountDownLatch;
    new-array v1, v3, [Ljava/lang/Throwable;

    .line 1436
    .local v1, "err":[Ljava/lang/Throwable;
    new-instance v3, Lrx/Completable$19;

    invoke-direct {v3, p0, v0, v1}, Lrx/Completable$19;-><init>(Lrx/Completable;Ljava/util/concurrent/CountDownLatch;[Ljava/lang/Throwable;)V

    invoke-virtual {p0, v3}, Lrx/Completable;->subscribe(Lrx/Completable$CompletableSubscriber;)V

    .line 1456
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1e

    .line 1457
    aget-object v3, v1, v8

    .line 1464
    :goto_1d
    return-object v3

    .line 1460
    :cond_1e
    :try_start_1e
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_21} :catch_24

    .line 1464
    aget-object v3, v1, v8

    goto :goto_1d

    .line 1461
    :catch_24
    move-exception v2

    .line 1462
    .local v2, "ex":Ljava/lang/InterruptedException;
    invoke-static {v2}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Throwable;
    .registers 13
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 1475
    invoke-static {p3}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1478
    .local v1, "cdl":Ljava/util/concurrent/CountDownLatch;
    new-array v2, v4, [Ljava/lang/Throwable;

    .line 1480
    .local v2, "err":[Ljava/lang/Throwable;
    new-instance v4, Lrx/Completable$20;

    invoke-direct {v4, p0, v1, v2}, Lrx/Completable$20;-><init>(Lrx/Completable;Ljava/util/concurrent/CountDownLatch;[Ljava/lang/Throwable;)V

    invoke-virtual {p0, v4}, Lrx/Completable;->subscribe(Lrx/Completable$CompletableSubscriber;)V

    .line 1500
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_21

    .line 1501
    aget-object v4, v2, v8

    .line 1513
    :goto_20
    return-object v4

    .line 1505
    :cond_21
    :try_start_21
    invoke-virtual {v1, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_24} :catch_2a

    move-result v0

    .line 1509
    .local v0, "b":Z
    if-eqz v0, :cond_30

    .line 1510
    aget-object v4, v2, v8

    goto :goto_20

    .line 1506
    .end local v0    # "b":Z
    :catch_2a
    move-exception v3

    .line 1507
    .local v3, "ex":Ljava/lang/InterruptedException;
    invoke-static {v3}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 1512
    .end local v3    # "ex":Ljava/lang/InterruptedException;
    .restart local v0    # "b":Z
    :cond_30
    new-instance v4, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v4}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-static {v4}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 1513
    const/4 v4, 0x0

    goto :goto_20
.end method

.method public final lift(Lrx/Completable$CompletableOperator;)Lrx/Completable;
    .registers 3
    .param p1, "onLift"    # Lrx/Completable$CompletableOperator;

    .prologue
    .line 1523
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1524
    new-instance v0, Lrx/Completable$21;

    invoke-direct {v0, p0, p1}, Lrx/Completable$21;-><init>(Lrx/Completable;Lrx/Completable$CompletableOperator;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final mergeWith(Lrx/Completable;)Lrx/Completable;
    .registers 4
    .param p1, "other"    # Lrx/Completable;

    .prologue
    .line 1550
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1551
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/Completable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lrx/Completable;->merge([Lrx/Completable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final observeOn(Lrx/Scheduler;)Lrx/Completable;
    .registers 3
    .param p1, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 1561
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1562
    new-instance v0, Lrx/Completable$22;

    invoke-direct {v0, p0, p1}, Lrx/Completable$22;-><init>(Lrx/Completable;Lrx/Scheduler;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final onErrorComplete()Lrx/Completable;
    .registers 2

    .prologue
    .line 1619
    invoke-static {}, Lrx/internal/util/UtilityFunctions;->alwaysTrue()Lrx/functions/Func1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Completable;->onErrorComplete(Lrx/functions/Func1;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final onErrorComplete(Lrx/functions/Func1;)Lrx/Completable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 1630
    .local p1, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-Ljava/lang/Throwable;Ljava/lang/Boolean;>;"
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1632
    new-instance v0, Lrx/Completable$23;

    invoke-direct {v0, p0, p1}, Lrx/Completable$23;-><init>(Lrx/Completable;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final onErrorResumeNext(Lrx/functions/Func1;)Lrx/Completable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/Completable;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 1679
    .local p1, "errorMapper":Lrx/functions/Func1;, "Lrx/functions/Func1<-Ljava/lang/Throwable;+Lrx/Completable;>;"
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1680
    new-instance v0, Lrx/Completable$24;

    invoke-direct {v0, p0, p1}, Lrx/Completable$24;-><init>(Lrx/Completable;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final repeat()Lrx/Completable;
    .registers 2

    .prologue
    .line 1745
    invoke-virtual {p0}, Lrx/Completable;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->repeat()Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Completable;->fromObservable(Lrx/Observable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final repeat(J)Lrx/Completable;
    .registers 4
    .param p1, "times"    # J

    .prologue
    .line 1755
    invoke-virtual {p0}, Lrx/Completable;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lrx/Observable;->repeat(J)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Completable;->fromObservable(Lrx/Observable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final repeatWhen(Lrx/functions/Func1;)Lrx/Completable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Void;",
            ">;+",
            "Lrx/Observable",
            "<*>;>;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 1768
    .local p1, "handler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Ljava/lang/Void;>;+Lrx/Observable<*>;>;"
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1769
    invoke-virtual {p0}, Lrx/Completable;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->repeatWhen(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Completable;->fromObservable(Lrx/Observable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final retry()Lrx/Completable;
    .registers 2

    .prologue
    .line 1777
    invoke-virtual {p0}, Lrx/Completable;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->retry()Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Completable;->fromObservable(Lrx/Observable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final retry(J)Lrx/Completable;
    .registers 4
    .param p1, "times"    # J

    .prologue
    .line 1799
    invoke-virtual {p0}, Lrx/Completable;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lrx/Observable;->retry(J)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Completable;->fromObservable(Lrx/Observable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final retry(Lrx/functions/Func2;)Lrx/Completable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 1788
    .local p1, "predicate":Lrx/functions/Func2;, "Lrx/functions/Func2<Ljava/lang/Integer;Ljava/lang/Throwable;Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lrx/Completable;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->retry(Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Completable;->fromObservable(Lrx/Observable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final retryWhen(Lrx/functions/Func1;)Lrx/Completable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lrx/Observable",
            "<*>;>;)",
            "Lrx/Completable;"
        }
    .end annotation

    .prologue
    .line 1812
    .local p1, "handler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Ljava/lang/Throwable;>;+Lrx/Observable<*>;>;"
    invoke-virtual {p0}, Lrx/Completable;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->retryWhen(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Completable;->fromObservable(Lrx/Observable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Lrx/Completable;)Lrx/Completable;
    .registers 4
    .param p1, "other"    # Lrx/Completable;

    .prologue
    .line 1823
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1824
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/Completable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lrx/Completable;->concat([Lrx/Completable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Lrx/Observable;)Lrx/Observable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1835
    .local p1, "other":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1836
    invoke-virtual {p0}, Lrx/Completable;->toObservable()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->startWith(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe()Lrx/Subscription;
    .registers 3

    .prologue
    .line 1845
    new-instance v0, Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-direct {v0}, Lrx/subscriptions/MultipleAssignmentSubscription;-><init>()V

    .line 1846
    .local v0, "mad":Lrx/subscriptions/MultipleAssignmentSubscription;
    new-instance v1, Lrx/Completable$25;

    invoke-direct {v1, p0, v0}, Lrx/Completable$25;-><init>(Lrx/Completable;Lrx/subscriptions/MultipleAssignmentSubscription;)V

    invoke-virtual {p0, v1}, Lrx/Completable;->subscribe(Lrx/Completable$CompletableSubscriber;)V

    .line 1865
    return-object v0
.end method

.method public final subscribe(Lrx/functions/Action0;)Lrx/Subscription;
    .registers 4
    .param p1, "onComplete"    # Lrx/functions/Action0;

    .prologue
    .line 1876
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1878
    new-instance v0, Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-direct {v0}, Lrx/subscriptions/MultipleAssignmentSubscription;-><init>()V

    .line 1879
    .local v0, "mad":Lrx/subscriptions/MultipleAssignmentSubscription;
    new-instance v1, Lrx/Completable$26;

    invoke-direct {v1, p0, p1, v0}, Lrx/Completable$26;-><init>(Lrx/Completable;Lrx/functions/Action0;Lrx/subscriptions/MultipleAssignmentSubscription;)V

    invoke-virtual {p0, v1}, Lrx/Completable;->subscribe(Lrx/Completable$CompletableSubscriber;)V

    .line 1905
    return-object v0
.end method

.method public final subscribe(Lrx/functions/Action1;Lrx/functions/Action0;)Lrx/Subscription;
    .registers 5
    .param p2, "onComplete"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 1917
    .local p1, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<-Ljava/lang/Throwable;>;"
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1918
    invoke-static {p2}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1920
    new-instance v0, Lrx/subscriptions/MultipleAssignmentSubscription;

    invoke-direct {v0}, Lrx/subscriptions/MultipleAssignmentSubscription;-><init>()V

    .line 1921
    .local v0, "mad":Lrx/subscriptions/MultipleAssignmentSubscription;
    new-instance v1, Lrx/Completable$27;

    invoke-direct {v1, p0, p2, v0, p1}, Lrx/Completable$27;-><init>(Lrx/Completable;Lrx/functions/Action0;Lrx/subscriptions/MultipleAssignmentSubscription;Lrx/functions/Action1;)V

    invoke-virtual {p0, v1}, Lrx/Completable;->subscribe(Lrx/Completable$CompletableSubscriber;)V

    .line 1952
    return-object v0
.end method

.method public final subscribe(Lrx/Completable$CompletableSubscriber;)V
    .registers 4
    .param p1, "s"    # Lrx/Completable$CompletableSubscriber;

    .prologue
    .line 1966
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1970
    :try_start_3
    iget-object v1, p0, Lrx/Completable;->onSubscribe:Lrx/Completable$CompletableOnSubscribe;

    invoke-interface {v1, p1}, Lrx/Completable$CompletableOnSubscribe;->call(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_8} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8} :catch_b

    .line 1977
    return-void

    .line 1971
    :catch_9
    move-exception v0

    .line 1972
    .local v0, "ex":Ljava/lang/NullPointerException;
    throw v0

    .line 1973
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_b
    move-exception v0

    .line 1974
    .local v0, "ex":Ljava/lang/Throwable;
    sget-object v1, Lrx/Completable;->ERROR_HANDLER:Lrx/plugins/RxJavaErrorHandler;

    invoke-virtual {v1, v0}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 1975
    invoke-static {v0}, Lrx/Completable;->toNpe(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object v1

    throw v1
.end method

.method public final subscribe(Lrx/Subscriber;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Subscriber",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1986
    .local p1, "s":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1988
    move-object v1, p1

    .line 1990
    .local v1, "sw":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    if-nez v1, :cond_10

    .line 1991
    :try_start_6
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "The RxJavaPlugins.onSubscribe returned a null Subscriber"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_e} :catch_e
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_e} :catch_19

    .line 2011
    :catch_e
    move-exception v0

    .line 2012
    .local v0, "ex":Ljava/lang/NullPointerException;
    throw v0

    .line 1994
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :cond_10
    :try_start_10
    new-instance v2, Lrx/Completable$28;

    invoke-direct {v2, p0, v1}, Lrx/Completable$28;-><init>(Lrx/Completable;Lrx/Subscriber;)V

    invoke-virtual {p0, v2}, Lrx/Completable;->subscribe(Lrx/Completable$CompletableSubscriber;)V
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_18} :catch_e
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_18} :catch_19

    .line 2017
    return-void

    .line 2013
    :catch_19
    move-exception v0

    .line 2014
    .local v0, "ex":Ljava/lang/Throwable;
    sget-object v2, Lrx/Completable;->ERROR_HANDLER:Lrx/plugins/RxJavaErrorHandler;

    invoke-virtual {v2, v0}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V

    .line 2015
    invoke-static {v0}, Lrx/Completable;->toNpe(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    move-result-object v2

    throw v2
.end method

.method public final subscribeOn(Lrx/Scheduler;)Lrx/Completable;
    .registers 3
    .param p1, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 2027
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2029
    new-instance v0, Lrx/Completable$29;

    invoke-direct {v0, p0, p1}, Lrx/Completable$29;-><init>(Lrx/Completable;Lrx/Scheduler;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;)Lrx/Completable;
    .registers 11
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 2059
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lrx/Completable;->timeout0(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;Lrx/Completable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lrx/Completable;)Lrx/Completable;
    .registers 12
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "other"    # Lrx/Completable;

    .prologue
    .line 2072
    invoke-static {p4}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2073
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v5

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lrx/Completable;->timeout0(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;Lrx/Completable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Completable;
    .registers 12
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 2087
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lrx/Completable;->timeout0(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;Lrx/Completable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;Lrx/Completable;)Lrx/Completable;
    .registers 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .param p5, "other"    # Lrx/Completable;

    .prologue
    .line 2102
    invoke-static {p5}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2103
    invoke-virtual/range {p0 .. p5}, Lrx/Completable;->timeout0(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;Lrx/Completable;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final timeout0(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;Lrx/Completable;)Lrx/Completable;
    .registers 13
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .param p5, "other"    # Lrx/Completable;

    .prologue
    .line 2119
    invoke-static {p3}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2120
    invoke-static {p4}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2121
    new-instance v0, Lrx/internal/operators/CompletableOnSubscribeTimeout;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lrx/internal/operators/CompletableOnSubscribeTimeout;-><init>(Lrx/Completable;JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;Lrx/Completable;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method

.method public final to(Lrx/functions/Func1;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Completable;",
            "TU;>;)TU;"
        }
    .end annotation

    .prologue
    .line 2131
    .local p1, "converter":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Completable;TU;>;"
    invoke-interface {p1, p0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toObservable()Lrx/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2140
    new-instance v0, Lrx/Completable$30;

    invoke-direct {v0, p0}, Lrx/Completable$30;-><init>(Lrx/Completable;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final toSingle(Lrx/functions/Func0;)Lrx/Single;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<+TT;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2156
    .local p1, "completionValueFunc0":Lrx/functions/Func0;, "Lrx/functions/Func0<+TT;>;"
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2157
    new-instance v0, Lrx/Completable$31;

    invoke-direct {v0, p0, p1}, Lrx/Completable$31;-><init>(Lrx/Completable;Lrx/functions/Func0;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final toSingleDefault(Ljava/lang/Object;)Lrx/Single;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2203
    .local p1, "completionValue":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2204
    new-instance v0, Lrx/Completable$32;

    invoke-direct {v0, p0, p1}, Lrx/Completable$32;-><init>(Lrx/Completable;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lrx/Completable;->toSingle(Lrx/functions/Func0;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final unsubscribeOn(Lrx/Scheduler;)Lrx/Completable;
    .registers 3
    .param p1, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 2220
    invoke-static {p1}, Lrx/Completable;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2221
    new-instance v0, Lrx/Completable$33;

    invoke-direct {v0, p0, p1}, Lrx/Completable$33;-><init>(Lrx/Completable;Lrx/Scheduler;)V

    invoke-static {v0}, Lrx/Completable;->create(Lrx/Completable$CompletableOnSubscribe;)Lrx/Completable;

    move-result-object v0

    return-object v0
.end method
