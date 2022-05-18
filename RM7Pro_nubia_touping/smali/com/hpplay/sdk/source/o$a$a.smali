.class Lcom/hpplay/sdk/source/o$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/o$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/hpplay/sdk/source/o$a$a;->a:Landroid/os/IBinder;

    .line 95
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/hpplay/sdk/source/o$a$a;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const-string v0, "com.hpplay.sdk.source.SocketExceptionsListener"

    return-object v0
.end method

.method public onDeviceCheckException(Ljava/lang/String;I[B)V
    .locals 5

    .prologue
    .line 106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 109
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.SocketExceptionsListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 113
    iget-object v0, p0, Lcom/hpplay/sdk/source/o$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 114
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 118
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 120
    return-void

    .line 117
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 118
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onMirrorCheckException(Ljava/lang/String;I[B)V
    .locals 5

    .prologue
    .line 123
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 124
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 126
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.SocketExceptionsListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 130
    iget-object v0, p0, Lcom/hpplay/sdk/source/o$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 131
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 135
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 137
    return-void

    .line 134
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 135
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onProtocolCheckException(Ljava/lang/String;I[B)V
    .locals 5

    .prologue
    .line 140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 143
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.SocketExceptionsListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 147
    iget-object v0, p0, Lcom/hpplay/sdk/source/o$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 148
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 152
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 154
    return-void

    .line 151
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 152
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
