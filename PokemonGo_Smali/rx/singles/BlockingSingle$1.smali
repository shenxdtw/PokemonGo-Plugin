.class Lrx/singles/BlockingSingle$1;
.super Lrx/SingleSubscriber;
.source "BlockingSingle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/singles/BlockingSingle;->value()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/SingleSubscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/singles/BlockingSingle;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$returnException:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$returnItem:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lrx/singles/BlockingSingle;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 5

    .prologue
    .line 71
    .local p0, "this":Lrx/singles/BlockingSingle$1;, "Lrx/singles/BlockingSingle.1;"
    iput-object p1, p0, Lrx/singles/BlockingSingle$1;->this$0:Lrx/singles/BlockingSingle;

    iput-object p2, p0, Lrx/singles/BlockingSingle$1;->val$returnItem:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lrx/singles/BlockingSingle$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p4, p0, Lrx/singles/BlockingSingle$1;->val$returnException:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Lrx/SingleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 80
    .local p0, "this":Lrx/singles/BlockingSingle$1;, "Lrx/singles/BlockingSingle.1;"
    iget-object v0, p0, Lrx/singles/BlockingSingle$1;->val$returnException:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lrx/singles/BlockingSingle$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 82
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lrx/singles/BlockingSingle$1;, "Lrx/singles/BlockingSingle.1;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/singles/BlockingSingle$1;->val$returnItem:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lrx/singles/BlockingSingle$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 76
    return-void
.end method
