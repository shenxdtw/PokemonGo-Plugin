.class public Lcom/upsight/android/internal/persistence/storable/DefaultJsonSerializer;
.super Ljava/lang/Object;
.source "DefaultJsonSerializer.java"

# interfaces
.implements Lcom/upsight/android/persistence/UpsightStorableSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/upsight/android/persistence/UpsightStorableSerializer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mGson:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;Ljava/lang/Class;)V
    .registers 3
    .param p1, "gson"    # Lcom/google/gson/Gson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lcom/upsight/android/internal/persistence/storable/DefaultJsonSerializer;, "Lcom/upsight/android/internal/persistence/storable/DefaultJsonSerializer<TT;>;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/upsight/android/internal/persistence/storable/DefaultJsonSerializer;->mGson:Lcom/google/gson/Gson;

    .line 26
    iput-object p2, p0, Lcom/upsight/android/internal/persistence/storable/DefaultJsonSerializer;->mClass:Ljava/lang/Class;

    .line 27
    return-void
.end method


# virtual methods
.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/upsight/android/UpsightException;
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/upsight/android/internal/persistence/storable/DefaultJsonSerializer;, "Lcom/upsight/android/internal/persistence/storable/DefaultJsonSerializer<TT;>;"
    :try_start_0
    iget-object v1, p0, Lcom/upsight/android/internal/persistence/storable/DefaultJsonSerializer;->mGson:Lcom/google/gson/Gson;

    iget-object v2, p0, Lcom/upsight/android/internal/persistence/storable/DefaultJsonSerializer;->mClass:Ljava/lang/Class;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_7
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    return-object v1

    .line 38
    :catch_9
    move-exception v0

    .line 39
    .local v0, "e":Lcom/google/gson/JsonSyntaxException;
    new-instance v1, Lcom/upsight/android/UpsightException;

    invoke-direct {v1, v0}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/upsight/android/internal/persistence/storable/DefaultJsonSerializer;, "Lcom/upsight/android/internal/persistence/storable/DefaultJsonSerializer<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/upsight/android/internal/persistence/storable/DefaultJsonSerializer;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
