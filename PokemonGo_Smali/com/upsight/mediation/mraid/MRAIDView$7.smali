.class Lcom/upsight/mediation/mraid/MRAIDView$7;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/mediation/mraid/MRAIDView;->resize()V
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
    .line 575
    iput-object p1, p0, Lcom/upsight/mediation/mraid/MRAIDView$7;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$7;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # invokes: Lcom/upsight/mediation/mraid/MRAIDView;->fireStateChangeEvent()V
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$2300(Lcom/upsight/mediation/mraid/MRAIDView;)V

    .line 579
    return-void
.end method
