.class Lcom/upsight/mediation/vast/activity/VASTActivity$1;
.super Ljava/lang/Object;
.source "VASTActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/mediation/vast/activity/VASTActivity;->createOverlay(Landroid/widget/RelativeLayout$LayoutParams;)V
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
    .line 283
    iput-object p1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$1;->this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$1;->this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

    # invokes: Lcom/upsight/mediation/vast/activity/VASTActivity;->overlayClicked()V
    invoke-static {v0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->access$000(Lcom/upsight/mediation/vast/activity/VASTActivity;)V

    .line 287
    const/4 v0, 0x0

    return v0
.end method
