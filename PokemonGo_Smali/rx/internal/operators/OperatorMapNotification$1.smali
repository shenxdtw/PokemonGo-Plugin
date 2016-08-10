.class Lrx/internal/operators/OperatorMapNotification$1;
.super Ljava/lang/Object;
.source "OperatorMapNotification.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorMapNotification;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorMapNotification;

.field final synthetic val$parent:Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorMapNotification;Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;)V
    .registers 3

    .prologue
    .line 47
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification$1;, "Lrx/internal/operators/OperatorMapNotification.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorMapNotification$1;->this$0:Lrx/internal/operators/OperatorMapNotification;

    iput-object p2, p0, Lrx/internal/operators/OperatorMapNotification$1;->val$parent:Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 4
    .param p1, "n"    # J

    .prologue
    .line 50
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification$1;, "Lrx/internal/operators/OperatorMapNotification.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorMapNotification$1;->val$parent:Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;

    invoke-virtual {v0, p1, p2}, Lrx/internal/operators/OperatorMapNotification$MapNotificationSubscriber;->requestInner(J)V

    .line 51
    return-void
.end method
