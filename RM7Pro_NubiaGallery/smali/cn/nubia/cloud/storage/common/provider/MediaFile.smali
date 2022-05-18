.class public Lcn/nubia/cloud/storage/common/provider/MediaFile;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/storage/common/provider/MediaFile$MediaFileType;
    }
.end annotation


# static fields
.field public static final FILE_TYPE_3GPA:I = 0x12d

.field public static final FILE_TYPE_3GPP:I = 0x17

.field public static final FILE_TYPE_3GPP2:I = 0x18

.field public static final FILE_TYPE_AAC:I = 0x8

.field public static final FILE_TYPE_AC3:I = 0x12e

.field public static final FILE_TYPE_AMR:I = 0x4

.field public static final FILE_TYPE_APE:I = 0x14

.field public static final FILE_TYPE_ASF:I = 0x1a

.field public static final FILE_TYPE_AVI:I = 0x1d

.field public static final FILE_TYPE_AWB:I = 0x5

.field public static final FILE_TYPE_BMP:I = 0x22

.field public static final FILE_TYPE_DASH:I = 0x2d

.field public static final FILE_TYPE_DIVX:I = 0xc9

.field public static final FILE_TYPE_DTS:I = 0x12c

.field public static final FILE_TYPE_EC3:I = 0x131

.field public static final FILE_TYPE_F4V:I = 0x192

.field public static final FILE_TYPE_FL:I = 0x33

.field public static final FILE_TYPE_FLAC:I = 0xa

.field public static final FILE_TYPE_FLV:I = 0x191

.field public static final FILE_TYPE_GIF:I = 0x20

.field public static final FILE_TYPE_HTML:I = 0x65

.field public static final FILE_TYPE_HTTPLIVE:I = 0x2c

.field public static final FILE_TYPE_IMY:I = 0xd

.field public static final FILE_TYPE_JPEG:I = 0x1f

.field public static final FILE_TYPE_M3U:I = 0x29

.field public static final FILE_TYPE_M4A:I = 0x2

.field public static final FILE_TYPE_M4V:I = 0x16

.field public static final FILE_TYPE_MID:I = 0xb

.field public static final FILE_TYPE_MKA:I = 0x9

.field public static final FILE_TYPE_MKV:I = 0x1b

.field public static final FILE_TYPE_MOV:I = 0x194

.field public static final FILE_TYPE_MP2PS:I = 0xc8

.field public static final FILE_TYPE_MP2TS:I = 0x1c

.field public static final FILE_TYPE_MP3:I = 0x1

.field public static final FILE_TYPE_MP4:I = 0x15

.field public static final FILE_TYPE_MS_EXCEL:I = 0x69

.field public static final FILE_TYPE_MS_POWERPOINT:I = 0x6a

.field public static final FILE_TYPE_MS_WORD:I = 0x68

.field public static final FILE_TYPE_OGG:I = 0x7

.field public static final FILE_TYPE_PCM:I = 0x130

.field public static final FILE_TYPE_PDF:I = 0x66

.field public static final FILE_TYPE_PLS:I = 0x2a

.field public static final FILE_TYPE_PNG:I = 0x21

.field public static final FILE_TYPE_QCP:I = 0x12f

.field public static final FILE_TYPE_RM:I = 0x193

.field public static final FILE_TYPE_RMVB:I = 0x190

.field public static final FILE_TYPE_SMF:I = 0xc

.field public static final FILE_TYPE_TEXT:I = 0x64

.field public static final FILE_TYPE_WAV:I = 0x3

.field public static final FILE_TYPE_WBMP:I = 0x23

.field public static final FILE_TYPE_WEBM:I = 0x1e

.field public static final FILE_TYPE_WEBP:I = 0x24

.field public static final FILE_TYPE_WMA:I = 0x6

.field public static final FILE_TYPE_WMV:I = 0x19

.field public static final FILE_TYPE_WPL:I = 0x2b

.field public static final FILE_TYPE_XML:I = 0x67

.field public static final FILE_TYPE_ZIP:I = 0x6b

.field private static final FIRST_AUDIO_FILE_TYPE:I = 0x1

.field private static final FIRST_AUDIO_FILE_TYPE_EXT:I = 0x12c

.field private static final FIRST_DRM_FILE_TYPE:I = 0x33

.field private static final FIRST_IMAGE_FILE_TYPE:I = 0x1f

.field private static final FIRST_MIDI_FILE_TYPE:I = 0xb

.field private static final FIRST_PLAYLIST_FILE_TYPE:I = 0x29

.field private static final FIRST_VIDEO_FILE_TYPE:I = 0x15

.field private static final FIRST_VIDEO_FILE_TYPE2:I = 0xc8

.field private static final FIRST_VIDEO_FILE_TYPE3:I = 0x190

.field private static final LAST_AUDIO_FILE_TYPE:I = 0x14

.field private static final LAST_AUDIO_FILE_TYPE_EXT:I = 0x131

.field private static final LAST_DRM_FILE_TYPE:I = 0x33

.field private static final LAST_IMAGE_FILE_TYPE:I = 0x24

.field private static final LAST_MIDI_FILE_TYPE:I = 0xd

.field private static final LAST_PLAYLIST_FILE_TYPE:I = 0x2d

.field private static final LAST_VIDEO_FILE_TYPE:I = 0x1e

.field private static final LAST_VIDEO_FILE_TYPE2:I = 0xc9

.field private static final LAST_VIDEO_FILE_TYPE3:I = 0x194

.field public static final MEDIA_TYPE_AUDIO:I

.field public static final MEDIA_TYPE_IMAGE:I

.field public static final MEDIA_TYPE_NONE:I

.field public static final MEDIA_TYPE_VIDEO:I

.field private static final sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcn/nubia/cloud/storage/common/provider/MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFileTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sFormatToMimeTypeMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMimeTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 13
    sget-object v0, Lcn/nubia/cloud/storage/common/MediaType;->UNKNOWN:Lcn/nubia/cloud/storage/common/MediaType;

    invoke-virtual {v0}, Lcn/nubia/cloud/storage/common/MediaType;->intValue()I

    move-result v0

    sput v0, Lcn/nubia/cloud/storage/common/provider/MediaFile;->MEDIA_TYPE_NONE:I

    .line 14
    sget-object v0, Lcn/nubia/cloud/storage/common/MediaType;->IMAGE:Lcn/nubia/cloud/storage/common/MediaType;

    invoke-virtual {v0}, Lcn/nubia/cloud/storage/common/MediaType;->intValue()I

    move-result v0

    sput v0, Lcn/nubia/cloud/storage/common/provider/MediaFile;->MEDIA_TYPE_IMAGE:I

    .line 15
    sget-object v0, Lcn/nubia/cloud/storage/common/MediaType;->AUDIO:Lcn/nubia/cloud/storage/common/MediaType;

    invoke-virtual {v0}, Lcn/nubia/cloud/storage/common/MediaType;->intValue()I

    move-result v0

    sput v0, Lcn/nubia/cloud/storage/common/provider/MediaFile;->MEDIA_TYPE_AUDIO:I

    .line 16
    sget-object v0, Lcn/nubia/cloud/storage/common/MediaType;->VIDEO:Lcn/nubia/cloud/storage/common/MediaType;

    invoke-virtual {v0}, Lcn/nubia/cloud/storage/common/MediaType;->intValue()I

    move-result v0

    sput v0, Lcn/nubia/cloud/storage/common/provider/MediaFile;->MEDIA_TYPE_VIDEO:I

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/cloud/storage/common/provider/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/cloud/storage/common/provider/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/cloud/storage/common/provider/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/cloud/storage/common/provider/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    .line 141
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcn/nubia/cloud/storage/common/provider/MediaFile;->sFormatToMimeTypeMap:Landroid/util/SparseArray;

    const-string v0, "APE"

    const/16 v1, 0x14

    const-string v2, "audio/ape"

    .line 158
    invoke-static {v0, v1, v2}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MP3"

    const/4 v1, 0x1

    const-string v2, "audio/mpeg"

    const/16 v3, 0x3009

    .line 160
    invoke-static {v0, v1, v2, v3}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "MPGA"

    .line 161
    invoke-static {v0, v1, v2, v3}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "M4A"

    const/4 v1, 0x2

    const-string v2, "audio/mp4"

    const/16 v3, 0x300b

    .line 162
    invoke-static {v0, v1, v2, v3}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "WAV"

    const/4 v1, 0x3

    const-string v2, "audio/x-wav"

    const/16 v4, 0x3008

    .line 163
    invoke-static {v0, v1, v2, v4}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "AMR"

    const/4 v1, 0x4

    const-string v2, "audio/amr"

    .line 164
    invoke-static {v0, v1, v2}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "AWB"

    const/4 v1, 0x5

    const-string v2, "audio/amr-wb"

    .line 165
    invoke-static {v0, v1, v2}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "WMA"

    const/4 v1, 0x6

    const-string v2, "audio/x-ms-wma"

    const v4, 0xb901

    .line 166
    invoke-static {v0, v1, v2, v4}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "OGG"

    const/4 v1, 0x7

    const-string v2, "audio/ogg"

    const v4, 0xb902

    .line 167
    invoke-static {v0, v1, v2, v4}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v2, "application/ogg"

    .line 168
    invoke-static {v0, v1, v2, v4}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "OGA"

    .line 169
    invoke-static {v0, v1, v2, v4}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "AAC"

    const/16 v1, 0x8

    const-string v2, "audio/aac"

    const v4, 0xb903

    .line 170
    invoke-static {v0, v1, v2, v4}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v2, "audio/aac-adts"

    .line 171
    invoke-static {v0, v1, v2, v4}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "MKA"

    const/16 v1, 0x9

    const-string v2, "audio/x-matroska"

    .line 172
    invoke-static {v0, v1, v2}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MID"

    const/16 v1, 0xb

    const-string v2, "audio/midi"

    .line 174
    invoke-static {v0, v1, v2}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MIDI"

    .line 175
    invoke-static {v0, v1, v2}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "XMF"

    .line 176
    invoke-static {v0, v1, v2}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "RTTTL"

    .line 177
    invoke-static {v0, v1, v2}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "SMF"

    const/16 v4, 0xc

    const-string v5, "audio/sp-midi"

    .line 178
    invoke-static {v0, v4, v5}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "IMY"

    const/16 v4, 0xd

    const-string v5, "audio/imelody"

    .line 179
    invoke-static {v0, v4, v5}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "RTX"

    .line 180
    invoke-static {v0, v1, v2}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "OTA"

    .line 181
    invoke-static {v0, v1, v2}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MXMF"

    .line 182
    invoke-static {v0, v1, v2}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MPEG"

    const/16 v1, 0x15

    const-string v2, "video/mpeg"

    .line 184
    invoke-static {v0, v1, v2, v3}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v4, "MPG"

    .line 185
    invoke-static {v4, v1, v2, v3}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v2, "MP4"

    const-string v5, "video/mp4"

    .line 186
    invoke-static {v2, v1, v5, v3}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v1, "M4V"

    const/16 v2, 0x16

    .line 187
    invoke-static {v1, v2, v5, v3}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v1, "3GP"

    const/16 v2, 0x17

    const-string v3, "video/3gpp"

    const v6, 0xb984

    .line 188
    invoke-static {v1, v2, v3, v6}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v1, "3GPP"

    const-string v3, "video/3gpp"

    .line 189
    invoke-static {v1, v2, v3, v6}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v1, "3G2"

    const/16 v2, 0x18

    const-string v3, "video/3gpp2"

    .line 190
    invoke-static {v1, v2, v3, v6}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v1, "3GPP2"

    const-string v3, "video/3gpp2"

    .line 191
    invoke-static {v1, v2, v3, v6}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v1, "MKV"

    const/16 v2, 0x1b

    const-string v3, "video/x-matroska"

    .line 192
    invoke-static {v1, v2, v3}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "WEBM"

    const/16 v2, 0x1e

    const-string v3, "video/webm"

    .line 193
    invoke-static {v1, v2, v3}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "TS"

    const/16 v2, 0x1c

    const-string v3, "video/mp2ts"

    .line 194
    invoke-static {v1, v2, v3}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "AVI"

    const/16 v2, 0x1d

    const-string v3, "video/avi"

    .line 195
    invoke-static {v1, v2, v3}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "WMV"

    const/16 v2, 0x19

    const-string v3, "video/x-ms-wmv"

    const v6, 0xb981

    .line 197
    invoke-static {v1, v2, v3, v6}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v1, "ASF"

    const/16 v2, 0x1a

    const-string v3, "video/x-ms-asf"

    .line 198
    invoke-static {v1, v2, v3}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "RMVB"

    const/16 v2, 0x190

    const-string v3, "video/rmvb"

    .line 200
    invoke-static {v1, v2, v3}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "FLV"

    const/16 v2, 0x191

    const-string v3, "video/x-flv"

    .line 201
    invoke-static {v1, v2, v3}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "F4V"

    const/16 v2, 0x192

    .line 202
    invoke-static {v1, v2, v5}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "RM"

    const/16 v2, 0x193

    const-string v3, "video/x-pn-realvideo"

    .line 203
    invoke-static {v1, v2, v3}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "MOV"

    const/16 v2, 0x194

    const-string v3, "video/quicktime"

    .line 204
    invoke-static {v1, v2, v3}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "M2TS"

    const/16 v2, 0x1c

    const-string v3, "video/mp2ts"

    .line 205
    invoke-static {v1, v2, v3}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "JPG"

    const/16 v2, 0x1f

    const-string v3, "image/jpeg"

    const/16 v5, 0x3801

    .line 208
    invoke-static {v1, v2, v3, v5}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v1, "JPEG"

    const-string v3, "image/jpeg"

    .line 209
    invoke-static {v1, v2, v3, v5}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v1, "GIF"

    const/16 v2, 0x20

    const-string v3, "image/gif"

    const/16 v5, 0x3807

    .line 210
    invoke-static {v1, v2, v3, v5}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v1, "PNG"

    const/16 v2, 0x21

    const-string v3, "image/png"

    const/16 v5, 0x380b

    .line 211
    invoke-static {v1, v2, v3, v5}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v1, "BMP"

    const/16 v2, 0x22

    const-string v3, "image/x-ms-bmp"

    const/16 v5, 0x3804

    .line 212
    invoke-static {v1, v2, v3, v5}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v1, "WBMP"

    const/16 v2, 0x23

    const-string v3, "image/vnd.wap.wbmp"

    .line 213
    invoke-static {v1, v2, v3}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "WEBP"

    const/16 v2, 0x24

    const-string v3, "image/webp"

    .line 214
    invoke-static {v1, v2, v3}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "M3U"

    const/16 v2, 0x29

    const-string v3, "audio/x-mpegurl"

    const v5, 0xba11

    .line 216
    invoke-static {v1, v2, v3, v5}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v1, "M3U"

    const-string v3, "application/x-mpegurl"

    .line 217
    invoke-static {v1, v2, v3, v5}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v1, "PLS"

    const/16 v2, 0x2a

    const-string v3, "audio/x-scpls"

    const v5, 0xba14

    .line 218
    invoke-static {v1, v2, v3, v5}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v1, "WPL"

    const/16 v2, 0x2b

    const-string v3, "application/vnd.ms-wpl"

    const v5, 0xba10

    .line 219
    invoke-static {v1, v2, v3, v5}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v1, "M3U8"

    const/16 v2, 0x2c

    const-string v3, "application/vnd.apple.mpegurl"

    .line 220
    invoke-static {v1, v2, v3}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "audio/mpegurl"

    .line 221
    invoke-static {v1, v2, v3}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v3, "audio/x-mpegurl"

    .line 222
    invoke-static {v1, v2, v3}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "MPD"

    const/16 v2, 0x2d

    const-string v3, "application/dash+xml"

    .line 223
    invoke-static {v1, v2, v3}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "FL"

    const/16 v2, 0x33

    const-string v3, "application/x-android-drm-fl"

    .line 225
    invoke-static {v1, v2, v3}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "TXT"

    const/16 v2, 0x64

    const-string v3, "text/plain"

    const/16 v5, 0x3004

    .line 227
    invoke-static {v1, v2, v3, v5}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v1, "HTM"

    const/16 v2, 0x65

    const-string v3, "text/html"

    const/16 v5, 0x3005

    .line 228
    invoke-static {v1, v2, v3, v5}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v1, "HTML"

    const-string v3, "text/html"

    .line 229
    invoke-static {v1, v2, v3, v5}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v1, "PDF"

    const/16 v2, 0x66

    const-string v3, "application/pdf"

    .line 230
    invoke-static {v1, v2, v3}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "DOC"

    const/16 v2, 0x68

    const-string v3, "application/msword"

    const v5, 0xba83

    .line 231
    invoke-static {v1, v2, v3, v5}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v1, "XLS"

    const/16 v2, 0x69

    const-string v3, "application/vnd.ms-excel"

    const v5, 0xba85

    .line 232
    invoke-static {v1, v2, v3, v5}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v1, "PPT"

    const/16 v2, 0x6a

    const-string v3, "application/mspowerpoint"

    const v5, 0xba86

    .line 233
    invoke-static {v1, v2, v3, v5}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v1, "FLAC"

    const/16 v2, 0xa

    const-string v3, "audio/flac"

    const v5, 0xb906

    .line 234
    invoke-static {v1, v2, v3, v5}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v1, "ZIP"

    const/16 v2, 0x6b

    const-string v3, "application/zip"

    .line 235
    invoke-static {v1, v2, v3}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xc8

    const-string v2, "video/mp2p"

    .line 236
    invoke-static {v4, v1, v2}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "video/mp2p"

    .line 237
    invoke-static {v0, v1, v2}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "DIVX"

    const/16 v1, 0xc9

    const-string v2, "video/divx"

    .line 238
    invoke-static {v0, v1, v2}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "QCP"

    const/16 v1, 0x12f

    const-string v2, "audio/qcelp"

    .line 239
    invoke-static {v0, v1, v2}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "AC3"

    const/16 v1, 0x12e

    const-string v2, "audio/ac3"

    .line 240
    invoke-static {v0, v1, v2}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "EC3"

    const/16 v1, 0x131

    const-string v2, "audio/eac3"

    .line 241
    invoke-static {v0, v1, v2}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 145
    sget-object v0, Lcn/nubia/cloud/storage/common/provider/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v1, Lcn/nubia/cloud/storage/common/provider/MediaFile$MediaFileType;

    invoke-direct {v1, p1, p2}, Lcn/nubia/cloud/storage/common/provider/MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object p0, Lcn/nubia/cloud/storage/common/provider/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1

    .line 150
    invoke-static {p0, p1, p2}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;)V

    .line 151
    sget-object p1, Lcn/nubia/cloud/storage/common/provider/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object p0, Lcn/nubia/cloud/storage/common/provider/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object p0, Lcn/nubia/cloud/storage/common/provider/MediaFile;->sFormatToMimeTypeMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static getFileTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2f

    .line 295
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 298
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 299
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/16 v0, 0x2e

    .line 303
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    .line 305
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static getFileType(Ljava/lang/String;)Lcn/nubia/cloud/storage/common/provider/MediaFile$MediaFileType;
    .locals 2

    const/16 v0, 0x2e

    .line 280
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 283
    :cond_0
    sget-object v1, Lcn/nubia/cloud/storage/common/provider/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/cloud/storage/common/provider/MediaFile$MediaFileType;

    return-object p0
.end method

.method public static getFileTypeForMimeType(Ljava/lang/String;)I
    .locals 1

    .line 311
    sget-object v0, Lcn/nubia/cloud/storage/common/provider/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 312
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getFormatCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 322
    sget-object v0, Lcn/nubia/cloud/storage/common/provider/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 324
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/16 p1, 0x2e

    .line 327
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    if-lez p1, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 329
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 330
    sget-object p1, Lcn/nubia/cloud/storage/common/provider/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    .line 332
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    const/16 p0, 0x3000

    return p0
.end method

.method public static getMediaType(Ljava/lang/String;)I
    .locals 1

    if-eqz p0, :cond_2

    const-string v0, "image"

    .line 344
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    sget p0, Lcn/nubia/cloud/storage/common/provider/MediaFile;->MEDIA_TYPE_IMAGE:I

    return p0

    :cond_0
    const-string v0, "audio"

    .line 346
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    sget p0, Lcn/nubia/cloud/storage/common/provider/MediaFile;->MEDIA_TYPE_AUDIO:I

    return p0

    :cond_1
    const-string v0, "video"

    .line 348
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 349
    sget p0, Lcn/nubia/cloud/storage/common/provider/MediaFile;->MEDIA_TYPE_VIDEO:I

    return p0

    .line 352
    :cond_2
    sget p0, Lcn/nubia/cloud/storage/common/provider/MediaFile;->MEDIA_TYPE_NONE:I

    return p0
.end method

.method public static getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 316
    invoke-static {p0}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->getFileType(Ljava/lang/String;)Lcn/nubia/cloud/storage/common/provider/MediaFile$MediaFileType;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 317
    :cond_0
    iget-object p0, p0, Lcn/nubia/cloud/storage/common/provider/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public static getMimeTypeForFormatCode(I)Ljava/lang/String;
    .locals 1

    .line 339
    sget-object v0, Lcn/nubia/cloud/storage/common/provider/MediaFile;->sFormatToMimeTypeMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static isAudioFileType(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v1, 0x14

    if-le p0, v1, :cond_3

    :cond_0
    const/16 v1, 0xb

    if-lt p0, v1, :cond_1

    const/16 v1, 0xd

    if-le p0, v1, :cond_3

    :cond_1
    const/16 v1, 0x12c

    if-lt p0, v1, :cond_2

    const/16 v1, 0x131

    if-gt p0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method

.method public static isDrmFileType(I)Z
    .locals 1

    const/16 v0, 0x33

    if-lt p0, v0, :cond_0

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isImageFileType(I)Z
    .locals 1

    const/16 v0, 0x1f

    if-lt p0, v0, :cond_0

    const/16 v0, 0x24

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMimeTypeMedia(Ljava/lang/String;)Z
    .locals 1

    .line 287
    invoke-static {p0}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result p0

    .line 288
    invoke-static {p0}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->isAudioFileType(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->isVideoFileType(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->isImageFileType(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcn/nubia/cloud/storage/common/provider/MediaFile;->isPlayListFileType(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isPlayListFileType(I)Z
    .locals 1

    const/16 v0, 0x29

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2d

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVideoFileType(I)Z
    .locals 1

    const/16 v0, 0x15

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1e

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_1

    const/16 v0, 0xc9

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x190

    if-lt p0, v0, :cond_3

    const/16 v0, 0x194

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
