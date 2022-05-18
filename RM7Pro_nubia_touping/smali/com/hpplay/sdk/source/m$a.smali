.class public abstract Lcom/hpplay/sdk/source/m$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/m$a$a;
    }
.end annotation


# static fields
.field static final a:I = 0x1

.field static final b:I = 0x2

.field private static final c:Ljava/lang/String; = "com.hpplay.sdk.source.PcInteractiveListener"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.hpplay.sdk.source.PcInteractiveListener"

    invoke-virtual {p0, p0, v0}, Lcom/hpplay/sdk/source/m$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hpplay/sdk/source/m;
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
    const-string v0, "com.hpplay.sdk.source.PcInteractiveListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/hpplay/sdk/source/m;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/hpplay/sdk/source/m;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lcom/hpplay/sdk/source/m$a$a;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/m$a$a;-><init>(Landroid/os/IBinder;)V

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
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 44
    :sswitch_0
    const-string v1, "com.hpplay.sdk.source.PcInteractiveListener"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v1, "com.hpplay.sdk.source.PcInteractiveListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-virtual {p0, v1, v2}, Lcom/hpplay/sdk/source/m$a;->onSendRelevantInfoResult(ILjava/lang/String;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 60
    :sswitch_2
    const-string v1, "com.hpplay.sdk.source.PcInteractiveListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual {p0, v1, v2}, Lcom/hpplay/sdk/source/m$a;->onReverseInfoResult(ILjava/lang/String;)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

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
