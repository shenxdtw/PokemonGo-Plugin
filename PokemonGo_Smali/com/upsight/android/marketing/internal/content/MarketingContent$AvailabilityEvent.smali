.class public abstract Lcom/upsight/android/marketing/internal/content/MarketingContent$AvailabilityEvent;
.super Ljava/lang/Object;
.source "MarketingContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/marketing/internal/content/MarketingContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AvailabilityEvent"
.end annotation


# instance fields
.field private final mId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent$AvailabilityEvent;->mId:Ljava/lang/String;

    .line 395
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/upsight/android/marketing/internal/content/MarketingContent$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/upsight/android/marketing/internal/content/MarketingContent$1;

    .prologue
    .line 389
    invoke-direct {p0, p1}, Lcom/upsight/android/marketing/internal/content/MarketingContent$AvailabilityEvent;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/content/MarketingContent$AvailabilityEvent;->mId:Ljava/lang/String;

    return-object v0
.end method
