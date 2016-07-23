.class final Lrx/subjects/ReplaySubject$4;
.super Ljava/lang/Object;
.source "ReplaySubject.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/subjects/ReplaySubject;->createWithState(Lrx/subjects/ReplaySubject$BoundedState;Lrx/functions/Action1;)Lrx/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$state:Lrx/subjects/ReplaySubject$BoundedState;


# direct methods
.method constructor <init>(Lrx/subjects/ReplaySubject$BoundedState;)V
    .registers 2

    .prologue
    .line 302
    iput-object p1, p0, Lrx/subjects/ReplaySubject$4;->val$state:Lrx/subjects/ReplaySubject$BoundedState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 302
    check-cast p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/subjects/ReplaySubject$4;->call(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V

    return-void
.end method

.method public call(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 305
    .local p1, "o":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    monitor-enter p1

    .line 306
    :try_start_1
    iget-boolean v4, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->first:Z

    if-eqz v4, :cond_9

    iget-boolean v4, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    if-eqz v4, :cond_b

    .line 307
    :cond_9
    monitor-exit p1

    .line 336
    :cond_a
    :goto_a
    return-void

    .line 309
    :cond_b
    const/4 v4, 0x0

    iput-boolean v4, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->first:Z

    .line 310
    const/4 v4, 0x1

    iput-boolean v4, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    .line 311
    monitor-exit p1
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_43

    .line 312
    const/4 v3, 0x0

    .line 315
    .local v3, "skipFinal":Z
    :goto_13
    :try_start_13
    invoke-virtual {p1}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->index()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/subjects/ReplaySubject$NodeList$Node;

    .line 316
    .local v0, "idx":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    iget-object v4, p0, Lrx/subjects/ReplaySubject$4;->val$state:Lrx/subjects/ReplaySubject$BoundedState;

    invoke-virtual {v4}, Lrx/subjects/ReplaySubject$BoundedState;->tail()Lrx/subjects/ReplaySubject$NodeList$Node;

    move-result-object v2

    .line 317
    .local v2, "sidx":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    if-eq v0, v2, :cond_2a

    .line 318
    iget-object v4, p0, Lrx/subjects/ReplaySubject$4;->val$state:Lrx/subjects/ReplaySubject$BoundedState;

    invoke-virtual {v4, v0, p1}, Lrx/subjects/ReplaySubject$BoundedState;->replayObserverFromIndex(Lrx/subjects/ReplaySubject$NodeList$Node;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)Lrx/subjects/ReplaySubject$NodeList$Node;

    move-result-object v1

    .line 319
    .local v1, "j":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    invoke-virtual {p1, v1}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->index(Ljava/lang/Object;)V

    .line 321
    .end local v1    # "j":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    :cond_2a
    monitor-enter p1
    :try_end_2b
    .catchall {:try_start_13 .. :try_end_2b} :catchall_4b

    .line 322
    :try_start_2b
    iget-object v4, p0, Lrx/subjects/ReplaySubject$4;->val$state:Lrx/subjects/ReplaySubject$BoundedState;

    invoke-virtual {v4}, Lrx/subjects/ReplaySubject$BoundedState;->tail()Lrx/subjects/ReplaySubject$NodeList$Node;

    move-result-object v4

    if-ne v2, v4, :cond_46

    .line 323
    const/4 v4, 0x0

    iput-boolean v4, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    .line 324
    const/4 v3, 0x1

    .line 325
    monitor-exit p1
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_48

    .line 330
    if-nez v3, :cond_a

    .line 331
    monitor-enter p1

    .line 332
    const/4 v4, 0x0

    :try_start_3c
    iput-boolean v4, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    .line 333
    monitor-exit p1

    goto :goto_a

    :catchall_40
    move-exception v4

    monitor-exit p1
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_40

    throw v4

    .line 311
    .end local v0    # "idx":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    .end local v2    # "sidx":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    .end local v3    # "skipFinal":Z
    :catchall_43
    move-exception v4

    :try_start_44
    monitor-exit p1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v4

    .line 327
    .restart local v0    # "idx":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    .restart local v2    # "sidx":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    .restart local v3    # "skipFinal":Z
    :cond_46
    :try_start_46
    monitor-exit p1

    goto :goto_13

    :catchall_48
    move-exception v4

    monitor-exit p1
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_48

    :try_start_4a
    throw v4
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_4b

    .line 330
    .end local v0    # "idx":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    .end local v2    # "sidx":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<Ljava/lang/Object;>;"
    :catchall_4b
    move-exception v4

    if-nez v3, :cond_53

    .line 331
    monitor-enter p1

    .line 332
    const/4 v5, 0x0

    :try_start_50
    iput-boolean v5, p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitting:Z

    .line 333
    monitor-exit p1
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    :cond_53
    throw v4

    :catchall_54
    move-exception v4

    :try_start_55
    monitor-exit p1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v4
.end method
