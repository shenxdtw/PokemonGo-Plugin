.class abstract Lrx/internal/util/unsafe/SpmcArrayQueueConsumerField;
.super Lrx/internal/util/unsafe/SpmcArrayQueueL2Pad;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/SpmcArrayQueueL2Pad",
        "<TE;>;"
    }
.end annotation


# static fields
.field protected static final C_INDEX_OFFSET:J


# instance fields
.field private volatile consumerIndex:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 57
    const-class v0, Lrx/internal/util/unsafe/SpmcArrayQueueConsumerField;

    const-string v1, "consumerIndex"

    invoke-static {v0, v1}, Lrx/internal/util/unsafe/UnsafeAccess;->addressOf(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lrx/internal/util/unsafe/SpmcArrayQueueConsumerField;->C_INDEX_OFFSET:J

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "capacity"    # I

    .prologue
    .line 61
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueueConsumerField;, "Lrx/internal/util/unsafe/SpmcArrayQueueConsumerField<TE;>;"
    invoke-direct {p0, p1}, Lrx/internal/util/unsafe/SpmcArrayQueueL2Pad;-><init>(I)V

    .line 62
    return-void
.end method


# virtual methods
.method protected final casHead(JJ)Z
    .registers 14
    .param p1, "expect"    # J
    .param p3, "newValue"    # J

    .prologue
    .line 69
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueueConsumerField;, "Lrx/internal/util/unsafe/SpmcArrayQueueConsumerField<TE;>;"
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/unsafe/SpmcArrayQueueConsumerField;->C_INDEX_OFFSET:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

.method protected final lvConsumerIndex()J
    .registers 3

    .prologue
    .line 65
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueueConsumerField;, "Lrx/internal/util/unsafe/SpmcArrayQueueConsumerField<TE;>;"
    iget-wide v0, p0, Lrx/internal/util/unsafe/SpmcArrayQueueConsumerField;->consumerIndex:J

    return-wide v0
.end method
