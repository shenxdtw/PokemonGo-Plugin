.class Lcom/upsight/android/analytics/internal/dispatcher/schema/NetworkChangeEvent;
.super Ljava/lang/Object;
.source "NetworkChangeEvent.java"


# instance fields
.field public final activeNetworkType:Ljava/lang/String;

.field public final networkOperatorName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "activeNetworkType"    # Ljava/lang/String;
    .param p2, "networkOperatorName"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/NetworkChangeEvent;->activeNetworkType:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/NetworkChangeEvent;->networkOperatorName:Ljava/lang/String;

    .line 19
    return-void
.end method
