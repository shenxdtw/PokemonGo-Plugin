.class final Lcom/upsight/mediation/mraid/MRAIDView$Size;
.super Ljava/lang/Object;
.source "MRAIDView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/mediation/mraid/MRAIDView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Size"
.end annotation


# instance fields
.field public height:I

.field final synthetic this$0:Lcom/upsight/mediation/mraid/MRAIDView;

.field public width:I


# direct methods
.method private constructor <init>(Lcom/upsight/mediation/mraid/MRAIDView;)V
    .registers 2

    .prologue
    .line 106
    iput-object p1, p0, Lcom/upsight/mediation/mraid/MRAIDView$Size;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/mediation/mraid/MRAIDView;Lcom/upsight/mediation/mraid/MRAIDView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;
    .param p2, "x1"    # Lcom/upsight/mediation/mraid/MRAIDView$1;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/upsight/mediation/mraid/MRAIDView$Size;-><init>(Lcom/upsight/mediation/mraid/MRAIDView;)V

    return-void
.end method
