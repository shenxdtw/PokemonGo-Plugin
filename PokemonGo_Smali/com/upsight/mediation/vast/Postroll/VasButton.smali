.class public Lcom/upsight/mediation/vast/Postroll/VasButton;
.super Landroid/widget/Button;
.source "VasButton.java"


# static fields
.field private static WAT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-string v0, "This used to extend TextView :)"

    sput-object v0, Lcom/upsight/mediation/vast/Postroll/VasButton;->WAT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-virtual {p0, v0}, Lcom/upsight/mediation/vast/Postroll/VasButton;->setBackgroundColor(I)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/upsight/mediation/vast/Postroll/VasButton;->setMinHeight(I)V

    .line 19
    invoke-virtual {p0, v0}, Lcom/upsight/mediation/vast/Postroll/VasButton;->setMaxHeight(I)V

    .line 20
    return-void
.end method
