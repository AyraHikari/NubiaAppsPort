.class Lcn/nubia/accountsdk/aidl/INBAccountService$Stub$Proxy;
.super Ljava/lang/Object;
.source "INBAccountService.java"

# interfaces
.implements Lcn/nubia/accountsdk/aidl/INBAccountService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/accountsdk/aidl/INBAccountService$Stub;
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

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcn/nubia/accountsdk/aidl/INBAccountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public appWebSynlogin(Ljava/lang/String;Lcn/nubia/accountsdk/aidl/IAppWebSynLoginListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 239
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "cn.nubia.accountsdk.aidl.INBAccountService"

    .line 241
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 243
    invoke-interface {p2}, Lcn/nubia/accountsdk/aidl/IAppWebSynLoginListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 244
    iget-object p1, p0, Lcn/nubia/accountsdk/aidl/INBAccountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x7

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 245
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 248
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 250
    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 126
    iget-object v0, p0, Lcn/nubia/accountsdk/aidl/INBAccountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public checkPassword(Ljava/lang/String;Lcn/nubia/accountsdk/aidl/ICheckPasswordListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 223
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "cn.nubia.accountsdk.aidl.INBAccountService"

    .line 225
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 227
    invoke-interface {p2}, Lcn/nubia/accountsdk/aidl/ICheckPasswordListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 228
    iget-object p1, p0, Lcn/nubia/accountsdk/aidl/INBAccountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x6

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 229
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 234
    throw p1
.end method

.method public getBaiduAccountInfo(Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 188
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "cn.nubia.accountsdk.aidl.INBAccountService"

    .line 190
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 191
    invoke-interface {p1}, Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 192
    iget-object p1, p0, Lcn/nubia/accountsdk/aidl/INBAccountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 193
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 196
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 198
    throw p1
.end method

.method public getCloudSpace(Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 171
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "cn.nubia.accountsdk.aidl.INBAccountService"

    .line 173
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 174
    invoke-interface {p1}, Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 175
    iget-object p1, p0, Lcn/nubia/accountsdk/aidl/INBAccountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 176
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 179
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 181
    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "cn.nubia.accountsdk.aidl.INBAccountService"

    return-object v0
.end method

.method public getSystemAccountInfo(Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "cn.nubia.accountsdk.aidl.INBAccountService"

    .line 139
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 140
    invoke-interface {p1}, Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 141
    iget-object p1, p0, Lcn/nubia/accountsdk/aidl/INBAccountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 142
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 145
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 147
    throw p1
.end method

.method public getThirdBindInfo(Lcn/nubia/accountsdk/aidl/IGetThirdBindInfoListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 154
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "cn.nubia.accountsdk.aidl.INBAccountService"

    .line 156
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 157
    invoke-interface {p1}, Lcn/nubia/accountsdk/aidl/IGetThirdBindInfoListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 158
    iget-object p1, p0, Lcn/nubia/accountsdk/aidl/INBAccountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p1, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 159
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 162
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 164
    throw p1
.end method

.method public startBindBaiduAccount(ZLcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 204
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 205
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "cn.nubia.accountsdk.aidl.INBAccountService"

    .line 207
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 208
    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_1

    .line 209
    invoke-interface {p2}, Lcn/nubia/accountsdk/aidl/IGetBaiduAccountInfoListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 210
    iget-object p1, p0, Lcn/nubia/accountsdk/aidl/INBAccountService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x5

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 211
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 214
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 216
    throw p1
.end method
