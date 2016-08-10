.class Lrx/internal/operators/OnSubscribeTimerOnce$1;
.super Ljava/lang/Object;
.source "OnSubscribeTimerOnce.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeTimerOnce;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OnSubscribeTimerOnce;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeTimerOnce;Lrx/Subscriber;)V
    .registers 3

    .prologue
    .line 45
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeTimerOnce$1;->this$0:Lrx/internal/operators/OnSubscribeTimerOnce;

    iput-object p2, p0, Lrx/internal/operators/OnSubscribeTimerOnce$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 5

    .prologue
    .line 49
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeTimerOnce$1;->val$child:Lrx/Subscriber;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_11

    .line 54
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeTimerOnce$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    .line 55
    :goto_10
    return-void

    .line 50
    :catch_11
    move-exception v0

    .line 51
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeTimerOnce$1;->val$child:Lrx/Subscriber;

    invoke-static {v0, v1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;)V

    goto :goto_10
.end method
