.class public abstract Lcom/hpplay/sdk/source/d$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/d$a$a;
    }
.end annotation


# static fields
.field static final a:I = 0x1

.field static final b:I = 0x2

.field private static final c:Ljava/lang/String; = "com.hpplay.sdk.source.ConnectStatusListener"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.hpplay.sdk.source.ConnectStatusListener"

    invoke-virtual {p0, p0, v0}, Lcom/hpplay/sdk/source/d$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hpplay/sdk/source/d;
    .locals 2

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v0, "com.hpplay.sdk.source.ConnectStatusListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/hpplay/sdk/source/d;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/hpplay/sdk/source/d;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lcom/hpplay/sdk/source/d$a$a;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/d$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 44
    :sswitch_0
    const-string v0, "com.hpplay.sdk.source.ConnectStatusListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 45
    goto :goto_0

    .line 49
    :sswitch_1
    const-string v2, "com.hpplay.sdk.source.ConnectStatusListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    sget-object v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 58
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 59
    invoke-virtual {p0, v0, v2}, Lcom/hpplay/sdk/source/d$a;->onConnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;I)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 61
    goto :goto_0

    .line 65
    :sswitch_2
    const-string v2, "com.hpplay.sdk.source.ConnectStatusListener"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    sget-object v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 74
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 77
    invoke-virtual {p0, v0, v2, v3}, Lcom/hpplay/sdk/source/d$a;->onDisconnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;II)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 79
    goto :goto_0

    .line 40
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
