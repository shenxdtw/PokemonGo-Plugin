.class public abstract Lrx/plugins/RxJavaErrorHandler;
.super Ljava/lang/Object;
.source "RxJavaErrorHandler.java"


# static fields
.field protected static final ERROR_IN_RENDERING_SUFFIX:Ljava/lang/String; = ".errorRendering"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleError(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 48
    return-void
.end method

.method public final handleOnNextValueRendering(Ljava/lang/Object;)Ljava/lang/String;
    .registers 6
    .param p1, "item"    # Ljava/lang/Object;
    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 73
    :try_start_0
    invoke-virtual {p0, p1}, Lrx/plugins/RxJavaErrorHandler;->render(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_29

    move-result-object v2

    .line 79
    :goto_4
    return-object v2

    .line 74
    :catch_5
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 79
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".errorRendering"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 76
    :catch_29
    move-exception v1

    .line 77
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method protected render(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p1, "item"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method
