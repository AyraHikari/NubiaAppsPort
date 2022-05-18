.class public abstract Lcn/nubia/music/IMediaPlaybackService$Stub;
.super Landroid/os/Binder;
.source "IMediaPlaybackService.java"

# interfaces
.implements Lcn/nubia/music/IMediaPlaybackService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/IMediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/IMediaPlaybackService$Stub$a;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "cn.nubia.music.IMediaPlaybackService"

.field static final TRANSACTION_duration:I = 0xa

.field static final TRANSACTION_enqueue:I = 0x12

.field static final TRANSACTION_enqueueLocal:I = 0x23

.field static final TRANSACTION_getAbsolutePath:I = 0x20

.field static final TRANSACTION_getAlbumId:I = 0xf

.field static final TRANSACTION_getAlbumImageUrl:I = 0x27

.field static final TRANSACTION_getAlbumName:I = 0xe

.field static final TRANSACTION_getArtistId:I = 0x11

.field static final TRANSACTION_getArtistName:I = 0x10

.field static final TRANSACTION_getAudioId:I = 0x17

.field static final TRANSACTION_getAudioSessionId:I = 0x1f

.field static final TRANSACTION_getBufferingPrecent:I = 0x22

.field static final TRANSACTION_getInnerPlayerState:I = 0x21

.field static final TRANSACTION_getMediaMountedCount:I = 0x1e

.field static final TRANSACTION_getPath:I = 0x16

.field static final TRANSACTION_getQueue:I = 0x13

.field static final TRANSACTION_getQueuePosition:I = 0x3

.field static final TRANSACTION_getRepeatMode:I = 0x1d

.field static final TRANSACTION_getShuffleMode:I = 0x19

.field static final TRANSACTION_getTrackName:I = 0xd

.field static final TRANSACTION_isPlaying:I = 0x4

.field static final TRANSACTION_moveQueueItem:I = 0x14

.field static final TRANSACTION_next:I = 0x9

.field static final TRANSACTION_open:I = 0x2

.field static final TRANSACTION_openFile:I = 0x1

.field static final TRANSACTION_pause:I = 0x6

.field static final TRANSACTION_play:I = 0x7

.field static final TRANSACTION_position:I = 0xb

.field static final TRANSACTION_prev:I = 0x8

.field static final TRANSACTION_removeListTracks:I = 0x24

.field static final TRANSACTION_removeTrack:I = 0x1b

.field static final TRANSACTION_removeTracks:I = 0x1a

.field static final TRANSACTION_removeTracksAudioId:I = 0x25

.field static final TRANSACTION_seek:I = 0xc

.field static final TRANSACTION_sendSyncHandler:I = 0x26

.field static final TRANSACTION_setQueuePosition:I = 0x15

.field static final TRANSACTION_setRepeatMode:I = 0x1c

.field static final TRANSACTION_setShuffleMode:I = 0x18

.field static final TRANSACTION_stop:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p0, p0, v0}, Lcn/nubia/music/IMediaPlaybackService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcn/nubia/music/IMediaPlaybackService;
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
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcn/nubia/music/IMediaPlaybackService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcn/nubia/music/IMediaPlaybackService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcn/nubia/music/IMediaPlaybackService$Stub$a;

    invoke-direct {v0, p0}, Lcn/nubia/music/IMediaPlaybackService$Stub$a;-><init>(Landroid/os/IBinder;)V

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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 382
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-virtual {p0, v0}, Lcn/nubia/music/IMediaPlaybackService$Stub;->openFile(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    :sswitch_2
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 61
    invoke-virtual {p0, v0, v2}, Lcn/nubia/music/IMediaPlaybackService$Stub;->open([JI)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 67
    :sswitch_3
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcn/nubia/music/IMediaPlaybackService$Stub;->getQueuePosition()I

    move-result v0

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 75
    :sswitch_4
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcn/nubia/music/IMediaPlaybackService$Stub;->isPlaying()Z

    move-result v0

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 83
    :sswitch_5
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcn/nubia/music/IMediaPlaybackService$Stub;->stop()V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 90
    :sswitch_6
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcn/nubia/music/IMediaPlaybackService$Stub;->pause()V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 97
    :sswitch_7
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcn/nubia/music/IMediaPlaybackService$Stub;->play()V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 104
    :sswitch_8
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcn/nubia/music/IMediaPlaybackService$Stub;->prev()V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 111
    :sswitch_9
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcn/nubia/music/IMediaPlaybackService$Stub;->next()V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 118
    :sswitch_a
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcn/nubia/music/IMediaPlaybackService$Stub;->duration()J

    move-result-wide v2

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 126
    :sswitch_b
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcn/nubia/music/IMediaPlaybackService$Stub;->position()J

    move-result-wide v2

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 134
    :sswitch_c
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 137
    invoke-virtual {p0, v2, v3}, Lcn/nubia/music/IMediaPlaybackService$Stub;->seek(J)J

    move-result-wide v2

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 144
    :sswitch_d
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcn/nubia/music/IMediaPlaybackService$Stub;->getTrackName()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 152
    :sswitch_e
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcn/nubia/music/IMediaPlaybackService$Stub;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 160
    :sswitch_f
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcn/nubia/music/IMediaPlaybackService$Stub;->getAlbumId()J

    move-result-wide v2

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 168
    :sswitch_10
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcn/nubia/music/IMediaPlaybackService$Stub;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 176
    :sswitch_11
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcn/nubia/music/IMediaPlaybackService$Stub;->getArtistId()J

    move-result-wide v2

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 184
    :sswitch_12
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 189
    invoke-virtual {p0, v0, v2}, Lcn/nubia/music/IMediaPlaybackService$Stub;->enqueue([JI)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 195
    :sswitch_13
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcn/nubia/music/IMediaPlaybackService$Stub;->getQueue()[J

    move-result-object v0

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    goto/16 :goto_0

    .line 203
    :sswitch_14
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 208
    invoke-virtual {p0, v0, v2}, Lcn/nubia/music/IMediaPlaybackService$Stub;->moveQueueItem(II)V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 214
    :sswitch_15
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 217
    invoke-virtual {p0, v0}, Lcn/nubia/music/IMediaPlaybackService$Stub;->setQueuePosition(I)V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 223
    :sswitch_16
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcn/nubia/music/IMediaPlaybackService$Stub;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 231
    :sswitch_17
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcn/nubia/music/IMediaPlaybackService$Stub;->getAudioId()J

    move-result-wide v2

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 239
    :sswitch_18
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 242
    invoke-virtual {p0, v0}, Lcn/nubia/music/IMediaPlaybackService$Stub;->setShuffleMode(I)V

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 248
    :sswitch_19
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcn/nubia/music/IMediaPlaybackService$Stub;->getShuffleMode()I

    move-result v0

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 256
    :sswitch_1a
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 261
    invoke-virtual {p0, v0, v2}, Lcn/nubia/music/IMediaPlaybackService$Stub;->removeTracks(II)I

    move-result v0

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 268
    :sswitch_1b
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 271
    invoke-virtual {p0, v2, v3}, Lcn/nubia/music/IMediaPlaybackService$Stub;->removeTrack(J)I

    move-result v0

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 278
    :sswitch_1c
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 281
    invoke-virtual {p0, v0}, Lcn/nubia/music/IMediaPlaybackService$Stub;->setRepeatMode(I)V

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 287
    :sswitch_1d
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lcn/nubia/music/IMediaPlaybackService$Stub;->getRepeatMode()I

    move-result v0

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 295
    :sswitch_1e
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lcn/nubia/music/IMediaPlaybackService$Stub;->getMediaMountedCount()I

    move-result v0

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 303
    :sswitch_1f
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Lcn/nubia/music/IMediaPlaybackService$Stub;->getAudioSessionId()I

    move-result v0

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 311
    :sswitch_20
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Lcn/nubia/music/IMediaPlaybackService$Stub;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 319
    :sswitch_21
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Lcn/nubia/music/IMediaPlaybackService$Stub;->getInnerPlayerState()I

    move-result v0

    .line 321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 327
    :sswitch_22
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Lcn/nubia/music/IMediaPlaybackService$Stub;->getBufferingPrecent()I

    move-result v0

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 335
    :sswitch_23
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 340
    invoke-virtual {p0, v2, v3, v0}, Lcn/nubia/music/IMediaPlaybackService$Stub;->enqueueLocal(JI)V

    .line 341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 346
    :sswitch_24
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 349
    invoke-virtual {p0, v0}, Lcn/nubia/music/IMediaPlaybackService$Stub;->removeListTracks([J)I

    move-result v0

    .line 350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 356
    :sswitch_25
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 359
    invoke-virtual {p0, v0}, Lcn/nubia/music/IMediaPlaybackService$Stub;->removeTracksAudioId([J)I

    move-result v0

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 366
    :sswitch_26
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-virtual {p0, v0}, Lcn/nubia/music/IMediaPlaybackService$Stub;->sendSyncHandler(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 375
    :sswitch_27
    const-string v0, "cn.nubia.music.IMediaPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Lcn/nubia/music/IMediaPlaybackService$Stub;->getAlbumImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 38
    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
