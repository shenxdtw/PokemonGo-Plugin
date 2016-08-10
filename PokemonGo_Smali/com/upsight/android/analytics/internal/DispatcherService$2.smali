.class Lcom/upsight/android/analytics/internal/DispatcherService$2;
.super Ljava/lang/Object;
.source "DispatcherService.java"

# interfaces
.implements Lcom/upsight/android/persistence/UpsightDataStoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/analytics/internal/DispatcherService;->onCreate()V
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
.field final synthetic this$0:Lcom/upsight/android/analytics/internal/DispatcherService;


# direct methods
.method constructor <init>(Lcom/upsight/android/analytics/internal/DispatcherService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/upsight/android/analytics/internal/DispatcherService;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/DispatcherService$2;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/upsight/android/UpsightException;)V
    .registers 2
    .param p1, "exception"    # Lcom/upsight/android/UpsightException;

    .prologue
    .line 103
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 92
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/upsight/android/analytics/internal/DispatcherService$2;->onSuccess(Ljava/util/Set;)V

    return-void
.end method

.method public onSuccess(Ljava/util/Set;)V
    .registers 5
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
    .line 95
    .local p1, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/analytics/internal/session/ApplicationStatus;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;

    .line 96
    .local v0, "appStatus":Lcom/upsight/android/analytics/internal/session/ApplicationStatus;
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/DispatcherService$2;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    # invokes: Lcom/upsight/android/analytics/internal/DispatcherService;->handle(Lcom/upsight/android/analytics/internal/session/ApplicationStatus;)V
    invoke-static {v2, v0}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$500(Lcom/upsight/android/analytics/internal/DispatcherService;Lcom/upsight/android/analytics/internal/session/ApplicationStatus;)V

    goto :goto_4

    .line 98
    .end local v0    # "appStatus":Lcom/upsight/android/analytics/internal/session/ApplicationStatus;
    :cond_16
    return-void
.end method
