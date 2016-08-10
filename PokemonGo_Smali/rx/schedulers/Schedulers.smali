.class public final Lrx/schedulers/Schedulers;
.super Ljava/lang/Object;
.source "Schedulers.java"


# static fields
.field private static final INSTANCE:Lrx/schedulers/Schedulers;


# instance fields
.field private final computationScheduler:Lrx/Scheduler;

.field private final ioScheduler:Lrx/Scheduler;

.field private final newThreadScheduler:Lrx/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    new-instance v0, Lrx/schedulers/Schedulers;

    invoke-direct {v0}, Lrx/schedulers/Schedulers;-><init>()V

    sput-object v0, Lrx/schedulers/Schedulers;->INSTANCE:Lrx/schedulers/Schedulers;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v3

    invoke-virtual {v3}, Lrx/plugins/RxJavaPlugins;->getSchedulersHook()Lrx/plugins/RxJavaSchedulersHook;

    move-result-object v3

    invoke-virtual {v3}, Lrx/plugins/RxJavaSchedulersHook;->getComputationScheduler()Lrx/Scheduler;

    move-result-object v0

    .line 38
    .local v0, "c":Lrx/Scheduler;
    if-eqz v0, :cond_34

    .line 39
    iput-object v0, p0, Lrx/schedulers/Schedulers;->computationScheduler:Lrx/Scheduler;

    .line 44
    :goto_13
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v3

    invoke-virtual {v3}, Lrx/plugins/RxJavaPlugins;->getSchedulersHook()Lrx/plugins/RxJavaSchedulersHook;

    move-result-object v3

    invoke-virtual {v3}, Lrx/plugins/RxJavaSchedulersHook;->getIOScheduler()Lrx/Scheduler;

    move-result-object v1

    .line 45
    .local v1, "io":Lrx/Scheduler;
    if-eqz v1, :cond_3c

    .line 46
    iput-object v1, p0, Lrx/schedulers/Schedulers;->ioScheduler:Lrx/Scheduler;

    .line 51
    :goto_23
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v3

    invoke-virtual {v3}, Lrx/plugins/RxJavaPlugins;->getSchedulersHook()Lrx/plugins/RxJavaSchedulersHook;

    move-result-object v3

    invoke-virtual {v3}, Lrx/plugins/RxJavaSchedulersHook;->getNewThreadScheduler()Lrx/Scheduler;

    move-result-object v2

    .line 52
    .local v2, "nt":Lrx/Scheduler;
    if-eqz v2, :cond_44

    .line 53
    iput-object v2, p0, Lrx/schedulers/Schedulers;->newThreadScheduler:Lrx/Scheduler;

    .line 57
    :goto_33
    return-void

    .line 41
    .end local v1    # "io":Lrx/Scheduler;
    .end local v2    # "nt":Lrx/Scheduler;
    :cond_34
    new-instance v3, Lrx/internal/schedulers/EventLoopsScheduler;

    invoke-direct {v3}, Lrx/internal/schedulers/EventLoopsScheduler;-><init>()V

    iput-object v3, p0, Lrx/schedulers/Schedulers;->computationScheduler:Lrx/Scheduler;

    goto :goto_13

    .line 48
    .restart local v1    # "io":Lrx/Scheduler;
    :cond_3c
    new-instance v3, Lrx/schedulers/CachedThreadScheduler;

    invoke-direct {v3}, Lrx/schedulers/CachedThreadScheduler;-><init>()V

    iput-object v3, p0, Lrx/schedulers/Schedulers;->ioScheduler:Lrx/Scheduler;

    goto :goto_23

    .line 55
    .restart local v2    # "nt":Lrx/Scheduler;
    :cond_44
    invoke-static {}, Lrx/schedulers/NewThreadScheduler;->instance()Lrx/schedulers/NewThreadScheduler;

    move-result-object v3

    iput-object v3, p0, Lrx/schedulers/Schedulers;->newThreadScheduler:Lrx/Scheduler;

    goto :goto_33
.end method

.method public static computation()Lrx/Scheduler;
    .registers 1

    .prologue
    .line 101
    sget-object v0, Lrx/schedulers/Schedulers;->INSTANCE:Lrx/schedulers/Schedulers;

    iget-object v0, v0, Lrx/schedulers/Schedulers;->computationScheduler:Lrx/Scheduler;

    return-object v0
.end method

.method public static from(Ljava/util/concurrent/Executor;)Lrx/Scheduler;
    .registers 2
    .param p0, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 139
    new-instance v0, Lrx/schedulers/ExecutorScheduler;

    invoke-direct {v0, p0}, Lrx/schedulers/ExecutorScheduler;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static immediate()Lrx/Scheduler;
    .registers 1

    .prologue
    .line 65
    invoke-static {}, Lrx/schedulers/ImmediateScheduler;->instance()Lrx/schedulers/ImmediateScheduler;

    move-result-object v0

    return-object v0
.end method

.method public static io()Lrx/Scheduler;
    .registers 1

    .prologue
    .line 118
    sget-object v0, Lrx/schedulers/Schedulers;->INSTANCE:Lrx/schedulers/Schedulers;

    iget-object v0, v0, Lrx/schedulers/Schedulers;->ioScheduler:Lrx/Scheduler;

    return-object v0
.end method

.method public static newThread()Lrx/Scheduler;
    .registers 1

    .prologue
    .line 86
    sget-object v0, Lrx/schedulers/Schedulers;->INSTANCE:Lrx/schedulers/Schedulers;

    iget-object v0, v0, Lrx/schedulers/Schedulers;->newThreadScheduler:Lrx/Scheduler;

    return-object v0
.end method

.method public static shutdown()V
    .registers 2

    .prologue
    .line 170
    sget-object v0, Lrx/schedulers/Schedulers;->INSTANCE:Lrx/schedulers/Schedulers;

    .line 171
    .local v0, "s":Lrx/schedulers/Schedulers;
    monitor-enter v0

    .line 172
    :try_start_3
    iget-object v1, v0, Lrx/schedulers/Schedulers;->computationScheduler:Lrx/Scheduler;

    instance-of v1, v1, Lrx/internal/schedulers/SchedulerLifecycle;

    if-eqz v1, :cond_10

    .line 173
    iget-object v1, v0, Lrx/schedulers/Schedulers;->computationScheduler:Lrx/Scheduler;

    check-cast v1, Lrx/internal/schedulers/SchedulerLifecycle;

    invoke-interface {v1}, Lrx/internal/schedulers/SchedulerLifecycle;->shutdown()V

    .line 175
    :cond_10
    iget-object v1, v0, Lrx/schedulers/Schedulers;->ioScheduler:Lrx/Scheduler;

    instance-of v1, v1, Lrx/internal/schedulers/SchedulerLifecycle;

    if-eqz v1, :cond_1d

    .line 176
    iget-object v1, v0, Lrx/schedulers/Schedulers;->ioScheduler:Lrx/Scheduler;

    check-cast v1, Lrx/internal/schedulers/SchedulerLifecycle;

    invoke-interface {v1}, Lrx/internal/schedulers/SchedulerLifecycle;->shutdown()V

    .line 178
    :cond_1d
    iget-object v1, v0, Lrx/schedulers/Schedulers;->newThreadScheduler:Lrx/Scheduler;

    instance-of v1, v1, Lrx/internal/schedulers/SchedulerLifecycle;

    if-eqz v1, :cond_2a

    .line 179
    iget-object v1, v0, Lrx/schedulers/Schedulers;->newThreadScheduler:Lrx/Scheduler;

    check-cast v1, Lrx/internal/schedulers/SchedulerLifecycle;

    invoke-interface {v1}, Lrx/internal/schedulers/SchedulerLifecycle;->shutdown()V

    .line 182
    :cond_2a
    sget-object v1, Lrx/internal/schedulers/GenericScheduledExecutorService;->INSTANCE:Lrx/internal/schedulers/GenericScheduledExecutorService;

    invoke-virtual {v1}, Lrx/internal/schedulers/GenericScheduledExecutorService;->shutdown()V

    .line 184
    sget-object v1, Lrx/internal/util/RxRingBuffer;->SPSC_POOL:Lrx/internal/util/ObjectPool;

    invoke-virtual {v1}, Lrx/internal/util/ObjectPool;->shutdown()V

    .line 186
    sget-object v1, Lrx/internal/util/RxRingBuffer;->SPMC_POOL:Lrx/internal/util/ObjectPool;

    invoke-virtual {v1}, Lrx/internal/util/ObjectPool;->shutdown()V

    .line 187
    monitor-exit v0

    .line 188
    return-void

    .line 187
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method static start()V
    .registers 2

    .prologue
    .line 147
    sget-object v0, Lrx/schedulers/Schedulers;->INSTANCE:Lrx/schedulers/Schedulers;

    .line 148
    .local v0, "s":Lrx/schedulers/Schedulers;
    monitor-enter v0

    .line 149
    :try_start_3
    iget-object v1, v0, Lrx/schedulers/Schedulers;->computationScheduler:Lrx/Scheduler;

    instance-of v1, v1, Lrx/internal/schedulers/SchedulerLifecycle;

    if-eqz v1, :cond_10

    .line 150
    iget-object v1, v0, Lrx/schedulers/Schedulers;->computationScheduler:Lrx/Scheduler;

    check-cast v1, Lrx/internal/schedulers/SchedulerLifecycle;

    invoke-interface {v1}, Lrx/internal/schedulers/SchedulerLifecycle;->start()V

    .line 152
    :cond_10
    iget-object v1, v0, Lrx/schedulers/Schedulers;->ioScheduler:Lrx/Scheduler;

    instance-of v1, v1, Lrx/internal/schedulers/SchedulerLifecycle;

    if-eqz v1, :cond_1d

    .line 153
    iget-object v1, v0, Lrx/schedulers/Schedulers;->ioScheduler:Lrx/Scheduler;

    check-cast v1, Lrx/internal/schedulers/SchedulerLifecycle;

    invoke-interface {v1}, Lrx/internal/schedulers/SchedulerLifecycle;->start()V

    .line 155
    :cond_1d
    iget-object v1, v0, Lrx/schedulers/Schedulers;->newThreadScheduler:Lrx/Scheduler;

    instance-of v1, v1, Lrx/internal/schedulers/SchedulerLifecycle;

    if-eqz v1, :cond_2a

    .line 156
    iget-object v1, v0, Lrx/schedulers/Schedulers;->newThreadScheduler:Lrx/Scheduler;

    check-cast v1, Lrx/internal/schedulers/SchedulerLifecycle;

    invoke-interface {v1}, Lrx/internal/schedulers/SchedulerLifecycle;->start()V

    .line 158
    :cond_2a
    sget-object v1, Lrx/internal/schedulers/GenericScheduledExecutorService;->INSTANCE:Lrx/internal/schedulers/GenericScheduledExecutorService;

    invoke-virtual {v1}, Lrx/internal/schedulers/GenericScheduledExecutorService;->start()V

    .line 160
    sget-object v1, Lrx/internal/util/RxRingBuffer;->SPSC_POOL:Lrx/internal/util/ObjectPool;

    invoke-virtual {v1}, Lrx/internal/util/ObjectPool;->start()V

    .line 162
    sget-object v1, Lrx/internal/util/RxRingBuffer;->SPMC_POOL:Lrx/internal/util/ObjectPool;

    invoke-virtual {v1}, Lrx/internal/util/ObjectPool;->start()V

    .line 163
    monitor-exit v0

    .line 164
    return-void

    .line 163
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public static test()Lrx/schedulers/TestScheduler;
    .registers 1

    .prologue
    .line 128
    new-instance v0, Lrx/schedulers/TestScheduler;

    invoke-direct {v0}, Lrx/schedulers/TestScheduler;-><init>()V

    return-object v0
.end method

.method public static trampoline()Lrx/Scheduler;
    .registers 1

    .prologue
    .line 75
    invoke-static {}, Lrx/schedulers/TrampolineScheduler;->instance()Lrx/schedulers/TrampolineScheduler;

    move-result-object v0

    return-object v0
.end method
