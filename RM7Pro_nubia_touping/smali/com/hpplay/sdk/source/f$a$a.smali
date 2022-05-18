.class Lcom/hpplay/sdk/source/f$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/f$a;
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
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/hpplay/sdk/source/f$a$a;->a:Landroid/os/IBinder;

    .line 70
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/hpplay/sdk/source/f$a$a;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "com.hpplay.sdk.source.InteractiveListener"

    return-object v0
.end method

.method public onAdLoaded(Lcom/hpplay/sdk/source/browse/api/AdInfo;)V
    .locals 5

    .prologue
    .line 81
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 82
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 84
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.InteractiveListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 85
    if-eqz p1, :cond_0

    .line 86
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/hpplay/sdk/source/browse/api/AdInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/f$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 93
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 97
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 99
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 97
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
