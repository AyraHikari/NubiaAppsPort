.class Lcn/nubia/music/app/scan/IMusicScanService$Stub$a;
.super Ljava/lang/Object;
.source "IMusicScanService.java"

# interfaces
.implements Lcn/nubia/music/app/scan/IMusicScanService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/app/scan/IMusicScanService$Stub;
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
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcn/nubia/music/app/scan/IMusicScanService$Stub$a;->a:Landroid/os/IBinder;

    .line 68
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcn/nubia/music/app/scan/IMusicScanService$Stub$a;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public startScan()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 80
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 82
    :try_start_0
    const-string v0, "cn.nubia.music.app.scan.IMusicScanService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcn/nubia/music/app/scan/IMusicScanService$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 84
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 88
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 90
    return-void

    .line 87
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 88
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public stopScan()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 94
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 96
    :try_start_0
    const-string v0, "cn.nubia.music.app.scan.IMusicScanService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcn/nubia/music/app/scan/IMusicScanService$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 98
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 102
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 104
    return-void

    .line 101
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 102
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
