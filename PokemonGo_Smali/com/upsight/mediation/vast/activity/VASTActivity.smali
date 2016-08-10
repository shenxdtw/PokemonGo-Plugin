.class public Lcom/upsight/mediation/vast/activity/VASTActivity;
.super Landroid/app/Activity;
.source "VASTActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/upsight/mediation/vast/Postroll/Postroll$Listener;


# static fields
.field private static final QUARTILE_TIMER_INTERVAL:J = 0xfaL

.field private static TAG:Ljava/lang/String; = null

.field private static final TOOLBAR_HIDE_DELAY:J = 0xbb8L

.field private static final VIDEO_PROGRESS_TIMER_INTERVAL:J = 0x21L

.field public static displayMetrics:Landroid/util/DisplayMetrics;


# instance fields
.field private mActionText:Ljava/lang/String;

.field private mCurrentOrientation:I

.field private mCurrentVideoPosition:I

.field private mEndCardHtml:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsCompleted:Z

.field private mIsPlayBackError:Z

.field private mIsProcessedImpressions:Z

.field private mIsRewarded:Z

.field private mIsVideoPaused:Z

.field private final mMaxProgressTrackingPoints:I

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOverlay:Landroid/widget/RelativeLayout;

.field private mPlayerControls:Lcom/upsight/mediation/vast/activity/PlayerControls;

.field private mPostroll:Lcom/upsight/mediation/vast/Postroll/Postroll;

.field private mPostrollFlag:Z

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mQuartile:I

.field private mRootLayout:Landroid/widget/RelativeLayout;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSkipOffset:J

.field private mSkipOffsetRelative:Z

.field private mSkipOffsetServer:J

.field private mStartVideoProgressTimer:Ljava/util/Timer;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mToolBarTimer:Ljava/util/Timer;

.field private mTrackingEventMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;",
            "Ljava/util/List",
            "<",
            "Lcom/upsight/mediation/vast/model/VASTTracking;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTrackingEventTimer:Ljava/util/Timer;

.field public mVastModel:Lcom/upsight/mediation/vast/model/VASTModel;

.field private mVersion:Ljava/lang/String;

.field private mVideoDuration:I

.field private mVideoHeight:I

.field private mVideoProgressTracker:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoWidth:I

.field private rekt:Landroid/graphics/Rect;

.field private shouldPlayOnResume:Z

.field private showingPostroll:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    const-string v0, "VASTActivity"

    sput-object v0, Lcom/upsight/mediation/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    iput-object v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mVideoProgressTracker:Ljava/util/LinkedList;

    .line 74
    const/16 v0, 0x14

    iput v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMaxProgressTrackingPoints:I

    .line 80
    iput-object v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mVastModel:Lcom/upsight/mediation/vast/model/VASTModel;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mEndCardHtml:Ljava/lang/String;

    .line 97
    iput-boolean v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mIsVideoPaused:Z

    .line 98
    iput-boolean v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mIsPlayBackError:Z

    .line 99
    iput-boolean v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mIsProcessedImpressions:Z

    .line 100
    iput-boolean v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mIsCompleted:Z

    .line 102
    iput v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mQuartile:I

    .line 116
    iput-boolean v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->shouldPlayOnResume:Z

    return-void
.end method

.method static synthetic access$000(Lcom/upsight/mediation/vast/activity/VASTActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/upsight/mediation/vast/activity/VASTActivity;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->overlayClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/upsight/mediation/vast/activity/VASTActivity;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/vast/activity/VASTActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->rekt:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/upsight/mediation/vast/activity/VASTActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/vast/activity/VASTActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/upsight/mediation/vast/activity/VASTActivity;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/vast/activity/VASTActivity;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->rekt:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/upsight/mediation/vast/activity/VASTActivity;Lcom/upsight/mediation/vast/model/VASTTracking;)V
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/vast/activity/VASTActivity;
    .param p1, "x1"    # Lcom/upsight/mediation/vast/model/VASTTracking;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/upsight/mediation/vast/activity/VASTActivity;->processProgressEvent(Lcom/upsight/mediation/vast/model/VASTTracking;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/upsight/mediation/vast/activity/VASTActivity;)Ljava/util/LinkedList;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/vast/activity/VASTActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mVideoProgressTracker:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/mediation/vast/activity/VASTActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/upsight/mediation/vast/activity/VASTActivity;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->skipClicked()V

    return-void
.end method

.method static synthetic access$300(Lcom/upsight/mediation/vast/activity/VASTActivity;)Lcom/upsight/mediation/vast/activity/PlayerControls;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/vast/activity/VASTActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mPlayerControls:Lcom/upsight/mediation/vast/activity/PlayerControls;

    return-object v0
.end method

.method static synthetic access$400(Lcom/upsight/mediation/vast/activity/VASTActivity;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/vast/activity/VASTActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/upsight/mediation/vast/activity/VASTActivity;)Landroid/media/MediaPlayer;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/vast/activity/VASTActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/upsight/mediation/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/upsight/mediation/vast/activity/VASTActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/vast/activity/VASTActivity;

    .prologue
    .line 55
    iget v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mQuartile:I

    return v0
.end method

.method static synthetic access$708(Lcom/upsight/mediation/vast/activity/VASTActivity;)I
    .registers 3
    .param p0, "x0"    # Lcom/upsight/mediation/vast/activity/VASTActivity;

    .prologue
    .line 55
    iget v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mQuartile:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mQuartile:I

    return v0
.end method

.method static synthetic access$800(Lcom/upsight/mediation/vast/activity/VASTActivity;Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;)V
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/vast/activity/VASTActivity;
    .param p1, "x1"    # Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/upsight/mediation/vast/activity/VASTActivity;->processEvent(Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;)V

    return-void
.end method

.method static synthetic access$900(Lcom/upsight/mediation/vast/activity/VASTActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/upsight/mediation/vast/activity/VASTActivity;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->stopTrackingEventTimer()V

    return-void
.end method

.method private activateButtons(Z)V
    .registers 4
    .param p1, "active"    # Z

    .prologue
    .line 406
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mPlayerControls:Lcom/upsight/mediation/vast/activity/PlayerControls;

    if-nez v0, :cond_5

    .line 415
    :goto_4
    return-void

    .line 410
    :cond_5
    if-eqz p1, :cond_e

    .line 411
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mPlayerControls:Lcom/upsight/mediation/vast/activity/PlayerControls;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/upsight/mediation/vast/activity/PlayerControls;->setVisibility(I)V

    goto :goto_4

    .line 413
    :cond_e
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mPlayerControls:Lcom/upsight/mediation/vast/activity/PlayerControls;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/upsight/mediation/vast/activity/PlayerControls;->setVisibility(I)V

    goto :goto_4
.end method

.method private calculateAspectRatio()V
    .registers 15

    .prologue
    .line 644
    iget v7, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mVideoWidth:I

    if-eqz v7, :cond_8

    iget v7, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mVideoHeight:I

    if-nez v7, :cond_10

    .line 645
    :cond_8
    sget-object v7, Lcom/upsight/mediation/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v10, "mVideoWidth or mVideoHeight is 0, skipping calculateAspectRatio"

    invoke-static {v7, v10}, Lcom/upsight/mediation/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    :goto_f
    return-void

    .line 649
    :cond_10
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    iget v7, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mScreenWidth:I

    int-to-double v12, v7

    mul-double/2addr v10, v12

    iget v7, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mVideoWidth:I

    int-to-double v12, v7

    div-double v8, v10, v12

    .line 650
    .local v8, "widthRatio":D
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    iget v7, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mScreenHeight:I

    int-to-double v12, v7

    mul-double/2addr v10, v12

    iget v7, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mVideoHeight:I

    int-to-double v12, v7

    div-double v0, v10, v12

    .line 652
    .local v0, "heightRatio":D
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 654
    .local v4, "scale":D
    iget v7, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mVideoWidth:I

    int-to-double v10, v7

    mul-double/2addr v10, v4

    double-to-int v6, v10

    .line 655
    .local v6, "surfaceWidth":I
    iget v7, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mVideoHeight:I

    int-to-double v10, v7

    mul-double/2addr v10, v4

    double-to-int v3, v10

    .line 657
    .local v3, "surfaceHeight":I
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 659
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xd

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 660
    iget-object v7, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v7, v2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 662
    iget-object v7, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v7, v6, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 664
    sget-object v7, Lcom/upsight/mediation/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " screen size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mScreenWidth:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mScreenHeight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/upsight/mediation/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    sget-object v7, Lcom/upsight/mediation/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " video size:  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mVideoWidth:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mVideoHeight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/upsight/mediation/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    sget-object v7, Lcom/upsight/mediation/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "surface size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/upsight/mediation/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f
.end method

.method private cleanActivityUp()V
    .registers 3

    .prologue
    .line 670
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->cleanUpMediaPlayer()V

    .line 671
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->stopTrackingEventTimer()V

    .line 672
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->stopVideoProgressTimer()V

    .line 673
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->stopToolBarTimer()V

    .line 674
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mPlayerControls:Lcom/upsight/mediation/vast/activity/PlayerControls;

    if-eqz v0, :cond_21

    .line 675
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mPlayerControls:Lcom/upsight/mediation/vast/activity/PlayerControls;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/upsight/mediation/vast/activity/PlayerControls;->setVisibility(I)V

    .line 676
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mOverlay:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mPlayerControls:Lcom/upsight/mediation/vast/activity/PlayerControls;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 677
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mPlayerControls:Lcom/upsight/mediation/vast/activity/PlayerControls;

    .line 679
    :cond_21
    return-void
.end method

.method private cleanUpMediaPlayer()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 683
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2d

    .line 684
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 685
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 688
    :cond_12
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 689
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 690
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 691
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 692
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 693
    iput-object v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 695
    :cond_2d
    return-void
.end method

.method private createMediaPlayer()V
    .registers 3

    .prologue
    .line 269
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 270
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 271
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 272
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 273
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 274
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 275
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 276
    return-void
.end method

.method private createOverlay(Landroid/widget/RelativeLayout$LayoutParams;)V
    .registers 4
    .param p1, "params"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    const/4 v1, 0x0

    .line 279
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mOverlay:Landroid/widget/RelativeLayout;

    .line 280
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mOverlay:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mOverlay:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 282
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mOverlay:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 283
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mOverlay:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/upsight/mediation/vast/activity/VASTActivity$1;

    invoke-direct {v1, p0}, Lcom/upsight/mediation/vast/activity/VASTActivity$1;-><init>(Lcom/upsight/mediation/vast/activity/VASTActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 290
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mOverlay:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 291
    return-void
.end method

.method private createPlayerControls()V
    .registers 9

    .prologue
    .line 294
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 297
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 300
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->resolveSkipOffset()V

    .line 302
    new-instance v2, Lcom/upsight/mediation/vast/activity/PlayerControls;

    invoke-direct {v2, p0}, Lcom/upsight/mediation/vast/activity/PlayerControls;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mPlayerControls:Lcom/upsight/mediation/vast/activity/PlayerControls;

    .line 303
    iget-object v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mPlayerControls:Lcom/upsight/mediation/vast/activity/PlayerControls;

    iget-object v3, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mVastModel:Lcom/upsight/mediation/vast/model/VASTModel;

    invoke-virtual {v2, v3}, Lcom/upsight/mediation/vast/activity/PlayerControls;->setVastModel(Lcom/upsight/mediation/vast/model/VASTModel;)V

    .line 305
    iget-object v3, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mPlayerControls:Lcom/upsight/mediation/vast/activity/PlayerControls;

    iget-wide v4, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mSkipOffset:J

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-eqz v2, :cond_6e

    const/4 v2, 0x1

    :goto_28
    iget-boolean v4, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mPostrollFlag:Z

    invoke-virtual {v3, v2, v4}, Lcom/upsight/mediation/vast/activity/PlayerControls;->init(ZZ)V

    .line 306
    iget-object v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mPlayerControls:Lcom/upsight/mediation/vast/activity/PlayerControls;

    invoke-virtual {v2, v1}, Lcom/upsight/mediation/vast/activity/PlayerControls;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    iget-object v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mPlayerControls:Lcom/upsight/mediation/vast/activity/PlayerControls;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/upsight/mediation/vast/activity/PlayerControls;->setVisibility(I)V

    .line 308
    iget-object v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mPlayerControls:Lcom/upsight/mediation/vast/activity/PlayerControls;

    invoke-virtual {v2}, Lcom/upsight/mediation/vast/activity/PlayerControls;->getLearnText()Landroid/widget/TextView;

    move-result-object v0

    .line 309
    .local v0, "button":Landroid/widget/TextView;
    if-eqz v0, :cond_5c

    .line 310
    iget-object v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mActionText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mActionText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    rsub-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 312
    new-instance v2, Lcom/upsight/mediation/vast/activity/VASTActivity$2;

    invoke-direct {v2, p0}, Lcom/upsight/mediation/vast/activity/VASTActivity$2;-><init>(Lcom/upsight/mediation/vast/activity/VASTActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 331
    :cond_5c
    iget-object v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mPlayerControls:Lcom/upsight/mediation/vast/activity/PlayerControls;

    new-instance v3, Lcom/upsight/mediation/vast/activity/VASTActivity$3;

    invoke-direct {v3, p0}, Lcom/upsight/mediation/vast/activity/VASTActivity$3;-><init>(Lcom/upsight/mediation/vast/activity/VASTActivity;)V

    invoke-virtual {v2, v3}, Lcom/upsight/mediation/vast/activity/PlayerControls;->setSkipButtonListener(Landroid/view/View$OnTouchListener;)V

    .line 349
    iget-object v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mOverlay:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mPlayerControls:Lcom/upsight/mediation/vast/activity/PlayerControls;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 350
    return-void

    .line 305
    .end local v0    # "button":Landroid/widget/TextView;
    :cond_6e
    const/4 v2, 0x0

    goto :goto_28
.end method

.method private createPostroll()V
    .registers 5

    .prologue
    .line 377
    iget-object v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mEndCardHtml:Ljava/lang/String;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mEndCardHtml:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1b

    .line 378
    new-instance v2, Lcom/upsight/mediation/vast/Postroll/MRaidPostroll;

    iget-object v3, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mEndCardHtml:Ljava/lang/String;

    invoke-direct {v2, p0, v3, p0}, Lcom/upsight/mediation/vast/Postroll/MRaidPostroll;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/upsight/mediation/vast/Postroll/Postroll$Listener;)V

    iput-object v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mPostroll:Lcom/upsight/mediation/vast/Postroll/Postroll;

    .line 384
    :goto_15
    iget-object v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mPostroll:Lcom/upsight/mediation/vast/Postroll/Postroll;

    invoke-interface {v2}, Lcom/upsight/mediation/vast/Postroll/Postroll;->init()V

    .line 388
    return-void

    .line 380
    :cond_1b
    iget-object v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mVastModel:Lcom/upsight/mediation/vast/model/VASTModel;

    invoke-virtual {v2}, Lcom/upsight/mediation/vast/model/VASTModel;->getVideoClicks()Lcom/upsight/mediation/vast/model/VideoClicks;

    move-result-object v2

    invoke-virtual {v2}, Lcom/upsight/mediation/vast/model/VideoClicks;->getClickThrough()Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "clickThroughUrl":Ljava/lang/String;
    if-eqz v0, :cond_38

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_38

    const/4 v1, 0x1

    .line 382
    .local v1, "shouldShowActionButton":Z
    :goto_2e
    new-instance v2, Lcom/upsight/mediation/vast/activity/DefaultPostroll;

    iget-object v3, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mActionText:Ljava/lang/String;

    invoke-direct {v2, p0, p0, v1, v3}, Lcom/upsight/mediation/vast/activity/DefaultPostroll;-><init>(Landroid/content/Context;Lcom/upsight/mediation/vast/Postroll/Postroll$Listener;ZLjava/lang/String;)V

    iput-object v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mPostroll:Lcom/upsight/mediation/vast/Postroll/Postroll;

    goto :goto_15

    .line 381
    .end local v1    # "shouldShowActionButton":Z
    :cond_38
    const/4 v1, 0x0

    goto :goto_2e
.end method

.method private createProgressBar()V
    .registers 4

    .prologue
    .line 230
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 233
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 235
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 236
    iget-object v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    iget-object v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 239
    iget-object v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 240
    return-void
.end method

.method private createRootLayout(Landroid/widget/RelativeLayout$LayoutParams;)V
    .registers 4
    .param p1, "params"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    const/4 v1, 0x0

    .line 251
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    .line 252
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 254
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 255
    return-void
.end method

.method private createSurface(Landroid/widget/RelativeLayout$LayoutParams;)V
    .registers 4
    .param p1, "params"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 259
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mSurfaceView:Landroid/view/SurfaceView;

    .line 260
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 263
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 264
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 265
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 266
    return-void
.end method

.method private createUIComponents()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 209
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 213
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {p0, v0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->createRootLayout(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 214
    invoke-direct {p0, v0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->createSurface(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 215
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->createMediaPlayer()V

    .line 216
    invoke-direct {p0, v0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->createOverlay(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 219
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->createPlayerControls()V

    .line 220
    iget-boolean v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mPostrollFlag:Z

    if-eqz v1, :cond_1c

    .line 221
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->createPostroll()V

    .line 224
    :cond_1c
    iget-object v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/upsight/mediation/vast/activity/VASTActivity;->setContentView(Landroid/view/View;)V

    .line 226
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->createProgressBar()V

    .line 227
    return-void
.end method

.method private finishVAST()V
    .registers 3

    .prologue
    .line 1020
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->cleanActivityUp()V

    .line 1022
    :try_start_3
    sget-object v0, Lcom/upsight/mediation/vast/VASTPlayer;->currentPlayer:Lcom/upsight/mediation/vast/VASTPlayer;

    iget-object v0, v0, Lcom/upsight/mediation/vast/VASTPlayer;->listener:Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;

    invoke-interface {v0}, Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;->vastDismiss()V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_a} :catch_14

    .line 1026
    :goto_a
    sget-object v0, Lcom/upsight/mediation/vast/VASTPlayer;->currentPlayer:Lcom/upsight/mediation/vast/VASTPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/upsight/mediation/vast/VASTPlayer;->setLoaded(Z)V

    .line 1027
    invoke-virtual {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->finish()V

    .line 1028
    return-void

    .line 1023
    :catch_14
    move-exception v0

    goto :goto_a
.end method

.method private fireUrl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 770
    if-eqz p2, :cond_8

    .line 772
    sget-object v0, Lcom/upsight/mediation/vast/VASTPlayer;->currentPlayer:Lcom/upsight/mediation/vast/VASTPlayer;

    invoke-static {p1, p2, v0}, Lcom/upsight/mediation/vast/util/HttpTools;->httpGetURL(Ljava/lang/String;Ljava/lang/String;Lcom/upsight/mediation/vast/VASTPlayer;)V

    .line 776
    :goto_7
    return-void

    .line 774
    :cond_8
    sget-object v0, Lcom/upsight/mediation/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v1, "\turl is null"

    invoke-static {v0, v1}, Lcom/upsight/mediation/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method private fireUrls(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 782
    .local p2, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_18

    .line 783
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 785
    .local v0, "url":Ljava/lang/String;
    sget-object v2, Lcom/upsight/mediation/vast/VASTPlayer;->currentPlayer:Lcom/upsight/mediation/vast/VASTPlayer;

    invoke-static {p1, v0, v2}, Lcom/upsight/mediation/vast/util/HttpTools;->httpGetURL(Ljava/lang/String;Ljava/lang/String;Lcom/upsight/mediation/vast/VASTPlayer;)V

    goto :goto_6

    .line 788
    .end local v0    # "url":Ljava/lang/String;
    :cond_18
    sget-object v1, Lcom/upsight/mediation/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v2, "\turl list is null"

    invoke-static {v1, v2}, Lcom/upsight/mediation/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    :cond_1f
    return-void
.end method

.method private hideProgressBar()V
    .registers 3

    .prologue
    .line 247
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 248
    return-void
.end method

.method private hideTitleStatusBars()V
    .registers 3

    .prologue
    const/16 v1, 0x400

    .line 202
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->requestWindowFeature(I)Z

    .line 204
    invoke-virtual {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 206
    return-void
.end method

.method private overlayClicked()V
    .registers 1

    .prologue
    .line 756
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->startToolBarTimer()V

    .line 757
    return-void
.end method

.method private processClickThroughEvent()V
    .registers 13

    .prologue
    .line 422
    iget-object v5, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mVastModel:Lcom/upsight/mediation/vast/model/VASTModel;

    invoke-virtual {v5}, Lcom/upsight/mediation/vast/model/VASTModel;->getVideoClicks()Lcom/upsight/mediation/vast/model/VideoClicks;

    move-result-object v5

    invoke-virtual {v5}, Lcom/upsight/mediation/vast/model/VideoClicks;->getClickThrough()Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "clickThroughUrl":Ljava/lang/String;
    sget-object v5, Lcom/upsight/mediation/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clickThrough url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/upsight/mediation/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v5, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mVastModel:Lcom/upsight/mediation/vast/model/VASTModel;

    invoke-virtual {v5}, Lcom/upsight/mediation/vast/model/VASTModel;->getVideoClicks()Lcom/upsight/mediation/vast/model/VideoClicks;

    move-result-object v5

    invoke-virtual {v5}, Lcom/upsight/mediation/vast/model/VideoClicks;->getClickTracking()Ljava/util/List;

    move-result-object v4

    .line 428
    .local v4, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "click"

    invoke-direct {p0, v5, v4}, Lcom/upsight/mediation/vast/activity/VASTActivity;->fireUrls(Ljava/lang/String;Ljava/util/List;)V

    .line 432
    :try_start_31
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 433
    .local v3, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 434
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 435
    .local v2, "resolvable":Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_6d

    .line 436
    sget-object v5, Lcom/upsight/mediation/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v6, "Clickthrough error occured, uri unresolvable"

    invoke-static {v5, v6}, Lcom/upsight/mediation/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget v5, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mCurrentVideoPosition:I

    int-to-double v6, v5

    iget-object v5, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v5

    int-to-double v8, v5

    const-wide v10, 0x3fefae147ae147aeL    # 0.99

    mul-double/2addr v8, v10

    cmpl-double v5, v6, v8

    if-ltz v5, :cond_68

    .line 438
    iget-object v5, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->start()V

    .line 440
    :cond_68
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/upsight/mediation/vast/activity/VASTActivity;->activateButtons(Z)V

    .line 448
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "resolvable":Landroid/content/pm/ResolveInfo;
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_6c
    return-void

    .line 443
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "resolvable":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "uri":Landroid/net/Uri;
    :cond_6d
    invoke-virtual {p0, v1}, Lcom/upsight/mediation/vast/activity/VASTActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_70
    .catch Ljava/lang/NullPointerException; {:try_start_31 .. :try_end_70} :catch_71

    goto :goto_6c

    .line 445
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "resolvable":Landroid/content/pm/ResolveInfo;
    .end local v3    # "uri":Landroid/net/Uri;
    :catch_71
    move-exception v5

    goto :goto_6c
.end method

.method private processErrorEvent()V
    .registers 3

    .prologue
    .line 713
    iget-object v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mVastModel:Lcom/upsight/mediation/vast/model/VASTModel;

    invoke-virtual {v1}, Lcom/upsight/mediation/vast/model/VASTModel;->getErrorUrl()Ljava/util/List;

    move-result-object v0

    .line 715
    .local v0, "errorUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "error"

    invoke-direct {p0, v1, v0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->fireUrls(Ljava/lang/String;Ljava/util/List;)V

    .line 716
    return-void
.end method

.method private processEvent(Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;)V
    .registers 7
    .param p1, "eventName"    # Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    .prologue
    .line 993
    iget-object v3, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mTrackingEventMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 995
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/mediation/vast/model/VASTTracking;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 997
    .local v1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_10

    .line 1005
    :goto_f
    return-void

    .line 1000
    :cond_10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/mediation/vast/model/VASTTracking;

    .line 1001
    .local v2, "v":Lcom/upsight/mediation/vast/model/VASTTracking;
    invoke-virtual {v2}, Lcom/upsight/mediation/vast/model/VASTTracking;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 1004
    .end local v2    # "v":Lcom/upsight/mediation/vast/model/VASTTracking;
    :cond_28
    invoke-virtual {p1}, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/upsight/mediation/vast/activity/VASTActivity;->fireUrls(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_f
.end method

.method private processImpressions()V
    .registers 3

    .prologue
    .line 762
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mIsProcessedImpressions:Z

    .line 763
    iget-object v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mVastModel:Lcom/upsight/mediation/vast/model/VASTModel;

    invoke-virtual {v1}, Lcom/upsight/mediation/vast/model/VASTModel;->getImpressions()Ljava/util/List;

    move-result-object v0

    .line 764
    .local v0, "impressions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "impression"

    invoke-direct {p0, v1, v0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->fireUrls(Ljava/lang/String;Ljava/util/List;)V

    .line 765
    return-void
.end method

.method private processPauseSteps()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 509
    iput-boolean v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mIsVideoPaused:Z

    .line 510
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 511
    iput-boolean v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->shouldPlayOnResume:Z

    .line 512
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->stopVideoProgressTimer()V

    .line 513
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->stopToolBarTimer()V

    .line 514
    return-void
.end method

.method private processPlaySteps()V
    .registers 2

    .prologue
    .line 519
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mIsVideoPaused:Z

    .line 520
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 521
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->startToolBarTimer()V

    .line 522
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->startVideoProgressTimer()V

    .line 523
    return-void
.end method

.method private processProgressEvent(Lcom/upsight/mediation/vast/model/VASTTracking;)V
    .registers 4
    .param p1, "event"    # Lcom/upsight/mediation/vast/model/VASTTracking;

    .prologue
    .line 1013
    if-nez p1, :cond_3

    .line 1017
    :goto_2
    return-void

    .line 1016
    :cond_3
    invoke-virtual {p1}, Lcom/upsight/mediation/vast/model/VASTTracking;->getEvent()Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/upsight/mediation/vast/model/VASTTracking;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/upsight/mediation/vast/activity/VASTActivity;->fireUrl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private resetPlayerToBeginning()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 481
    iput-boolean v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->showingPostroll:Z

    .line 482
    iput-boolean v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mIsCompleted:Z

    .line 483
    iput v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mQuartile:I

    .line 484
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->createPlayerControls()V

    .line 485
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p0, v0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 486
    return-void
.end method

.method private resolveSkipOffset()V
    .registers 7

    .prologue
    .line 355
    iget-object v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mVersion:Ljava/lang/String;

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 356
    iget-object v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mVastModel:Lcom/upsight/mediation/vast/model/VASTModel;

    invoke-virtual {v1}, Lcom/upsight/mediation/vast/model/VASTModel;->getSkipOffset()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "skipOffsetValue":Ljava/lang/String;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_37

    .line 360
    :cond_18
    iget-wide v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mSkipOffsetServer:J

    iput-wide v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mSkipOffset:J

    .line 370
    .end local v0    # "skipOffsetValue":Ljava/lang/String;
    :goto_1c
    sget-object v1, Lcom/upsight/mediation/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skipOffset:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mSkipOffset:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/upsight/mediation/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    return-void

    .line 361
    .restart local v0    # "skipOffsetValue":Ljava/lang/String;
    :cond_37
    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 362
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mSkipOffsetRelative:Z

    .line 363
    const/4 v1, 0x0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mSkipOffset:J

    goto :goto_1c

    .line 365
    :cond_54
    invoke-static {v0}, Lcom/upsight/mediation/vast/util/Assets;->parseOffset(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mSkipOffset:J

    goto :goto_1c

    .line 368
    .end local v0    # "skipOffsetValue":Ljava/lang/String;
    :cond_5b
    iget-wide v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mSkipOffsetServer:J

    iput-wide v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mSkipOffset:J

    goto :goto_1c
.end method

.method private showPostroll()V
    .registers 3

    .prologue
    .line 750
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->showingPostroll:Z

    .line 751
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->cleanActivityUp()V

    .line 752
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mPostroll:Lcom/upsight/mediation/vast/Postroll/Postroll;

    iget-object v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Lcom/upsight/mediation/vast/Postroll/Postroll;->show(Landroid/view/ViewGroup;)V

    .line 753
    return-void
.end method

.method private showProgressBar()V
    .registers 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 244
    return-void
.end method

.method private skipClicked()V
    .registers 3

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mPostrollFlag:Z

    if-eqz v0, :cond_21

    .line 493
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->cleanActivityUp()V

    .line 494
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->showPostroll()V

    .line 499
    :goto_a
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mVersion:Ljava/lang/String;

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 500
    sget-object v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->skip:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    invoke-direct {p0, v0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->processEvent(Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;)V

    .line 502
    :cond_19
    sget-object v0, Lcom/upsight/mediation/vast/VASTPlayer;->currentPlayer:Lcom/upsight/mediation/vast/VASTPlayer;

    iget-object v0, v0, Lcom/upsight/mediation/vast/VASTPlayer;->listener:Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;

    invoke-interface {v0}, Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;->vastSkip()V

    .line 505
    return-void

    .line 496
    :cond_21
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->finishVAST()V

    goto :goto_a
.end method

.method private startToolBarTimer()V
    .registers 5

    .prologue
    .line 796
    iget v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mQuartile:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 820
    :cond_5
    :goto_5
    return-void

    .line 800
    :cond_6
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 801
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->stopToolBarTimer()V

    .line 802
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mToolBarTimer:Ljava/util/Timer;

    .line 803
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mToolBarTimer:Ljava/util/Timer;

    new-instance v1, Lcom/upsight/mediation/vast/activity/VASTActivity$4;

    invoke-direct {v1, p0}, Lcom/upsight/mediation/vast/activity/VASTActivity$4;-><init>(Lcom/upsight/mediation/vast/activity/VASTActivity;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 814
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mPlayerControls:Lcom/upsight/mediation/vast/activity/PlayerControls;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/upsight/mediation/vast/activity/PlayerControls;->setVisibility(I)V

    .line 817
    :cond_2e
    iget-boolean v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mIsVideoPaused:Z

    if-eqz v0, :cond_5

    .line 818
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->activateButtons(Z)V

    goto :goto_5
.end method

.method private startTrackingEventTimer()V
    .registers 12

    .prologue
    .line 832
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->stopTrackingEventTimer()V

    .line 834
    iget-boolean v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mIsCompleted:Z

    if-eqz v2, :cond_8

    .line 916
    :goto_7
    return-void

    .line 839
    :cond_8
    iget-object v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v10

    .line 842
    .local v10, "videoDuration":I
    const/4 v9, 0x0

    .line 844
    .local v9, "eventsTemp":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/mediation/vast/model/VASTTracking;>;"
    :try_start_f
    iget-object v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mTrackingEventMap:Ljava/util/HashMap;

    sget-object v3, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->progress:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/List;

    move-object v9, v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1b} :catch_32

    .line 848
    :goto_1b
    move-object v8, v9

    .line 850
    .local v8, "events":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/mediation/vast/model/VASTTracking;>;"
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mTrackingEventTimer:Ljava/util/Timer;

    .line 851
    iget-object v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mTrackingEventTimer:Ljava/util/Timer;

    new-instance v3, Lcom/upsight/mediation/vast/activity/VASTActivity$5;

    invoke-direct {v3, p0, v10, v8}, Lcom/upsight/mediation/vast/activity/VASTActivity$5;-><init>(Lcom/upsight/mediation/vast/activity/VASTActivity;ILjava/util/List;)V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0xfa

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_7

    .line 845
    .end local v8    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/mediation/vast/model/VASTTracking;>;"
    :catch_32
    move-exception v2

    goto :goto_1b
.end method

.method private startVideoProgressTimer()V
    .registers 7

    .prologue
    .line 928
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mStartVideoProgressTimer:Ljava/util/Timer;

    .line 929
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mVideoProgressTracker:Ljava/util/LinkedList;

    .line 931
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mPlayerControls:Lcom/upsight/mediation/vast/activity/PlayerControls;

    iget v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mVideoDuration:I

    int-to-long v2, v1

    iget-wide v4, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mSkipOffset:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/upsight/mediation/vast/activity/PlayerControls;->setTimes(JJ)V

    .line 933
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mStartVideoProgressTimer:Ljava/util/Timer;

    new-instance v1, Lcom/upsight/mediation/vast/activity/VASTActivity$6;

    invoke-direct {v1, p0}, Lcom/upsight/mediation/vast/activity/VASTActivity$6;-><init>(Lcom/upsight/mediation/vast/activity/VASTActivity;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x21

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 979
    return-void
.end method

.method private stopToolBarTimer()V
    .registers 2

    .prologue
    .line 824
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mToolBarTimer:Ljava/util/Timer;

    if-eqz v0, :cond_c

    .line 825
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mToolBarTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 826
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mToolBarTimer:Ljava/util/Timer;

    .line 828
    :cond_c
    return-void
.end method

.method private stopTrackingEventTimer()V
    .registers 2

    .prologue
    .line 919
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mTrackingEventTimer:Ljava/util/Timer;

    if-eqz v0, :cond_c

    .line 920
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mTrackingEventTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 921
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mTrackingEventTimer:Ljava/util/Timer;

    .line 923
    :cond_c
    return-void
.end method

.method private stopVideoProgressTimer()V
    .registers 2

    .prologue
    .line 984
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mStartVideoProgressTimer:Ljava/util/Timer;

    if-eqz v0, :cond_9

    .line 985
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mStartVideoProgressTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 987
    :cond_9
    return-void
.end method


# virtual methods
.method public closeClicked()V
    .registers 2

    .prologue
    .line 452
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->cleanActivityUp()V

    .line 454
    iget-boolean v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mIsPlayBackError:Z

    if-nez v0, :cond_c

    .line 455
    sget-object v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->close:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    invoke-direct {p0, v0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->processEvent(Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;)V

    .line 457
    :cond_c
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->finishVAST()V

    .line 460
    return-void
.end method

.method public infoClicked(Z)V
    .registers 3
    .param p1, "shouldHandleClickThrough"    # Z

    .prologue
    .line 392
    sget-object v0, Lcom/upsight/mediation/vast/VASTPlayer;->currentPlayer:Lcom/upsight/mediation/vast/VASTPlayer;

    iget-object v0, v0, Lcom/upsight/mediation/vast/VASTPlayer;->listener:Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;

    if-eqz v0, :cond_d

    .line 393
    sget-object v0, Lcom/upsight/mediation/vast/VASTPlayer;->currentPlayer:Lcom/upsight/mediation/vast/VASTPlayer;

    iget-object v0, v0, Lcom/upsight/mediation/vast/VASTPlayer;->listener:Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;

    invoke-interface {v0}, Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;->vastClick()V

    .line 396
    :cond_d
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->activateButtons(Z)V

    .line 397
    if-eqz p1, :cond_16

    .line 398
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->processClickThroughEvent()V

    .line 401
    :cond_16
    invoke-virtual {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->closeClicked()V

    .line 402
    return-void
.end method

.method public onBackPressed()V
    .registers 5

    .prologue
    .line 529
    iget-wide v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mSkipOffset:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_19

    .line 530
    iget-boolean v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mIsCompleted:Z

    if-nez v0, :cond_13

    .line 531
    sget-object v0, Lcom/upsight/mediation/vast/VASTPlayer;->currentPlayer:Lcom/upsight/mediation/vast/VASTPlayer;

    iget-object v0, v0, Lcom/upsight/mediation/vast/VASTPlayer;->listener:Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;

    invoke-interface {v0}, Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;->vastSkip()V

    .line 533
    :cond_13
    invoke-virtual {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->closeClicked()V

    .line 534
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 536
    :cond_19
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 727
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->cleanActivityUp()V

    .line 729
    iget-boolean v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mIsPlayBackError:Z

    if-nez v0, :cond_34

    iget-boolean v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mIsCompleted:Z

    if-nez v0, :cond_34

    .line 730
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mIsCompleted:Z

    .line 731
    sget-object v0, Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;->complete:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    invoke-direct {p0, v0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->processEvent(Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;)V

    .line 733
    sget-object v0, Lcom/upsight/mediation/vast/VASTPlayer;->currentPlayer:Lcom/upsight/mediation/vast/VASTPlayer;

    iget-object v0, v0, Lcom/upsight/mediation/vast/VASTPlayer;->listener:Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;

    if-eqz v0, :cond_34

    .line 734
    sget-object v0, Lcom/upsight/mediation/vast/VASTPlayer;->currentPlayer:Lcom/upsight/mediation/vast/VASTPlayer;

    iget-object v0, v0, Lcom/upsight/mediation/vast/VASTPlayer;->listener:Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;->vastProgress(I)V

    .line 735
    sget-object v0, Lcom/upsight/mediation/vast/VASTPlayer;->currentPlayer:Lcom/upsight/mediation/vast/VASTPlayer;

    iget-object v0, v0, Lcom/upsight/mediation/vast/VASTPlayer;->listener:Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;

    invoke-interface {v0}, Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;->vastComplete()V

    .line 736
    iget-boolean v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mIsRewarded:Z

    if-eqz v0, :cond_34

    .line 737
    sget-object v0, Lcom/upsight/mediation/vast/VASTPlayer;->currentPlayer:Lcom/upsight/mediation/vast/VASTPlayer;

    iget-object v0, v0, Lcom/upsight/mediation/vast/VASTPlayer;->listener:Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;

    invoke-interface {v0}, Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;->vastRewardedVideoComplete()V

    .line 742
    :cond_34
    iget-boolean v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mPostrollFlag:Z

    if-eqz v0, :cond_3c

    .line 743
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->showPostroll()V

    .line 747
    :goto_3b
    return-void

    .line 745
    :cond_3c
    invoke-virtual {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->closeClicked()V

    goto :goto_3b
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 122
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "postroll"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mPostrollFlag:Z

    .line 123
    const-string v1, "endCardHtml"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mEndCardHtml:Ljava/lang/String;

    .line 124
    const-string v1, "skipOffset"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mSkipOffsetServer:J

    .line 125
    const-string v1, "rewarded"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mIsRewarded:Z

    .line 126
    const-string v1, "actionText"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mActionText:Ljava/lang/String;

    .line 127
    const-string v1, "com.nexage.android.vast.player.vastModel"

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/upsight/mediation/vast/model/VASTModel;

    iput-object v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mVastModel:Lcom/upsight/mediation/vast/model/VASTModel;

    .line 129
    iget-object v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mVastModel:Lcom/upsight/mediation/vast/model/VASTModel;

    if-nez v1, :cond_4c

    .line 130
    sget-object v1, Lcom/upsight/mediation/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v2, "vastModel is null. Stopping activity."

    invoke-static {v1, v2}, Lcom/upsight/mediation/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->finishVAST()V

    .line 145
    :goto_4b
    return-void

    .line 132
    :cond_4c
    sget-object v1, Lcom/upsight/mediation/vast/VASTPlayer;->currentPlayer:Lcom/upsight/mediation/vast/VASTPlayer;

    if-nez v1, :cond_5b

    .line 133
    sget-object v1, Lcom/upsight/mediation/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    const-string v2, "currentPlayer is null. Stopping activity."

    invoke-static {v1, v2}, Lcom/upsight/mediation/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->finishVAST()V

    goto :goto_4b

    .line 136
    :cond_5b
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->hideTitleStatusBars()V

    .line 137
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mHandler:Landroid/os/Handler;

    .line 138
    invoke-virtual {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    sput-object v1, Lcom/upsight/mediation/vast/activity/VASTActivity;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 139
    sget-object v1, Lcom/upsight/mediation/vast/activity/VASTActivity;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mScreenWidth:I

    .line 140
    sget-object v1, Lcom/upsight/mediation/vast/activity/VASTActivity;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mScreenHeight:I

    .line 141
    iget-object v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mVastModel:Lcom/upsight/mediation/vast/model/VASTModel;

    invoke-virtual {v1}, Lcom/upsight/mediation/vast/model/VASTModel;->getVastVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mVersion:Ljava/lang/String;

    .line 142
    iget-object v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mVastModel:Lcom/upsight/mediation/vast/model/VASTModel;

    invoke-virtual {v1}, Lcom/upsight/mediation/vast/model/VASTModel;->getTrackingEvents()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mTrackingEventMap:Ljava/util/HashMap;

    .line 143
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->createUIComponents()V

    goto :goto_4b
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 186
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 187
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->cleanActivityUp()V

    .line 188
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 8
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v3, 0x1

    .line 699
    iput-boolean v3, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mIsPlayBackError:Z

    .line 700
    sget-object v0, Lcom/upsight/mediation/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shutting down Activity due to Media Player errors: WHAT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": EXTRA:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/upsight/mediation/log/FuseLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    sget-object v0, Lcom/upsight/mediation/vast/VASTPlayer;->currentPlayer:Lcom/upsight/mediation/vast/VASTPlayer;

    iget-object v0, v0, Lcom/upsight/mediation/vast/VASTPlayer;->listener:Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;

    const/16 v1, 0x195

    invoke-interface {v0, v1}, Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;->vastError(I)V

    .line 704
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->processErrorEvent()V

    .line 705
    invoke-virtual {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->closeClicked()V

    .line 707
    return v3
.end method

.method public onOpenMRaidUrl(Ljava/lang/String;)V
    .registers 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 472
    sget-object v2, Lcom/upsight/mediation/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opening MRAID Postroll click through link: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/upsight/mediation/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 474
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 475
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 476
    invoke-virtual {p0, v0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->startActivity(Landroid/content/Intent;)V

    .line 478
    :cond_30
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 177
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 178
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_12

    .line 179
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->processPauseSteps()V

    .line 180
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mCurrentVideoPosition:I

    .line 182
    :cond_12
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 601
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mVideoDuration:I

    .line 603
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mVideoWidth:I

    .line 604
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mVideoHeight:I

    .line 607
    iget-boolean v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mSkipOffsetRelative:Z

    if-eqz v0, :cond_29

    .line 608
    iget v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mVideoDuration:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iget-wide v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mSkipOffset:J

    long-to-float v1, v2

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mSkipOffset:J

    .line 611
    :cond_29
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->calculateAspectRatio()V

    .line 613
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->hideProgressBar()V

    .line 615
    iget-boolean v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mIsVideoPaused:Z

    if-eqz v0, :cond_71

    .line 617
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 623
    :goto_38
    iget v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mCurrentVideoPosition:I

    if-lez v0, :cond_43

    .line 625
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mCurrentVideoPosition:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 628
    :cond_43
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_61

    iget-boolean v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mIsVideoPaused:Z

    if-nez v0, :cond_61

    .line 629
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 630
    sget-object v0, Lcom/upsight/mediation/vast/VASTPlayer;->currentPlayer:Lcom/upsight/mediation/vast/VASTPlayer;

    iget-object v0, v0, Lcom/upsight/mediation/vast/VASTPlayer;->listener:Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;

    invoke-interface {v0}, Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;->vastDisplay()V

    .line 631
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->startTrackingEventTimer()V

    .line 632
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->startToolBarTimer()V

    .line 635
    :cond_61
    iget-boolean v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mIsProcessedImpressions:Z

    if-nez v0, :cond_70

    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 636
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->processImpressions()V

    .line 639
    :cond_70
    return-void

    .line 619
    :cond_71
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->startVideoProgressTimer()V

    goto :goto_38
.end method

.method protected onRestart()V
    .registers 1

    .prologue
    .line 172
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 173
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 197
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 198
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 160
    iget-boolean v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->shouldPlayOnResume:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_10

    .line 161
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p0, v0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 163
    :cond_10
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 193
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 720
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 721
    return-void
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 155
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 167
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 168
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 7
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 590
    iput p2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mVideoWidth:I

    .line 591
    iput p3, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mVideoHeight:I

    .line 592
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->calculateAspectRatio()V

    .line 593
    sget-object v0, Lcom/upsight/mediation/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mVideoWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mVideoHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/upsight/mediation/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    return-void
.end method

.method public replayedClicked()V
    .registers 2

    .prologue
    .line 464
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->createPostroll()V

    .line 465
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->resetPlayerToBeginning()V

    .line 467
    sget-object v0, Lcom/upsight/mediation/vast/VASTPlayer;->currentPlayer:Lcom/upsight/mediation/vast/VASTPlayer;

    iget-object v0, v0, Lcom/upsight/mediation/vast/VASTPlayer;->listener:Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;

    invoke-interface {v0}, Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;->vastReplay()V

    .line 468
    return-void
.end method

.method public setRequestedOrientation(I)V
    .registers 2
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 150
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 580
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 6
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 541
    iget-boolean v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->showingPostroll:Z

    if-eqz v2, :cond_5

    .line 575
    :goto_4
    return-void

    .line 547
    :cond_5
    :try_start_5
    iget-object v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_c

    .line 548
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->createMediaPlayer()V

    .line 550
    :cond_c
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->showProgressBar()V

    .line 551
    iget-object v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 553
    iget-object v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_3a

    iget-boolean v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mIsVideoPaused:Z

    if-eqz v2, :cond_3a

    .line 554
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->processPlaySteps()V

    .line 555
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->hideProgressBar()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_22} :catch_23

    goto :goto_4

    .line 570
    :catch_23
    move-exception v0

    .line 571
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/upsight/mediation/vast/activity/VASTActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/upsight/mediation/log/FuseLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 572
    sget-object v2, Lcom/upsight/mediation/vast/VASTPlayer;->currentPlayer:Lcom/upsight/mediation/vast/VASTPlayer;

    iget-object v2, v2, Lcom/upsight/mediation/vast/VASTPlayer;->listener:Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;

    const/16 v3, 0x195

    invoke-interface {v2, v3}, Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;->vastError(I)V

    .line 573
    invoke-direct {p0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->finishVAST()V

    goto :goto_4

    .line 559
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3a
    :try_start_3a
    iget-object v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mVastModel:Lcom/upsight/mediation/vast/model/VASTModel;

    invoke-virtual {v2}, Lcom/upsight/mediation/vast/model/VASTModel;->getPickedMediaFileLocation()Ljava/lang/String;

    move-result-object v1

    .line 562
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 564
    iget-object v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mVastModel:Lcom/upsight/mediation/vast/model/VASTModel;

    invoke-virtual {v2}, Lcom/upsight/mediation/vast/model/VASTModel;->getPickedMediaFileDeliveryType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "streaming"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 565
    iget-object v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    goto :goto_4

    .line 567
    :cond_59
    iget-object v2, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_5e} :catch_23

    goto :goto_4
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 584
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity;->shouldPlayOnResume:Z

    .line 586
    return-void
.end method
