.class public Lspacemadness/com/lunarconsole/ui/LogTypeButton;
.super Lspacemadness/com/lunarconsole/ui/ToggleButton;
.source "LogTypeButton.java"


# static fields
.field private static final MAX_COUNT:I = 0x3e7


# instance fields
.field private count:I

.field private offAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lspacemadness/com/lunarconsole/ui/ToggleButton;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/ui/LogTypeButton;->init()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lspacemadness/com/lunarconsole/ui/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/ui/LogTypeButton;->init()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lspacemadness/com/lunarconsole/ui/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/ui/LogTypeButton;->init()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lspacemadness/com/lunarconsole/ui/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/ui/LogTypeButton;->init()V

    .line 41
    return-void
.end method

.method private init()V
    .registers 2

    .prologue
    .line 63
    const v0, 0x7fffffff

    iput v0, p0, Lspacemadness/com/lunarconsole/ui/LogTypeButton;->count:I

    .line 64
    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lspacemadness/com/lunarconsole/ui/LogTypeButton;->offAlpha:F

    .line 65
    return-void
.end method


# virtual methods
.method public getOffAlpha()F
    .registers 2

    .prologue
    .line 104
    iget v0, p0, Lspacemadness/com/lunarconsole/ui/LogTypeButton;->offAlpha:F

    return v0
.end method

.method public setCount(I)V
    .registers 4
    .param p1, "count"    # I

    .prologue
    const/16 v1, 0x3e7

    .line 83
    iget v0, p0, Lspacemadness/com/lunarconsole/ui/LogTypeButton;->count:I

    if-eq v0, p1, :cond_11

    .line 85
    if-ge p1, v1, :cond_12

    .line 87
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lspacemadness/com/lunarconsole/ui/LogTypeButton;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :cond_f
    :goto_f
    iput p1, p0, Lspacemadness/com/lunarconsole/ui/LogTypeButton;->count:I

    .line 95
    :cond_11
    return-void

    .line 89
    :cond_12
    iget v0, p0, Lspacemadness/com/lunarconsole/ui/LogTypeButton;->count:I

    if-ge v0, v1, :cond_f

    .line 91
    const-string v0, "999+"

    invoke-virtual {p0, v0}, Lspacemadness/com/lunarconsole/ui/LogTypeButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f
.end method

.method public setOffAlpha(F)V
    .registers 2
    .param p1, "offAlpha"    # F

    .prologue
    .line 99
    iput p1, p0, Lspacemadness/com/lunarconsole/ui/LogTypeButton;->offAlpha:F

    .line 100
    return-void
.end method

.method public setOn(Z)V
    .registers 4
    .param p1, "flag"    # Z

    .prologue
    .line 70
    invoke-super {p0, p1}, Lspacemadness/com/lunarconsole/ui/ToggleButton;->setOn(Z)V

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_10

    .line 74
    if-eqz p1, :cond_11

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_d
    invoke-virtual {p0, v0}, Lspacemadness/com/lunarconsole/ui/LogTypeButton;->setAlpha(F)V

    .line 76
    :cond_10
    return-void

    .line 74
    :cond_11
    iget v0, p0, Lspacemadness/com/lunarconsole/ui/LogTypeButton;->offAlpha:F

    goto :goto_d
.end method
