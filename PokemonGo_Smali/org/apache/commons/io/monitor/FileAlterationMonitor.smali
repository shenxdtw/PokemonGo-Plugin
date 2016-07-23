.class public final Lorg/apache/commons/io/monitor/FileAlterationMonitor;
.super Ljava/lang/Object;
.source "FileAlterationMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final interval:J

.field private final observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/io/monitor/FileAlterationObserver;",
            ">;"
        }
    .end annotation
.end field

.field private volatile running:Z

.field private thread:Ljava/lang/Thread;

.field private threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 43
    const-wide/16 v0, 0x2710

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/io/monitor/FileAlterationMonitor;-><init>(J)V

    .line 44
    return-void
.end method

.method public constructor <init>(J)V
    .registers 4
    .param p1, "interval"    # J

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->observers:Ljava/util/List;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->thread:Ljava/lang/Thread;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->running:Z

    .line 53
    iput-wide p1, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->interval:J

    .line 54
    return-void
.end method

.method public varargs constructor <init>(J[Lorg/apache/commons/io/monitor/FileAlterationObserver;)V
    .registers 9
    .param p1, "interval"    # J
    .param p3, "observers"    # [Lorg/apache/commons/io/monitor/FileAlterationObserver;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/monitor/FileAlterationMonitor;-><init>(J)V

    .line 65
    if-eqz p3, :cond_12

    .line 66
    move-object v0, p3

    .local v0, "arr$":[Lorg/apache/commons/io/monitor/FileAlterationObserver;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_8
    if-ge v1, v2, :cond_12

    aget-object v3, v0, v1

    .line 67
    .local v3, "observer":Lorg/apache/commons/io/monitor/FileAlterationObserver;
    invoke-virtual {p0, v3}, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->addObserver(Lorg/apache/commons/io/monitor/FileAlterationObserver;)V

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 70
    .end local v0    # "arr$":[Lorg/apache/commons/io/monitor/FileAlterationObserver;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "observer":Lorg/apache/commons/io/monitor/FileAlterationObserver;
    :cond_12
    return-void
.end method


# virtual methods
.method public addObserver(Lorg/apache/commons/io/monitor/FileAlterationObserver;)V
    .registers 3
    .param p1, "observer"    # Lorg/apache/commons/io/monitor/FileAlterationObserver;

    .prologue
    .line 96
    if-eqz p1, :cond_7

    .line 97
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_7
    return-void
.end method

.method public getInterval()J
    .registers 3

    .prologue
    .line 78
    iget-wide v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->interval:J

    return-wide v0
.end method

.method public getObservers()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/commons/io/monitor/FileAlterationObserver;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->observers:Ljava/util/List;

    return-object v0
.end method

.method public removeObserver(Lorg/apache/commons/io/monitor/FileAlterationObserver;)V
    .registers 3
    .param p1, "observer"    # Lorg/apache/commons/io/monitor/FileAlterationObserver;

    .prologue
    .line 107
    if-eqz p1, :cond_a

    .line 108
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 111
    :cond_a
    return-void
.end method

.method public run()V
    .registers 5

    .prologue
    .line 180
    :goto_0
    iget-boolean v2, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->running:Z

    if-eqz v2, :cond_1e

    .line 181
    iget-object v2, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->observers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/io/monitor/FileAlterationObserver;

    .line 182
    .local v1, "observer":Lorg/apache/commons/io/monitor/FileAlterationObserver;
    invoke-virtual {v1}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->checkAndNotify()V

    goto :goto_a

    .line 184
    .end local v1    # "observer":Lorg/apache/commons/io/monitor/FileAlterationObserver;
    :cond_1a
    iget-boolean v2, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->running:Z

    if-nez v2, :cond_1f

    .line 192
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1e
    return-void

    .line 188
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1f
    :try_start_1f
    iget-wide v2, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->interval:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_24} :catch_25

    goto :goto_0

    .line 189
    :catch_25
    move-exception v2

    goto :goto_0
.end method

.method public declared-synchronized setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V
    .registers 3
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 87
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->threadFactory:Ljava/util/concurrent/ThreadFactory;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 88
    monitor-exit p0

    return-void

    .line 87
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 129
    monitor-enter p0

    :try_start_1
    iget-boolean v2, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->running:Z

    if-eqz v2, :cond_10

    .line 130
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Monitor is already running"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 129
    :catchall_d
    move-exception v2

    monitor-exit p0

    throw v2

    .line 132
    :cond_10
    :try_start_10
    iget-object v2, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->observers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/io/monitor/FileAlterationObserver;

    .line 133
    .local v1, "observer":Lorg/apache/commons/io/monitor/FileAlterationObserver;
    invoke-virtual {v1}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->initialize()V

    goto :goto_16

    .line 135
    .end local v1    # "observer":Lorg/apache/commons/io/monitor/FileAlterationObserver;
    :cond_26
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->running:Z

    .line 136
    iget-object v2, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    if-eqz v2, :cond_3c

    .line 137
    iget-object v2, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v2, p0}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->thread:Ljava/lang/Thread;

    .line 141
    :goto_35
    iget-object v2, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_3a
    .catchall {:try_start_10 .. :try_end_3a} :catchall_d

    .line 142
    monitor-exit p0

    return-void

    .line 139
    :cond_3c
    :try_start_3c
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->thread:Ljava/lang/Thread;
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_d

    goto :goto_35
.end method

.method public declared-synchronized stop()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 150
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->interval:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->stop(J)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 151
    monitor-exit p0

    return-void

    .line 150
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop(J)V
    .registers 8
    .param p1, "stopInterval"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 162
    monitor-enter p0

    :try_start_1
    iget-boolean v3, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->running:Z

    if-nez v3, :cond_10

    .line 163
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Monitor is not running"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 162
    :catchall_d
    move-exception v3

    monitor-exit p0

    throw v3

    .line 165
    :cond_10
    const/4 v3, 0x0

    :try_start_11
    iput-boolean v3, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->running:Z
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_d

    .line 167
    :try_start_13
    iget-object v3, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->thread:Ljava/lang/Thread;

    invoke-virtual {v3, p1, p2}, Ljava/lang/Thread;->join(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_18} :catch_2e
    .catchall {:try_start_13 .. :try_end_18} :catchall_d

    .line 171
    :goto_18
    :try_start_18
    iget-object v3, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->observers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/io/monitor/FileAlterationObserver;

    .line 172
    .local v2, "observer":Lorg/apache/commons/io/monitor/FileAlterationObserver;
    invoke-virtual {v2}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->destroy()V

    goto :goto_1e

    .line 168
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "observer":Lorg/apache/commons/io/monitor/FileAlterationObserver;
    :catch_2e
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_36
    .catchall {:try_start_18 .. :try_end_36} :catchall_d

    goto :goto_18

    .line 174
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_37
    monitor-exit p0

    return-void
.end method
