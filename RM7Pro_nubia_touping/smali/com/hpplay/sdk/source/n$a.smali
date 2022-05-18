.class public abstract Lcom/hpplay/sdk/source/n$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/hpplay/sdk/source/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/n$a$a;
    }
.end annotation


# static fields
.field static final A:I = 0x1b

.field static final B:I = 0x1c

.field static final C:I = 0x1d

.field static final D:I = 0x1e

.field static final E:I = 0x1f

.field static final F:I = 0x20

.field static final G:I = 0x21

.field static final H:I = 0x22

.field static final I:I = 0x23

.field static final J:I = 0x24

.field static final K:I = 0x25

.field static final L:I = 0x26

.field static final M:I = 0x27

.field static final N:I = 0x28

.field static final O:I = 0x29

.field static final P:I = 0x2a

.field static final Q:I = 0x2b

.field static final R:I = 0x2c

.field private static final S:Ljava/lang/String; = "com.hpplay.sdk.source.SDKInterface"

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

.field static final l:I = 0xc

.field static final m:I = 0xd

.field static final n:I = 0xe

.field static final o:I = 0xf

.field static final p:I = 0x10

.field static final q:I = 0x11

.field static final r:I = 0x12

.field static final s:I = 0x13

.field static final t:I = 0x14

.field static final u:I = 0x15

.field static final v:I = 0x16

.field static final w:I = 0x17

.field static final x:I = 0x18

.field static final y:I = 0x19

.field static final z:I = 0x1a


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p0, p0, v0}, Lcom/hpplay/sdk/source/n$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/hpplay/sdk/source/n;
    .locals 2

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/hpplay/sdk/source/n;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/hpplay/sdk/source/n;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/hpplay/sdk/source/n$a$a;

    invoke-direct {v0, p0}, Lcom/hpplay/sdk/source/n$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 526
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 42
    :sswitch_0
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 58
    invoke-virtual/range {v0 .. v5}, Lcom/hpplay/sdk/source/n$a;->initSdkWithUserId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 64
    :sswitch_2
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    .line 67
    :goto_1
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/n$a;->setDebugMode(Z)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 66
    goto :goto_1

    .line 73
    :sswitch_3
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v7

    .line 76
    :cond_1
    invoke-virtual {p0, v1}, Lcom/hpplay/sdk/source/n$a;->setDebugTimestamp(Z)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 82
    :sswitch_4
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/b$a;->asInterface(Landroid/os/IBinder;)Lcom/hpplay/sdk/source/b;

    move-result-object v0

    .line 85
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/n$a;->setLelinkServiceInfoListener(Lcom/hpplay/sdk/source/b;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 91
    :sswitch_5
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/e$a;->asInterface(Landroid/os/IBinder;)Lcom/hpplay/sdk/source/e;

    move-result-object v0

    .line 94
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/n$a;->setDebugAVListener(Lcom/hpplay/sdk/source/e;)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 100
    :sswitch_6
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/n$a;->setDebugVideoFile(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 109
    :sswitch_7
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/g$a;->asInterface(Landroid/os/IBinder;)Lcom/hpplay/sdk/source/g;

    move-result-object v0

    .line 112
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/n$a;->setDisplayListener(Lcom/hpplay/sdk/source/g;)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 118
    :sswitch_8
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/h$a;->asInterface(Landroid/os/IBinder;)Lcom/hpplay/sdk/source/h;

    move-result-object v0

    .line 121
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/n$a;->setLelinkPlayListenerListener(Lcom/hpplay/sdk/source/h;)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 127
    :sswitch_9
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/d$a;->asInterface(Landroid/os/IBinder;)Lcom/hpplay/sdk/source/d;

    move-result-object v0

    .line 130
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/n$a;->setConnectStatusListener(Lcom/hpplay/sdk/source/d;)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 136
    :sswitch_a
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/k$a;->asInterface(Landroid/os/IBinder;)Lcom/hpplay/sdk/source/k;

    move-result-object v0

    .line 139
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/n$a;->setParceResultListener(Lcom/hpplay/sdk/source/k;)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 145
    :sswitch_b
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v7

    .line 149
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v1, v7

    .line 150
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/hpplay/sdk/source/n$a;->browse(ZZ)V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 147
    goto :goto_2

    .line 156
    :sswitch_c
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 159
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/n$a;->seekTo(I)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 165
    :sswitch_d
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/n$a;->stopBrowse()V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 172
    :sswitch_e
    const-string v1, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 175
    sget-object v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 180
    :cond_4
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/n$a;->connect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 186
    :sswitch_f
    const-string v2, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    .line 189
    sget-object v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 194
    :cond_5
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/n$a;->disConnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z

    move-result v0

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    if-eqz v0, :cond_6

    move v1, v7

    :cond_6
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 201
    :sswitch_10
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/n$a;->getConnectInfos()Ljava/util/List;

    move-result-object v0

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 209
    :sswitch_11
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    move v1, v7

    .line 216
    :cond_7
    invoke-virtual {p0, v0, v2, v1}, Lcom/hpplay/sdk/source/n$a;->startPlayMedia(Ljava/lang/String;IZ)V

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 222
    :sswitch_12
    const-string v1, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    .line 225
    sget-object v0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    .line 230
    :cond_8
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/n$a;->startPlayMediaForPlayerInfo(Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)V

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 236
    :sswitch_13
    const-string v2, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    .line 239
    sget-object v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 245
    :cond_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    move v1, v7

    .line 250
    :cond_a
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/hpplay/sdk/source/n$a;->startPlayMediaImmed(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Ljava/lang/String;IZ)V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 256
    :sswitch_14
    const-string v1, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    .line 259
    sget-object v0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    .line 264
    :cond_b
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/n$a;->startMirrorForPlayerInfo(Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)V

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 270
    :sswitch_15
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    move v1, v7

    .line 273
    :cond_c
    invoke-virtual {p0, v1}, Lcom/hpplay/sdk/source/n$a;->setMute(Z)V

    .line 274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 279
    :sswitch_16
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/n$a;->resume()V

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 286
    :sswitch_17
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/n$a;->pause()V

    .line 288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 293
    :sswitch_18
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/n$a;->addVolume()V

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 300
    :sswitch_19
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/n$a;->subVolume()V

    .line 302
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 307
    :sswitch_1a
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 310
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/n$a;->setVolume(I)V

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 316
    :sswitch_1b
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/n$a;->stopPlay()V

    .line 318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 323
    :sswitch_1c
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-virtual {p0, v0, v1}, Lcom/hpplay/sdk/source/n$a;->setOption(I[Ljava/lang/String;)V

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 334
    :sswitch_1d
    const-string v2, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d

    .line 339
    sget-object v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 344
    :cond_d
    invoke-virtual {p0, v2, v0}, Lcom/hpplay/sdk/source/n$a;->setLelinkServiceInfoOption(ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z

    move-result v0

    .line 345
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    if-eqz v0, :cond_e

    move v1, v7

    :cond_e
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 351
    :sswitch_1e
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/i$a;->asInterface(Landroid/os/IBinder;)Lcom/hpplay/sdk/source/i;

    move-result-object v0

    .line 355
    sget-object v1, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 356
    invoke-virtual {p0, v0, v1}, Lcom/hpplay/sdk/source/n$a;->startOnlineCheck(Lcom/hpplay/sdk/source/i;Ljava/util/List;)V

    .line 357
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 362
    :sswitch_1f
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/l$a;->asInterface(Landroid/os/IBinder;)Lcom/hpplay/sdk/source/l;

    move-result-object v0

    .line 365
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/n$a;->setAuthListener(Lcom/hpplay/sdk/source/l;)V

    .line 366
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 371
    :sswitch_20
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 374
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/n$a;->addQRCodeToLelinkServiceInfo(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 380
    :sswitch_21
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 383
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/n$a;->addPinCodeToLelinkServiceInfo(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 389
    :sswitch_22
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    move v1, v7

    .line 392
    :cond_f
    invoke-virtual {p0, v1}, Lcom/hpplay/sdk/source/n$a;->setSystemApp(Z)V

    .line 393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 398
    :sswitch_23
    const-string v1, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    .line 401
    sget-object v0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/api/AdInfo;

    .line 407
    :cond_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 408
    invoke-virtual {p0, v0, v1}, Lcom/hpplay/sdk/source/n$a;->onAdShow(Lcom/hpplay/sdk/source/browse/api/AdInfo;I)V

    .line 409
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 414
    :sswitch_24
    const-string v1, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    .line 417
    sget-object v0, Lcom/hpplay/sdk/source/browse/api/AdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/api/AdInfo;

    .line 423
    :cond_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 425
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 426
    invoke-virtual {p0, v0, v1, v2}, Lcom/hpplay/sdk/source/n$a;->onAdClosed(Lcom/hpplay/sdk/source/browse/api/AdInfo;II)V

    .line 427
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 432
    :sswitch_25
    const-string v2, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_12

    .line 435
    sget-object v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 440
    :cond_12
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/n$a;->canPlayScreen(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z

    move-result v0

    .line 441
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    if-eqz v0, :cond_13

    move v1, v7

    :cond_13
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 447
    :sswitch_26
    const-string v2, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_14

    .line 450
    sget-object v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 455
    :cond_14
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/n$a;->canPlayLocalMedia(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z

    move-result v0

    .line 456
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    if-eqz v0, :cond_15

    move v1, v7

    :cond_15
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 462
    :sswitch_27
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/f$a;->asInterface(Landroid/os/IBinder;)Lcom/hpplay/sdk/source/f;

    move-result-object v0

    .line 465
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/n$a;->setInteractiveListener(Lcom/hpplay/sdk/source/f;)V

    .line 466
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 471
    :sswitch_28
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/m$a;->asInterface(Landroid/os/IBinder;)Lcom/hpplay/sdk/source/m;

    move-result-object v0

    .line 474
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/n$a;->setRelevantInfoListener(Lcom/hpplay/sdk/source/m;)V

    .line 475
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 480
    :sswitch_29
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/o$a;->asInterface(Landroid/os/IBinder;)Lcom/hpplay/sdk/source/o;

    move-result-object v0

    .line 483
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/n$a;->setSocketExceptionListener(Lcom/hpplay/sdk/source/o;)V

    .line 484
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 489
    :sswitch_2a
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 493
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 495
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 497
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 499
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 501
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object v0, p0

    .line 502
    invoke-virtual/range {v0 .. v6}, Lcom/hpplay/sdk/source/n$a;->updatePCMData(III[BII)V

    .line 503
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 508
    :sswitch_2b
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 510
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 511
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/n$a;->getOption(I)I

    move-result v0

    .line 512
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 518
    :sswitch_2c
    const-string v0, "com.hpplay.sdk.source.SDKInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/hpplay/sdk/source/j$a;->asInterface(Landroid/os/IBinder;)Lcom/hpplay/sdk/source/j;

    move-result-object v0

    .line 521
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/n$a;->setLogCallback(Lcom/hpplay/sdk/source/j;)V

    .line 522
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
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
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
