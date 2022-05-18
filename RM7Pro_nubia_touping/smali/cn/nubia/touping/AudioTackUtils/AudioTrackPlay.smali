.class public Lcn/nubia/touping/AudioTackUtils/AudioTrackPlay;
.super Ljava/lang/Object;
.source "AudioTrackPlay.java"


# static fields
.field private static audioTrack:Landroid/media/AudioTrack;

.field private static audioTrackPlay:Lcn/nubia/touping/AudioTackUtils/AudioTrackPlay;


# direct methods
.method private constructor <init>()V
    .locals 7

    .prologue
    const v2, 0xac44

    const/16 v3, 0xc

    const/4 v4, 0x2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {v2, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    .line 17
    .local v5, "m_out_buf_size":I
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    sput-object v0, Lcn/nubia/touping/AudioTackUtils/AudioTrackPlay;->audioTrack:Landroid/media/AudioTrack;

    .line 22
    return-void
.end method

.method public static getInstance()Lcn/nubia/touping/AudioTackUtils/AudioTrackPlay;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcn/nubia/touping/AudioTackUtils/AudioTrackPlay;->audioTrackPlay:Lcn/nubia/touping/AudioTackUtils/AudioTrackPlay;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcn/nubia/touping/AudioTackUtils/AudioTrackPlay;

    invoke-direct {v0}, Lcn/nubia/touping/AudioTackUtils/AudioTrackPlay;-><init>()V

    sput-object v0, Lcn/nubia/touping/AudioTackUtils/AudioTrackPlay;->audioTrackPlay:Lcn/nubia/touping/AudioTackUtils/AudioTrackPlay;

    .line 29
    :cond_0
    sget-object v0, Lcn/nubia/touping/AudioTackUtils/AudioTrackPlay;->audioTrackPlay:Lcn/nubia/touping/AudioTackUtils/AudioTrackPlay;

    return-object v0
.end method


# virtual methods
.method public playAudio([BI)V
    .locals 3
    .param p1, "audioSource"    # [B
    .param p2, "audioReadSize"    # I

    .prologue
    .line 33
    sget-object v0, Lcn/nubia/touping/AudioTackUtils/AudioTrackPlay;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 34
    sget-object v0, Lcn/nubia/touping/AudioTackUtils/AudioTrackPlay;->audioTrack:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/media/AudioTrack;->write([BII)I

    .line 35
    const-string v0, "audioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioTrack.write():size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void
.end method
