.class public Lcom/android/volley/toolbox/RequestFuture;
.super Ljava/lang/Object;
.source "RequestFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;
.implements Lcom/android/volley/Response$Listener;
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TT;>;",
        "Lcom/android/volley/Response$Listener",
        "<TT;>;",
        "Lcom/android/volley/Response$ErrorListener;"
    }
.end annotation


# instance fields
.field private mException:Lcom/android/volley/VolleyError;

.field private mRequest:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation
.end field

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mResultReceived:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 65
    .local p0, "this":Lcom/android/volley/toolbox/RequestFuture;, "Lcom/android/volley/toolbox/RequestFuture<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mResultReceived:Z

    .line 65
    return-void
.end method

.method private declared-synchronized doGet(Ljava/lang/Long;)Ljava/lang/Object;
    .registers 6
    .param p1, "timeoutMs"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/volley/toolbox/RequestFuture;, "Lcom/android/volley/toolbox/RequestFuture<TT;>;"
    const-wide/16 v2, 0x0

    .line 102
    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mException:Lcom/android/volley/VolleyError;

    if-eqz v0, :cond_12

    .line 103
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/android/volley/toolbox/RequestFuture;->mException:Lcom/android/volley/VolleyError;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 102
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 106
    :cond_12
    :try_start_12
    iget-boolean v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mResultReceived:Z

    if-eqz v0, :cond_1a

    .line 107
    iget-object v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mResult:Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_f

    .line 124
    :goto_18
    monitor-exit p0

    return-object v0

    .line 110
    :cond_1a
    if-nez p1, :cond_2d

    .line 111
    const-wide/16 v0, 0x0

    :try_start_1e
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 116
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mException:Lcom/android/volley/VolleyError;

    if-eqz v0, :cond_3d

    .line 117
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/android/volley/toolbox/RequestFuture;->mException:Lcom/android/volley/VolleyError;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 112
    :cond_2d
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_21

    .line 113
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    goto :goto_21

    .line 120
    :cond_3d
    iget-boolean v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mResultReceived:Z

    if-nez v0, :cond_47

    .line 121
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    .line 124
    :cond_47
    iget-object v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mResult:Ljava/lang/Object;
    :try_end_49
    .catchall {:try_start_1e .. :try_end_49} :catchall_f

    goto :goto_18
.end method

.method public static newFuture()Lcom/android/volley/toolbox/RequestFuture;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/android/volley/toolbox/RequestFuture",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lcom/android/volley/toolbox/RequestFuture;

    invoke-direct {v0}, Lcom/android/volley/toolbox/RequestFuture;-><init>()V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized cancel(Z)Z
    .registers 4
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .local p0, "this":Lcom/android/volley/toolbox/RequestFuture;, "Lcom/android/volley/toolbox/RequestFuture<TT;>;"
    const/4 v0, 0x0

    .line 73
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/android/volley/toolbox/RequestFuture;->mRequest:Lcom/android/volley/Request;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_15

    if-nez v1, :cond_8

    .line 81
    :cond_6
    :goto_6
    monitor-exit p0

    return v0

    .line 77
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Lcom/android/volley/toolbox/RequestFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_6

    .line 78
    iget-object v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->cancel()V
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_15

    .line 79
    const/4 v0, 0x1

    goto :goto_6

    .line 73
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lcom/android/volley/toolbox/RequestFuture;, "Lcom/android/volley/toolbox/RequestFuture<TT;>;"
    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/volley/toolbox/RequestFuture;->doGet(Ljava/lang/Long;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v1

    return-object v1

    .line 89
    :catch_6
    move-exception v0

    .line 90
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lcom/android/volley/toolbox/RequestFuture;, "Lcom/android/volley/toolbox/RequestFuture<TT;>;"
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/volley/toolbox/RequestFuture;->doGet(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .registers 2

    .prologue
    .line 129
    .local p0, "this":Lcom/android/volley/toolbox/RequestFuture;, "Lcom/android/volley/toolbox/RequestFuture<TT;>;"
    iget-object v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mRequest:Lcom/android/volley/Request;

    if-nez v0, :cond_6

    .line 130
    const/4 v0, 0x0

    .line 132
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mRequest:Lcom/android/volley/Request;

    invoke-virtual {v0}, Lcom/android/volley/Request;->isCanceled()Z

    move-result v0

    goto :goto_5
.end method

.method public declared-synchronized isDone()Z
    .registers 2

    .prologue
    .line 137
    .local p0, "this":Lcom/android/volley/toolbox/RequestFuture;, "Lcom/android/volley/toolbox/RequestFuture<TT;>;"
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mResultReceived:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mException:Lcom/android/volley/VolleyError;

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/volley/toolbox/RequestFuture;->isCancelled()Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_14

    move-result v0

    if-eqz v0, :cond_12

    :cond_f
    const/4 v0, 0x1

    :goto_10
    monitor-exit p0

    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_10

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 149
    .local p0, "this":Lcom/android/volley/toolbox/RequestFuture;, "Lcom/android/volley/toolbox/RequestFuture<TT;>;"
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/android/volley/toolbox/RequestFuture;->mException:Lcom/android/volley/VolleyError;

    .line 150
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 151
    monitor-exit p0

    return-void

    .line 149
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onResponse(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lcom/android/volley/toolbox/RequestFuture;, "Lcom/android/volley/toolbox/RequestFuture<TT;>;"
    .local p1, "response":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/volley/toolbox/RequestFuture;->mResultReceived:Z

    .line 143
    iput-object p1, p0, Lcom/android/volley/toolbox/RequestFuture;->mResult:Ljava/lang/Object;

    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 145
    monitor-exit p0

    return-void

    .line 142
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRequest(Lcom/android/volley/Request;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcom/android/volley/toolbox/RequestFuture;, "Lcom/android/volley/toolbox/RequestFuture<TT;>;"
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    iput-object p1, p0, Lcom/android/volley/toolbox/RequestFuture;->mRequest:Lcom/android/volley/Request;

    .line 69
    return-void
.end method
