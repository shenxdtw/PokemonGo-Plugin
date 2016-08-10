.class public Lcom/upsight/mediation/vast/activity/PlayerControls;
.super Landroid/widget/RelativeLayout;
.source "PlayerControls.java"


# static fields
.field private static final BUTTON_HEIGHT:I = 0x26

.field private static final BUTTON_WIDTH:I = 0x80

.field public static final DOWN_STATE:F = 0.75f

.field private static final MARGIN:I = 0x8

.field private static final PROGRESS_RING_RADIUS:I = 0xa

.field private static final PROGRESS_RING_VIEW_HEIGHT:I = 0x19

.field private static final PROGRESS_RING_VIEW_WIDTH:I = 0x19

.field private static final PROGRESS_RING_WIDTH:I = 0x19

.field public static final TEXT_FONT_SIZE:I = 0x14

.field private static final TIME_FONT_SIZE:I = 0xa


# instance fields
.field private circleDrawable:Lcom/upsight/mediation/vast/activity/CircleDrawable;

.field private elapsedTime:J

.field private mContext:Landroid/content/Context;

.field private mLearnText:Landroid/widget/TextView;

.field private mRemainder:J

.field private mSkipButton:Landroid/widget/LinearLayout;

.field private mSkipOffset:J

.field private mSkipText:Landroid/widget/TextView;

.field private mSkippable:Z

.field private mTimeText:Landroid/widget/TextView;

.field private mTimerRing:Landroid/widget/FrameLayout;

.field private mVastModel:Lcom/upsight/mediation/vast/model/VASTModel;

.field private progressCircle:Landroid/widget/ImageView;

.field private skipListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->elapsedTime:J

    .line 56
    iput-object p1, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->elapsedTime:J

    .line 61
    iput-object p1, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->elapsedTime:J

    .line 66
    iput-object p1, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mContext:Landroid/content/Context;

    .line 67
    return-void
.end method

.method private setUpLearn(Landroid/content/Context;)V
    .registers 11
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 78
    iget-object v5, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mVastModel:Lcom/upsight/mediation/vast/model/VASTModel;

    invoke-virtual {v5}, Lcom/upsight/mediation/vast/model/VASTModel;->getVideoClicks()Lcom/upsight/mediation/vast/model/VideoClicks;

    move-result-object v5

    invoke-virtual {v5}, Lcom/upsight/mediation/vast/model/VideoClicks;->getClickThrough()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "clickThroughUrl":Ljava/lang/String;
    if-eqz v0, :cond_80

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_80

    .line 82
    const/high16 v5, 0x43000000    # 128.0f

    invoke-static {v5}, Lcom/upsight/mediation/vast/util/Assets;->convertToDps(F)I

    move-result v4

    .line 83
    .local v4, "width":I
    const/high16 v5, 0x42180000    # 38.0f

    invoke-static {v5}, Lcom/upsight/mediation/vast/util/Assets;->convertToDps(F)I

    move-result v1

    .line 85
    .local v1, "height":I
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 86
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0x9

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 87
    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lcom/upsight/mediation/vast/util/Assets;->convertToDps(F)I

    move-result v2

    .line 88
    .local v2, "margin":I
    invoke-virtual {v3, v2, v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 90
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mLearnText:Landroid/widget/TextView;

    .line 92
    iget-object v5, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mLearnText:Landroid/widget/TextView;

    const-string v6, "LEARN MORE"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v5, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mLearnText:Landroid/widget/TextView;

    const-string v6, "sans-serif-light"

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 94
    iget-object v5, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mLearnText:Landroid/widget/TextView;

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 95
    iget-object v5, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mLearnText:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 96
    iget-object v5, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mLearnText:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget-object v5, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mLearnText:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 98
    iget-object v5, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mLearnText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/upsight/mediation/vast/activity/PlayerControls;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6}, Lcom/upsight/mediation/vast/util/Assets;->getPlayerUIButton(Landroid/content/res/Resources;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/upsight/mediation/vast/util/Assets;->setImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v5, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mLearnText:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 100
    iget-object v5, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mLearnText:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v5, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mLearnText:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/upsight/mediation/vast/activity/PlayerControls;->addView(Landroid/view/View;)V

    .line 104
    .end local v1    # "height":I
    .end local v2    # "margin":I
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4    # "width":I
    :cond_80
    return-void
.end method

.method private setUpSkipButton(Landroid/content/Context;Z)V
    .registers 10
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "skippable"    # Z

    .prologue
    const/4 v6, 0x0

    .line 107
    iput-boolean p2, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mSkippable:Z

    .line 108
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mSkipButton:Landroid/widget/LinearLayout;

    .line 109
    iget-object v4, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mSkipButton:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 110
    iget-object v4, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mSkipButton:Landroid/widget/LinearLayout;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 111
    iget-object v4, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mSkipButton:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/upsight/mediation/vast/activity/PlayerControls;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Lcom/upsight/mediation/vast/util/Assets;->getPlayerUIButton(Landroid/content/res/Resources;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/upsight/mediation/vast/util/Assets;->setImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 112
    const/high16 v4, 0x43000000    # 128.0f

    invoke-static {v4}, Lcom/upsight/mediation/vast/util/Assets;->convertToDps(F)I

    move-result v3

    .line 113
    .local v3, "width":I
    const/high16 v4, 0x42180000    # 38.0f

    invoke-static {v4}, Lcom/upsight/mediation/vast/util/Assets;->convertToDps(F)I

    move-result v0

    .line 114
    .local v0, "height":I
    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lcom/upsight/mediation/vast/util/Assets;->convertToDps(F)I

    move-result v1

    .line 115
    .local v1, "margin":I
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 116
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 117
    invoke-virtual {v2, v6, v1, v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 118
    iget-object v4, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mSkipButton:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    invoke-direct {p0, p1}, Lcom/upsight/mediation/vast/activity/PlayerControls;->setUpTimerRing(Landroid/content/Context;)V

    .line 121
    invoke-direct {p0, p1}, Lcom/upsight/mediation/vast/activity/PlayerControls;->setUpSkipText(Landroid/content/Context;)V

    .line 122
    iget-object v4, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mSkipButton:Landroid/widget/LinearLayout;

    const/high16 v5, 0x3f400000    # 0.75f

    invoke-static {v4, v5}, Lcom/upsight/mediation/vast/util/Assets;->setAlpha(Landroid/view/View;F)V

    .line 123
    iget-object v4, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mSkipButton:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4}, Lcom/upsight/mediation/vast/activity/PlayerControls;->addView(Landroid/view/View;)V

    .line 124
    return-void
.end method

.method private setUpSkipText(Landroid/content/Context;)V
    .registers 5
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 127
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mSkipText:Landroid/widget/TextView;

    .line 128
    iget-boolean v0, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mSkippable:Z

    if-eqz v0, :cond_2d

    .line 129
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mSkipText:Landroid/widget/TextView;

    const-string v1, "SKIP"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :goto_12
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mSkipText:Landroid/widget/TextView;

    const-string v1, "sans-serif-light"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 134
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mSkipText:Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 135
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mSkipButton:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mSkipText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 136
    return-void

    .line 131
    :cond_2d
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mSkipText:Landroid/widget/TextView;

    const-string v1, "sec"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12
.end method

.method private setUpTimerRing(Landroid/content/Context;)V
    .registers 10
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x2

    const/high16 v7, 0x41200000    # 10.0f

    const/high16 v6, 0x41c80000    # 25.0f

    const/4 v5, 0x0

    .line 139
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mTimerRing:Landroid/widget/FrameLayout;

    .line 140
    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v2}, Lcom/upsight/mediation/vast/util/Assets;->convertToDps(F)I

    move-result v0

    .line 141
    .local v0, "padding":I
    iget-object v2, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mTimerRing:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5, v5, v0, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 142
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 143
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 145
    new-instance v2, Lcom/upsight/mediation/vast/activity/CircleDrawable;

    invoke-static {v6}, Lcom/upsight/mediation/vast/util/Assets;->convertToDps(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v7}, Lcom/upsight/mediation/vast/util/Assets;->convertToDps(F)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v3, v4}, Lcom/upsight/mediation/vast/activity/CircleDrawable;-><init>(FF)V

    iput-object v2, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->circleDrawable:Lcom/upsight/mediation/vast/activity/CircleDrawable;

    .line 146
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->progressCircle:Landroid/widget/ImageView;

    .line 147
    iget-object v2, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->progressCircle:Landroid/widget/ImageView;

    invoke-static {v6}, Lcom/upsight/mediation/vast/util/Assets;->convertToDps(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 148
    iget-object v2, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->progressCircle:Landroid/widget/ImageView;

    invoke-static {v6}, Lcom/upsight/mediation/vast/util/Assets;->convertToDps(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 149
    iget-object v2, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->progressCircle:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->circleDrawable:Lcom/upsight/mediation/vast/activity/CircleDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    iget-object v2, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->progressCircle:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mTimeText:Landroid/widget/TextView;

    .line 153
    iget-object v2, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mTimeText:Landroid/widget/TextView;

    const-string v3, "sans-serif-light"

    invoke-static {v3, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 154
    iget-object v2, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mTimeText:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 155
    iget-object v2, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mTimeText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    iget-object v2, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mTimerRing:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->progressCircle:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 158
    iget-object v2, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mTimerRing:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mTimeText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 160
    iget-object v2, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mSkipButton:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mTimerRing:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 161
    return-void
.end method


# virtual methods
.method public getLearnText()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mLearnText:Landroid/widget/TextView;

    return-object v0
.end method

.method public init(ZZ)V
    .registers 4
    .param p1, "skippable"    # Z
    .param p2, "postroll"    # Z

    .prologue
    .line 70
    if-nez p2, :cond_4

    if-eqz p1, :cond_6

    :cond_4
    if-eqz p1, :cond_b

    .line 71
    :cond_6
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/upsight/mediation/vast/activity/PlayerControls;->setUpLearn(Landroid/content/Context;)V

    .line 73
    :cond_b
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/upsight/mediation/vast/activity/PlayerControls;->setUpSkipButton(Landroid/content/Context;Z)V

    .line 74
    return-void
.end method

.method public setSkipButtonListener(Landroid/view/View$OnTouchListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->skipListener:Landroid/view/View$OnTouchListener;

    .line 169
    return-void
.end method

.method public setTimes(JJ)V
    .registers 6
    .param p1, "duration"    # J
    .param p3, "skipOffset"    # J

    .prologue
    .line 182
    iput-wide p3, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mSkipOffset:J

    .line 183
    iput-wide p1, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mRemainder:J

    .line 184
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->circleDrawable:Lcom/upsight/mediation/vast/activity/CircleDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/upsight/mediation/vast/activity/CircleDrawable;->setTimer(J)V

    .line 185
    return-void
.end method

.method public setVastModel(Lcom/upsight/mediation/vast/model/VASTModel;)V
    .registers 2
    .param p1, "mVastModel"    # Lcom/upsight/mediation/vast/model/VASTModel;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mVastModel:Lcom/upsight/mediation/vast/model/VASTModel;

    .line 213
    return-void
.end method

.method public update(J)V
    .registers 10
    .param p1, "timeSinceLastUpdate"    # J

    .prologue
    .line 188
    iget-wide v0, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->elapsedTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->elapsedTime:J

    .line 189
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mTimeText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->elapsedTime:J

    iget-wide v4, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mRemainder:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-wide v0, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->elapsedTime:J

    iget-wide v2, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mRemainder:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3d

    .line 193
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->circleDrawable:Lcom/upsight/mediation/vast/activity/CircleDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/upsight/mediation/vast/activity/CircleDrawable;->setSweepAngle(F)V

    .line 194
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->progressCircle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 209
    :goto_3c
    return-void

    .line 199
    :cond_3d
    iget-wide v0, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->elapsedTime:J

    iget-wide v2, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mSkipOffset:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_5b

    iget-boolean v0, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mSkippable:Z

    if-eqz v0, :cond_5b

    .line 200
    iget-wide v0, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mRemainder:J

    iput-wide v0, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mSkipOffset:J

    .line 201
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mSkipButton:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->skipListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 202
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->mSkipButton:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/upsight/mediation/vast/util/Assets;->setAlpha(Landroid/view/View;F)V

    .line 207
    :cond_5b
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->circleDrawable:Lcom/upsight/mediation/vast/activity/CircleDrawable;

    iget-wide v2, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->elapsedTime:J

    invoke-virtual {v0, v2, v3}, Lcom/upsight/mediation/vast/activity/CircleDrawable;->update(J)V

    .line 208
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/PlayerControls;->progressCircle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_3c
.end method
