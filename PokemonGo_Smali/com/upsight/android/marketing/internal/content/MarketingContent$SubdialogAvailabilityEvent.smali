.class public Lcom/upsight/android/marketing/internal/content/MarketingContent$SubdialogAvailabilityEvent;
.super Lcom/upsight/android/marketing/internal/content/MarketingContent$AvailabilityEvent;
.source "MarketingContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/marketing/internal/content/MarketingContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubdialogAvailabilityEvent"
.end annotation


# instance fields
.field private final mPendingDialog:Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "pendingDialog"    # Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;

    .prologue
    .line 380
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/upsight/android/marketing/internal/content/MarketingContent$AvailabilityEvent;-><init>(Ljava/lang/String;Lcom/upsight/android/marketing/internal/content/MarketingContent$1;)V

    .line 381
    iput-object p2, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent$SubdialogAvailabilityEvent;->mPendingDialog:Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;

    .line 382
    return-void
.end method


# virtual methods
.method public getPendingDialog()Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;
    .registers 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent$SubdialogAvailabilityEvent;->mPendingDialog:Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;

    return-object v0
.end method
