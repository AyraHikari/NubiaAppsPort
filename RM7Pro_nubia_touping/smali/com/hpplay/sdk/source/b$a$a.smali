.class Lcom/hpplay/sdk/source/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/b$a;
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
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/hpplay/sdk/source/b$a$a;->a:Landroid/os/IBinder;

    .line 67
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/hpplay/sdk/source/b$a$a;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string v0, "com.hpplay.sdk.source.BrowseResultListener"

    return-object v0
.end method

.method public onResult(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 79
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 81
    :try_start_0
    const-string v0, "com.hpplay.sdk.source.BrowseResultListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 84
    iget-object v0, p0, Lcom/hpplay/sdk/source/b$a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 85
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 89
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 91
    return-void

    .line 88
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 89
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
