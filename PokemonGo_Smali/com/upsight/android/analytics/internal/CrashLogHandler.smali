.class Lcom/upsight/android/analytics/internal/CrashLogHandler;
.super Ljava/lang/Object;
.source "CrashLogHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent;
    }
.end annotation


# instance fields
.field private mDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mUpsightAnalytics:Lcom/upsight/android/analytics/UpsightAnalyticsApi;


# direct methods
.method public constructor <init>(Lcom/upsight/android/analytics/UpsightAnalyticsApi;)V
    .registers 3
    .param p1, "analytics"    # Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/CrashLogHandler;->mUpsightAnalytics:Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    .line 31
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/CrashLogHandler;->mDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 32
    return-void
.end method

.method private sendToServer(Ljava/lang/String;)V
    .registers 4
    .param p1, "stacktrace"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v1, Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$Builder;

    invoke-direct {v1, p1}, Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent$Builder;->build()Lcom/upsight/android/analytics/internal/CrashLogHandler$CrashLogEvent;

    move-result-object v0

    .line 56
    .local v0, "crashReport":Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/CrashLogHandler;->mUpsightAnalytics:Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    invoke-interface {v1, v0}, Lcom/upsight/android/analytics/UpsightAnalyticsApi;->record(Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;)V

    .line 57
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 8
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 35
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 36
    .local v2, "result":Ljava/io/Writer;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 40
    .local v1, "printWriter":Ljava/io/PrintWriter;
    move-object v0, p2

    .line 41
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_b
    if-eqz v0, :cond_15

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 43
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_b

    .line 46
    :cond_15
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "stacktrace":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 48
    invoke-direct {p0, v3}, Lcom/upsight/android/analytics/internal/CrashLogHandler;->sendToServer(Ljava/lang/String;)V

    .line 51
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/CrashLogHandler;->mDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v4, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 52
    return-void
.end method
