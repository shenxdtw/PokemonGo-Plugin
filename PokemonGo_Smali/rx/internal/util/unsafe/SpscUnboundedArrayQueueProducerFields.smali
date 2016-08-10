.class abstract Lrx/internal/util/unsafe/SpscUnboundedArrayQueueProducerFields;
.super Ljava/util/AbstractQueue;
.source "SpscUnboundedArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;"
    }
.end annotation


# instance fields
.field protected producerIndex:J


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 25
    .local p0, "this":Lrx/internal/util/unsafe/SpscUnboundedArrayQueueProducerFields;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueueProducerFields<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    return-void
.end method
