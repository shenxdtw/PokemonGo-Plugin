.class Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;
.super Ljava/lang/Object;
.source "Certificator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticproject/holoholo/sfida/service/Certificator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CertificateRunnable"
.end annotation


# instance fields
.field delayHandler:Landroid/os/Handler;

.field executeCertificationState:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

.field final synthetic this$0:Lcom/nianticproject/holoholo/sfida/service/Certificator;


# direct methods
.method public constructor <init>(Lcom/nianticproject/holoholo/sfida/service/Certificator;Landroid/os/Handler;Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;)V
    .registers 4
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "certificationState"    # Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->this$0:Lcom/nianticproject/holoholo/sfida/service/Certificator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p2, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->delayHandler:Landroid/os/Handler;

    .line 81
    iput-object p3, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->executeCertificationState:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    .line 82
    return-void
.end method

.method private onReceivedCertificationComplete()V
    .registers 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->this$0:Lcom/nianticproject/holoholo/sfida/service/Certificator;

    iget-object v0, v0, Lcom/nianticproject/holoholo/sfida/service/Certificator;->TAG:Ljava/lang/String;

    const-string v1, "Certification Complete!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->this$0:Lcom/nianticproject/holoholo/sfida/service/Certificator;

    iget-object v0, v0, Lcom/nianticproject/holoholo/sfida/service/Certificator;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    invoke-virtual {v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->onCertificationComplete()V

    .line 241
    return-void
.end method

.method private onReceivedDummyCertificationChallenge1()V
    .registers 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->this$0:Lcom/nianticproject/holoholo/sfida/service/Certificator;

    iget-object v0, v0, Lcom/nianticproject/holoholo/sfida/service/Certificator;->TAG:Ljava/lang/String;

    const-string v1, "Dummy Certification Challenge 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->this$0:Lcom/nianticproject/holoholo/sfida/service/Certificator;

    iget-object v0, v0, Lcom/nianticproject/holoholo/sfida/service/Certificator;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    invoke-virtual {v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->getIsReceivedNotifyCallback()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 164
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->this$0:Lcom/nianticproject/holoholo/sfida/service/Certificator;

    iget-object v0, v0, Lcom/nianticproject/holoholo/sfida/service/Certificator;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    .line 165
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->getSecurityResponseForDebug()[B

    move-result-object v1

    .line 164
    invoke-virtual {v0, v1}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendCertificateMessage([B)Z

    .line 169
    :goto_1e
    return-void

    .line 167
    :cond_1f
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->retry()V

    goto :goto_1e
.end method

.method private onReceivedDummyCertificationChallenge2()V
    .registers 5

    .prologue
    .line 172
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->this$0:Lcom/nianticproject/holoholo/sfida/service/Certificator;

    iget-object v0, v0, Lcom/nianticproject/holoholo/sfida/service/Certificator;->TAG:Ljava/lang/String;

    const-string v1, "Dummy Certification Challenge 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->this$0:Lcom/nianticproject/holoholo/sfida/service/Certificator;

    iget-object v0, v0, Lcom/nianticproject/holoholo/sfida/service/Certificator;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    invoke-virtual {v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->getIsReceivedWriteCallback()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 175
    sget-object v0, Lcom/nianticproject/holoholo/sfida/service/Certificator$1;->$SwitchMap$com$nianticproject$holoholo$sfida$constants$SfidaConstants$SfidaVersion:[I

    sget-object v1, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants;->SFIDA_VERSION:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;

    invoke-virtual {v1}, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_42

    .line 200
    :goto_20
    :pswitch_20
    return-void

    .line 179
    :pswitch_21
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable$2;

    invoke-direct {v1, p0}, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable$2;-><init>(Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_20

    .line 191
    :pswitch_31
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->this$0:Lcom/nianticproject/holoholo/sfida/service/Certificator;

    iget-object v0, v0, Lcom/nianticproject/holoholo/sfida/service/Certificator;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    .line 192
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->getSecurityResponseForDebug2()[B

    move-result-object v1

    .line 191
    invoke-virtual {v0, v1}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendCertificateMessage([B)Z

    goto :goto_20

    .line 198
    :cond_3d
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->retry()V

    goto :goto_20

    .line 175
    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_20
        :pswitch_21
        :pswitch_31
        :pswitch_31
    .end packed-switch
.end method

.method private onReceivedDummyCertificationChallenge3()V
    .registers 5

    .prologue
    .line 203
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->this$0:Lcom/nianticproject/holoholo/sfida/service/Certificator;

    iget-object v0, v0, Lcom/nianticproject/holoholo/sfida/service/Certificator;->TAG:Ljava/lang/String;

    const-string v1, "Dummy Certification Challenge 3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->this$0:Lcom/nianticproject/holoholo/sfida/service/Certificator;

    iget-object v0, v0, Lcom/nianticproject/holoholo/sfida/service/Certificator;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    invoke-virtual {v0}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->getIsReceivedWriteCallback()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 206
    sget-object v0, Lcom/nianticproject/holoholo/sfida/service/Certificator$1;->$SwitchMap$com$nianticproject$holoholo$sfida$constants$SfidaConstants$SfidaVersion:[I

    sget-object v1, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants;->SFIDA_VERSION:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;

    invoke-virtual {v1}, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4a

    .line 236
    :goto_20
    :pswitch_20
    return-void

    .line 213
    :pswitch_21
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->this$0:Lcom/nianticproject/holoholo/sfida/service/Certificator;

    iget-object v0, v0, Lcom/nianticproject/holoholo/sfida/service/Certificator;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    .line 214
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->getSecurityResponseForDebug3()[B

    move-result-object v1

    .line 213
    invoke-virtual {v0, v1}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendCertificateMessage([B)Z

    .line 216
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->delayHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable$3;

    invoke-direct {v1, p0}, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable$3;-><init>(Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_20

    .line 226
    :pswitch_39
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->this$0:Lcom/nianticproject/holoholo/sfida/service/Certificator;

    iget-object v0, v0, Lcom/nianticproject/holoholo/sfida/service/Certificator;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    .line 227
    invoke-static {}, Lcom/nianticproject/holoholo/sfida/SfidaMessage;->getSecurityResponseForDebug3()[B

    move-result-object v1

    .line 226
    invoke-virtual {v0, v1}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->sendCertificateMessage([B)Z

    goto :goto_20

    .line 234
    :cond_45
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->retry()V

    goto :goto_20

    .line 206
    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_20
        :pswitch_20
        :pswitch_21
        :pswitch_39
    .end packed-switch
.end method

.method private onReceivedSecurityServiceNotify()V
    .registers 4

    .prologue
    .line 116
    sget-object v1, Lcom/nianticproject/holoholo/sfida/service/Certificator$1;->$SwitchMap$com$nianticproject$holoholo$sfida$constants$SfidaConstants$SfidaVersion:[I

    sget-object v2, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants;->SFIDA_VERSION:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;

    invoke-virtual {v2}, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$SfidaVersion;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2e

    .line 157
    :cond_d
    :goto_d
    return-void

    .line 119
    :pswitch_e
    iget-object v1, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->this$0:Lcom/nianticproject/holoholo/sfida/service/Certificator;

    iget-object v1, v1, Lcom/nianticproject/holoholo/sfida/service/Certificator;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    invoke-virtual {v1}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->enableDeviceControlServiceNotify()Z

    goto :goto_d

    .line 126
    :pswitch_16
    iget-object v1, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->this$0:Lcom/nianticproject/holoholo/sfida/service/Certificator;

    iget-object v1, v1, Lcom/nianticproject/holoholo/sfida/service/Certificator;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    new-instance v2, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable$1;

    invoke-direct {v2, p0}, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable$1;-><init>(Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;)V

    invoke-virtual {v1, v2}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->enableSecurityServiceNotify(Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;)Z

    move-result v0

    .line 145
    .local v0, "result":Z
    if-nez v0, :cond_d

    .line 151
    iget-object v1, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->this$0:Lcom/nianticproject/holoholo/sfida/service/Certificator;

    iget-object v1, v1, Lcom/nianticproject/holoholo/sfida/service/Certificator;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    invoke-virtual {v1}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->disconnectBluetooth()Z

    goto :goto_d

    .line 116
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_e
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method private retry()V
    .registers 5

    .prologue
    .line 244
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->delayHandler:Landroid/os/Handler;

    if-eqz v0, :cond_14

    .line 245
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->this$0:Lcom/nianticproject/holoholo/sfida/service/Certificator;

    iget-object v0, v0, Lcom/nianticproject/holoholo/sfida/service/Certificator;->TAG:Ljava/lang/String;

    const-string v1, "Callback was not received. Retry after."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->delayHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 248
    :cond_14
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->this$0:Lcom/nianticproject/holoholo/sfida/service/Certificator;

    iget-object v1, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->executeCertificationState:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    invoke-virtual {v0, v1}, Lcom/nianticproject/holoholo/sfida/service/Certificator;->setCertificationState(Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;)V

    .line 88
    sget-object v0, Lcom/nianticproject/holoholo/sfida/service/Certificator$1;->$SwitchMap$com$nianticproject$holoholo$sfida$constants$SfidaConstants$CertificationState:[I

    iget-object v1, p0, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->executeCertificationState:Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;

    invoke-virtual {v1}, Lcom/nianticproject/holoholo/sfida/constants/SfidaConstants$CertificationState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2a

    .line 111
    :goto_14
    return-void

    .line 90
    :pswitch_15
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->onReceivedSecurityServiceNotify()V

    goto :goto_14

    .line 94
    :pswitch_19
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->onReceivedDummyCertificationChallenge1()V

    goto :goto_14

    .line 98
    :pswitch_1d
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->onReceivedDummyCertificationChallenge2()V

    goto :goto_14

    .line 102
    :pswitch_21
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->onReceivedDummyCertificationChallenge3()V

    goto :goto_14

    .line 106
    :pswitch_25
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/service/Certificator$CertificateRunnable;->onReceivedCertificationComplete()V

    goto :goto_14

    .line 88
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_19
        :pswitch_1d
        :pswitch_21
        :pswitch_25
    .end packed-switch
.end method
