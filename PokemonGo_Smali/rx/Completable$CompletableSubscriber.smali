.class public interface abstract Lrx/Completable$CompletableSubscriber;
.super Ljava/lang/Object;
.source "Completable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CompletableSubscriber"
.end annotation


# virtual methods
.method public abstract onCompleted()V
.end method

.method public abstract onError(Ljava/lang/Throwable;)V
.end method

.method public abstract onSubscribe(Lrx/Subscription;)V
.end method
