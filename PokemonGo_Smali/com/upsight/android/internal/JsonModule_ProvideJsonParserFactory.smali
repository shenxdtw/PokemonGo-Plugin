.class public final Lcom/upsight/android/internal/JsonModule_ProvideJsonParserFactory;
.super Ljava/lang/Object;
.source "JsonModule_ProvideJsonParserFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/google/gson/JsonParser;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final module:Lcom/upsight/android/internal/JsonModule;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    const-class v0, Lcom/upsight/android/internal/JsonModule_ProvideJsonParserFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/upsight/android/internal/JsonModule_ProvideJsonParserFactory;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/upsight/android/internal/JsonModule;)V
    .registers 3
    .param p1, "module"    # Lcom/upsight/android/internal/JsonModule;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-boolean v0, Lcom/upsight/android/internal/JsonModule_ProvideJsonParserFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 17
    :cond_f
    iput-object p1, p0, Lcom/upsight/android/internal/JsonModule_ProvideJsonParserFactory;->module:Lcom/upsight/android/internal/JsonModule;

    .line 18
    return-void
.end method

.method public static create(Lcom/upsight/android/internal/JsonModule;)Ldagger/internal/Factory;
    .registers 2
    .param p0, "module"    # Lcom/upsight/android/internal/JsonModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/internal/JsonModule;",
            ")",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/google/gson/JsonParser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Lcom/upsight/android/internal/JsonModule_ProvideJsonParserFactory;

    invoke-direct {v0, p0}, Lcom/upsight/android/internal/JsonModule_ProvideJsonParserFactory;-><init>(Lcom/upsight/android/internal/JsonModule;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/gson/JsonParser;
    .registers 3

    .prologue
    .line 22
    iget-object v0, p0, Lcom/upsight/android/internal/JsonModule_ProvideJsonParserFactory;->module:Lcom/upsight/android/internal/JsonModule;

    .line 23
    invoke-virtual {v0}, Lcom/upsight/android/internal/JsonModule;->provideJsonParser()Lcom/google/gson/JsonParser;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 22
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonParser;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/upsight/android/internal/JsonModule_ProvideJsonParserFactory;->get()Lcom/google/gson/JsonParser;

    move-result-object v0

    return-object v0
.end method
