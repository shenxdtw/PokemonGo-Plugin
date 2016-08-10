.class Lcom/upsight/mediation/vast/activity/VASTActivity$5;
.super Ljava/util/TimerTask;
.source "VASTActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/mediation/vast/activity/VASTActivity;->startTrackingEventTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

.field final synthetic val$events:Ljava/util/List;

.field final synthetic val$videoDuration:I


# direct methods
.method constructor <init>(Lcom/upsight/mediation/vast/activity/VASTActivity;ILjava/util/List;)V
    .registers 4
    .param p1, "this$0"    # Lcom/upsight/mediation/vast/activity/VASTActivity;

    .prologue
    .line 851
    iput-object p1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$5;->this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

    iput p2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$5;->val$videoDuration:I

    iput-object p3, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$5;->val$events:Ljava/util/List;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    .line 855
    const/4 v2, 0x0

    .line 858
    .local v2, "percentage":I
    :try_start_2
    iget-object v4, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$5;->this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

    # getter for: Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v4}, Lcom/upsight/mediation/vast/activity/VASTActivity;->access$500(Lcom/upsight/mediation/vast/activity/VASTActivity;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 860
    .local v0, "curPos":I
    if-nez v0, :cond_f

    .line 914
    .end local v0    # "curPos":I
    :cond_e
    :goto_e
    return-void

    .line 863
    .restart local v0    # "curPos":I
    :cond_f
    mul-int/lit8 v4, v0, 0x64

    iget v5, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$5;->val$videoDuration:I

    div-int v2, v4, v5
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_84

    .line 870
    iget-object v4, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$5;->this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

    # getter for: Lcom/upsight/mediation/vast/activity/VASTActivity;->mQuartile:I
    invoke-static {v4}, Lcom/upsight/mediation/vast/activity/VASTActivity;->access$700(Lcom/upsight/mediation/vast/activity/VASTActivity;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x19

    if-lt v2, v4, :cond_3b

    .line 871
    iget-object v4, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$5;->this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

    # getter for: Lcom/upsight/mediation/vast/activity/VASTActivity;->mQuartile:I
    invoke-static {v4}, Lcom/upsight/mediation/vast/activity/VASTActivity;->access$700(Lcom/upsight/mediation/vast/activity/VASTActivity;)I

    move-result v4

    if-nez v4, :cond_a8

    .line 873
    iget-object v4, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$5;->this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

    sget-object v5, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->start:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    # invokes: Lcom/upsight/mediation/vast/activity/VASTActivity;->processEvent(Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;)V
    invoke-static {v4, v5}, Lcom/upsight/mediation/vast/activity/VASTActivity;->access$800(Lcom/upsight/mediation/vast/activity/VASTActivity;Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;)V

    .line 874
    sget-object v4, Lcom/upsight/mediation/vast/VASTPlayer;->currentPlayer:Lcom/upsight/mediation/vast/VASTPlayer;

    iget-object v4, v4, Lcom/upsight/mediation/vast/VASTPlayer;->listener:Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;->vastProgress(I)V

    .line 889
    :cond_36
    :goto_36
    iget-object v4, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$5;->this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

    # operator++ for: Lcom/upsight/mediation/vast/activity/VASTActivity;->mQuartile:I
    invoke-static {v4}, Lcom/upsight/mediation/vast/activity/VASTActivity;->access$708(Lcom/upsight/mediation/vast/activity/VASTActivity;)I

    .line 895
    :cond_3b
    iget-object v4, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$5;->this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

    # getter for: Lcom/upsight/mediation/vast/activity/VASTActivity;->mVersion:Ljava/lang/String;
    invoke-static {v4}, Lcom/upsight/mediation/vast/activity/VASTActivity;->access$1000(Lcom/upsight/mediation/vast/activity/VASTActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "3.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$5;->val$events:Ljava/util/List;

    if-eqz v4, :cond_e

    .line 896
    iget-object v4, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$5;->val$events:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_53
    :goto_53
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/upsight/mediation/vast/model/VASTTracking;

    .line 897
    .local v3, "v":Lcom/upsight/mediation/vast/model/VASTTracking;
    invoke-virtual {v3}, Lcom/upsight/mediation/vast/model/VASTTracking;->isOffsetRelative()Z

    move-result v5

    if-eqz v5, :cond_fd

    .line 898
    int-to-long v6, v2

    invoke-virtual {v3}, Lcom/upsight/mediation/vast/model/VASTTracking;->getParsedOffset()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-ltz v5, :cond_53

    invoke-virtual {v3}, Lcom/upsight/mediation/vast/model/VASTTracking;->isConsumed()Z

    move-result v5

    if-nez v5, :cond_53

    .line 899
    iget-object v5, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$5;->this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

    # invokes: Lcom/upsight/mediation/vast/activity/VASTActivity;->processProgressEvent(Lcom/upsight/mediation/vast/model/VASTTracking;)V
    invoke-static {v5, v3}, Lcom/upsight/mediation/vast/activity/VASTActivity;->access$1100(Lcom/upsight/mediation/vast/activity/VASTActivity;Lcom/upsight/mediation/vast/model/VASTTracking;)V

    .line 900
    invoke-virtual {v3, v10}, Lcom/upsight/mediation/vast/model/VASTTracking;->setConsumed(Z)V

    .line 902
    sget-object v5, Lcom/upsight/mediation/vast/VASTPlayer;->currentPlayer:Lcom/upsight/mediation/vast/VASTPlayer;

    iget-object v5, v5, Lcom/upsight/mediation/vast/VASTPlayer;->listener:Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;

    invoke-interface {v5, v2}, Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;->vastProgress(I)V

    goto :goto_53

    .line 864
    .end local v0    # "curPos":I
    .end local v3    # "v":Lcom/upsight/mediation/vast/model/VASTTracking;
    :catch_84
    move-exception v1

    .line 865
    .local v1, "e":Ljava/lang/Exception;
    # getter for: Lcom/upsight/mediation/vast/activity/VASTActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/upsight/mediation/vast/activity/VASTActivity;->access$600()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mediaPlayer.getCurrentPosition exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/upsight/mediation/log/FuseLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    invoke-virtual {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity$5;->cancel()Z

    goto/16 :goto_e

    .line 875
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "curPos":I
    :cond_a8
    iget-object v4, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$5;->this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

    # getter for: Lcom/upsight/mediation/vast/activity/VASTActivity;->mQuartile:I
    invoke-static {v4}, Lcom/upsight/mediation/vast/activity/VASTActivity;->access$700(Lcom/upsight/mediation/vast/activity/VASTActivity;)I

    move-result v4

    if-ne v4, v10, :cond_c2

    .line 877
    iget-object v4, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$5;->this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

    sget-object v5, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->firstQuartile:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    # invokes: Lcom/upsight/mediation/vast/activity/VASTActivity;->processEvent(Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;)V
    invoke-static {v4, v5}, Lcom/upsight/mediation/vast/activity/VASTActivity;->access$800(Lcom/upsight/mediation/vast/activity/VASTActivity;Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;)V

    .line 878
    sget-object v4, Lcom/upsight/mediation/vast/VASTPlayer;->currentPlayer:Lcom/upsight/mediation/vast/VASTPlayer;

    iget-object v4, v4, Lcom/upsight/mediation/vast/VASTPlayer;->listener:Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;

    const/16 v5, 0x19

    invoke-interface {v4, v5}, Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;->vastProgress(I)V

    goto/16 :goto_36

    .line 879
    :cond_c2
    iget-object v4, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$5;->this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

    # getter for: Lcom/upsight/mediation/vast/activity/VASTActivity;->mQuartile:I
    invoke-static {v4}, Lcom/upsight/mediation/vast/activity/VASTActivity;->access$700(Lcom/upsight/mediation/vast/activity/VASTActivity;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_dd

    .line 881
    iget-object v4, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$5;->this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

    sget-object v5, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->midpoint:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    # invokes: Lcom/upsight/mediation/vast/activity/VASTActivity;->processEvent(Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;)V
    invoke-static {v4, v5}, Lcom/upsight/mediation/vast/activity/VASTActivity;->access$800(Lcom/upsight/mediation/vast/activity/VASTActivity;Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;)V

    .line 882
    sget-object v4, Lcom/upsight/mediation/vast/VASTPlayer;->currentPlayer:Lcom/upsight/mediation/vast/VASTPlayer;

    iget-object v4, v4, Lcom/upsight/mediation/vast/VASTPlayer;->listener:Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;

    const/16 v5, 0x32

    invoke-interface {v4, v5}, Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;->vastProgress(I)V

    goto/16 :goto_36

    .line 883
    :cond_dd
    iget-object v4, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$5;->this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

    # getter for: Lcom/upsight/mediation/vast/activity/VASTActivity;->mQuartile:I
    invoke-static {v4}, Lcom/upsight/mediation/vast/activity/VASTActivity;->access$700(Lcom/upsight/mediation/vast/activity/VASTActivity;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_36

    .line 885
    iget-object v4, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$5;->this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

    sget-object v5, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->thirdQuartile:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    # invokes: Lcom/upsight/mediation/vast/activity/VASTActivity;->processEvent(Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;)V
    invoke-static {v4, v5}, Lcom/upsight/mediation/vast/activity/VASTActivity;->access$800(Lcom/upsight/mediation/vast/activity/VASTActivity;Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;)V

    .line 886
    sget-object v4, Lcom/upsight/mediation/vast/VASTPlayer;->currentPlayer:Lcom/upsight/mediation/vast/VASTPlayer;

    iget-object v4, v4, Lcom/upsight/mediation/vast/VASTPlayer;->listener:Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;

    const/16 v5, 0x4b

    invoke-interface {v4, v5}, Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;->vastProgress(I)V

    .line 887
    iget-object v4, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$5;->this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

    # invokes: Lcom/upsight/mediation/vast/activity/VASTActivity;->stopTrackingEventTimer()V
    invoke-static {v4}, Lcom/upsight/mediation/vast/activity/VASTActivity;->access$900(Lcom/upsight/mediation/vast/activity/VASTActivity;)V

    goto/16 :goto_36

    .line 905
    .restart local v3    # "v":Lcom/upsight/mediation/vast/model/VASTTracking;
    :cond_fd
    int-to-long v6, v0

    invoke-virtual {v3}, Lcom/upsight/mediation/vast/model/VASTTracking;->getParsedOffset()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-ltz v5, :cond_53

    invoke-virtual {v3}, Lcom/upsight/mediation/vast/model/VASTTracking;->isConsumed()Z

    move-result v5

    if-nez v5, :cond_53

    .line 906
    iget-object v5, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$5;->this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

    # invokes: Lcom/upsight/mediation/vast/activity/VASTActivity;->processProgressEvent(Lcom/upsight/mediation/vast/model/VASTTracking;)V
    invoke-static {v5, v3}, Lcom/upsight/mediation/vast/activity/VASTActivity;->access$1100(Lcom/upsight/mediation/vast/activity/VASTActivity;Lcom/upsight/mediation/vast/model/VASTTracking;)V

    .line 907
    invoke-virtual {v3, v10}, Lcom/upsight/mediation/vast/model/VASTTracking;->setConsumed(Z)V

    .line 909
    sget-object v5, Lcom/upsight/mediation/vast/VASTPlayer;->currentPlayer:Lcom/upsight/mediation/vast/VASTPlayer;

    iget-object v5, v5, Lcom/upsight/mediation/vast/VASTPlayer;->listener:Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;

    invoke-interface {v5, v2}, Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;->vastProgress(I)V

    goto/16 :goto_53
.end method
