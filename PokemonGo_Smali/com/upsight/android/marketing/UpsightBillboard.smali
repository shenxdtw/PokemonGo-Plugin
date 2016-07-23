.class public abstract Lcom/upsight/android/marketing/UpsightBillboard;
.super Ljava/lang/Object;
.source "UpsightBillboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/marketing/UpsightBillboard$Handler;,
        Lcom/upsight/android/marketing/UpsightBillboard$Dimensions;,
        Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method public static create(Lcom/upsight/android/UpsightContext;Ljava/lang/String;Lcom/upsight/android/marketing/UpsightBillboard$Handler;)Lcom/upsight/android/marketing/UpsightBillboard;
    .registers 6
    .param p0, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/upsight/android/marketing/UpsightBillboard$Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    if-eqz p2, :cond_10

    .line 40
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The billboard scope and handler must be non-null and non-empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_10
    new-instance v0, Lcom/upsight/android/marketing/internal/billboard/Billboard;

    invoke-direct {v0, p1, p2}, Lcom/upsight/android/marketing/internal/billboard/Billboard;-><init>(Ljava/lang/String;Lcom/upsight/android/marketing/UpsightBillboard$Handler;)V

    .line 43
    .local v0, "billboard":Lcom/upsight/android/marketing/UpsightBillboard;
    invoke-virtual {v0, p0}, Lcom/upsight/android/marketing/UpsightBillboard;->setUp(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/marketing/UpsightBillboard;

    .line 44
    return-object v0
.end method


# virtual methods
.method public abstract destroy()V
.end method

.method protected abstract setUp(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/marketing/UpsightBillboard;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method
