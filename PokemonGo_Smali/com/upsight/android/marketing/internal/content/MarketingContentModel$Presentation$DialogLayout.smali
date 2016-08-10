.class public Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout;
.super Ljava/lang/Object;
.source "MarketingContentModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogLayout"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout$Dimensions;
    }
.end annotation


# instance fields
.field public landscape:Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout$Dimensions;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "landscape"
    .end annotation
.end field

.field public portrait:Lcom/upsight/android/marketing/internal/content/MarketingContentModel$Presentation$DialogLayout$Dimensions;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "portrait"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
