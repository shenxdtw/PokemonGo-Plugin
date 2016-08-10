.class public final Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;
.super Ljava/lang/Object;
.source "StorableInfoCache.java"


# instance fields
.field private final mAccessorMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;",
            ">;"
        }
    .end annotation
.end field

.field private final mGson:Lcom/google/gson/Gson;

.field private final mInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/upsight/android/internal/persistence/storable/StorableInfo",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mSerializerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/upsight/android/persistence/UpsightStorableSerializer",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/gson/Gson;)V
    .registers 3
    .param p1, "gson"    # Lcom/google/gson/Gson;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;->mSerializerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;->mInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;->mAccessorMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    iput-object p1, p0, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;->mGson:Lcom/google/gson/Gson;

    .line 36
    return-void
.end method

.method private resolveIdentifierAccessor(Ljava/lang/Class;)Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/upsight/android/UpsightException;
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    .line 62
    iget-object v5, p0, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;->mAccessorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;

    .line 63
    .local v0, "accessor":Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;
    if-eqz v0, :cond_d

    move-object v1, v0

    .line 93
    .end local v0    # "accessor":Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;
    .local v1, "accessor":Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;
    :goto_c
    return-object v1

    .line 67
    .end local v1    # "accessor":Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;
    .restart local v0    # "accessor":Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;
    :cond_d
    move-object v3, p1

    .line 68
    .local v3, "candidate":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_e
    if-nez v0, :cond_52

    if-eqz v3, :cond_52

    .line 69
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    array-length v8, v7

    move v5, v6

    :goto_18
    if-ge v5, v8, :cond_3a

    aget-object v4, v7, v5

    .line 70
    .local v4, "field":Ljava/lang/reflect/Field;
    const-class v9, Lcom/upsight/android/persistence/annotation/UpsightStorableIdentifier;

    invoke-virtual {v4, v9}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/persistence/annotation/UpsightStorableIdentifier;

    .line 72
    .local v2, "annotation":Lcom/upsight/android/persistence/annotation/UpsightStorableIdentifier;
    if-nez v2, :cond_29

    .line 69
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 76
    :cond_29
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 77
    new-instance v0, Lcom/upsight/android/internal/persistence/storable/StorableFieldIdentifierAccessor;

    .end local v0    # "accessor":Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;
    invoke-direct {v0, v4}, Lcom/upsight/android/internal/persistence/storable/StorableFieldIdentifierAccessor;-><init>(Ljava/lang/reflect/Field;)V

    .line 85
    .end local v2    # "annotation":Lcom/upsight/android/persistence/annotation/UpsightStorableIdentifier;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .restart local v0    # "accessor":Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;
    :cond_3a
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_e

    .line 80
    .restart local v2    # "annotation":Lcom/upsight/android/persistence/annotation/UpsightStorableIdentifier;
    .restart local v4    # "field":Ljava/lang/reflect/Field;
    :cond_3f
    new-instance v5, Lcom/upsight/android/UpsightException;

    const-string v7, "Field annotated with @%s must be of type String."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const-class v9, Lcom/upsight/android/persistence/annotation/UpsightStorableIdentifier;

    .line 82
    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-direct {v5, v7, v8}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    .line 88
    .end local v2    # "annotation":Lcom/upsight/android/persistence/annotation/UpsightStorableIdentifier;
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :cond_52
    if-nez v0, :cond_59

    .line 89
    new-instance v0, Lcom/upsight/android/internal/persistence/storable/StorableIdentifierNoopAccessor;

    .end local v0    # "accessor":Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;
    invoke-direct {v0}, Lcom/upsight/android/internal/persistence/storable/StorableIdentifierNoopAccessor;-><init>()V

    .line 91
    .restart local v0    # "accessor":Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;
    :cond_59
    iget-object v5, p0, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;->mAccessorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 93
    .end local v0    # "accessor":Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;
    .restart local v1    # "accessor":Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;
    goto :goto_c
.end method

.method private resolveSerializer(Ljava/lang/Class;)Lcom/upsight/android/persistence/UpsightStorableSerializer;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/upsight/android/persistence/UpsightStorableSerializer",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v1, p0, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;->mSerializerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/persistence/UpsightStorableSerializer;

    .line 98
    .local v0, "serializer":Lcom/upsight/android/persistence/UpsightStorableSerializer;, "Lcom/upsight/android/persistence/UpsightStorableSerializer<TT;>;"
    if-nez v0, :cond_16

    .line 99
    new-instance v0, Lcom/upsight/android/internal/persistence/storable/DefaultJsonSerializer;

    .end local v0    # "serializer":Lcom/upsight/android/persistence/UpsightStorableSerializer;, "Lcom/upsight/android/persistence/UpsightStorableSerializer<TT;>;"
    iget-object v1, p0, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;->mGson:Lcom/google/gson/Gson;

    invoke-direct {v0, v1, p1}, Lcom/upsight/android/internal/persistence/storable/DefaultJsonSerializer;-><init>(Lcom/google/gson/Gson;Ljava/lang/Class;)V

    .line 100
    .restart local v0    # "serializer":Lcom/upsight/android/persistence/UpsightStorableSerializer;, "Lcom/upsight/android/persistence/UpsightStorableSerializer<TT;>;"
    iget-object v1, p0, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;->mSerializerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_16
    return-object v0
.end method

.method private resolveType(Ljava/lang/Class;)Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/upsight/android/UpsightException;
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 106
    const/4 v0, 0x0

    .line 108
    .local v0, "accessor":Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;, "Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor<TT;>;"
    const-class v3, Lcom/upsight/android/persistence/annotation/UpsightStorableType;

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/persistence/annotation/UpsightStorableType;

    .line 109
    .local v1, "annotation":Lcom/upsight/android/persistence/annotation/UpsightStorableType;
    if-eqz v1, :cond_32

    .line 110
    invoke-interface {v1}, Lcom/upsight/android/persistence/annotation/UpsightStorableType;->value()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 111
    new-instance v3, Lcom/upsight/android/UpsightException;

    const-string v5, "Class annotated with @%s must define non empty value."

    new-array v6, v9, [Ljava/lang/Object;

    const-class v7, Lcom/upsight/android/persistence/annotation/UpsightStorableType;

    .line 112
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-direct {v3, v5, v6}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 114
    :cond_29
    new-instance v0, Lcom/upsight/android/internal/persistence/storable/StorableStaticTypeAccessor;

    .end local v0    # "accessor":Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;, "Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor<TT;>;"
    invoke-interface {v1}, Lcom/upsight/android/persistence/annotation/UpsightStorableType;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/upsight/android/internal/persistence/storable/StorableStaticTypeAccessor;-><init>(Ljava/lang/String;)V

    .line 117
    .restart local v0    # "accessor":Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;, "Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor<TT;>;"
    :cond_32
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v6, v5

    move v3, v4

    :goto_38
    if-ge v3, v6, :cond_ca

    aget-object v2, v5, v3

    .line 118
    .local v2, "method":Ljava/lang/reflect/Method;
    const-class v7, Lcom/upsight/android/persistence/annotation/UpsightStorableType;

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    .end local v1    # "annotation":Lcom/upsight/android/persistence/annotation/UpsightStorableType;
    check-cast v1, Lcom/upsight/android/persistence/annotation/UpsightStorableType;

    .line 119
    .restart local v1    # "annotation":Lcom/upsight/android/persistence/annotation/UpsightStorableType;
    if-eqz v1, :cond_c6

    .line 120
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_60

    .line 121
    new-instance v3, Lcom/upsight/android/UpsightException;

    const-string v5, "Method annotated with @%s must return empty."

    new-array v6, v9, [Ljava/lang/Object;

    const-class v7, Lcom/upsight/android/persistence/annotation/UpsightStorableType;

    aput-object v7, v6, v4

    invoke-direct {v3, v5, v6}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 125
    :cond_60
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_75

    .line 126
    new-instance v3, Lcom/upsight/android/UpsightException;

    const-string v5, "Method annotated with @%s must have no parameters."

    new-array v6, v9, [Ljava/lang/Object;

    const-class v7, Lcom/upsight/android/persistence/annotation/UpsightStorableType;

    aput-object v7, v6, v4

    invoke-direct {v3, v5, v6}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 130
    :cond_75
    if-eqz v0, :cond_89

    .line 131
    new-instance v3, Lcom/upsight/android/UpsightException;

    const-string v5, "@%s can only be defined once in class."

    new-array v6, v9, [Ljava/lang/Object;

    const-class v7, Lcom/upsight/android/persistence/annotation/UpsightStorableType;

    .line 132
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-direct {v3, v5, v6}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 135
    :cond_89
    invoke-interface {v1}, Lcom/upsight/android/persistence/annotation/UpsightStorableType;->value()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a5

    .line 136
    new-instance v3, Lcom/upsight/android/UpsightException;

    const-string v5, "Method annotated with @%s should not define type in annotation but return it."

    new-array v6, v9, [Ljava/lang/Object;

    const-class v7, Lcom/upsight/android/persistence/annotation/UpsightStorableType;

    .line 138
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-direct {v3, v5, v6}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 141
    :cond_a5
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v7

    if-nez v7, :cond_c1

    .line 142
    new-instance v3, Lcom/upsight/android/UpsightException;

    const-string v5, "Method annotated with @%s must be public."

    new-array v6, v9, [Ljava/lang/Object;

    const-class v7, Lcom/upsight/android/persistence/annotation/UpsightStorableType;

    .line 143
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-direct {v3, v5, v6}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 146
    :cond_c1
    new-instance v0, Lcom/upsight/android/internal/persistence/storable/StorableMethodTypeAccessor;

    .end local v0    # "accessor":Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;, "Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor<TT;>;"
    invoke-direct {v0, v2}, Lcom/upsight/android/internal/persistence/storable/StorableMethodTypeAccessor;-><init>(Ljava/lang/reflect/Method;)V

    .line 117
    .restart local v0    # "accessor":Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;, "Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor<TT;>;"
    :cond_c6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_38

    .line 150
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_ca
    if-nez v0, :cond_de

    .line 151
    new-instance v3, Lcom/upsight/android/UpsightException;

    const-string v5, "Class must either be annotated or have method annotated with %s."

    new-array v6, v9, [Ljava/lang/Object;

    const-class v7, Lcom/upsight/android/persistence/annotation/UpsightStorableType;

    .line 153
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-direct {v3, v5, v6}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 155
    :cond_de
    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Lcom/upsight/android/internal/persistence/storable/StorableInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/upsight/android/internal/persistence/storable/StorableInfo",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/upsight/android/UpsightException;
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_a

    .line 44
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Class can not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 47
    :cond_a
    iget-object v4, p0, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;->mInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/internal/persistence/storable/StorableInfo;

    .line 48
    .local v1, "info":Lcom/upsight/android/internal/persistence/storable/StorableInfo;, "Lcom/upsight/android/internal/persistence/storable/StorableInfo<TT;>;"
    if-nez v1, :cond_30

    .line 49
    invoke-direct {p0, p1}, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;->resolveSerializer(Ljava/lang/Class;)Lcom/upsight/android/persistence/UpsightStorableSerializer;

    move-result-object v2

    .line 50
    .local v2, "serializer":Lcom/upsight/android/persistence/UpsightStorableSerializer;, "Lcom/upsight/android/persistence/UpsightStorableSerializer<TT;>;"
    invoke-direct {p0, p1}, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;->resolveType(Ljava/lang/Class;)Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;

    move-result-object v3

    .line 51
    .local v3, "typeAccessor":Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;, "Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor<TT;>;"
    invoke-direct {p0, p1}, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;->resolveIdentifierAccessor(Ljava/lang/Class;)Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;

    move-result-object v0

    .line 52
    .local v0, "identifierAccessor":Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;
    new-instance v1, Lcom/upsight/android/internal/persistence/storable/StorableInfo;

    .end local v1    # "info":Lcom/upsight/android/internal/persistence/storable/StorableInfo;, "Lcom/upsight/android/internal/persistence/storable/StorableInfo<TT;>;"
    invoke-direct {v1, v3, v2, v0}, Lcom/upsight/android/internal/persistence/storable/StorableInfo;-><init>(Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;Lcom/upsight/android/persistence/UpsightStorableSerializer;Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;)V

    .line 53
    .restart local v1    # "info":Lcom/upsight/android/internal/persistence/storable/StorableInfo;, "Lcom/upsight/android/internal/persistence/storable/StorableInfo<TT;>;"
    invoke-interface {v3}, Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;->isDynamic()Z

    move-result v4

    if-nez v4, :cond_30

    .line 54
    iget-object v4, p0, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;->mInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .end local v0    # "identifierAccessor":Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;
    .end local v2    # "serializer":Lcom/upsight/android/persistence/UpsightStorableSerializer;, "Lcom/upsight/android/persistence/UpsightStorableSerializer<TT;>;"
    .end local v3    # "typeAccessor":Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor;, "Lcom/upsight/android/internal/persistence/storable/StorableTypeAccessor<TT;>;"
    :cond_30
    return-object v1
.end method

.method public setSerializer(Ljava/lang/Class;Lcom/upsight/android/persistence/UpsightStorableSerializer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/upsight/android/persistence/UpsightStorableSerializer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "serializer":Lcom/upsight/android/persistence/UpsightStorableSerializer;, "Lcom/upsight/android/persistence/UpsightStorableSerializer<TT;>;"
    iget-object v0, p0, Lcom/upsight/android/internal/persistence/storable/StorableInfoCache;->mSerializerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method
