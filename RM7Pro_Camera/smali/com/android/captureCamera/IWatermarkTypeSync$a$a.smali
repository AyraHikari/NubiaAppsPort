.class Lcom/android/captureCamera/IWatermarkTypeSync$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/captureCamera/IWatermarkTypeSync;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/captureCamera/IWatermarkTypeSync$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/android/captureCamera/IWatermarkTypeSync;


# instance fields
.field private b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/captureCamera/IWatermarkTypeSync$a$a;->b:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/captureCamera/IWatermarkTypeSync$a$a;->b:Landroid/os/IBinder;

    return-object v0
.end method

.method public setWatermarkType(I)V
    .locals 5

    .line 90
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 91
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.android.captureCamera.IWatermarkTypeSync"

    .line 93
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-object v2, p0, Lcom/android/captureCamera/IWatermarkTypeSync$a$a;->b:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    invoke-static {}, Lcom/android/captureCamera/IWatermarkTypeSync$a;->a()Lcom/android/captureCamera/IWatermarkTypeSync;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 97
    invoke-static {}, Lcom/android/captureCamera/IWatermarkTypeSync$a;->a()Lcom/android/captureCamera/IWatermarkTypeSync;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/captureCamera/IWatermarkTypeSync;->setWatermarkType(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 100
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    .line 103
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 105
    throw p1
.end method
