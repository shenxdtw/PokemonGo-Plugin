.class public final Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideUncaughtExceptionHandlerFactory;
.super Ljava/lang/Object;
.source "BaseAnalyticsModule_ProvideUncaughtExceptionHandlerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/upsight/android/internal/util/Opt",
        "<",
        "Ljava/lang/Thread$UncaughtExceptionHandler;",
        ">;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final module:Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    const-class v0, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideUncaughtExceptionHandlerFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideUncaughtExceptionHandlerFactory;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;)V
    .registers 3
    .param p1, "module"    # Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-boolean v0, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideUncaughtExceptionHandlerFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 18
    :cond_f
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideUncaughtExceptionHandlerFactory;->module:Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;

    .line 19
    return-void
.end method

.method public static create(Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;)Ldagger/internal/Factory;
    .registers 2
    .param p0, "module"    # Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;",
            ")",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/upsight/android/internal/util/Opt",
            "<",
            "Ljava/lang/Thread$UncaughtExceptionHandler;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideUncaughtExceptionHandlerFactory;

    invoke-direct {v0, p0}, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideUncaughtExceptionHandlerFactory;-><init>(Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/internal/util/Opt;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/upsight/android/internal/util/Opt",
            "<",
            "Ljava/lang/Thread$UncaughtExceptionHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideUncaughtExceptionHandlerFactory;->module:Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;

    .line 24
    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;->provideUncaughtExceptionHandler()Lcom/upsight/android/internal/util/Opt;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 23
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/internal/util/Opt;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule_ProvideUncaughtExceptionHandlerFactory;->get()Lcom/upsight/android/internal/util/Opt;

    move-result-object v0

    return-object v0
.end method
