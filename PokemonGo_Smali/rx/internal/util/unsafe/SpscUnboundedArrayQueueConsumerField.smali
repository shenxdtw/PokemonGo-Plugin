.class abstract Lrx/internal/util/unsafe/SpscUnboundedArrayQueueConsumerField;
.super Lrx/internal/util/unsafe/SpscUnboundedArrayQueueConsumerColdField;
.source "SpscUnboundedArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/SpscUnboundedArrayQueueConsumerColdField",
        "<TE;>;"
    }
.end annotation


# instance fields
.field protected consumerIndex:J


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/util/unsafe/SpscUnboundedArrayQueueConsumerField;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueueConsumerField<TE;>;"
    invoke-direct {p0}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueueConsumerColdField;-><init>()V

    return-void
.end method
