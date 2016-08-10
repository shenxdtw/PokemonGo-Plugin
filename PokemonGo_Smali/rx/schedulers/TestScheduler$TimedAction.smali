.class final Lrx/schedulers/TestScheduler$TimedAction;
.super Ljava/lang/Object;
.source "TestScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/schedulers/TestScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimedAction"
.end annotation


# instance fields
.field final action:Lrx/functions/Action0;

.field private final count:J

.field final scheduler:Lrx/Scheduler$Worker;

.field final time:J


# direct methods
.method constructor <init>(Lrx/Scheduler$Worker;JLrx/functions/Action0;)V
    .registers 9
    .param p1, "scheduler"    # Lrx/Scheduler$Worker;
    .param p2, "time"    # J
    .param p4, "action"    # Lrx/functions/Action0;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-wide v0, Lrx/schedulers/TestScheduler;->counter:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lrx/schedulers/TestScheduler;->counter:J

    iput-wide v0, p0, Lrx/schedulers/TestScheduler$TimedAction;->count:J

    .line 45
    iput-wide p2, p0, Lrx/schedulers/TestScheduler$TimedAction;->time:J

    .line 46
    iput-object p4, p0, Lrx/schedulers/TestScheduler$TimedAction;->action:Lrx/functions/Action0;

    .line 47
    iput-object p1, p0, Lrx/schedulers/TestScheduler$TimedAction;->scheduler:Lrx/Scheduler$Worker;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lrx/schedulers/TestScheduler$TimedAction;)J
    .registers 3
    .param p0, "x0"    # Lrx/schedulers/TestScheduler$TimedAction;

    .prologue
    .line 37
    iget-wide v0, p0, Lrx/schedulers/TestScheduler$TimedAction;->count:J

    return-wide v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 52
    const-string v0, "TimedAction(time = %d, action = %s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lrx/schedulers/TestScheduler$TimedAction;->time:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lrx/schedulers/TestScheduler$TimedAction;->action:Lrx/functions/Action0;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
