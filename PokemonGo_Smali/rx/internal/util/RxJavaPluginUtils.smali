.class public final Lrx/internal/util/RxJavaPluginUtils;
.super Ljava/lang/Object;
.source "RxJavaPluginUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleException(Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 24
    :try_start_0
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v1

    invoke-virtual {v1}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    .line 28
    :goto_b
    return-void

    .line 25
    :catch_c
    move-exception v0

    .line 26
    .local v0, "pluginException":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/internal/util/RxJavaPluginUtils;->handlePluginException(Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method private static handlePluginException(Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "pluginException"    # Ljava/lang/Throwable;

    .prologue
    .line 36
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RxJavaErrorHandler threw an Exception. It shouldn\'t. => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    return-void
.end method
