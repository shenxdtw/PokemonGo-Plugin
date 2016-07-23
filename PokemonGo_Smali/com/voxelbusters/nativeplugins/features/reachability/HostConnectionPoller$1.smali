.class Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller$1;
.super Ljava/lang/Object;
.source "HostConnectionPoller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->Start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;


# direct methods
.method constructor <init>(Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller$1;->this$0:Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 52
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller$1;->this$0:Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;

    invoke-virtual {v3}, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->getIp()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller$1;->this$0:Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;

    invoke-virtual {v4}, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->getPort()I

    move-result v4

    invoke-direct {v0, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 56
    .local v0, "address":Ljava/net/InetSocketAddress;
    :goto_11
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    .line 59
    .local v2, "socket":Ljava/net/Socket;
    :try_start_16
    iget-object v3, p0, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller$1;->this$0:Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;

    invoke-virtual {v3}, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->getConnectionTimeOutPeriod()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    long-to-int v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 60
    iget-object v3, p0, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller$1;->this$0:Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;

    # invokes: Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->ReportConnectionSuccess()V
    invoke-static {v3}, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->access$0(Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;)V

    .line 61
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_2b} :catch_3e

    .line 71
    :goto_2b
    :try_start_2b
    iget-object v3, p0, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller$1;->this$0:Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;

    # getter for: Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->timeGapBetweenPolls:F
    invoke-static {v3}, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->access$2(Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;)F

    move-result v3

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v4

    float-to-long v4, v3

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_38} :catch_39

    goto :goto_11

    .line 73
    :catch_39
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_11

    .line 63
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_3e
    move-exception v1

    .line 65
    .local v1, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller$1;->this$0:Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;

    # invokes: Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->ReportConnectionFailure()V
    invoke-static {v3}, Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;->access$1(Lcom/voxelbusters/nativeplugins/features/reachability/HostConnectionPoller;)V

    .line 66
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2b
.end method
