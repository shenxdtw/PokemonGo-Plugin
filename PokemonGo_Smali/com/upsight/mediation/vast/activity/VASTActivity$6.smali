.class Lcom/upsight/mediation/vast/activity/VASTActivity$6;
.super Ljava/util/TimerTask;
.source "VASTActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/mediation/vast/activity/VASTActivity;->startVideoProgressTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field maxAmountInList:I

.field final synthetic this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;


# direct methods
.method constructor <init>(Lcom/upsight/mediation/vast/activity/VASTActivity;)V
    .registers 3
    .param p1, "this$0"    # Lcom/upsight/mediation/vast/activity/VASTActivity;

    .prologue
    .line 933
    iput-object p1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$6;->this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 934
    const/16 v0, 0x13

    iput v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$6;->maxAmountInList:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 939
    iget-object v3, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$6;->this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

    # getter for: Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/upsight/mediation/vast/activity/VASTActivity;->access$500(Lcom/upsight/mediation/vast/activity/VASTActivity;)Landroid/media/MediaPlayer;

    move-result-object v3

    if-nez v3, :cond_9

    .line 977
    :goto_8
    return-void

    .line 943
    :cond_9
    iget-object v3, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$6;->this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

    # getter for: Lcom/upsight/mediation/vast/activity/VASTActivity;->mVideoProgressTracker:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/upsight/mediation/vast/activity/VASTActivity;->access$1200(Lcom/upsight/mediation/vast/activity/VASTActivity;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    iget v4, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$6;->maxAmountInList:I

    if-ne v3, v4, :cond_42

    .line 944
    iget-object v3, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$6;->this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

    # getter for: Lcom/upsight/mediation/vast/activity/VASTActivity;->mVideoProgressTracker:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/upsight/mediation/vast/activity/VASTActivity;->access$1200(Lcom/upsight/mediation/vast/activity/VASTActivity;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 945
    .local v1, "firstPosition":I
    iget-object v3, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$6;->this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

    # getter for: Lcom/upsight/mediation/vast/activity/VASTActivity;->mVideoProgressTracker:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/upsight/mediation/vast/activity/VASTActivity;->access$1200(Lcom/upsight/mediation/vast/activity/VASTActivity;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 947
    .local v2, "lastPosition":I
    if-le v2, v1, :cond_42

    .line 949
    iget-object v3, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$6;->this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

    # getter for: Lcom/upsight/mediation/vast/activity/VASTActivity;->mVideoProgressTracker:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/upsight/mediation/vast/activity/VASTActivity;->access$1200(Lcom/upsight/mediation/vast/activity/VASTActivity;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 961
    .end local v1    # "firstPosition":I
    .end local v2    # "lastPosition":I
    :cond_42
    :try_start_42
    iget-object v3, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$6;->this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

    # getter for: Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lcom/upsight/mediation/vast/activity/VASTActivity;->access$500(Lcom/upsight/mediation/vast/activity/VASTActivity;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 963
    .local v0, "curPos":I
    iget-object v3, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$6;->this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

    new-instance v4, Lcom/upsight/mediation/vast/activity/VASTActivity$6$1;

    invoke-direct {v4, p0}, Lcom/upsight/mediation/vast/activity/VASTActivity$6$1;-><init>(Lcom/upsight/mediation/vast/activity/VASTActivity$6;)V

    invoke-virtual {v3, v4}, Lcom/upsight/mediation/vast/activity/VASTActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 971
    iget-object v3, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$6;->this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

    # getter for: Lcom/upsight/mediation/vast/activity/VASTActivity;->mVideoProgressTracker:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/upsight/mediation/vast/activity/VASTActivity;->access$1200(Lcom/upsight/mediation/vast/activity/VASTActivity;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_63} :catch_64

    goto :goto_8

    .line 972
    .end local v0    # "curPos":I
    :catch_64
    move-exception v3

    goto :goto_8
.end method
