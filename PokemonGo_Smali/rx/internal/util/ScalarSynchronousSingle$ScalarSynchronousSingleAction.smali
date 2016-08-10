.class final Lrx/internal/util/ScalarSynchronousSingle$ScalarSynchronousSingleAction;
.super Ljava/lang/Object;
.source "ScalarSynchronousSingle.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/ScalarSynchronousSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScalarSynchronousSingleAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action0;"
    }
.end annotation


# instance fields
.field private final subscriber:Lrx/SingleSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/SingleSubscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/SingleSubscriber;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/SingleSubscriber",
            "<-TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle$ScalarSynchronousSingleAction;, "Lrx/internal/util/ScalarSynchronousSingle$ScalarSynchronousSingleAction<TT;>;"
    .local p1, "subscriber":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<-TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousSingle$ScalarSynchronousSingleAction;->subscriber:Lrx/SingleSubscriber;

    .line 114
    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousSingle$ScalarSynchronousSingleAction;->value:Ljava/lang/Object;

    .line 115
    return-void
.end method


# virtual methods
.method public call()V
    .registers 4

    .prologue
    .line 120
    .local p0, "this":Lrx/internal/util/ScalarSynchronousSingle$ScalarSynchronousSingleAction;, "Lrx/internal/util/ScalarSynchronousSingle$ScalarSynchronousSingleAction<TT;>;"
    :try_start_0
    iget-object v1, p0, Lrx/internal/util/ScalarSynchronousSingle$ScalarSynchronousSingleAction;->subscriber:Lrx/SingleSubscriber;

    iget-object v2, p0, Lrx/internal/util/ScalarSynchronousSingle$ScalarSynchronousSingleAction;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lrx/SingleSubscriber;->onSuccess(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    .line 124
    :goto_7
    return-void

    .line 121
    :catch_8
    move-exception v0

    .line 122
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lrx/internal/util/ScalarSynchronousSingle$ScalarSynchronousSingleAction;->subscriber:Lrx/SingleSubscriber;

    invoke-virtual {v1, v0}, Lrx/SingleSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_7
.end method
