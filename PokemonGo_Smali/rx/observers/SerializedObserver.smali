.class public Lrx/observers/SerializedObserver;
.super Ljava/lang/Object;
.source "SerializedObserver.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/observers/SerializedObserver$FastList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observer",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final MAX_DRAIN_ITERATION:I = 0x400


# instance fields
.field private final actual:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private emitting:Z

.field private final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field private queue:Lrx/observers/SerializedObserver$FastList;

.field private volatile terminated:Z


# direct methods
.method public constructor <init>(Lrx/Observer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lrx/observers/SerializedObserver;, "Lrx/observers/SerializedObserver<TT;>;"
    .local p1, "s":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/observers/SerializedObserver;->nl:Lrx/internal/operators/NotificationLite;

    .line 71
    iput-object p1, p0, Lrx/observers/SerializedObserver;->actual:Lrx/Observer;

    .line 72
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 163
    .local p0, "this":Lrx/observers/SerializedObserver;, "Lrx/observers/SerializedObserver<TT;>;"
    iget-boolean v1, p0, Lrx/observers/SerializedObserver;->terminated:Z

    if-eqz v1, :cond_5

    .line 183
    :goto_4
    return-void

    .line 166
    :cond_5
    monitor-enter p0

    .line 167
    :try_start_6
    iget-boolean v1, p0, Lrx/observers/SerializedObserver;->terminated:Z

    if-eqz v1, :cond_f

    .line 168
    monitor-exit p0

    goto :goto_4

    .line 181
    :catchall_c
    move-exception v1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_c

    throw v1

    .line 170
    :cond_f
    const/4 v1, 0x1

    :try_start_10
    iput-boolean v1, p0, Lrx/observers/SerializedObserver;->terminated:Z

    .line 171
    iget-boolean v1, p0, Lrx/observers/SerializedObserver;->emitting:Z

    if-eqz v1, :cond_2c

    .line 172
    iget-object v0, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 173
    .local v0, "list":Lrx/observers/SerializedObserver$FastList;
    if-nez v0, :cond_21

    .line 174
    new-instance v0, Lrx/observers/SerializedObserver$FastList;

    .end local v0    # "list":Lrx/observers/SerializedObserver$FastList;
    invoke-direct {v0}, Lrx/observers/SerializedObserver$FastList;-><init>()V

    .line 175
    .restart local v0    # "list":Lrx/observers/SerializedObserver$FastList;
    iput-object v0, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 177
    :cond_21
    iget-object v1, p0, Lrx/observers/SerializedObserver;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/observers/SerializedObserver$FastList;->add(Ljava/lang/Object;)V

    .line 178
    monitor-exit p0

    goto :goto_4

    .line 180
    .end local v0    # "list":Lrx/observers/SerializedObserver$FastList;
    :cond_2c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/observers/SerializedObserver;->emitting:Z

    .line 181
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_c

    .line 182
    iget-object v1, p0, Lrx/observers/SerializedObserver;->actual:Lrx/Observer;

    invoke-interface {v1}, Lrx/Observer;->onCompleted()V

    goto :goto_4
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 134
    .local p0, "this":Lrx/observers/SerializedObserver;, "Lrx/observers/SerializedObserver<TT;>;"
    invoke-static {p1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 135
    iget-boolean v1, p0, Lrx/observers/SerializedObserver;->terminated:Z

    if-eqz v1, :cond_8

    .line 159
    :goto_7
    return-void

    .line 138
    :cond_8
    monitor-enter p0

    .line 139
    :try_start_9
    iget-boolean v1, p0, Lrx/observers/SerializedObserver;->terminated:Z

    if-eqz v1, :cond_12

    .line 140
    monitor-exit p0

    goto :goto_7

    .line 157
    :catchall_f
    move-exception v1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_f

    throw v1

    .line 142
    :cond_12
    const/4 v1, 0x1

    :try_start_13
    iput-boolean v1, p0, Lrx/observers/SerializedObserver;->terminated:Z

    .line 143
    iget-boolean v1, p0, Lrx/observers/SerializedObserver;->emitting:Z

    if-eqz v1, :cond_2f

    .line 148
    iget-object v0, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 149
    .local v0, "list":Lrx/observers/SerializedObserver$FastList;
    if-nez v0, :cond_24

    .line 150
    new-instance v0, Lrx/observers/SerializedObserver$FastList;

    .end local v0    # "list":Lrx/observers/SerializedObserver$FastList;
    invoke-direct {v0}, Lrx/observers/SerializedObserver$FastList;-><init>()V

    .line 151
    .restart local v0    # "list":Lrx/observers/SerializedObserver$FastList;
    iput-object v0, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 153
    :cond_24
    iget-object v1, p0, Lrx/observers/SerializedObserver;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/observers/SerializedObserver$FastList;->add(Ljava/lang/Object;)V

    .line 154
    monitor-exit p0

    goto :goto_7

    .line 156
    .end local v0    # "list":Lrx/observers/SerializedObserver$FastList;
    :cond_2f
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/observers/SerializedObserver;->emitting:Z

    .line 157
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_13 .. :try_end_33} :catchall_f

    .line 158
    iget-object v1, p0, Lrx/observers/SerializedObserver;->actual:Lrx/Observer;

    invoke-interface {v1, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/observers/SerializedObserver;, "Lrx/observers/SerializedObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v9, 0x1

    .line 76
    iget-boolean v7, p0, Lrx/observers/SerializedObserver;->terminated:Z

    if-eqz v7, :cond_6

    .line 125
    :goto_5
    return-void

    .line 79
    :cond_6
    monitor-enter p0

    .line 80
    :try_start_7
    iget-boolean v7, p0, Lrx/observers/SerializedObserver;->terminated:Z

    if-eqz v7, :cond_10

    .line 81
    monitor-exit p0

    goto :goto_5

    .line 93
    :catchall_d
    move-exception v7

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_d

    throw v7

    .line 83
    :cond_10
    :try_start_10
    iget-boolean v7, p0, Lrx/observers/SerializedObserver;->emitting:Z

    if-eqz v7, :cond_2a

    .line 84
    iget-object v5, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 85
    .local v5, "list":Lrx/observers/SerializedObserver$FastList;
    if-nez v5, :cond_1f

    .line 86
    new-instance v5, Lrx/observers/SerializedObserver$FastList;

    .end local v5    # "list":Lrx/observers/SerializedObserver$FastList;
    invoke-direct {v5}, Lrx/observers/SerializedObserver$FastList;-><init>()V

    .line 87
    .restart local v5    # "list":Lrx/observers/SerializedObserver$FastList;
    iput-object v5, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 89
    :cond_1f
    iget-object v7, p0, Lrx/observers/SerializedObserver;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v7, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Lrx/observers/SerializedObserver$FastList;->add(Ljava/lang/Object;)V

    .line 90
    monitor-exit p0

    goto :goto_5

    .line 92
    .end local v5    # "list":Lrx/observers/SerializedObserver$FastList;
    :cond_2a
    const/4 v7, 0x1

    iput-boolean v7, p0, Lrx/observers/SerializedObserver;->emitting:Z

    .line 93
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_d

    .line 95
    :try_start_2e
    iget-object v7, p0, Lrx/observers/SerializedObserver;->actual:Lrx/Observer;

    invoke-interface {v7, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_33} :catch_45

    .line 102
    :cond_33
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_34
    const/16 v7, 0x400

    if-ge v2, v7, :cond_33

    .line 104
    monitor-enter p0

    .line 105
    :try_start_39
    iget-object v5, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 106
    .restart local v5    # "list":Lrx/observers/SerializedObserver$FastList;
    if-nez v5, :cond_4e

    .line 107
    const/4 v7, 0x0

    iput-boolean v7, p0, Lrx/observers/SerializedObserver;->emitting:Z

    .line 108
    monitor-exit p0

    goto :goto_5

    .line 111
    .end local v5    # "list":Lrx/observers/SerializedObserver$FastList;
    :catchall_42
    move-exception v7

    monitor-exit p0
    :try_end_44
    .catchall {:try_start_39 .. :try_end_44} :catchall_42

    throw v7

    .line 96
    .end local v2    # "i":I
    :catch_45
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/Throwable;
    iput-boolean v9, p0, Lrx/observers/SerializedObserver;->terminated:Z

    .line 98
    iget-object v7, p0, Lrx/observers/SerializedObserver;->actual:Lrx/Observer;

    invoke-static {v1, v7, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto :goto_5

    .line 110
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v2    # "i":I
    .restart local v5    # "list":Lrx/observers/SerializedObserver$FastList;
    :cond_4e
    const/4 v7, 0x0

    :try_start_4f
    iput-object v7, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 111
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_42

    .line 112
    iget-object v0, v5, Lrx/observers/SerializedObserver$FastList;->array:[Ljava/lang/Object;

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_56
    if-ge v3, v4, :cond_5c

    aget-object v6, v0, v3

    .line 113
    .local v6, "o":Ljava/lang/Object;
    if-nez v6, :cond_5f

    .line 102
    .end local v6    # "o":Ljava/lang/Object;
    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 117
    .restart local v6    # "o":Ljava/lang/Object;
    :cond_5f
    :try_start_5f
    iget-object v7, p0, Lrx/observers/SerializedObserver;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v8, p0, Lrx/observers/SerializedObserver;->actual:Lrx/Observer;

    invoke-virtual {v7, v8, v6}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7d

    .line 118
    const/4 v7, 0x1

    iput-boolean v7, p0, Lrx/observers/SerializedObserver;->terminated:Z
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_6c} :catch_6d

    goto :goto_5

    .line 121
    :catch_6d
    move-exception v1

    .line 122
    .restart local v1    # "e":Ljava/lang/Throwable;
    iput-boolean v9, p0, Lrx/observers/SerializedObserver;->terminated:Z

    .line 123
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 124
    iget-object v7, p0, Lrx/observers/SerializedObserver;->actual:Lrx/Observer;

    invoke-static {v1, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v8

    invoke-interface {v7, v8}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 112
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_7d
    add-int/lit8 v3, v3, 0x1

    goto :goto_56
.end method
