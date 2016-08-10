.class abstract Lrx/internal/util/unsafe/SpscUnboundedArrayQueueProducerColdFields;
.super Lrx/internal/util/unsafe/SpscUnboundedArrayQueueProducerFields;
.source "SpscUnboundedArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/SpscUnboundedArrayQueueProducerFields",
        "<TE;>;"
    }
.end annotation


# instance fields
.field protected producerBuffer:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field protected producerLookAhead:J

.field protected producerLookAheadStep:I

.field protected producerMask:J


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 29
    .local p0, "this":Lrx/internal/util/unsafe/SpscUnboundedArrayQueueProducerColdFields;, "Lrx/internal/util/unsafe/SpscUnboundedArrayQueueProducerColdFields<TE;>;"
    invoke-direct {p0}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueueProducerFields;-><init>()V

    return-void
.end method
