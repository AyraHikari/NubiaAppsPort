.class Lcom/hpplay/sdk/source/e$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/e$a;
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
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/hpplay/sdk/source/e$a$a;->a:Landroid/os/IBinder;

    .line 90
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/hpplay/sdk/source/e$a$a;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string v0, "com.hpplay.sdk.source.DebugAVListener"

    return-object v0
.end method

.method public onAudioCallback(JIII[B)V
    .locals 5

    .prologue
    .line 101
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 102
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 104
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.DebugAVListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 106
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 110
    iget-object v0, p0, Lcom/hpplay/sdk/source/e$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 111
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 115
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 117
    return-void

    .line 114
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 115
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onVideoCallback(JIII[B)V
    .locals 5

    .prologue
    .line 120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 121
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 123
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.DebugAVListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 125
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 129
    iget-object v0, p0, Lcom/hpplay/sdk/source/e$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 130
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 134
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 136
    return-void

    .line 133
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 134
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
