.class public Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer;
.super Lspacemadness/com/lunarconsole/ui/GestureRecognizer;
.source "SwipeGestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lspacemadness/com/lunarconsole/ui/GestureRecognizer",
        "<",
        "Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer;",
        ">;"
    }
.end annotation


# instance fields
.field private final direction:Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;

.field private endX:F

.field private endY:F

.field private startX:F

.field private startY:F

.field private swiping:Z

.field private final threshold:F


# direct methods
.method public constructor <init>(Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;F)V
    .registers 3
    .param p1, "direction"    # Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;
    .param p2, "threshold"    # F

    .prologue
    .line 47
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/ui/GestureRecognizer;-><init>()V

    .line 48
    iput-object p1, p0, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer;->direction:Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;

    .line 49
    iput p2, p0, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer;->threshold:F

    .line 50
    return-void
.end method

.method private handleSwipe(Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;FF)V
    .registers 6
    .param p1, "direction"    # Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;
    .param p2, "distX"    # F
    .param p3, "distY"    # F

    .prologue
    .line 91
    sget-object v0, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;->Down:Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;

    if-ne p1, v0, :cond_a

    iget v0, p0, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer;->threshold:F

    cmpl-float v0, p3, v0

    if-gez v0, :cond_2a

    :cond_a
    sget-object v0, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;->Up:Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;

    if-ne p1, v0, :cond_15

    neg-float v0, p3

    iget v1, p0, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer;->threshold:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_2a

    :cond_15
    sget-object v0, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;->Right:Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;

    if-ne p1, v0, :cond_1f

    iget v0, p0, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer;->threshold:F

    cmpl-float v0, p2, v0

    if-gez v0, :cond_2a

    :cond_1f
    sget-object v0, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;->Left:Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;

    if-ne p1, v0, :cond_2d

    neg-float v0, p2

    iget v1, p0, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer;->threshold:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2d

    .line 96
    :cond_2a
    invoke-virtual {p0}, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer;->notifyGestureRecognizer()V

    .line 98
    :cond_2d
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_42

    .line 86
    :cond_b
    :goto_b
    :pswitch_b
    return v5

    .line 59
    :pswitch_c
    iput-boolean v5, p0, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer;->swiping:Z

    .line 60
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer;->startX:F

    .line 61
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer;->startY:F

    goto :goto_b

    .line 67
    :pswitch_1b
    iget-boolean v0, p0, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer;->swiping:Z

    if-eqz v0, :cond_b

    .line 69
    iget-object v0, p0, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer;->direction:Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;

    iget v1, p0, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer;->endX:F

    iget v2, p0, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer;->startX:F

    sub-float/2addr v1, v2

    iget v2, p0, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer;->endY:F

    iget v3, p0, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer;->startY:F

    sub-float/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer;->handleSwipe(Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer$SwipeDirection;FF)V

    .line 70
    iput-boolean v4, p0, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer;->swiping:Z

    goto :goto_b

    .line 77
    :pswitch_31
    iget-boolean v0, p0, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer;->swiping:Z

    if-eqz v0, :cond_b

    .line 79
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer;->endX:F

    .line 80
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lspacemadness/com/lunarconsole/ui/SwipeGestureRecognizer;->endY:F

    goto :goto_b

    .line 55
    :pswitch_data_42
    .packed-switch 0x2
        :pswitch_31
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_1b
    .end packed-switch
.end method
