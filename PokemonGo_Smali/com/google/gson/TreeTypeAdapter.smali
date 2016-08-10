.class final Lcom/google/gson/TreeTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "TreeTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gson/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final deserializer:Lcom/google/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/JsonDeserializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final gson:Lcom/google/gson/Gson;

.field private final serializer:Lcom/google/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/JsonSerializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final skipPast:Lcom/google/gson/TypeAdapterFactory;

.field private final typeToken:Lcom/google/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/reflect/TypeToken",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/gson/JsonSerializer;Lcom/google/gson/JsonDeserializer;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/TypeAdapterFactory;)V
    .registers 6
    .param p3, "gson"    # Lcom/google/gson/Gson;
    .param p5, "skipPast"    # Lcom/google/gson/TypeAdapterFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonSerializer",
            "<TT;>;",
            "Lcom/google/gson/JsonDeserializer",
            "<TT;>;",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken",
            "<TT;>;",
            "Lcom/google/gson/TypeAdapterFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/google/gson/TreeTypeAdapter;, "Lcom/google/gson/TreeTypeAdapter<TT;>;"
    .local p1, "serializer":Lcom/google/gson/JsonSerializer;, "Lcom/google/gson/JsonSerializer<TT;>;"
    .local p2, "deserializer":Lcom/google/gson/JsonDeserializer;, "Lcom/google/gson/JsonDeserializer<TT;>;"
    .local p4, "typeToken":Lcom/google/gson/reflect/TypeToken;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/gson/TreeTypeAdapter;->serializer:Lcom/google/gson/JsonSerializer;

    .line 44
    iput-object p2, p0, Lcom/google/gson/TreeTypeAdapter;->deserializer:Lcom/google/gson/JsonDeserializer;

    .line 45
    iput-object p3, p0, Lcom/google/gson/TreeTypeAdapter;->gson:Lcom/google/gson/Gson;

    .line 46
    iput-object p4, p0, Lcom/google/gson/TreeTypeAdapter;->typeToken:Lcom/google/gson/reflect/TypeToken;

    .line 47
    iput-object p5, p0, Lcom/google/gson/TreeTypeAdapter;->skipPast:Lcom/google/gson/TypeAdapterFactory;

    .line 48
    return-void
.end method

.method private delegate()Lcom/google/gson/TypeAdapter;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/google/gson/TreeTypeAdapter;, "Lcom/google/gson/TreeTypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/google/gson/TreeTypeAdapter;->delegate:Lcom/google/gson/TypeAdapter;

    .line 76
    .local v0, "d":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<TT;>;"
    if-eqz v0, :cond_5

    .line 78
    .end local v0    # "d":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<TT;>;"
    :goto_4
    return-object v0

    .line 76
    .restart local v0    # "d":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<TT;>;"
    :cond_5
    iget-object v1, p0, Lcom/google/gson/TreeTypeAdapter;->gson:Lcom/google/gson/Gson;

    iget-object v2, p0, Lcom/google/gson/TreeTypeAdapter;->skipPast:Lcom/google/gson/TypeAdapterFactory;

    iget-object v3, p0, Lcom/google/gson/TreeTypeAdapter;->typeToken:Lcom/google/gson/reflect/TypeToken;

    .line 78
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->getDelegateAdapter(Lcom/google/gson/TypeAdapterFactory;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    .end local v0    # "d":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<TT;>;"
    iput-object v0, p0, Lcom/google/gson/TreeTypeAdapter;->delegate:Lcom/google/gson/TypeAdapter;

    goto :goto_4
.end method

.method public static newFactory(Lcom/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/google/gson/TypeAdapterFactory;
    .registers 5
    .param p1, "typeAdapter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/reflect/TypeToken",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/gson/TypeAdapterFactory;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "exactType":Lcom/google/gson/reflect/TypeToken;, "Lcom/google/gson/reflect/TypeToken<*>;"
    new-instance v0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/google/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-object v0
.end method

.method public static newFactoryWithMatchRawType(Lcom/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/google/gson/TypeAdapterFactory;
    .registers 5
    .param p1, "typeAdapter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/reflect/TypeToken",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/gson/TypeAdapterFactory;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "exactType":Lcom/google/gson/reflect/TypeToken;, "Lcom/google/gson/reflect/TypeToken<*>;"
    invoke-virtual {p0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_12

    const/4 v0, 0x1

    .line 96
    .local v0, "matchRawType":Z
    :goto_b
    new-instance v1, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v0, v2}, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/google/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-object v1

    .line 95
    .end local v0    # "matchRawType":Z
    :cond_12
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/TypeAdapterFactory;
    .registers 5
    .param p1, "typeAdapter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/gson/TypeAdapterFactory;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "hierarchyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/google/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/google/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 6
    .param p1, "in"    # Lcom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/google/gson/TreeTypeAdapter;, "Lcom/google/gson/TreeTypeAdapter<TT;>;"
    iget-object v1, p0, Lcom/google/gson/TreeTypeAdapter;->deserializer:Lcom/google/gson/JsonDeserializer;

    if-nez v1, :cond_d

    .line 52
    invoke-direct {p0}, Lcom/google/gson/TreeTypeAdapter;->delegate()Lcom/google/gson/TypeAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    .line 58
    :goto_c
    return-object v1

    .line 54
    :cond_d
    invoke-static {p1}, Lcom/google/gson/internal/Streams;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 55
    .local v0, "value":Lcom/google/gson/JsonElement;
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 56
    const/4 v1, 0x0

    goto :goto_c

    .line 58
    :cond_19
    iget-object v1, p0, Lcom/google/gson/TreeTypeAdapter;->deserializer:Lcom/google/gson/JsonDeserializer;

    iget-object v2, p0, Lcom/google/gson/TreeTypeAdapter;->typeToken:Lcom/google/gson/reflect/TypeToken;

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/google/gson/TreeTypeAdapter;->gson:Lcom/google/gson/Gson;

    iget-object v3, v3, Lcom/google/gson/Gson;->deserializationContext:Lcom/google/gson/JsonDeserializationContext;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/gson/JsonDeserializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_c
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 7
    .param p1, "out"    # Lcom/google/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/google/gson/TreeTypeAdapter;, "Lcom/google/gson/TreeTypeAdapter<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/google/gson/TreeTypeAdapter;->serializer:Lcom/google/gson/JsonSerializer;

    if-nez v1, :cond_c

    .line 63
    invoke-direct {p0}, Lcom/google/gson/TreeTypeAdapter;->delegate()Lcom/google/gson/TypeAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 72
    :goto_b
    return-void

    .line 66
    :cond_c
    if-nez p2, :cond_12

    .line 67
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_b

    .line 70
    :cond_12
    iget-object v1, p0, Lcom/google/gson/TreeTypeAdapter;->serializer:Lcom/google/gson/JsonSerializer;

    iget-object v2, p0, Lcom/google/gson/TreeTypeAdapter;->typeToken:Lcom/google/gson/reflect/TypeToken;

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/google/gson/TreeTypeAdapter;->gson:Lcom/google/gson/Gson;

    iget-object v3, v3, Lcom/google/gson/Gson;->serializationContext:Lcom/google/gson/JsonSerializationContext;

    invoke-interface {v1, p2, v2, v3}, Lcom/google/gson/JsonSerializer;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 71
    .local v0, "tree":Lcom/google/gson/JsonElement;
    invoke-static {v0, p1}, Lcom/google/gson/internal/Streams;->write(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V

    goto :goto_b
.end method
