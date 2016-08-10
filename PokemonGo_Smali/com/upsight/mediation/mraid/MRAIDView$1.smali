.class Lcom/upsight/mediation/mraid/MRAIDView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MRAIDView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/mediation/mraid/MRAIDView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/upsight/mediation/mraid/MRAIDViewListener;Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/mediation/mraid/MRAIDView;


# direct methods
.method constructor <init>(Lcom/upsight/mediation/mraid/MRAIDView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/upsight/mediation/mraid/MRAIDView;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/upsight/mediation/mraid/MRAIDView$1;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 198
    const/4 v0, 0x1

    return v0
.end method
