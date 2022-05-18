.class public abstract Lcom/android/captureCamera/IWatermarkTypeSync$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/android/captureCamera/IWatermarkTypeSync;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/captureCamera/IWatermarkTypeSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/captureCamera/IWatermarkTypeSync$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.captureCamera.IWatermarkTypeSync"

    .line 27
    invoke-virtual {p0, p0, v0}, Lcom/android/captureCamera/IWatermarkTypeSync$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a()Lcom/android/captureCamera/IWatermarkTypeSync;
    .locals 1

    .line 118
    sget-object v0, Lcom/android/captureCamera/IWatermarkTypeSync$a$a;->a:Lcom/android/captureCamera/IWatermarkTypeSync;

    return-object v0
.end method

.method public static a(Landroid/os/IBinder;)Lcom/android/captureCamera/IWatermarkTypeSync;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.captureCamera.IWatermarkTypeSync"

    .line 38
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 39
    instance-of v1, v0, Lcom/android/captureCamera/IWatermarkTypeSync;

    if-eqz v1, :cond_1

    .line 40
    check-cast v0, Lcom/android/captureCamera/IWatermarkTypeSync;

    return-object v0

    .line 42
    :cond_1
    new-instance v0, Lcom/android/captureCamera/IWatermarkTypeSync$a$a;

    invoke-direct {v0, p0}, Lcom/android/captureCamera/IWatermarkTypeSync$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "com.android.captureCamera.IWatermarkTypeSync"

    if-eq p1, v0, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 55
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 60
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/captureCamera/IWatermarkTypeSync$a;->setWatermarkType(I)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
