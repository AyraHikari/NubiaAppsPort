.class public final Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageSender;
.super Ljava/lang/Object;
.source "DeviceMessageSender.java"


# instance fields
.field private clipboardText:Ljava/lang/String;

.field private final connection:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;


# direct methods
.method public constructor <init>(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;)V
    .locals 0
    .param p1, "connection"    # Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageSender;->connection:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;

    .line 13
    return-void
.end method


# virtual methods
.method public loop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 23
    :goto_0
    monitor-enter p0

    .line 24
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageSender;->clipboardText:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 29
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 27
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageSender;->clipboardText:Ljava/lang/String;

    .line 28
    .local v1, "text":Ljava/lang/String;
    const/4 v2, 0x0

    iput-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageSender;->clipboardText:Ljava/lang/String;

    .line 29
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    invoke-static {v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;->createClipboard(Ljava/lang/String;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;

    move-result-object v0

    .line 31
    .local v0, "event":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;
    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageSender;->connection:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;

    invoke-virtual {v2, v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->sendDeviceMessage(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;)V

    goto :goto_0
.end method

.method public declared-synchronized pushClipboardText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 16
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageSender;->clipboardText:Ljava/lang/String;

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
