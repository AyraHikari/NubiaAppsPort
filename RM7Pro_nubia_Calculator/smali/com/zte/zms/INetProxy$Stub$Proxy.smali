.class Lcom/zte/zms/INetProxy$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetProxy.java"

# interfaces
.implements Lcom/zte/zms/INetProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zms/INetProxy$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/zte/zms/INetProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/zte/zms/INetProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public asyncRequst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.zte.zms.INetProxy"

    .line 119
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 126
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 127
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object p0, p0, Lcom/zte/zms/INetProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 131
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 132
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 135
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "com.zte.zms.INetProxy"

    return-object p0
.end method

.method public syncRequst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 147
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.zte.zms.INetProxy"

    .line 150
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 155
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 156
    iget-object p1, p0, Lcom/zte/zms/INetProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x2

    const/4 p3, 0x0

    invoke-interface {p1, p2, v0, v1, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 157
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 159
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 162
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
