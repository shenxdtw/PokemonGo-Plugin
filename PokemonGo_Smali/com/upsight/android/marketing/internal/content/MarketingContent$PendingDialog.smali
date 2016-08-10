.class public Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;
.super Ljava/lang/Object;
.source "MarketingContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/marketing/internal/content/MarketingContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingDialog"
.end annotation


# static fields
.field public static final TEXT:Ljava/lang/String; = "text"

.field public static final TRIGGER:Ljava/lang/String; = "trigger"


# instance fields
.field public final mButtons:Ljava/lang/String;

.field public final mDismissTrigger:Ljava/lang/String;

.field public final mId:Ljava/lang/String;

.field public final mMessage:Ljava/lang/String;

.field public final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "buttons"    # Ljava/lang/String;
    .param p5, "dismissTrigger"    # Ljava/lang/String;

    .prologue
    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;->mId:Ljava/lang/String;

    .line 427
    iput-object p2, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;->mTitle:Ljava/lang/String;

    .line 428
    iput-object p3, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;->mMessage:Ljava/lang/String;

    .line 429
    iput-object p4, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;->mButtons:Ljava/lang/String;

    .line 430
    iput-object p5, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent$PendingDialog;->mDismissTrigger:Ljava/lang/String;

    .line 431
    return-void
.end method
