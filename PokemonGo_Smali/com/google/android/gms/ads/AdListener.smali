.class public abstract Lcom/google/android/gms/ads/AdListener;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .registers 1

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .registers 2
    .param p1, "errorCode"    # I

    .prologue
    return-void
.end method

.method public onAdLeftApplication()V
    .registers 1

    return-void
.end method

.method public onAdLoaded()V
    .registers 1

    return-void
.end method

.method public onAdOpened()V
    .registers 1

    return-void
.end method
