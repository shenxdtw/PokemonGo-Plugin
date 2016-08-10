.class public Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
.super Lcom/nianticlabs/pokemongoplus/ble/Characteristic;
.source "SfidaCharacteristic.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final RETRIES:I

.field private final SLEEP_DELAY_MS:J

.field private characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private gatt:Landroid/bluetooth/BluetoothGatt;

.field private nativeHandle:J

.field private onDisableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

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
    .registers 5
    .param p1, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p2, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/nianticlabs/pokemongoplus/ble/Characteristic;-><init>()V

    .line 23
    const/4 v0, 0x7

    iput v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->RETRIES:I

    .line 24
    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->SLEEP_DELAY_MS:J

    .line 37
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->queue:Ljava/util/ArrayDeque;

    .line 41
    iput-object p2, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 42
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 43
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
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onWriteCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onReadCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onEnableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    .param p1, "x1"    # Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onEnableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onDisableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    .param p1, "x1"    # Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onDisableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    return-object p1
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

.method static synthetic access$500(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;ZI)V
    .registers 3
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->nativeDisableNotifyCallback(ZI)V

    return-void
.end method

.method static synthetic access$600(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object v0
.end method

.method static synthetic access$700(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Lcom/nianticlabs/pokemongoplus/ble/callback/ValueChangeCallback;
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onValueChangedCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ValueChangeCallback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;[B)V
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;
    .param p1, "x1"    # [B

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->nativeSaveValueChangedCallback([B)V

    return-void
.end method

.method static synthetic access$900(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)Ljava/util/ArrayDeque;
    .registers 2
    .param p0, "x0"    # Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->queue:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method private native nativeDisableNotifyCallback(ZI)V
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
.method public cancelNotify()V
    .registers 1

    .prologue
    .line 65
    return-void
.end method

.method public disableNotify()V
    .registers 2

    .prologue
    .line 208
    new-instance v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$5;

    invoke-direct {v0, p0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$5;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)V

    invoke-virtual {p0, v0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->disableNotify(Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V

    .line 216
    return-void
.end method

.method public disableNotify(Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V
    .registers 13
    .param p1, "callback"    # Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 180
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onDisableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .line 181
    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->gatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v6, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v5, v6, v9}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v4

    .line 183
    .local v4, "success":Z
    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    .line 184
    .local v0, "currentValue":[B
    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v6, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant;->UUID_CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    .line 186
    .local v1, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    sget-object v5, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->TAG:Ljava/lang/String;

    const-string v6, "Config characteristic:%s descriptor:%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->getUuid()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    aput-object v1, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    if-eqz v1, :cond_60

    .line 188
    sget-object v5, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 189
    const/4 v3, 0x0

    .line 190
    .local v3, "result":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_39
    const/4 v5, 0x7

    if-ge v2, v5, :cond_57

    .line 191
    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v5, v1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v3

    .line 192
    sget-object v5, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->TAG:Ljava/lang/String;

    const-string v6, "Write descriptor success: %b"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    if-eqz v3, :cond_61

    .line 200
    :cond_57
    if-nez v3, :cond_60

    .line 201
    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onDisableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    sget-object v6, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-interface {v5, v9, v6}, Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;->onCompletion(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    .line 204
    .end local v2    # "i":I
    .end local v3    # "result":Z
    :cond_60
    return-void

    .line 195
    .restart local v2    # "i":I
    .restart local v3    # "result":Z
    :cond_61
    const-wide/16 v6, 0xfa

    :try_start_63
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_66
    .catch Ljava/lang/InterruptedException; {:try_start_63 .. :try_end_66} :catch_69

    .line 190
    :goto_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 196
    :catch_69
    move-exception v5

    goto :goto_66
.end method

.method public enableNotify()V
    .registers 2

    .prologue
    .line 169
    new-instance v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$4;

    invoke-direct {v0, p0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$4;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)V

    invoke-virtual {p0, v0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->enableNotify(Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V

    .line 177
    return-void
.end method

.method public enableNotify(Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V
    .registers 14
    .param p1, "callback"    # Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .prologue
    const/4 v11, 0x7

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 129
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onEnableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .line 132
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, v11, :cond_25

    .line 133
    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->gatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v6, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v5, v6, v10}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v4

    .line 134
    .local v4, "success":Z
    sget-object v5, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->TAG:Ljava/lang/String;

    const-string v6, "setCharacteristicNotification success: %b"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    if-eqz v4, :cond_8a

    .line 142
    .end local v4    # "success":Z
    :cond_25
    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v5

    and-int/lit8 v5, v5, 0x10

    if-nez v5, :cond_36

    .line 143
    sget-object v5, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->TAG:Ljava/lang/String;

    const-string v6, "Enable Notify not supported"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_36
    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    .line 146
    .local v2, "previousValue":[B
    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v6, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant;->UUID_CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 148
    .local v0, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    sget-object v5, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->TAG:Ljava/lang/String;

    const-string v6, "Config characteristic:%s descriptor:%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->getUuid()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    aput-object v0, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    if-eqz v0, :cond_89

    .line 150
    sget-object v5, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 151
    const/4 v3, 0x0

    .line 152
    .local v3, "result":Z
    const/4 v1, 0x0

    :goto_63
    if-ge v1, v11, :cond_80

    .line 153
    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v5, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v3

    .line 154
    sget-object v5, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->TAG:Ljava/lang/String;

    const-string v6, "Write descriptor success: %b"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    if-eqz v3, :cond_93

    .line 162
    :cond_80
    if-nez v3, :cond_89

    .line 163
    iget-object v5, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onEnableNotifyCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    sget-object v6, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-interface {v5, v9, v6}, Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;->onCompletion(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    .line 166
    .end local v3    # "result":Z
    :cond_89
    return-void

    .line 137
    .end local v0    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    .end local v2    # "previousValue":[B
    .restart local v4    # "success":Z
    :cond_8a
    const-wide/16 v6, 0xfa

    :try_start_8c
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8f
    .catch Ljava/lang/InterruptedException; {:try_start_8c .. :try_end_8f} :catch_9b

    .line 132
    :goto_8f
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 157
    .end local v4    # "success":Z
    .restart local v0    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    .restart local v2    # "previousValue":[B
    .restart local v3    # "result":Z
    :cond_93
    const-wide/16 v6, 0xfa

    :try_start_95
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_98
    .catch Ljava/lang/InterruptedException; {:try_start_95 .. :try_end_98} :catch_9d

    .line 152
    :goto_98
    add-int/lit8 v1, v1, 0x1

    goto :goto_63

    .line 138
    .end local v0    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    .end local v2    # "previousValue":[B
    .end local v3    # "result":Z
    .restart local v4    # "success":Z
    :catch_9b
    move-exception v5

    goto :goto_8f

    .line 158
    .end local v4    # "success":Z
    .restart local v0    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    .restart local v2    # "previousValue":[B
    .restart local v3    # "result":Z
    :catch_9d
    move-exception v5

    goto :goto_98
.end method

.method public getLongValue()J
    .registers 3

    .prologue
    .line 56
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUuid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
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
    .line 61
    iget-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public notifyValueChanged()V
    .registers 2

    .prologue
    .line 68
    new-instance v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$1;

    invoke-direct {v0, p0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$1;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)V

    iput-object v0, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onValueChangedCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/ValueChangeCallback;

    .line 74
    return-void
.end method

.method public onCharacteristicChanged()V
    .registers 2

    .prologue
    .line 219
    new-instance v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$6;

    invoke-direct {v0, p0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$6;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 231
    return-void
.end method

.method public onCharacteristicRead(I)V
    .registers 3
    .param p1, "status"    # I

    .prologue
    .line 249
    new-instance v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$8;

    invoke-direct {v0, p0, p1}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$8;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;I)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 261
    return-void
.end method

.method public onCharacteristicWrite(I)V
    .registers 3
    .param p1, "status"    # I

    .prologue
    .line 234
    new-instance v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$7;

    invoke-direct {v0, p0, p1}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$7;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;I)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 246
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .registers 8
    .param p1, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p2, "status"    # I

    .prologue
    .line 264
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

    .line 265
    new-instance v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9;

    invoke-direct {v0, p0, p2}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$9;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;I)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 288
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 47
    return-void
.end method

.method public readValue()V
    .registers 2

    .prologue
    .line 119
    new-instance v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$3;

    invoke-direct {v0, p0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$3;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)V

    invoke-virtual {p0, v0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->readValue(Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V

    .line 125
    return-void
.end method

.method public readValue(Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V
    .registers 6
    .param p1, "callback"    # Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onReadCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .line 112
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->gatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    .line 114
    .local v0, "result":Z
    if-nez v0, :cond_14

    .line 115
    iget-object v1, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onReadCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    const/4 v2, 0x0

    sget-object v3, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-interface {v1, v2, v3}, Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;->onCompletion(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    .line 117
    :cond_14
    return-void
.end method

.method public writeByteArray([B)V
    .registers 3
    .param p1, "byteArray"    # [B

    .prologue
    .line 99
    new-instance v0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$2;

    invoke-direct {v0, p0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic$2;-><init>(Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;)V

    invoke-virtual {p0, p1, v0}, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->writeByteArray([BLcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V

    .line 105
    return-void
.end method

.method public writeByteArray([BLcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;)V
    .registers 8
    .param p1, "byteArray"    # [B
    .param p2, "callback"    # Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .prologue
    .line 78
    iput-object p2, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onWriteCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .line 81
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, "result":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    const/4 v2, 0x7

    if-ge v0, v2, :cond_16

    .line 84
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->gatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v3, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v1

    .line 85
    if-eqz v1, :cond_24

    .line 92
    :cond_16
    if-nez v1, :cond_23

    .line 93
    iget-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onWriteCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    const/4 v3, 0x0

    sget-object v4, Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;->Unknown:Lcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;

    invoke-interface {v2, v3, v4}, Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;->onCompletion(ZLcom/nianticlabs/pokemongoplus/ble/SfidaConstant$BluetoothError;)V

    .line 94
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nianticlabs/pokemongoplus/SfidaCharacteristic;->onWriteCallback:Lcom/nianticlabs/pokemongoplus/ble/callback/CompletionCallback;

    .line 96
    :cond_23
    return-void

    .line 87
    :cond_24
    const-wide/16 v2, 0xfa

    :try_start_26
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_29} :catch_2c

    .line 83
    :goto_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 88
    :catch_2c
    move-exception v2

    goto :goto_29
.end method
