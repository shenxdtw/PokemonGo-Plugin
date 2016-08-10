.class Lcom/upsight/android/analytics/internal/DispatcherService$1;
.super Ljava/lang/Object;
.source "DispatcherService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/DispatcherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/analytics/internal/DispatcherService;


# direct methods
.method constructor <init>(Lcom/upsight/android/analytics/internal/DispatcherService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/upsight/android/analytics/internal/DispatcherService;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x61a8

    const/4 v5, 0x0

    .line 57
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    iget-object v1, v1, Lcom/upsight/android/analytics/internal/DispatcherService;->mDispatcher:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    invoke-virtual {v1}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->hasPendingRecords()Z

    move-result v0

    .line 58
    .local v0, "hasPendingRecords":Z
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    # getter for: Lcom/upsight/android/analytics/internal/DispatcherService;->mLogger:Lcom/upsight/android/logger/UpsightLogger;
    invoke-static {v1}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$200(Lcom/upsight/android/analytics/internal/DispatcherService;)Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    # getter for: Lcom/upsight/android/analytics/internal/DispatcherService;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check for idle hasPendingRecords="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mDeadIntervalsInARow="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    # getter for: Lcom/upsight/android/analytics/internal/DispatcherService;->mDeadIntervalsInARow:I
    invoke-static {v4}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$100(Lcom/upsight/android/analytics/internal/DispatcherService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    if-eqz v0, :cond_54

    .line 60
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    # setter for: Lcom/upsight/android/analytics/internal/DispatcherService;->mDeadIntervalsInARow:I
    invoke-static {v1, v5}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$102(Lcom/upsight/android/analytics/internal/DispatcherService;I)I

    .line 61
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    # getter for: Lcom/upsight/android/analytics/internal/DispatcherService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$400(Lcom/upsight/android/analytics/internal/DispatcherService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    # getter for: Lcom/upsight/android/analytics/internal/DispatcherService;->mSelfStopTask:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$300(Lcom/upsight/android/analytics/internal/DispatcherService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 71
    :goto_53
    return-void

    .line 63
    :cond_54
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    # getter for: Lcom/upsight/android/analytics/internal/DispatcherService;->mDeadIntervalsInARow:I
    invoke-static {v1}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$100(Lcom/upsight/android/analytics/internal/DispatcherService;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_74

    .line 64
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    # getter for: Lcom/upsight/android/analytics/internal/DispatcherService;->mLogger:Lcom/upsight/android/logger/UpsightLogger;
    invoke-static {v1}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$200(Lcom/upsight/android/analytics/internal/DispatcherService;)Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    # getter for: Lcom/upsight/android/analytics/internal/DispatcherService;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Request to destroy"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    invoke-virtual {v1}, Lcom/upsight/android/analytics/internal/DispatcherService;->stopSelf()V

    goto :goto_53

    .line 67
    :cond_74
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    # operator++ for: Lcom/upsight/android/analytics/internal/DispatcherService;->mDeadIntervalsInARow:I
    invoke-static {v1}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$108(Lcom/upsight/android/analytics/internal/DispatcherService;)I

    .line 68
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    # getter for: Lcom/upsight/android/analytics/internal/DispatcherService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$400(Lcom/upsight/android/analytics/internal/DispatcherService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    # getter for: Lcom/upsight/android/analytics/internal/DispatcherService;->mSelfStopTask:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$300(Lcom/upsight/android/analytics/internal/DispatcherService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_53
.end method
