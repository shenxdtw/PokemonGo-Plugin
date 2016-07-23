.class Lcom/upsight/android/internal/persistence/subscription/AnnotatedSubscriber;
.super Lrx/Subscriber;
.source "AnnotatedSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<",
        "Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final mHandlers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "handlers":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandler;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/upsight/android/internal/persistence/subscription/AnnotatedSubscriber;->mHandlers:Ljava/util/Set;

    .line 23
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 1

    .prologue
    .line 28
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 33
    return-void
.end method

.method public onNext(Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent;)V
    .registers 7
    .param p1, "dataStoreEvent"    # Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent;

    .prologue
    .line 37
    iget-object v3, p0, Lcom/upsight/android/internal/persistence/subscription/AnnotatedSubscriber;->mHandlers:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandler;

    .line 38
    .local v1, "handler":Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandler;
    iget-object v3, p1, Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent;->action:Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;

    iget-object v4, p1, Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent;->sourceType:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandler;->matches(Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 40
    :try_start_1c
    invoke-virtual {v1, p1}, Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandler;->handle(Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent;)V
    :try_end_1f
    .catch Lcom/upsight/android/UpsightException; {:try_start_1c .. :try_end_1f} :catch_20

    goto :goto_6

    .line 41
    :catch_20
    move-exception v0

    .line 42
    .local v0, "e":Lcom/upsight/android/UpsightException;
    const-string v3, "Upsight"

    const-string v4, "Failed to handle subscription."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 46
    .end local v0    # "e":Lcom/upsight/android/UpsightException;
    .end local v1    # "handler":Lcom/upsight/android/internal/persistence/subscription/SubscriptionHandler;
    :cond_29
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 17
    check-cast p1, Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/upsight/android/internal/persistence/subscription/AnnotatedSubscriber;->onNext(Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent;)V

    return-void
.end method
