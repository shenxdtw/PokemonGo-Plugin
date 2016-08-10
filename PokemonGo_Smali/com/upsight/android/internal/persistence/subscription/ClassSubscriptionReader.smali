.class Lcom/upsight/android/internal/persistence/subscription/ClassSubscriptionReader;
.super Ljava/lang/Object;
.source "ClassSubscriptionReader.java"


# instance fields
.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/upsight/android/internal/persistence/subscription/ClassSubscriptionReader;->mClass:Ljava/lang/Class;

    .line 21
    return-void
.end method

.method private isSubscriptionMethod(Ljava/lang/reflect/Method;)Z
    .registers 8
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 67
    :cond_e
    :goto_e
    return v2

    .line 52
    :cond_f
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 53
    .local v0, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v4, v0

    if-ne v4, v3, :cond_e

    .line 57
    aget-object v4, v0, v2

    const-class v5, Lcom/upsight/android/persistence/annotation/UpsightStorableType;

    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/persistence/annotation/UpsightStorableType;

    .line 59
    .local v1, "storableType":Lcom/upsight/android/persistence/annotation/UpsightStorableType;
    if-eqz v1, :cond_e

    .line 63
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-eqz v4, :cond_e

    move v2, v3

    .line 67
    goto :goto_e
.end method


# virtual methods
.method public accept(Lcom/upsight/android/internal/persistence/subscription/ClassSubscriptionVisitor;)V
    .registers 12
    .param p1, "visitor"    # Lcom/upsight/android/internal/persistence/subscription/ClassSubscriptionVisitor;

    .prologue
    const/4 v6, 0x0

    .line 24
    iget-object v5, p0, Lcom/upsight/android/internal/persistence/subscription/ClassSubscriptionReader;->mClass:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    array-length v8, v7

    move v5, v6

    :goto_9
    if-ge v5, v8, :cond_44

    aget-object v2, v7, v5

    .line 25
    .local v2, "method":Ljava/lang/reflect/Method;
    invoke-direct {p0, v2}, Lcom/upsight/android/internal/persistence/subscription/ClassSubscriptionReader;->isSubscriptionMethod(Ljava/lang/reflect/Method;)Z

    move-result v9

    if-nez v9, :cond_16

    .line 24
    :cond_13
    :goto_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 29
    :cond_16
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    aget-object v0, v9, v6

    .line 30
    .local v0, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v9, Lcom/upsight/android/persistence/annotation/Created;

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/persistence/annotation/Created;

    .line 31
    .local v1, "created":Lcom/upsight/android/persistence/annotation/Created;
    if-eqz v1, :cond_29

    .line 32
    invoke-interface {p1, v2, v0}, Lcom/upsight/android/internal/persistence/subscription/ClassSubscriptionVisitor;->visitCreatedSubscription(Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    .line 35
    :cond_29
    const-class v9, Lcom/upsight/android/persistence/annotation/Updated;

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/upsight/android/persistence/annotation/Updated;

    .line 36
    .local v4, "updated":Lcom/upsight/android/persistence/annotation/Updated;
    if-eqz v4, :cond_36

    .line 37
    invoke-interface {p1, v2, v0}, Lcom/upsight/android/internal/persistence/subscription/ClassSubscriptionVisitor;->visitUpdatedSubscription(Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    .line 40
    :cond_36
    const-class v9, Lcom/upsight/android/persistence/annotation/Removed;

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/upsight/android/persistence/annotation/Removed;

    .line 41
    .local v3, "removed":Lcom/upsight/android/persistence/annotation/Removed;
    if-eqz v3, :cond_13

    .line 42
    invoke-interface {p1, v2, v0}, Lcom/upsight/android/internal/persistence/subscription/ClassSubscriptionVisitor;->visitRemovedSubscription(Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    goto :goto_13

    .line 45
    .end local v0    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "created":Lcom/upsight/android/persistence/annotation/Created;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "removed":Lcom/upsight/android/persistence/annotation/Removed;
    .end local v4    # "updated":Lcom/upsight/android/persistence/annotation/Updated;
    :cond_44
    return-void
.end method
