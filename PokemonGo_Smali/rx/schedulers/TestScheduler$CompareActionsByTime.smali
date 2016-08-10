.class Lrx/schedulers/TestScheduler$CompareActionsByTime;
.super Ljava/lang/Object;
.source "TestScheduler.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/schedulers/TestScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompareActionsByTime"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lrx/schedulers/TestScheduler$TimedAction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 56
    check-cast p1, Lrx/schedulers/TestScheduler$TimedAction;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lrx/schedulers/TestScheduler$TimedAction;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lrx/schedulers/TestScheduler$CompareActionsByTime;->compare(Lrx/schedulers/TestScheduler$TimedAction;Lrx/schedulers/TestScheduler$TimedAction;)I

    move-result v0

    return v0
.end method

.method public compare(Lrx/schedulers/TestScheduler$TimedAction;Lrx/schedulers/TestScheduler$TimedAction;)I
    .registers 11
    .param p1, "action1"    # Lrx/schedulers/TestScheduler$TimedAction;
    .param p2, "action2"    # Lrx/schedulers/TestScheduler$TimedAction;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 62
    iget-wide v4, p1, Lrx/schedulers/TestScheduler$TimedAction;->time:J

    iget-wide v6, p2, Lrx/schedulers/TestScheduler$TimedAction;->time:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_28

    .line 63
    # getter for: Lrx/schedulers/TestScheduler$TimedAction;->count:J
    invoke-static {p1}, Lrx/schedulers/TestScheduler$TimedAction;->access$000(Lrx/schedulers/TestScheduler$TimedAction;)J

    move-result-wide v4

    # getter for: Lrx/schedulers/TestScheduler$TimedAction;->count:J
    invoke-static {p2}, Lrx/schedulers/TestScheduler$TimedAction;->access$000(Lrx/schedulers/TestScheduler$TimedAction;)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_18

    .line 65
    :cond_17
    :goto_17
    return v0

    .line 63
    :cond_18
    # getter for: Lrx/schedulers/TestScheduler$TimedAction;->count:J
    invoke-static {p1}, Lrx/schedulers/TestScheduler$TimedAction;->access$000(Lrx/schedulers/TestScheduler$TimedAction;)J

    move-result-wide v4

    # getter for: Lrx/schedulers/TestScheduler$TimedAction;->count:J
    invoke-static {p2}, Lrx/schedulers/TestScheduler$TimedAction;->access$000(Lrx/schedulers/TestScheduler$TimedAction;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_26

    move v0, v1

    goto :goto_17

    :cond_26
    move v0, v2

    goto :goto_17

    .line 65
    :cond_28
    iget-wide v4, p1, Lrx/schedulers/TestScheduler$TimedAction;->time:J

    iget-wide v6, p2, Lrx/schedulers/TestScheduler$TimedAction;->time:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_17

    iget-wide v4, p1, Lrx/schedulers/TestScheduler$TimedAction;->time:J

    iget-wide v6, p2, Lrx/schedulers/TestScheduler$TimedAction;->time:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_3a

    move v0, v1

    goto :goto_17

    :cond_3a
    move v0, v2

    goto :goto_17
.end method
