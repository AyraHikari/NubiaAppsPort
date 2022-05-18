.class public Lcn/nubia/music/utils/MediaFileUtil;
.super Ljava/lang/Object;
.source "MediaFileUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/utils/MediaFileUtil$MediaFileType;
    }
.end annotation


# static fields
.field private static final AUDIO_TYPE_3GA:I = 0x18

.field private static final AUDIO_TYPE_AAC:I = 0xb

.field private static final AUDIO_TYPE_AC3:I = 0x17

.field private static final AUDIO_TYPE_AMR:I = 0x5

.field private static final AUDIO_TYPE_APE:I = 0x0

.field private static final AUDIO_TYPE_AWB:I = 0x6

.field private static final AUDIO_TYPE_FLAC:I = 0x16

.field private static final AUDIO_TYPE_IMY:I = 0x12

.field private static final AUDIO_TYPE_M4A:I = 0x3

.field private static final AUDIO_TYPE_MID:I = 0xd

.field private static final AUDIO_TYPE_MIDI:I = 0xe

.field private static final AUDIO_TYPE_MKA:I = 0xc

.field private static final AUDIO_TYPE_MP3:I = 0x1

.field private static final AUDIO_TYPE_MPGA:I = 0x2

.field private static final AUDIO_TYPE_MXMF:I = 0x15

.field private static final AUDIO_TYPE_OGA:I = 0xa

.field private static final AUDIO_TYPE_OGG:I = 0x9

.field private static final AUDIO_TYPE_OTA:I = 0x14

.field private static final AUDIO_TYPE_QCP:I = 0x8

.field private static final AUDIO_TYPE_RTTTL:I = 0x10

.field private static final AUDIO_TYPE_RTX:I = 0x13

.field private static final AUDIO_TYPE_SMF:I = 0x11

.field private static final AUDIO_TYPE_WAV:I = 0x4

.field private static final AUDIO_TYPE_WMA:I = 0x7

.field private static final AUDIO_TYPE_XMF:I = 0xf

.field private static final FIRST_AUDIO_TYPE:I = 0x0

.field private static final LAST_AUDIO_TYPE:I = 0x18

.field private static final sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/nubia/music/utils/MediaFileUtil$MediaFileType;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/music/utils/MediaFileUtil;->sFileTypeMap:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/music/utils/MediaFileUtil;->sMimeTypeMap:Ljava/util/HashMap;

    .line 65
    const-string v0, "APE"

    const/4 v1, 0x0

    const-string v2, "audio/ape"

    invoke-static {v0, v1, v2}, Lcn/nubia/music/utils/MediaFileUtil;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 66
    const-string v0, "MP3"

    const/4 v1, 0x1

    const-string v2, "audio/mpeg"

    invoke-static {v0, v1, v2}, Lcn/nubia/music/utils/MediaFileUtil;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 67
    const-string v0, "MPGA"

    const/4 v1, 0x2

    const-string v2, "audio/mpeg"

    invoke-static {v0, v1, v2}, Lcn/nubia/music/utils/MediaFileUtil;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 68
    const-string v0, "M4A"

    const/4 v1, 0x3

    const-string v2, "audio/mp4"

    invoke-static {v0, v1, v2}, Lcn/nubia/music/utils/MediaFileUtil;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    const-string v0, "WAV"

    const/4 v1, 0x4

    const-string v2, "audio/wav"

    invoke-static {v0, v1, v2}, Lcn/nubia/music/utils/MediaFileUtil;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 70
    const-string v0, "AMR"

    const/4 v1, 0x5

    const-string v2, "audio/amr"

    invoke-static {v0, v1, v2}, Lcn/nubia/music/utils/MediaFileUtil;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 71
    const-string v0, "AWB"

    const/4 v1, 0x6

    const-string v2, "audio/amr-wb"

    invoke-static {v0, v1, v2}, Lcn/nubia/music/utils/MediaFileUtil;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 72
    const-string v0, "WMA"

    const/4 v1, 0x7

    const-string v2, "audio/x-ms-wma"

    invoke-static {v0, v1, v2}, Lcn/nubia/music/utils/MediaFileUtil;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 73
    const-string v0, "QCP"

    const/16 v1, 0x8

    const-string v2, "audio/qcelp"

    invoke-static {v0, v1, v2}, Lcn/nubia/music/utils/MediaFileUtil;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 74
    const-string v0, "OGG"

    const/16 v1, 0x9

    const-string v2, "application/ogg"

    invoke-static {v0, v1, v2}, Lcn/nubia/music/utils/MediaFileUtil;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 75
    const-string v0, "OGA"

    const/16 v1, 0xa

    const-string v2, "audio/ogg"

    invoke-static {v0, v1, v2}, Lcn/nubia/music/utils/MediaFileUtil;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 76
    const-string v0, "AAC"

    const/16 v1, 0xb

    const-string v2, "audio/aac-adts"

    invoke-static {v0, v1, v2}, Lcn/nubia/music/utils/MediaFileUtil;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 77
    const-string v0, "MKA"

    const/16 v1, 0xc

    const-string v2, "audio/x-matroska"

    invoke-static {v0, v1, v2}, Lcn/nubia/music/utils/MediaFileUtil;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 78
    const-string v0, "MID"

    const/16 v1, 0xd

    const-string v2, "audio/midi"

    invoke-static {v0, v1, v2}, Lcn/nubia/music/utils/MediaFileUtil;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 79
    const-string v0, "MIDI"

    const/16 v1, 0xe

    const-string v2, "audio/midi"

    invoke-static {v0, v1, v2}, Lcn/nubia/music/utils/MediaFileUtil;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 80
    const-string v0, "XMF"

    const/16 v1, 0xf

    const-string v2, "audio/midi"

    invoke-static {v0, v1, v2}, Lcn/nubia/music/utils/MediaFileUtil;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    const-string v0, "RTTTL"

    const/16 v1, 0x10

    const-string v2, "audio/midi"

    invoke-static {v0, v1, v2}, Lcn/nubia/music/utils/MediaFileUtil;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 82
    const-string v0, "SMF"

    const/16 v1, 0x11

    const-string v2, "audio/sp-midi"

    invoke-static {v0, v1, v2}, Lcn/nubia/music/utils/MediaFileUtil;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 83
    const-string v0, "IMY"

    const/16 v1, 0x12

    const-string v2, "audio/imelody"

    invoke-static {v0, v1, v2}, Lcn/nubia/music/utils/MediaFileUtil;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 84
    const-string v0, "RTX"

    const/16 v1, 0x13

    const-string v2, "audio/midi"

    invoke-static {v0, v1, v2}, Lcn/nubia/music/utils/MediaFileUtil;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 85
    const-string v0, "OTA"

    const/16 v1, 0x14

    const-string v2, "audio/midi"

    invoke-static {v0, v1, v2}, Lcn/nubia/music/utils/MediaFileUtil;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 86
    const-string v0, "MXMF"

    const/16 v1, 0x15

    const-string v2, "audio/midi"

    invoke-static {v0, v1, v2}, Lcn/nubia/music/utils/MediaFileUtil;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 87
    const-string v0, "FLAC"

    const/16 v1, 0x16

    const-string v2, "audio/flac"

    invoke-static {v0, v1, v2}, Lcn/nubia/music/utils/MediaFileUtil;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 88
    const-string v0, "AC3"

    const/16 v1, 0x17

    const-string v2, "audio/ac3"

    invoke-static {v0, v1, v2}, Lcn/nubia/music/utils/MediaFileUtil;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 89
    const-string v0, "3GA"

    const/16 v1, 0x18

    const-string v2, "audio/3ga"

    invoke-static {v0, v1, v2}, Lcn/nubia/music/utils/MediaFileUtil;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 90
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addFileType(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 93
    sget-object v0, Lcn/nubia/music/utils/MediaFileUtil;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v1, Lcn/nubia/music/utils/MediaFileUtil$MediaFileType;

    invoke-direct {v1, p1, p2}, Lcn/nubia/music/utils/MediaFileUtil$MediaFileType;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcn/nubia/music/utils/MediaFileUtil;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-void
.end method

.method public static getFileType(Ljava/lang/String;)Lcn/nubia/music/utils/MediaFileUtil$MediaFileType;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 98
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 99
    if-gez v1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-object v0

    .line 102
    :cond_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    sget-object v0, Lcn/nubia/music/utils/MediaFileUtil;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/utils/MediaFileUtil$MediaFileType;

    goto :goto_0
.end method

.method public static isAudioFile(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MediaFileUtil;->isAudioFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAudioFile(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 114
    invoke-static {p0}, Lcn/nubia/music/utils/MediaFileUtil;->getFileType(Ljava/lang/String;)Lcn/nubia/music/utils/MediaFileUtil$MediaFileType;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/music/utils/MediaFileUtil$MediaFileType;->getFileType()I

    move-result v0

    invoke-static {v0}, Lcn/nubia/music/utils/MediaFileUtil;->isAudioFileType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const/4 v0, 0x1

    .line 118
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAudioFileType(I)Z
    .locals 1

    .prologue
    .line 110
    if-ltz p0, :cond_0

    const/16 v0, 0x18

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
