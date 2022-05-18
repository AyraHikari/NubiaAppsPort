.class Lcom/hpplay/sdk/source/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/a$a;
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
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/hpplay/sdk/source/a$a$a;->a:Landroid/os/IBinder;

    .line 75
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/hpplay/sdk/source/a$a$a;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public basicTypes(IJZFDLjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 90
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 91
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 93
    :try_start_0
    const-string v4, "com.hpplay.sdk.source.AdInfo"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    invoke-virtual {v2, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 96
    if-eqz p4, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeFloat(F)V

    .line 98
    invoke-virtual {v2, p6, p7}, Landroid/os/Parcel;->writeDouble(D)V

    .line 99
    invoke-virtual {v2, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/hpplay/sdk/source/a$a$a;->a:Landroid/os/IBinder;

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 101
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 105
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 107
    return-void

    :cond_0
    move v0, v1

    .line 96
    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 105
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, "com.hpplay.sdk.source.AdInfo"

    return-object v0
.end method
