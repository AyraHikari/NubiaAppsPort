.class public abstract Lcom/hpplay/sdk/source/h$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/h$a$a;
    }
.end annotation


# static fields
.field static final a:I = 0x1

.field static final b:I = 0x2

.field static final c:I = 0x3

.field static final d:I = 0x4

.field static final e:I = 0x5

.field static final f:I = 0x6

.field static final g:I = 0x7

.field static final h:I = 0x8

.field static final i:I = 0x9

.field static final j:I = 0xa

.field static final k:I = 0xb

.field private static final l:Ljava/lang/String; = "com.hpplay.sdk.source.LelinkPlayListener"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.hpplay.sdk.source.LelinkPlayListener"

    invoke-virtual {p0, p0, v0}, Lcom/hpplay/sdk/source/h$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hpplay/sdk/source/h;
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
    const-string v0, "com.hpplay.sdk.source.LelinkPlayListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/hpplay/sdk/source/h;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/hpplay/sdk/source/h;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lcom/hpplay/sdk/source/h$a$a;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/h$a$a;-><init>(Landroid/os/IBinder;)V

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
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 44
    :sswitch_0
    const-string v1, "com.hpplay.sdk.source.LelinkPlayListener"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v1, "com.hpplay.sdk.source.LelinkPlayListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/h$a;->onLoading()V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    :sswitch_2
    const-string v1, "com.hpplay.sdk.source.LelinkPlayListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/h$a;->onStart()V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 63
    :sswitch_3
    const-string v1, "com.hpplay.sdk.source.LelinkPlayListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/h$a;->onPause()V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 70
    :sswitch_4
    const-string v1, "com.hpplay.sdk.source.LelinkPlayListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/h$a;->onCompletion()V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 77
    :sswitch_5
    const-string v1, "com.hpplay.sdk.source.LelinkPlayListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/h$a;->onStop()V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 84
    :sswitch_6
    const-string v1, "com.hpplay.sdk.source.LelinkPlayListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 87
    invoke-virtual {p0, v1}, Lcom/hpplay/sdk/source/h$a;->onSeekComplete(I)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 93
    :sswitch_7
    const-string v1, "com.hpplay.sdk.source.LelinkPlayListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 98
    invoke-virtual {p0, v1, v2}, Lcom/hpplay/sdk/source/h$a;->onInfo(II)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 104
    :sswitch_8
    const-string v1, "com.hpplay.sdk.source.LelinkPlayListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-virtual {p0, v1, v2}, Lcom/hpplay/sdk/source/h$a;->onInfo2(ILjava/lang/String;)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 115
    :sswitch_9
    const-string v1, "com.hpplay.sdk.source.LelinkPlayListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 120
    invoke-virtual {p0, v1, v2}, Lcom/hpplay/sdk/source/h$a;->onError(II)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 126
    :sswitch_a
    const-string v1, "com.hpplay.sdk.source.LelinkPlayListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 129
    invoke-virtual {p0, v1}, Lcom/hpplay/sdk/source/h$a;->onVolumeChanged(F)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 135
    :sswitch_b
    const-string v1, "com.hpplay.sdk.source.LelinkPlayListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 140
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/hpplay/sdk/source/h$a;->onPositionUpdate(JJ)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 40
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
