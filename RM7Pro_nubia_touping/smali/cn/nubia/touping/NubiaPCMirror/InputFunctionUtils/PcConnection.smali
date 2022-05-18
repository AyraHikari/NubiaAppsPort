.class public Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;
.super Ljava/lang/Object;
.source "PcConnection.java"


# static fields
.field private static final DEVICE_NAME_FIELD_LENGTH:I = 0x40

.field private static final TAG:Ljava/lang/String; = "PcConnection"

.field private static mPcConnection:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;


# instance fields
.field private controlLocalSocket:Landroid/net/LocalSocket;

.field private controlOutputStream:Ljava/io/OutputStream;

.field private controlSocket:Ljava/net/Socket;

.field private final reader:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;

.field private videoSocket:Ljava/net/Socket;

.field private final writer:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->mPcConnection:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;

    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;Ljava/net/Socket;Landroid/net/LocalSocket;)V
    .locals 1
    .param p1, "videoSocket"    # Ljava/net/Socket;
    .param p2, "controlSocket"    # Ljava/net/Socket;
    .param p3, "localSocket"    # Landroid/net/LocalSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;

    invoke-direct {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;-><init>()V

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->reader:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;

    .line 33
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;

    invoke-direct {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;-><init>()V

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->writer:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;

    .line 66
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->videoSocket:Ljava/net/Socket;

    .line 67
    iput-object p2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->controlSocket:Ljava/net/Socket;

    .line 68
    iput-object p3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->controlLocalSocket:Landroid/net/LocalSocket;

    .line 69
    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->controlOutputStream:Ljava/io/OutputStream;

    .line 75
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->controlLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->controlOutputStream:Ljava/io/OutputStream;

    goto :goto_0
.end method

.method private close()V
    .locals 3

    .prologue
    .line 79
    :try_start_0
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->videoSocket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    .line 81
    :try_start_1
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->videoSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->shutdownInput()V

    .line 82
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->videoSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->videoSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 87
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->videoSocket:Ljava/net/Socket;

    .line 90
    :cond_0
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->controlSocket:Ljava/net/Socket;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v1, :cond_1

    .line 92
    :try_start_3
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->controlSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->shutdownInput()V

    .line 93
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->controlSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 97
    :goto_1
    :try_start_4
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->controlSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 98
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->controlSocket:Ljava/net/Socket;

    .line 101
    :cond_1
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->controlLocalSocket:Landroid/net/LocalSocket;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz v1, :cond_2

    .line 103
    :try_start_5
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->controlLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->shutdownInput()V

    .line 104
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->controlLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->shutdownOutput()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 108
    :goto_2
    :try_start_6
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->controlLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V

    .line 109
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->controlLocalSocket:Landroid/net/LocalSocket;

    .line 116
    :cond_2
    :goto_3
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 111
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    const-string v1, "PcConnection"

    const-string v2, "exception close for PcConnection"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 94
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 95
    .local v0, "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 105
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 106
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2
.end method

.method public static getInstance(Ljava/net/Socket;Ljava/net/Socket;Landroid/net/LocalSocket;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;
    .locals 3
    .param p0, "videoSocket"    # Ljava/net/Socket;
    .param p1, "controlSocket"    # Ljava/net/Socket;
    .param p2, "controlLocalSocket"    # Landroid/net/LocalSocket;

    .prologue
    .line 38
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->mPcConnection:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;

    if-nez v1, :cond_0

    .line 40
    :try_start_0
    new-instance v1, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;

    invoke-direct {v1, p0, p1, p2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;-><init>(Ljava/net/Socket;Ljava/net/Socket;Landroid/net/LocalSocket;)V

    sput-object v1, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->mPcConnection:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :cond_0
    :goto_0
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->mPcConnection:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;

    return-object v1

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    const-string v1, "PcConnection666"

    const-string v2, "PcConnection  Exception"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getmPcConnection()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->mPcConnection:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;

    return-object v0
.end method

.method public static release()V
    .locals 3

    .prologue
    .line 54
    :try_start_0
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->mPcConnection:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;

    if-eqz v1, :cond_0

    .line 55
    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->mPcConnection:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;

    invoke-direct {v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->close()V

    .line 56
    const/4 v1, 0x0

    sput-object v1, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->mPcConnection:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 58
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 59
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    const-string v1, "PcConnection"

    const-string v2, "release EXCEPTION"

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public receiveControlMessage()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->reader:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;

    invoke-virtual {v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->next()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;

    move-result-object v0

    .line 136
    .local v0, "msg":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;
    :goto_0
    if-nez v0, :cond_1

    .line 137
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->controlSocket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->reader:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->controlSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->readFrom(Ljava/io/InputStream;)V

    .line 142
    :goto_1
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->reader:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;

    invoke-virtual {v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->next()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessage;

    move-result-object v0

    .line 143
    const-string v1, "PcConnection123"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->reader:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->controlLocalSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/ControlMessageReader;->readFrom(Ljava/io/InputStream;)V

    goto :goto_1

    .line 145
    :cond_1
    return-object v0
.end method

.method public send(Ljava/lang/String;II)V
    .locals 6
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 119
    const/16 v3, 0x44

    new-array v0, v3, [B

    .line 121
    .local v0, "buffer":[B
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 122
    .local v1, "deviceNameBytes":[B
    const/16 v3, 0x3f

    invoke-static {v1, v3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/StringUtils;->getUtf8TruncationIndex([BI)I

    move-result v2

    .line 123
    .local v2, "len":I
    invoke-static {v1, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    const/16 v3, 0x40

    shr-int/lit8 v4, p2, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 127
    const/16 v3, 0x41

    int-to-byte v4, p2

    aput-byte v4, v0, v3

    .line 128
    const/16 v3, 0x42

    shr-int/lit8 v4, p3, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 129
    const/16 v3, 0x43

    int-to-byte v4, p3

    aput-byte v4, v0, v3

    .line 131
    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->videoSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v0, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 132
    return-void
.end method

.method public sendDeviceMessage(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;)V
    .locals 2
    .param p1, "msg"    # Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->writer:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;

    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/PcConnection;->controlOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessageWriter;->writeTo(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/DeviceMessage;Ljava/io/OutputStream;)V

    .line 150
    return-void
.end method
