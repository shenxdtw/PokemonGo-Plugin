.class Lcom/upsight/android/googlepushservices/internal/GooglePushServices$2;
.super Ljava/lang/Object;
.source "GooglePushServices.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->registerInBackground(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observer",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;


# direct methods
.method constructor <init>(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)V
    .registers 2
    .param p1, "this$0"    # Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$2;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 1

    .prologue
    .line 182
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 188
    iget-object v3, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$2;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    monitor-enter v3

    .line 189
    :try_start_3
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$2;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    # getter for: Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPendingRegisterListeners:Ljava/util/Set;
    invoke-static {v2}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$100(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 190
    .local v1, "pendingListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;>;"
    iget-object v2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$2;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    # getter for: Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPendingRegisterListeners:Ljava/util/Set;
    invoke-static {v2}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$100(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 192
    iget-object v2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$2;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    const/4 v4, 0x0

    # setter for: Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mRegistrationIsInProgress:Z
    invoke-static {v2, v4}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$202(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;Z)Z

    .line 193
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_37

    .line 195
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;

    .line 196
    .local v0, "lst":Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;
    new-instance v3, Lcom/upsight/android/UpsightException;

    invoke-direct {v3, p1}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v3}, Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;->onFailure(Lcom/upsight/android/UpsightException;)V

    goto :goto_22

    .line 193
    .end local v0    # "lst":Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;
    .end local v1    # "pendingListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;>;"
    :catchall_37
    move-exception v2

    :try_start_38
    monitor-exit v3
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v2

    .line 198
    .restart local v1    # "pendingListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;>;"
    :cond_3a
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 178
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$2;->onNext(Ljava/lang/String;)V

    return-void
.end method

.method public onNext(Ljava/lang/String;)V
    .registers 7
    .param p1, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 204
    iget-object v3, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$2;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    monitor-enter v3

    .line 205
    :try_start_3
    iget-object v2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$2;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    # invokes: Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->storeRegistrationId(Ljava/lang/String;)V
    invoke-static {v2, p1}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$300(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;Ljava/lang/String;)V

    .line 207
    invoke-static {}, Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent;->createBuilder()Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent$Builder;->setToken(Ljava/lang/String;)Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$2;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    # getter for: Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUpsight:Lcom/upsight/android/UpsightContext;
    invoke-static {v4}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$000(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)Lcom/upsight/android/UpsightContext;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent$Builder;->record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;

    .line 209
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$2;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    # getter for: Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPendingRegisterListeners:Ljava/util/Set;
    invoke-static {v2}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$100(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 210
    .local v1, "pendingListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;>;"
    iget-object v2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$2;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    # getter for: Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mPendingRegisterListeners:Ljava/util/Set;
    invoke-static {v2}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$100(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 212
    iget-object v2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$2;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    const/4 v4, 0x0

    # setter for: Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mRegistrationIsInProgress:Z
    invoke-static {v2, v4}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$202(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;Z)Z

    .line 213
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_48

    .line 215
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;

    .line 216
    .local v0, "lst":Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;
    invoke-interface {v0, p1}, Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;->onSuccess(Ljava/lang/String;)V

    goto :goto_38

    .line 213
    .end local v0    # "lst":Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;
    .end local v1    # "pendingListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;>;"
    :catchall_48
    move-exception v2

    :try_start_49
    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v2

    .line 218
    .restart local v1    # "pendingListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;>;"
    :cond_4b
    return-void
.end method
