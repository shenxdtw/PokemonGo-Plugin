.class Lcom/upsight/mediation/vast/activity/VASTActivity$2;
.super Ljava/lang/Object;
.source "VASTActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/mediation/vast/activity/VASTActivity;->createPlayerControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;


# direct methods
.method constructor <init>(Lcom/upsight/mediation/vast/activity/VASTActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/upsight/mediation/vast/activity/VASTActivity;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$2;->this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    .line 315
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_54

    .line 327
    :cond_8
    :goto_8
    return v6

    .line 317
    :pswitch_9
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$2;->this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    # setter for: Lcom/upsight/mediation/vast/activity/VASTActivity;->rekt:Landroid/graphics/Rect;
    invoke-static {v0, v1}, Lcom/upsight/mediation/vast/activity/VASTActivity;->access$102(Lcom/upsight/mediation/vast/activity/VASTActivity;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 318
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-static {p1, v0}, Lcom/upsight/mediation/vast/util/Assets;->setAlpha(Landroid/view/View;F)V

    goto :goto_8

    .line 321
    :pswitch_29
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$2;->this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

    # getter for: Lcom/upsight/mediation/vast/activity/VASTActivity;->rekt:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->access$100(Lcom/upsight/mediation/vast/activity/VASTActivity;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 322
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/upsight/mediation/vast/util/Assets;->setAlpha(Landroid/view/View;F)V

    .line 323
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$2;->this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

    invoke-virtual {v0, v6}, Lcom/upsight/mediation/vast/activity/VASTActivity;->infoClicked(Z)V

    goto :goto_8

    .line 315
    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_9
        :pswitch_29
    .end packed-switch
.end method
