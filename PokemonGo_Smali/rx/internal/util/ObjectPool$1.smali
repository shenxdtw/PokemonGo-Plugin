.class Lrx/internal/util/ObjectPool$1;
.super Ljava/lang/Object;
.source "ObjectPool.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/ObjectPool;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/util/ObjectPool;


# direct methods
.method constructor <init>(Lrx/internal/util/ObjectPool;)V
    .registers 2

    .prologue
    .line 109
    .local p0, "this":Lrx/internal/util/ObjectPool$1;, "Lrx/internal/util/ObjectPool.1;"
    iput-object p1, p0, Lrx/internal/util/ObjectPool$1;->this$0:Lrx/internal/util/ObjectPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 7

    .prologue
    .line 113
    .local p0, "this":Lrx/internal/util/ObjectPool$1;, "Lrx/internal/util/ObjectPool.1;"
    iget-object v4, p0, Lrx/internal/util/ObjectPool$1;->this$0:Lrx/internal/util/ObjectPool;

    iget-object v4, v4, Lrx/internal/util/ObjectPool;->pool:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v1

    .line 114
    .local v1, "size":I
    iget-object v4, p0, Lrx/internal/util/ObjectPool$1;->this$0:Lrx/internal/util/ObjectPool;

    iget v4, v4, Lrx/internal/util/ObjectPool;->minSize:I

    if-ge v1, v4, :cond_27

    .line 115
    iget-object v4, p0, Lrx/internal/util/ObjectPool$1;->this$0:Lrx/internal/util/ObjectPool;

    iget v4, v4, Lrx/internal/util/ObjectPool;->maxSize:I

    sub-int v2, v4, v1

    .line 116
    .local v2, "sizeToBeAdded":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    if-ge v0, v2, :cond_40

    .line 117
    iget-object v4, p0, Lrx/internal/util/ObjectPool$1;->this$0:Lrx/internal/util/ObjectPool;

    iget-object v4, v4, Lrx/internal/util/ObjectPool;->pool:Ljava/util/Queue;

    iget-object v5, p0, Lrx/internal/util/ObjectPool$1;->this$0:Lrx/internal/util/ObjectPool;

    invoke-virtual {v5}, Lrx/internal/util/ObjectPool;->createObject()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 119
    .end local v0    # "i":I
    .end local v2    # "sizeToBeAdded":I
    :cond_27
    iget-object v4, p0, Lrx/internal/util/ObjectPool$1;->this$0:Lrx/internal/util/ObjectPool;

    iget v4, v4, Lrx/internal/util/ObjectPool;->maxSize:I

    if-le v1, v4, :cond_40

    .line 120
    iget-object v4, p0, Lrx/internal/util/ObjectPool$1;->this$0:Lrx/internal/util/ObjectPool;

    iget v4, v4, Lrx/internal/util/ObjectPool;->maxSize:I

    sub-int v3, v1, v4

    .line 121
    .local v3, "sizeToBeRemoved":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_34
    if-ge v0, v3, :cond_40

    .line 123
    iget-object v4, p0, Lrx/internal/util/ObjectPool$1;->this$0:Lrx/internal/util/ObjectPool;

    iget-object v4, v4, Lrx/internal/util/ObjectPool;->pool:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 126
    .end local v0    # "i":I
    .end local v3    # "sizeToBeRemoved":I
    :cond_40
    return-void
.end method
