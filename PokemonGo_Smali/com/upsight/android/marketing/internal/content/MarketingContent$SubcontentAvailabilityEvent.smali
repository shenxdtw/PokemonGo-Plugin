.class public Lcom/upsight/android/marketing/internal/content/MarketingContent$SubcontentAvailabilityEvent;
.super Lcom/upsight/android/marketing/internal/content/MarketingContent$AvailabilityEvent;
.source "MarketingContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/marketing/internal/content/MarketingContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubcontentAvailabilityEvent"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 371
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/upsight/android/marketing/internal/content/MarketingContent$AvailabilityEvent;-><init>(Ljava/lang/String;Lcom/upsight/android/marketing/internal/content/MarketingContent$1;)V

    .line 372
    return-void
.end method
