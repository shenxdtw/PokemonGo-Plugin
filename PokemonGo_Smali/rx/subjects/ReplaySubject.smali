.class public final Lrx/subjects/ReplaySubject;
.super Lrx/subjects/Subject;
.source "ReplaySubject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subjects/ReplaySubject$EmptyEvictionPolicy;,
        Lrx/subjects/ReplaySubject$NodeList;,
        Lrx/subjects/ReplaySubject$TimedOnAdd;,
        Lrx/subjects/ReplaySubject$DefaultOnAdd;,
        Lrx/subjects/ReplaySubject$RemoveTimestamped;,
        Lrx/subjects/ReplaySubject$AddTimestamped;,
        Lrx/subjects/ReplaySubject$PairEvictionPolicy;,
        Lrx/subjects/ReplaySubject$TimeEvictionPolicy;,
        Lrx/subjects/ReplaySubject$SizeEvictionPolicy;,
        Lrx/subjects/ReplaySubject$EvictionPolicy;,
        Lrx/subjects/ReplaySubject$ReplayState;,
        Lrx/subjects/ReplaySubject$BoundedState;,
        Lrx/subjects/ReplaySubject$UnboundedReplayState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/subjects/Subject",
        "<TT;TT;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_ARRAY:[Ljava/lang/Object;


# instance fields
.field final ssm:Lrx/subjects/SubjectSubscriptionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/SubjectSubscriptionManager",
            "<TT;>;"
        }
    .end annotation
.end field

.field final state:Lrx/subjects/ReplaySubject$ReplayState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$ReplayState",
            "<TT;*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1161
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lrx/subjects/ReplaySubject;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lrx/Observable$OnSubscribe;Lrx/subjects/SubjectSubscriptionManager;Lrx/subjects/ReplaySubject$ReplayState;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;",
            "Lrx/subjects/SubjectSubscriptionManager",
            "<TT;>;",
            "Lrx/subjects/ReplaySubject$ReplayState",
            "<TT;*>;)V"
        }
    .end annotation

    .prologue
    .line 363
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    .local p1, "onSubscribe":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    .local p2, "ssm":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    .local p3, "state":Lrx/subjects/ReplaySubject$ReplayState;, "Lrx/subjects/ReplaySubject$ReplayState<TT;*>;"
    invoke-direct {p0, p1}, Lrx/subjects/Subject;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 364
    iput-object p2, p0, Lrx/subjects/ReplaySubject;->ssm:Lrx/subjects/SubjectSubscriptionManager;

    .line 365
    iput-object p3, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    .line 366
    return-void
.end method

.method private caughtUp(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    .local p1, "o":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<-TT;>;"
    const/4 v0, 0x1

    .line 426
    iget-boolean v1, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->caughtUp:Z

    if-nez v1, :cond_14

    .line 427
    iget-object v1, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-interface {v1, p1}, Lrx/subjects/ReplaySubject$ReplayState;->replayObserver(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 428
    iput-boolean v0, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->caughtUp:Z

    .line 429
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->index(Ljava/lang/Object;)V

    .line 431
    :cond_13
    const/4 v0, 0x0

    .line 434
    :cond_14
    return v0
.end method

.method public static create()Lrx/subjects/ReplaySubject;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/subjects/ReplaySubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 75
    const/16 v0, 0x10

    invoke-static {v0}, Lrx/subjects/ReplaySubject;->create(I)Lrx/subjects/ReplaySubject;

    move-result-object v0

    return-object v0
.end method

.method public static create(I)Lrx/subjects/ReplaySubject;
    .registers 4
    .param p0, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lrx/subjects/ReplaySubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v1, Lrx/subjects/ReplaySubject$UnboundedReplayState;

    invoke-direct {v1, p0}, Lrx/subjects/ReplaySubject$UnboundedReplayState;-><init>(I)V

    .line 95
    .local v1, "state":Lrx/subjects/ReplaySubject$UnboundedReplayState;, "Lrx/subjects/ReplaySubject$UnboundedReplayState<TT;>;"
    new-instance v0, Lrx/subjects/SubjectSubscriptionManager;

    invoke-direct {v0}, Lrx/subjects/SubjectSubscriptionManager;-><init>()V

    .line 96
    .local v0, "ssm":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    new-instance v2, Lrx/subjects/ReplaySubject$1;

    invoke-direct {v2, v1}, Lrx/subjects/ReplaySubject$1;-><init>(Lrx/subjects/ReplaySubject$UnboundedReplayState;)V

    iput-object v2, v0, Lrx/subjects/SubjectSubscriptionManager;->onStart:Lrx/functions/Action1;

    .line 106
    new-instance v2, Lrx/subjects/ReplaySubject$2;

    invoke-direct {v2, v1}, Lrx/subjects/ReplaySubject$2;-><init>(Lrx/subjects/ReplaySubject$UnboundedReplayState;)V

    iput-object v2, v0, Lrx/subjects/SubjectSubscriptionManager;->onAdded:Lrx/functions/Action1;

    .line 144
    new-instance v2, Lrx/subjects/ReplaySubject$3;

    invoke-direct {v2, v1}, Lrx/subjects/ReplaySubject$3;-><init>(Lrx/subjects/ReplaySubject$UnboundedReplayState;)V

    iput-object v2, v0, Lrx/subjects/SubjectSubscriptionManager;->onTerminated:Lrx/functions/Action1;

    .line 156
    new-instance v2, Lrx/subjects/ReplaySubject;

    invoke-direct {v2, v0, v0, v1}, Lrx/subjects/ReplaySubject;-><init>(Lrx/Observable$OnSubscribe;Lrx/subjects/SubjectSubscriptionManager;Lrx/subjects/ReplaySubject$ReplayState;)V

    return-object v2
.end method

.method static createUnbounded()Lrx/subjects/ReplaySubject;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/subjects/ReplaySubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 172
    new-instance v0, Lrx/subjects/ReplaySubject$BoundedState;

    new-instance v1, Lrx/subjects/ReplaySubject$EmptyEvictionPolicy;

    invoke-direct {v1}, Lrx/subjects/ReplaySubject$EmptyEvictionPolicy;-><init>()V

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v2

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lrx/subjects/ReplaySubject$BoundedState;-><init>(Lrx/subjects/ReplaySubject$EvictionPolicy;Lrx/functions/Func1;Lrx/functions/Func1;)V

    .line 177
    .local v0, "state":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    new-instance v1, Lrx/subjects/ReplaySubject$DefaultOnAdd;

    invoke-direct {v1, v0}, Lrx/subjects/ReplaySubject$DefaultOnAdd;-><init>(Lrx/subjects/ReplaySubject$BoundedState;)V

    invoke-static {v0, v1}, Lrx/subjects/ReplaySubject;->createWithState(Lrx/subjects/ReplaySubject$BoundedState;Lrx/functions/Action1;)Lrx/subjects/ReplaySubject;

    move-result-object v1

    return-object v1
.end method

.method public static createWithSize(I)Lrx/subjects/ReplaySubject;
    .registers 5
    .param p0, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lrx/subjects/ReplaySubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 200
    new-instance v0, Lrx/subjects/ReplaySubject$BoundedState;

    new-instance v1, Lrx/subjects/ReplaySubject$SizeEvictionPolicy;

    invoke-direct {v1, p0}, Lrx/subjects/ReplaySubject$SizeEvictionPolicy;-><init>(I)V

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v2

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lrx/subjects/ReplaySubject$BoundedState;-><init>(Lrx/subjects/ReplaySubject$EvictionPolicy;Lrx/functions/Func1;Lrx/functions/Func1;)V

    .line 205
    .local v0, "state":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    new-instance v1, Lrx/subjects/ReplaySubject$DefaultOnAdd;

    invoke-direct {v1, v0}, Lrx/subjects/ReplaySubject$DefaultOnAdd;-><init>(Lrx/subjects/ReplaySubject$BoundedState;)V

    invoke-static {v0, v1}, Lrx/subjects/ReplaySubject;->createWithState(Lrx/subjects/ReplaySubject$BoundedState;Lrx/functions/Action1;)Lrx/subjects/ReplaySubject;

    move-result-object v1

    return-object v1
.end method

.method static createWithState(Lrx/subjects/ReplaySubject$BoundedState;Lrx/functions/Action1;)Lrx/subjects/ReplaySubject;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/subjects/ReplaySubject$BoundedState",
            "<TT;>;",
            "Lrx/functions/Action1",
            "<",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<TT;>;>;)",
            "Lrx/subjects/ReplaySubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 304
    .local p0, "state":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    .local p1, "onStart":Lrx/functions/Action1;, "Lrx/functions/Action1<Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;>;"
    new-instance v0, Lrx/subjects/SubjectSubscriptionManager;

    invoke-direct {v0}, Lrx/subjects/SubjectSubscriptionManager;-><init>()V

    .line 305
    .local v0, "ssm":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    iput-object p1, v0, Lrx/subjects/SubjectSubscriptionManager;->onStart:Lrx/functions/Action1;

    .line 306
    new-instance v1, Lrx/subjects/ReplaySubject$4;

    invoke-direct {v1, p0}, Lrx/subjects/ReplaySubject$4;-><init>(Lrx/subjects/ReplaySubject$BoundedState;)V

    iput-object v1, v0, Lrx/subjects/SubjectSubscriptionManager;->onAdded:Lrx/functions/Action1;

    .line 342
    new-instance v1, Lrx/subjects/ReplaySubject$5;

    invoke-direct {v1, p0}, Lrx/subjects/ReplaySubject$5;-><init>(Lrx/subjects/ReplaySubject$BoundedState;)V

    iput-object v1, v0, Lrx/subjects/SubjectSubscriptionManager;->onTerminated:Lrx/functions/Action1;

    .line 355
    new-instance v1, Lrx/subjects/ReplaySubject;

    invoke-direct {v1, v0, v0, p0}, Lrx/subjects/ReplaySubject;-><init>(Lrx/Observable$OnSubscribe;Lrx/subjects/SubjectSubscriptionManager;Lrx/subjects/ReplaySubject$ReplayState;)V

    return-object v1
.end method

.method public static createWithTime(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/subjects/ReplaySubject;
    .registers 8
    .param p0, "time"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/subjects/ReplaySubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 240
    new-instance v0, Lrx/subjects/ReplaySubject$BoundedState;

    new-instance v1, Lrx/subjects/ReplaySubject$TimeEvictionPolicy;

    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p3}, Lrx/subjects/ReplaySubject$TimeEvictionPolicy;-><init>(JLrx/Scheduler;)V

    new-instance v2, Lrx/subjects/ReplaySubject$AddTimestamped;

    invoke-direct {v2, p3}, Lrx/subjects/ReplaySubject$AddTimestamped;-><init>(Lrx/Scheduler;)V

    new-instance v3, Lrx/subjects/ReplaySubject$RemoveTimestamped;

    invoke-direct {v3}, Lrx/subjects/ReplaySubject$RemoveTimestamped;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lrx/subjects/ReplaySubject$BoundedState;-><init>(Lrx/subjects/ReplaySubject$EvictionPolicy;Lrx/functions/Func1;Lrx/functions/Func1;)V

    .line 245
    .local v0, "state":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    new-instance v1, Lrx/subjects/ReplaySubject$TimedOnAdd;

    invoke-direct {v1, v0, p3}, Lrx/subjects/ReplaySubject$TimedOnAdd;-><init>(Lrx/subjects/ReplaySubject$BoundedState;Lrx/Scheduler;)V

    invoke-static {v0, v1}, Lrx/subjects/ReplaySubject;->createWithState(Lrx/subjects/ReplaySubject$BoundedState;Lrx/functions/Action1;)Lrx/subjects/ReplaySubject;

    move-result-object v1

    return-object v1
.end method

.method public static createWithTimeAndSize(JLjava/util/concurrent/TimeUnit;ILrx/Scheduler;)Lrx/subjects/ReplaySubject;
    .registers 11
    .param p0, "time"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "size"    # I
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/util/concurrent/TimeUnit;",
            "I",
            "Lrx/Scheduler;",
            ")",
            "Lrx/subjects/ReplaySubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 282
    new-instance v0, Lrx/subjects/ReplaySubject$BoundedState;

    new-instance v1, Lrx/subjects/ReplaySubject$PairEvictionPolicy;

    new-instance v2, Lrx/subjects/ReplaySubject$SizeEvictionPolicy;

    invoke-direct {v2, p3}, Lrx/subjects/ReplaySubject$SizeEvictionPolicy;-><init>(I)V

    new-instance v3, Lrx/subjects/ReplaySubject$TimeEvictionPolicy;

    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-direct {v3, v4, v5, p4}, Lrx/subjects/ReplaySubject$TimeEvictionPolicy;-><init>(JLrx/Scheduler;)V

    invoke-direct {v1, v2, v3}, Lrx/subjects/ReplaySubject$PairEvictionPolicy;-><init>(Lrx/subjects/ReplaySubject$EvictionPolicy;Lrx/subjects/ReplaySubject$EvictionPolicy;)V

    new-instance v2, Lrx/subjects/ReplaySubject$AddTimestamped;

    invoke-direct {v2, p4}, Lrx/subjects/ReplaySubject$AddTimestamped;-><init>(Lrx/Scheduler;)V

    new-instance v3, Lrx/subjects/ReplaySubject$RemoveTimestamped;

    invoke-direct {v3}, Lrx/subjects/ReplaySubject$RemoveTimestamped;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lrx/subjects/ReplaySubject$BoundedState;-><init>(Lrx/subjects/ReplaySubject$EvictionPolicy;Lrx/functions/Func1;Lrx/functions/Func1;)V

    .line 290
    .local v0, "state":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    new-instance v1, Lrx/subjects/ReplaySubject$TimedOnAdd;

    invoke-direct {v1, v0, p4}, Lrx/subjects/ReplaySubject$TimedOnAdd;-><init>(Lrx/subjects/ReplaySubject$BoundedState;Lrx/Scheduler;)V

    invoke-static {v0, v1}, Lrx/subjects/ReplaySubject;->createWithState(Lrx/subjects/ReplaySubject$BoundedState;Lrx/functions/Action1;)Lrx/subjects/ReplaySubject;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getThrowable()Ljava/lang/Throwable;
    .registers 4
    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 1123
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v2, p0, Lrx/subjects/ReplaySubject;->ssm:Lrx/subjects/SubjectSubscriptionManager;

    iget-object v0, v2, Lrx/subjects/SubjectSubscriptionManager;->nl:Lrx/internal/operators/NotificationLite;

    .line 1124
    .local v0, "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    iget-object v2, p0, Lrx/subjects/ReplaySubject;->ssm:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v2}, Lrx/subjects/SubjectSubscriptionManager;->getLatest()Ljava/lang/Object;

    move-result-object v1

    .line 1125
    .local v1, "o":Ljava/lang/Object;
    invoke-virtual {v0, v1}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1126
    invoke-virtual {v0, v1}, Lrx/internal/operators/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    .line 1128
    :goto_14
    return-object v2

    :cond_15
    const/4 v2, 0x0

    goto :goto_14
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 1182
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-interface {v0}, Lrx/subjects/ReplaySubject$ReplayState;->latest()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValues()[Ljava/lang/Object;
    .registers 3
    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 1173
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    sget-object v1, Lrx/subjects/ReplaySubject;->EMPTY_ARRAY:[Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lrx/subjects/ReplaySubject;->getValues([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 1174
    .local v0, "r":[Ljava/lang/Object;, "[TT;"
    sget-object v1, Lrx/subjects/ReplaySubject;->EMPTY_ARRAY:[Ljava/lang/Object;

    if-ne v0, v1, :cond_f

    .line 1175
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/Object;

    .line 1177
    .end local v0    # "r":[Ljava/lang/Object;, "[TT;"
    :cond_f
    return-object v0
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 1157
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-interface {v0, p1}, Lrx/subjects/ReplaySubject$ReplayState;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasAnyValue()Z
    .registers 2
    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 1143
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-interface {v0}, Lrx/subjects/ReplaySubject$ReplayState;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasCompleted()Z
    .registers 4
    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 1112
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v2, p0, Lrx/subjects/ReplaySubject;->ssm:Lrx/subjects/SubjectSubscriptionManager;

    iget-object v0, v2, Lrx/subjects/SubjectSubscriptionManager;->nl:Lrx/internal/operators/NotificationLite;

    .line 1113
    .local v0, "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    iget-object v2, p0, Lrx/subjects/ReplaySubject;->ssm:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v2}, Lrx/subjects/SubjectSubscriptionManager;->getLatest()Ljava/lang/Object;

    move-result-object v1

    .line 1114
    .local v1, "o":Ljava/lang/Object;
    if-eqz v1, :cond_14

    invoke-virtual {v0, v1}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v2, 0x1

    :goto_13
    return v2

    :cond_14
    const/4 v2, 0x0

    goto :goto_13
.end method

.method public hasObservers()Z
    .registers 2

    .prologue
    .line 422
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->ssm:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v0}, Lrx/subjects/SubjectSubscriptionManager;->observers()[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hasThrowable()Z
    .registers 4
    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 1102
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v2, p0, Lrx/subjects/ReplaySubject;->ssm:Lrx/subjects/SubjectSubscriptionManager;

    iget-object v0, v2, Lrx/subjects/SubjectSubscriptionManager;->nl:Lrx/internal/operators/NotificationLite;

    .line 1103
    .local v0, "nl":Lrx/internal/operators/NotificationLite;, "Lrx/internal/operators/NotificationLite<TT;>;"
    iget-object v2, p0, Lrx/subjects/ReplaySubject;->ssm:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v2}, Lrx/subjects/SubjectSubscriptionManager;->getLatest()Ljava/lang/Object;

    move-result-object v1

    .line 1104
    .local v1, "o":Ljava/lang/Object;
    invoke-virtual {v0, v1}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public hasValue()Z
    .registers 2
    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 1147
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject;->hasAnyValue()Z

    move-result v0

    return v0
.end method

.method public onCompleted()V
    .registers 7

    .prologue
    .line 404
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v4, p0, Lrx/subjects/ReplaySubject;->ssm:Lrx/subjects/SubjectSubscriptionManager;

    iget-boolean v4, v4, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    if-eqz v4, :cond_2b

    .line 405
    iget-object v4, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-interface {v4}, Lrx/subjects/ReplaySubject$ReplayState;->complete()V

    .line 406
    iget-object v4, p0, Lrx/subjects/ReplaySubject;->ssm:Lrx/subjects/SubjectSubscriptionManager;

    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v5

    invoke-virtual {v5}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/subjects/SubjectSubscriptionManager;->terminate(Ljava/lang/Object;)[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    move-result-object v0

    .local v0, "arr$":[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1b
    if-ge v1, v2, :cond_2b

    aget-object v3, v0, v1

    .line 407
    .local v3, "o":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<-TT;>;"
    invoke-direct {p0, v3}, Lrx/subjects/ReplaySubject;->caughtUp(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 408
    invoke-virtual {v3}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->onCompleted()V

    .line 406
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 412
    .end local v0    # "arr$":[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "o":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<-TT;>;"
    :cond_2b
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 10
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 382
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v6, p0, Lrx/subjects/ReplaySubject;->ssm:Lrx/subjects/SubjectSubscriptionManager;

    iget-boolean v6, v6, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    if-eqz v6, :cond_3b

    .line 383
    iget-object v6, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-interface {v6, p1}, Lrx/subjects/ReplaySubject$ReplayState;->error(Ljava/lang/Throwable;)V

    .line 384
    const/4 v2, 0x0

    .line 385
    .local v2, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    iget-object v6, p0, Lrx/subjects/ReplaySubject;->ssm:Lrx/subjects/SubjectSubscriptionManager;

    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v7

    invoke-virtual {v7, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lrx/subjects/SubjectSubscriptionManager;->terminate(Ljava/lang/Object;)[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    move-result-object v0

    .local v0, "arr$":[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1c
    if-ge v3, v4, :cond_38

    aget-object v5, v0, v3

    .line 387
    .local v5, "o":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<-TT;>;"
    :try_start_20
    invoke-direct {p0, v5}, Lrx/subjects/ReplaySubject;->caughtUp(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 388
    invoke-virtual {v5, p1}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->onError(Ljava/lang/Throwable;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_29} :catch_2c

    .line 385
    :cond_29
    :goto_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 390
    :catch_2c
    move-exception v1

    .line 391
    .local v1, "e2":Ljava/lang/Throwable;
    if-nez v2, :cond_34

    .line 392
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .restart local v2    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_34
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 398
    .end local v1    # "e2":Ljava/lang/Throwable;
    .end local v5    # "o":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<-TT;>;"
    :cond_38
    invoke-static {v2}, Lrx/exceptions/Exceptions;->throwIfAny(Ljava/util/List;)V

    .line 400
    .end local v0    # "arr$":[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    .end local v2    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_3b
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 370
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lrx/subjects/ReplaySubject;->ssm:Lrx/subjects/SubjectSubscriptionManager;

    iget-boolean v4, v4, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    if-eqz v4, :cond_23

    .line 371
    iget-object v4, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-interface {v4, p1}, Lrx/subjects/ReplaySubject$ReplayState;->next(Ljava/lang/Object;)V

    .line 372
    iget-object v4, p0, Lrx/subjects/ReplaySubject;->ssm:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v4}, Lrx/subjects/SubjectSubscriptionManager;->observers()[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    move-result-object v0

    .local v0, "arr$":[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_13
    if-ge v1, v2, :cond_23

    aget-object v3, v0, v1

    .line 373
    .local v3, "o":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<-TT;>;"
    invoke-direct {p0, v3}, Lrx/subjects/ReplaySubject;->caughtUp(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 374
    invoke-virtual {v3, p1}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->onNext(Ljava/lang/Object;)V

    .line 372
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 378
    .end local v0    # "arr$":[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "o":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<-TT;>;"
    :cond_23
    return-void
.end method

.method public size()I
    .registers 2
    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 1136
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->state:Lrx/subjects/ReplaySubject$ReplayState;

    invoke-interface {v0}, Lrx/subjects/ReplaySubject$ReplayState;->size()I

    move-result v0

    return v0
.end method

.method subscriberCount()I
    .registers 2

    .prologue
    .line 417
    .local p0, "this":Lrx/subjects/ReplaySubject;, "Lrx/subjects/ReplaySubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject;->ssm:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v0}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subjects/SubjectSubscriptionManager$State;

    iget-object v0, v0, Lrx/subjects/SubjectSubscriptionManager$State;->observers:[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    array-length v0, v0

    return v0
.end method
