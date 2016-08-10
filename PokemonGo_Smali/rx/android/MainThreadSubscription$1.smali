.class Lrx/android/MainThreadSubscription$1;
.super Ljava/lang/Object;
.source "MainThreadSubscription.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/MainThreadSubscription;->unsubscribe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/android/MainThreadSubscription;


# direct methods
.method constructor <init>(Lrx/android/MainThreadSubscription;)V
    .registers 2

    .prologue
    .line 74
    iput-object p1, p0, Lrx/android/MainThreadSubscription$1;->this$0:Lrx/android/MainThreadSubscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lrx/android/MainThreadSubscription$1;->this$0:Lrx/android/MainThreadSubscription;

    invoke-virtual {v0}, Lrx/android/MainThreadSubscription;->onUnsubscribe()V

    .line 77
    return-void
.end method
