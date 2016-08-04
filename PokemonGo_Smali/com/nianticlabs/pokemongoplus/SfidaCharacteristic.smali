.class public Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
.super Lcom/nianticlabs/pokemongoplus/ble/Characteristic;
.source "SfidaCharacteristic.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private gatt:Landroid/bluetooth/BluetoothGatt;

.field private nativeHandle:J

.field private onEnableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

.field private onReadCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

.field private onValueChangedCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ValueChangeCallback;

.field private onWriteCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

.field private volatile queue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothGattCharacteristic;Landroid/bluetooth/BluetoothGatt;)V
    .registers 4
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/ble/Characteristic;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->queue:Ljava/util/ArrayDeque;

    .line 33
    iput-object p2, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 34
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;ZZI)V
    .registers 4
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->nativeValueChangedCallback(ZZI)V

    return-void
.end method

.method static synthetic access$100(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;ZI)V
    .registers 3
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->nativeWriteCompleteCallback(ZI)V

    return-void
.end method

.method static synthetic access$1000(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onReadCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onEnableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;ZI)V
    .registers 3
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->nativeReadCompleteCallback(ZI)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;ZI)V
    .registers 3
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->nativeEnableNotifyCallback(ZI)V

    return-void
.end method

.method static synthetic access$500(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;[B)V
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    .param p1, "x1"    # [B

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->nativeSaveValueChangedCallback([B)V

    return-void
.end method

.method static synthetic access$700(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Lcom/nianticlabs/pokemongoplus/ble/callback/ValueChangeCallback;
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onValueChangedCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ValueChangeCallback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Ljava/util/ArrayDeque;
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->queue:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method static synthetic access$900(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onWriteCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    return-object v0
.end method

.method private native nativeEnableNotifyCallback(ZI)V
.end method

.method private native nativeReadCompleteCallback(ZI)V
.end method

.method private native nativeSaveValueChangedCallback([B)V
.end method

.method private native nativeValueChangedCallback(ZZI)V
.end method

.method private native nativeWriteCompleteCallback(ZI)V
.end method


# virtual methods
.method public enableNotify()V
    .registers 2

    .prologue
    .line 124
    new-instance v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$4;

    invoke-direct {v0, p0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$4;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)V

    invoke-virtual {p0, v0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->enableNotify(Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V

    .line 133
    return-void
.end method

.method public enableNotify(Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V
    .registers 10
    .param p1, "callback"    # Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 107
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onEnableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .line 110
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v3, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant;->UUID_CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 112
    .local v0, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    sget-object v2, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->TAG:Ljava/lang/String;

    const-string v3, "Config characteristic:%s descriptor:%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->getUuid()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    if-eqz v0, :cond_4b

    .line 114
    sget-object v2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 115
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v1

    .line 116
    .local v1, "result":Z
    sget-object v2, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->TAG:Ljava/lang/String;

    const-string v3, "Write description success:%b"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    if-nez v1, :cond_4b

    .line 118
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onEnableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    sget-object v3, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-interface {v2, v6, v3}, Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;->onCompletion(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    .line 121
    .end local v1    # "result":Z
    :cond_4b
    return-void
.end method

.method public getLongValue()J
    .registers 3

    .prologue
    .line 44
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUuid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()[B
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public notifyValueChanged()V
    .registers 5

    .prologue
    .line 53
    new-instance v1, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$1;

    invoke-direct {v1, p0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$1;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)V

    iput-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onValueChangedCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ValueChangeCallback;

    .line 59
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->gatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v0

    .line 60
    .local v0, "success":Z
    return-void
.end method

.method public onCharacteristicChanged()V
    .registers 2

    .prologue
    .line 136
    new-instance v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$5;

    invoke-direct {v0, p0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$5;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 148
    return-void
.end method

.method public onCharacteristicRead(I)V
    .registers 3
    .param p1, "status"    # I

    .prologue
    .line 166
    new-instance v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$7;

    invoke-direct {v0, p0, p1}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$7;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;I)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 178
    return-void
.end method

.method public onCharacteristicWrite(I)V
    .registers 3
    .param p1, "status"    # I

    .prologue
    .line 151
    new-instance v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$6;

    invoke-direct {v0, p0, p1}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$6;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;I)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 163
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .registers 8
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p2, "status"    # I

    .prologue
    .line 181
    sget-object v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->TAG:Ljava/lang/String;

    const-string v1, "onDescriptorWrite status:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$8;

    invoke-direct {v0, p0, p2}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$8;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;I)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 194
    return-void
.end method

.method public readValue()V
    .registers 2

    .prologue
    .line 97
    new-instance v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$3;

    invoke-direct {v0, p0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$3;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)V

    invoke-virtual {p0, v0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->readValue(Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V

    .line 103
    return-void
.end method

.method public readValue(Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V
    .registers 6
    .param p1, "callback"    # Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onReadCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .line 90
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->gatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    .line 92
    .local v0, "result":Z
    if-nez v0, :cond_14

    .line 93
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onReadCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    const/4 v2, 0x0

    sget-object v3, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-interface {v1, v2, v3}, Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;->onCompletion(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    .line 95
    :cond_14
    return-void
.end method

.method public writeByteArray([B)V
    .registers 3
    .param p1, "byteArray"    # [B

    .prologue
    .line 77
    new-instance v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$2;

    invoke-direct {v0, p0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$2;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)V

    invoke-virtual {p0, p1, v0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->writeByteArray([BLcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V

    .line 83
    return-void
.end method

.method public writeByteArray([BLcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V
    .registers 7
    .param p1, "byteArray"    # [B
    .param p2, "callback"    # Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .prologue
    .line 64
    iput-object p2, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onWriteCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .line 67
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 68
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->gatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    .line 70
    .local v0, "result":Z
    if-nez v0, :cond_1c

    .line 71
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onWriteCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    const/4 v2, 0x0

    sget-object v3, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-interface {v1, v2, v3}, Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;->onCompletion(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    .line 72
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onWriteCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .line 74
    :cond_1c
    return-void
.end method
