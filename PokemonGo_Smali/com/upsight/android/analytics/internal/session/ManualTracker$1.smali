.class Lcom/upsight/android/analytics/internal/session/ManualTracker$1;
.super Ljava/lang/Object;
.source "ManualTracker.java"

# interfaces
.implements Lcom/upsight/android/persistence/UpsightDataStoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/analytics/internal/session/ManualTracker;->track(Landroid/app/Activity;Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;Lcom/upsight/android/analytics/internal/session/SessionInitializer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/upsight/android/persistence/UpsightDataStoreListener",
        "<",
        "Ljava/util/Set",
        "<",
        "Lcom/upsight/android/analytics/internal/session/ApplicationStatus;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/analytics/internal/session/ManualTracker;


# direct methods
.method constructor <init>(Lcom/upsight/android/analytics/internal/session/ManualTracker;)V
    .registers 2
    .param p1, "this$0"    # Lcom/upsight/android/analytics/internal/session/ManualTracker;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker$1;->this$0:Lcom/upsight/android/analytics/internal/session/ManualTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/upsight/android/UpsightException;)V
    .registers 2
    .param p1, "exception"    # Lcom/upsight/android/UpsightException;

    .prologue
    .line 110
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 76
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/upsight/android/analytics/internal/session/ManualTracker$1;->onSuccess(Ljava/util/Set;)V

    return-void
.end method

.method public onSuccess(Ljava/util/Set;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/analytics/internal/session/ApplicationStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "statusEvents":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/analytics/internal/session/ApplicationStatus;>;"
    const/4 v7, 0x0

    .line 79
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 81
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker$1;->this$0:Lcom/upsight/android/analytics/internal/session/ManualTracker;

    # getter for: Lcom/upsight/android/analytics/internal/session/ManualTracker;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;
    invoke-static {v3}, Lcom/upsight/android/analytics/internal/session/ManualTracker;->access$000(Lcom/upsight/android/analytics/internal/session/ManualTracker;)Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v3

    new-instance v4, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;

    sget-object v5, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;->FOREGROUND:Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    invoke-direct {v4, v5}, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;-><init>(Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;)V

    invoke-interface {v3, v4}, Lcom/upsight/android/persistence/UpsightDataStore;->store(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 84
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker$1;->this$0:Lcom/upsight/android/analytics/internal/session/ManualTracker;

    # getter for: Lcom/upsight/android/analytics/internal/session/ManualTracker;->mLogger:Lcom/upsight/android/logger/UpsightLogger;
    invoke-static {v3}, Lcom/upsight/android/analytics/internal/session/ManualTracker;->access$200(Lcom/upsight/android/analytics/internal/session/ManualTracker;)Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v3

    # getter for: Lcom/upsight/android/analytics/internal/session/ManualTracker;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/upsight/android/analytics/internal/session/ManualTracker;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Create application state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;->FOREGROUND:Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    :cond_3b
    return-void

    .line 87
    :cond_3c
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 88
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/upsight/android/analytics/internal/session/ApplicationStatus;>;"
    const/4 v2, 0x0

    .line 89
    .local v2, "updatedFlag":Z
    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;

    .line 91
    .local v1, "statusEvent":Lcom/upsight/android/analytics/internal/session/ApplicationStatus;
    if-nez v2, :cond_82

    .line 92
    sget-object v3, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;->FOREGROUND:Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    iput-object v3, v1, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;->state:Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    .line 93
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker$1;->this$0:Lcom/upsight/android/analytics/internal/session/ManualTracker;

    # getter for: Lcom/upsight/android/analytics/internal/session/ManualTracker;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;
    invoke-static {v3}, Lcom/upsight/android/analytics/internal/session/ManualTracker;->access$000(Lcom/upsight/android/analytics/internal/session/ManualTracker;)Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/upsight/android/persistence/UpsightDataStore;->store(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 94
    const/4 v2, 0x1

    .line 96
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker$1;->this$0:Lcom/upsight/android/analytics/internal/session/ManualTracker;

    # getter for: Lcom/upsight/android/analytics/internal/session/ManualTracker;->mLogger:Lcom/upsight/android/logger/UpsightLogger;
    invoke-static {v3}, Lcom/upsight/android/analytics/internal/session/ManualTracker;->access$200(Lcom/upsight/android/analytics/internal/session/ManualTracker;)Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v3

    # getter for: Lcom/upsight/android/analytics/internal/session/ManualTracker;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/upsight/android/analytics/internal/session/ManualTracker;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update application state to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;->state:Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_41

    .line 99
    :cond_82
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker$1;->this$0:Lcom/upsight/android/analytics/internal/session/ManualTracker;

    # getter for: Lcom/upsight/android/analytics/internal/session/ManualTracker;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;
    invoke-static {v3}, Lcom/upsight/android/analytics/internal/session/ManualTracker;->access$000(Lcom/upsight/android/analytics/internal/session/ManualTracker;)Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/upsight/android/persistence/UpsightDataStore;->remove(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 101
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker$1;->this$0:Lcom/upsight/android/analytics/internal/session/ManualTracker;

    # getter for: Lcom/upsight/android/analytics/internal/session/ManualTracker;->mLogger:Lcom/upsight/android/logger/UpsightLogger;
    invoke-static {v3}, Lcom/upsight/android/analytics/internal/session/ManualTracker;->access$200(Lcom/upsight/android/analytics/internal/session/ManualTracker;)Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v3

    # getter for: Lcom/upsight/android/analytics/internal/session/ManualTracker;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/upsight/android/analytics/internal/session/ManualTracker;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remove duplicate application state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;->state:Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_41
.end method
