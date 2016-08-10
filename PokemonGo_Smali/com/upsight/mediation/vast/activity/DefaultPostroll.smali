.class public Lcom/upsight/mediation/vast/activity/DefaultPostroll;
.super Landroid/widget/RelativeLayout;
.source "DefaultPostroll.java"

# interfaces
.implements Lcom/upsight/mediation/vast/Postroll/Postroll;


# static fields
.field private static final BUTTON_HEIGHT:I = 0x4b

.field private static final BUTTON_WIDTH:I = 0x100

.field private static final MARGIN:I = 0x8

.field private static final SCALED_DENSITY:F

.field public static final TEXT_FONT_SIZE:I = 0x1c

.field private static final X_HEIGHT:I = 0x1d

.field private static final X_WIDTH:I = 0x1d


# instance fields
.field private final mActionButtonText:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mLastFrameView:Landroid/widget/ImageView;

.field private mLayerOfDarkness:Landroid/widget/LinearLayout;

.field private mLearnButton:Landroid/widget/Button;

.field private final mListener:Lcom/upsight/mediation/vast/Postroll/Postroll$Listener;

.field private final mShouldShowActionButton:Z

.field private mXButtonView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/upsight/mediation/vast/activity/VASTActivity;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    sput v0, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->SCALED_DENSITY:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/upsight/mediation/vast/Postroll/Postroll$Listener;ZLjava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/upsight/mediation/vast/Postroll/Postroll$Listener;
    .param p3, "shouldShowActionButton"    # Z
    .param p4, "actionButtonText"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object p1, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mListener:Lcom/upsight/mediation/vast/Postroll/Postroll$Listener;

    .line 52
    iput-boolean p3, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mShouldShowActionButton:Z

    .line 53
    iput-object p4, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mActionButtonText:Ljava/lang/String;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/mediation/vast/activity/DefaultPostroll;)Lcom/upsight/mediation/vast/Postroll/Postroll$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/vast/activity/DefaultPostroll;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mListener:Lcom/upsight/mediation/vast/Postroll/Postroll$Listener;

    return-object v0
.end method

.method private setUpLastFrameView(Landroid/content/Context;)V
    .registers 5
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    .line 135
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mLastFrameView:Landroid/widget/ImageView;

    .line 136
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mLastFrameView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mLastFrameView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->addView(Landroid/view/View;)V

    .line 138
    return-void
.end method

.method private setUpLayerOfDarkness(Landroid/content/Context;)V
    .registers 6
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 91
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mLayerOfDarkness:Landroid/widget/LinearLayout;

    .line 92
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 93
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mLayerOfDarkness:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object v1, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mLayerOfDarkness:Landroid/widget/LinearLayout;

    const/16 v2, 0xc0

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 95
    iget-object v1, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mLayerOfDarkness:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->addView(Landroid/view/View;)V

    .line 96
    return-void
.end method

.method private setUpLearn(Landroid/content/Context;)V
    .registers 9
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 100
    iget-boolean v3, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mShouldShowActionButton:Z

    if-eqz v3, :cond_82

    .line 102
    const/high16 v3, 0x43800000    # 256.0f

    invoke-static {v3}, Lcom/upsight/mediation/vast/util/Assets;->convertToDps(F)I

    move-result v2

    .line 103
    .local v2, "width":I
    const/high16 v3, 0x42960000    # 75.0f

    invoke-static {v3}, Lcom/upsight/mediation/vast/util/Assets;->convertToDps(F)I

    move-result v0

    .line 104
    .local v0, "height":I
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 105
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 107
    new-instance v3, Lcom/upsight/mediation/vast/Postroll/VasButton;

    invoke-direct {v3, p1}, Lcom/upsight/mediation/vast/Postroll/VasButton;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mLearnButton:Landroid/widget/Button;

    .line 110
    iget-object v3, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mLearnButton:Landroid/widget/Button;

    const-string v4, "sans-serif-light"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 112
    iget-object v3, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mLearnButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setMaxLines(I)V

    .line 113
    iget-object v3, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mLearnButton:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget-object v3, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mLearnButton:Landroid/widget/Button;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setGravity(I)V

    .line 115
    iget-object v3, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mLearnButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/upsight/mediation/vast/util/Assets;->getPostrollButton(Landroid/content/res/Resources;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/upsight/mediation/vast/util/Assets;->setImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 116
    iget-object v3, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mLearnButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 117
    iget-object v3, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mLearnButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 118
    iget-object v3, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mLearnButton:Landroid/widget/Button;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 120
    iget-object v3, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mLearnButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mActionButtonText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v3, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mLearnButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mActionButtonText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    rsub-int/lit8 v4, v4, 0x1c

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextSize(F)V

    .line 123
    iget-object v3, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mLearnButton:Landroid/widget/Button;

    new-instance v4, Lcom/upsight/mediation/vast/activity/DefaultPostroll$1;

    invoke-direct {v4, p0}, Lcom/upsight/mediation/vast/activity/DefaultPostroll$1;-><init>(Lcom/upsight/mediation/vast/activity/DefaultPostroll;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v3, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mLearnButton:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->addView(Landroid/view/View;)V

    .line 132
    .end local v0    # "height":I
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "width":I
    :cond_82
    return-void
.end method

.method private setUpX(Landroid/content/Context;)V
    .registers 10
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x41e80000    # 29.0f

    .line 141
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mXButtonView:Landroid/widget/ImageView;

    .line 142
    iget-object v4, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mXButtonView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Lcom/upsight/mediation/vast/util/Assets;->getXButton(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/upsight/mediation/vast/util/Assets;->setImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 143
    iget-object v4, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mXButtonView:Landroid/widget/ImageView;

    const v5, 0x3f4ccccd    # 0.8f

    invoke-static {v4, v5}, Lcom/upsight/mediation/vast/util/Assets;->setAlpha(Landroid/view/View;F)V

    .line 144
    invoke-static {v6}, Lcom/upsight/mediation/vast/util/Assets;->convertToDps(F)I

    move-result v3

    .line 145
    .local v3, "width":I
    invoke-static {v6}, Lcom/upsight/mediation/vast/util/Assets;->convertToDps(F)I

    move-result v0

    .line 146
    .local v0, "height":I
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 147
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 148
    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lcom/upsight/mediation/vast/util/Assets;->convertToDps(F)I

    move-result v1

    .line 149
    .local v1, "margin":I
    invoke-virtual {v2, v7, v1, v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 150
    iget-object v4, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mXButtonView:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    iget-object v4, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mXButtonView:Landroid/widget/ImageView;

    const v5, 0x1020027

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setId(I)V

    .line 152
    iget-object v4, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mXButtonView:Landroid/widget/ImageView;

    new-instance v5, Lcom/upsight/mediation/vast/activity/DefaultPostroll$2;

    invoke-direct {v5, p0}, Lcom/upsight/mediation/vast/activity/DefaultPostroll$2;-><init>(Lcom/upsight/mediation/vast/activity/DefaultPostroll;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v4, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mXButtonView:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->addView(Landroid/view/View;)V

    .line 161
    return-void
.end method


# virtual methods
.method public hide()V
    .registers 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 88
    return-void
.end method

.method public init()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 67
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 68
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    iget-object v1, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->setUpLastFrameView(Landroid/content/Context;)V

    .line 70
    iget-object v1, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->setUpLayerOfDarkness(Landroid/content/Context;)V

    .line 71
    iget-object v1, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->setUpLearn(Landroid/content/Context;)V

    .line 72
    iget-object v1, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->setUpX(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method public isReady()Z
    .registers 2

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public show(Landroid/view/ViewGroup;)V
    .registers 2
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 82
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 83
    return-void
.end method
