.class final Lrx/subjects/ReplaySubject$BoundedState;
.super Ljava/lang/Object;
.source "ReplaySubject.java"

# interfaces
.implements Lrx/subjects/ReplaySubject$ReplayState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BoundedState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/subjects/ReplaySubject$ReplayState",
        "<TT;",
        "Lrx/subjects/ReplaySubject$NodeList$Node",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final enterTransform:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final evictionPolicy:Lrx/subjects/ReplaySubject$EvictionPolicy;

.field final leaveTransform:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final list:Lrx/subjects/ReplaySubject$NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$NodeList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile tail:Lrx/subjects/ReplaySubject$NodeList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$NodeList$Node",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field volatile terminated:Z


# direct methods
.method public constructor <init>(Lrx/subjects/ReplaySubject$EvictionPolicy;Lrx/functions/Func1;Lrx/functions/Func1;)V
    .registers 5
    .param p1, "evictionPolicy"    # Lrx/subjects/ReplaySubject$EvictionPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$EvictionPolicy;",
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 593
    .local p0, "this":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    .local p2, "enterTransform":Lrx/functions/Func1;, "Lrx/functions/Func1<Ljava/lang/Object;Ljava/lang/Object;>;"
    .local p3, "leaveTransform":Lrx/functions/Func1;, "Lrx/functions/Func1<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 588
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->nl:Lrx/internal/operators/NotificationLite;

    .line 594
    new-instance v0, Lrx/subjects/ReplaySubject$NodeList;

    invoke-direct {v0}, Lrx/subjects/ReplaySubject$NodeList;-><init>()V

    iput-object v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->list:Lrx/subjects/ReplaySubject$NodeList;

    .line 595
    iget-object v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->list:Lrx/subjects/ReplaySubject$NodeList;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$NodeList;->tail:Lrx/subjects/ReplaySubject$NodeList$Node;

    iput-object v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->tail:Lrx/subjects/ReplaySubject$NodeList$Node;

    .line 596
    iput-object p1, p0, Lrx/subjects/ReplaySubject$BoundedState;->evictionPolicy:Lrx/subjects/ReplaySubject$EvictionPolicy;

    .line 597
    iput-object p2, p0, Lrx/subjects/ReplaySubject$BoundedState;->enterTransform:Lrx/functions/Func1;

    .line 598
    iput-object p3, p0, Lrx/subjects/ReplaySubject$BoundedState;->leaveTransform:Lrx/functions/Func1;

    .line 599
    return-void
.end method


# virtual methods
.method public accept(Lrx/Observer;Lrx/subjects/ReplaySubject$NodeList$Node;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer",
            "<-TT;>;",
            "Lrx/subjects/ReplaySubject$NodeList$Node",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 629
    .local p0, "this":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    .local p1, "o":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    .local p2, "node":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v1, p0, Lrx/subjects/ReplaySubject$BoundedState;->leaveTransform:Lrx/functions/Func1;

    iget-object v2, p2, Lrx/subjects/ReplaySubject$NodeList$Node;->value:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    .line 630
    return-void
.end method

.method public acceptTest(Lrx/Observer;Lrx/subjects/ReplaySubject$NodeList$Node;J)V
    .registers 8
    .param p3, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer",
            "<-TT;>;",
            "Lrx/subjects/ReplaySubject$NodeList$Node",
            "<",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 638
    .local p0, "this":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    .local p1, "o":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    .local p2, "node":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    iget-object v0, p2, Lrx/subjects/ReplaySubject$NodeList$Node;->value:Ljava/lang/Object;

    .line 639
    .local v0, "v":Ljava/lang/Object;
    iget-object v1, p0, Lrx/subjects/ReplaySubject$BoundedState;->evictionPolicy:Lrx/subjects/ReplaySubject$EvictionPolicy;

    invoke-interface {v1, v0, p3, p4}, Lrx/subjects/ReplaySubject$EvictionPolicy;->test(Ljava/lang/Object;J)Z

    move-result v1

    if-nez v1, :cond_15

    .line 640
    iget-object v1, p0, Lrx/subjects/ReplaySubject$BoundedState;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v2, p0, Lrx/subjects/ReplaySubject$BoundedState;->leaveTransform:Lrx/functions/Func1;

    invoke-interface {v2, v0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    .line 642
    :cond_15
    return-void
.end method

.method public complete()V
    .registers 4

    .prologue
    .line 610
    .local p0, "this":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    iget-boolean v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->terminated:Z

    if-nez v0, :cond_25

    .line 611
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->terminated:Z

    .line 612
    iget-object v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->list:Lrx/subjects/ReplaySubject$NodeList;

    iget-object v1, p0, Lrx/subjects/ReplaySubject$BoundedState;->enterTransform:Lrx/functions/Func1;

    iget-object v2, p0, Lrx/subjects/ReplaySubject$BoundedState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/ReplaySubject$NodeList;->addLast(Ljava/lang/Object;)V

    .line 613
    iget-object v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->evictionPolicy:Lrx/subjects/ReplaySubject$EvictionPolicy;

    iget-object v1, p0, Lrx/subjects/ReplaySubject$BoundedState;->list:Lrx/subjects/ReplaySubject$NodeList;

    invoke-interface {v0, v1}, Lrx/subjects/ReplaySubject$EvictionPolicy;->evictFinal(Lrx/subjects/ReplaySubject$NodeList;)V

    .line 614
    iget-object v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->list:Lrx/subjects/ReplaySubject$NodeList;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$NodeList;->tail:Lrx/subjects/ReplaySubject$NodeList$Node;

    iput-object v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->tail:Lrx/subjects/ReplaySubject$NodeList$Node;

    .line 617
    :cond_25
    return-void
.end method

.method public error(Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 620
    .local p0, "this":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    iget-boolean v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->terminated:Z

    if-nez v0, :cond_25

    .line 621
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->terminated:Z

    .line 622
    iget-object v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->list:Lrx/subjects/ReplaySubject$NodeList;

    iget-object v1, p0, Lrx/subjects/ReplaySubject$BoundedState;->enterTransform:Lrx/functions/Func1;

    iget-object v2, p0, Lrx/subjects/ReplaySubject$BoundedState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/ReplaySubject$NodeList;->addLast(Ljava/lang/Object;)V

    .line 624
    iget-object v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->evictionPolicy:Lrx/subjects/ReplaySubject$EvictionPolicy;

    iget-object v1, p0, Lrx/subjects/ReplaySubject$BoundedState;->list:Lrx/subjects/ReplaySubject$NodeList;

    invoke-interface {v0, v1}, Lrx/subjects/ReplaySubject$EvictionPolicy;->evictFinal(Lrx/subjects/ReplaySubject$NodeList;)V

    .line 625
    iget-object v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->list:Lrx/subjects/ReplaySubject$NodeList;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$NodeList;->tail:Lrx/subjects/ReplaySubject$NodeList$Node;

    iput-object v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->tail:Lrx/subjects/ReplaySubject$NodeList$Node;

    .line 627
    :cond_25
    return-void
.end method

.method public head()Lrx/subjects/ReplaySubject$NodeList$Node;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/subjects/ReplaySubject$NodeList$Node",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 644
    .local p0, "this":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->list:Lrx/subjects/ReplaySubject$NodeList;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$NodeList;->head:Lrx/subjects/ReplaySubject$NodeList$Node;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 7

    .prologue
    .local p0, "this":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    const/4 v3, 0x1

    .line 708
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$BoundedState;->head()Lrx/subjects/ReplaySubject$NodeList$Node;

    move-result-object v0

    .line 709
    .local v0, "l":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    iget-object v1, v0, Lrx/subjects/ReplaySubject$NodeList$Node;->next:Lrx/subjects/ReplaySubject$NodeList$Node;

    .line 710
    .local v1, "next":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    if-nez v1, :cond_a

    .line 714
    :cond_9
    :goto_9
    return v3

    .line 713
    :cond_a
    iget-object v4, p0, Lrx/subjects/ReplaySubject$BoundedState;->leaveTransform:Lrx/functions/Func1;

    iget-object v5, v1, Lrx/subjects/ReplaySubject$NodeList$Node;->value:Ljava/lang/Object;

    invoke-interface {v4, v5}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 714
    .local v2, "value":Ljava/lang/Object;
    iget-object v4, p0, Lrx/subjects/ReplaySubject$BoundedState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4, v2}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lrx/subjects/ReplaySubject$BoundedState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4, v2}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const/4 v3, 0x0

    goto :goto_9
.end method

.method public latest()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    const/4 v3, 0x0

    .line 737
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$BoundedState;->head()Lrx/subjects/ReplaySubject$NodeList$Node;

    move-result-object v4

    iget-object v0, v4, Lrx/subjects/ReplaySubject$NodeList$Node;->next:Lrx/subjects/ReplaySubject$NodeList$Node;

    .line 738
    .local v0, "h":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    if-nez v0, :cond_a

    .line 754
    :cond_9
    :goto_9
    return-object v3

    .line 741
    :cond_a
    const/4 v1, 0x0

    .line 742
    .local v1, "p":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    :goto_b
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$BoundedState;->tail()Lrx/subjects/ReplaySubject$NodeList$Node;

    move-result-object v4

    if-eq v0, v4, :cond_15

    .line 743
    move-object v1, v0

    .line 744
    iget-object v0, v0, Lrx/subjects/ReplaySubject$NodeList$Node;->next:Lrx/subjects/ReplaySubject$NodeList$Node;

    goto :goto_b

    .line 746
    :cond_15
    iget-object v4, p0, Lrx/subjects/ReplaySubject$BoundedState;->leaveTransform:Lrx/functions/Func1;

    iget-object v5, v0, Lrx/subjects/ReplaySubject$NodeList$Node;->value:Ljava/lang/Object;

    invoke-interface {v4, v5}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 747
    .local v2, "value":Ljava/lang/Object;
    iget-object v4, p0, Lrx/subjects/ReplaySubject$BoundedState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4, v2}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    iget-object v4, p0, Lrx/subjects/ReplaySubject$BoundedState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4, v2}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 748
    :cond_2d
    if-eqz v1, :cond_9

    .line 749
    iget-object v3, p0, Lrx/subjects/ReplaySubject$BoundedState;->leaveTransform:Lrx/functions/Func1;

    iget-object v4, v1, Lrx/subjects/ReplaySubject$NodeList$Node;->value:Ljava/lang/Object;

    invoke-interface {v3, v4}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 750
    iget-object v3, p0, Lrx/subjects/ReplaySubject$BoundedState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3, v2}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_9

    .line 754
    :cond_3e
    iget-object v3, p0, Lrx/subjects/ReplaySubject$BoundedState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3, v2}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_9
.end method

.method public next(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 602
    .local p0, "this":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->terminated:Z

    if-nez v0, :cond_22

    .line 603
    iget-object v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->list:Lrx/subjects/ReplaySubject$NodeList;

    iget-object v1, p0, Lrx/subjects/ReplaySubject$BoundedState;->enterTransform:Lrx/functions/Func1;

    iget-object v2, p0, Lrx/subjects/ReplaySubject$BoundedState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/ReplaySubject$NodeList;->addLast(Ljava/lang/Object;)V

    .line 604
    iget-object v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->evictionPolicy:Lrx/subjects/ReplaySubject$EvictionPolicy;

    iget-object v1, p0, Lrx/subjects/ReplaySubject$BoundedState;->list:Lrx/subjects/ReplaySubject$NodeList;

    invoke-interface {v0, v1}, Lrx/subjects/ReplaySubject$EvictionPolicy;->evict(Lrx/subjects/ReplaySubject$NodeList;)V

    .line 605
    iget-object v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->list:Lrx/subjects/ReplaySubject$NodeList;

    iget-object v0, v0, Lrx/subjects/ReplaySubject$NodeList;->tail:Lrx/subjects/ReplaySubject$NodeList$Node;

    iput-object v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->tail:Lrx/subjects/ReplaySubject$NodeList$Node;

    .line 607
    :cond_22
    return-void
.end method

.method public replayObserver(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    .local p1, "observer":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<-TT;>;"
    const/4 v2, 0x0

    .line 651
    monitor-enter p1

    .line 652
    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->first:Z

    .line 653
    iget-boolean v3, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    if-eqz v3, :cond_b

    .line 654
    monitor-exit p1

    .line 661
    :goto_a
    return v2

    .line 656
    :cond_b
    monitor-exit p1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1b

    .line 658
    invoke-virtual {p1}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->index()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/subjects/ReplaySubject$NodeList$Node;

    .line 659
    .local v1, "lastEmittedLink":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    invoke-virtual {p0, v1, p1}, Lrx/subjects/ReplaySubject$BoundedState;->replayObserverFromIndex(Lrx/subjects/ReplaySubject$NodeList$Node;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Lrx/subjects/ReplaySubject$NodeList$Node;

    move-result-object v0

    .line 660
    .local v0, "l":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    invoke-virtual {p1, v0}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->index(Ljava/lang/Object;)V

    .line 661
    const/4 v2, 0x1

    goto :goto_a

    .line 656
    .end local v0    # "l":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    .end local v1    # "lastEmittedLink":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    :catchall_1b
    move-exception v2

    :try_start_1c
    monitor-exit p1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v2
.end method

.method public bridge synthetic replayObserverFromIndex(Ljava/lang/Object;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    .prologue
    .line 583
    .local p0, "this":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    check-cast p1, Lrx/subjects/ReplaySubject$NodeList$Node;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lrx/subjects/ReplaySubject$BoundedState;->replayObserverFromIndex(Lrx/subjects/ReplaySubject$NodeList$Node;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Lrx/subjects/ReplaySubject$NodeList$Node;

    move-result-object v0

    return-object v0
.end method

.method public replayObserverFromIndex(Lrx/subjects/ReplaySubject$NodeList$Node;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Lrx/subjects/ReplaySubject$NodeList$Node;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$NodeList$Node",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<-TT;>;)",
            "Lrx/subjects/ReplaySubject$NodeList$Node",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 667
    .local p0, "this":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    .local p1, "l":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    .local p2, "observer":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<-TT;>;"
    :goto_0
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$BoundedState;->tail()Lrx/subjects/ReplaySubject$NodeList$Node;

    move-result-object v0

    if-eq p1, v0, :cond_e

    .line 668
    iget-object v0, p1, Lrx/subjects/ReplaySubject$NodeList$Node;->next:Lrx/subjects/ReplaySubject$NodeList$Node;

    invoke-virtual {p0, p2, v0}, Lrx/subjects/ReplaySubject$BoundedState;->accept(Lrx/Observer;Lrx/subjects/ReplaySubject$NodeList$Node;)V

    .line 669
    iget-object p1, p1, Lrx/subjects/ReplaySubject$NodeList$Node;->next:Lrx/subjects/ReplaySubject$NodeList$Node;

    goto :goto_0

    .line 671
    :cond_e
    return-object p1
.end method

.method public bridge synthetic replayObserverFromIndexTest(Ljava/lang/Object;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;J)Ljava/lang/Object;
    .registers 6
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    .param p3, "x2"    # J

    .prologue
    .line 583
    .local p0, "this":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    check-cast p1, Lrx/subjects/ReplaySubject$NodeList$Node;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lrx/subjects/ReplaySubject$BoundedState;->replayObserverFromIndexTest(Lrx/subjects/ReplaySubject$NodeList$Node;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;J)Lrx/subjects/ReplaySubject$NodeList$Node;

    move-result-object v0

    return-object v0
.end method

.method public replayObserverFromIndexTest(Lrx/subjects/ReplaySubject$NodeList$Node;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;J)Lrx/subjects/ReplaySubject$NodeList$Node;
    .registers 6
    .param p3, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/ReplaySubject$NodeList$Node",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<-TT;>;J)",
            "Lrx/subjects/ReplaySubject$NodeList$Node",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 676
    .local p0, "this":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    .local p1, "l":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    .local p2, "observer":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<-TT;>;"
    :goto_0
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$BoundedState;->tail()Lrx/subjects/ReplaySubject$NodeList$Node;

    move-result-object v0

    if-eq p1, v0, :cond_e

    .line 677
    iget-object v0, p1, Lrx/subjects/ReplaySubject$NodeList$Node;->next:Lrx/subjects/ReplaySubject$NodeList$Node;

    invoke-virtual {p0, p2, v0, p3, p4}, Lrx/subjects/ReplaySubject$BoundedState;->acceptTest(Lrx/Observer;Lrx/subjects/ReplaySubject$NodeList$Node;J)V

    .line 678
    iget-object p1, p1, Lrx/subjects/ReplaySubject$NodeList$Node;->next:Lrx/subjects/ReplaySubject$NodeList$Node;

    goto :goto_0

    .line 680
    :cond_e
    return-object p1
.end method

.method public size()I
    .registers 7

    .prologue
    .line 690
    .local p0, "this":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    const/4 v2, 0x0

    .line 691
    .local v2, "size":I
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$BoundedState;->head()Lrx/subjects/ReplaySubject$NodeList$Node;

    move-result-object v0

    .line 692
    .local v0, "l":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    iget-object v1, v0, Lrx/subjects/ReplaySubject$NodeList$Node;->next:Lrx/subjects/ReplaySubject$NodeList$Node;

    .line 693
    .local v1, "next":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    :goto_7
    if-eqz v1, :cond_f

    .line 694
    add-int/lit8 v2, v2, 0x1

    .line 695
    move-object v0, v1

    .line 696
    iget-object v1, v1, Lrx/subjects/ReplaySubject$NodeList$Node;->next:Lrx/subjects/ReplaySubject$NodeList$Node;

    goto :goto_7

    .line 698
    :cond_f
    iget-object v4, v0, Lrx/subjects/ReplaySubject$NodeList$Node;->value:Ljava/lang/Object;

    if-eqz v4, :cond_2f

    .line 699
    iget-object v4, p0, Lrx/subjects/ReplaySubject$BoundedState;->leaveTransform:Lrx/functions/Func1;

    iget-object v5, v0, Lrx/subjects/ReplaySubject$NodeList$Node;->value:Ljava/lang/Object;

    invoke-interface {v4, v5}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 700
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_2f

    iget-object v4, p0, Lrx/subjects/ReplaySubject$BoundedState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4, v3}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    iget-object v4, p0, Lrx/subjects/ReplaySubject$BoundedState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4, v3}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 701
    :cond_2d
    add-int/lit8 v2, v2, -0x1

    .line 704
    .end local v2    # "size":I
    .end local v3    # "value":Ljava/lang/Object;
    :cond_2f
    return v2
.end method

.method public tail()Lrx/subjects/ReplaySubject$NodeList$Node;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/subjects/ReplaySubject$NodeList$Node",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 647
    .local p0, "this":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->tail:Lrx/subjects/ReplaySubject$NodeList$Node;

    return-object v0
.end method

.method public terminated()Z
    .registers 2

    .prologue
    .line 685
    .local p0, "this":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    iget-boolean v0, p0, Lrx/subjects/ReplaySubject$BoundedState;->terminated:Z

    return v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 719
    .local p0, "this":Lrx/subjects/ReplaySubject$BoundedState;, "Lrx/subjects/ReplaySubject$BoundedState<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 720
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0}, Lrx/subjects/ReplaySubject$BoundedState;->head()Lrx/subjects/ReplaySubject$NodeList$Node;

    move-result-object v0

    .line 721
    .local v0, "l":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    iget-object v2, v0, Lrx/subjects/ReplaySubject$NodeList$Node;->next:Lrx/subjects/ReplaySubject$NodeList$Node;

    .line 722
    .local v2, "next":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    :goto_b
    if-eqz v2, :cond_29

    .line 723
    iget-object v4, p0, Lrx/subjects/ReplaySubject$BoundedState;->leaveTransform:Lrx/functions/Func1;

    iget-object v5, v2, Lrx/subjects/ReplaySubject$NodeList$Node;->value:Ljava/lang/Object;

    invoke-interface {v4, v5}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 725
    .local v3, "o":Ljava/lang/Object;
    iget-object v4, v2, Lrx/subjects/ReplaySubject$NodeList$Node;->next:Lrx/subjects/ReplaySubject$NodeList$Node;

    if-nez v4, :cond_2e

    iget-object v4, p0, Lrx/subjects/ReplaySubject$BoundedState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4, v3}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    iget-object v4, p0, Lrx/subjects/ReplaySubject$BoundedState;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v4, v3}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 733
    .end local v3    # "o":Ljava/lang/Object;
    :cond_29
    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 728
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_2e
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 730
    move-object v0, v2

    .line 731
    iget-object v2, v2, Lrx/subjects/ReplaySubject$NodeList$Node;->next:Lrx/subjects/ReplaySubject$NodeList$Node;

    .line 732
    goto :goto_b
.end method
