.class public Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;
.super Lcn/nubia/cloud/storage/common/bean/MetaRes;
.source "AudioMetaRes.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public albumArt:Ljava/lang/String;

.field public albumArtist:Ljava/lang/String;

.field public albumTitle:Ljava/lang/String;

.field public artistName:Ljava/lang/String;

.field public compilation:Ljava/lang/String;

.field public composer:Ljava/lang/String;

.field public date:Ljava/lang/String;

.field public duration:J

.field public genre:Ljava/lang/String;

.field public hasthumbnail:Z

.field public trackNumber:J

.field public trackTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes$1;

    invoke-direct {v0}, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes$1;-><init>()V

    sput-object v0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 59
    invoke-direct {p0}, Lcn/nubia/cloud/storage/common/bean/MetaRes;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->hasthumbnail:Z

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->artistName:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->albumTitle:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->albumArtist:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->albumArt:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->composer:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->trackTitle:Ljava/lang/String;

    const-wide/16 v1, -0x1

    .line 33
    iput-wide v1, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->trackNumber:J

    const-wide/16 v1, 0x0

    .line 36
    iput-wide v1, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->duration:J

    .line 39
    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->compilation:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->date:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->genre:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 68
    invoke-direct {p0, p1, p2}, Lcn/nubia/cloud/storage/common/bean/MetaRes;-><init>(ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->hasthumbnail:Z

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->artistName:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->albumTitle:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->albumArtist:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->albumArt:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->composer:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->trackTitle:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 33
    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->trackNumber:J

    const-wide/16 v0, 0x0

    .line 36
    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->duration:J

    .line 39
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->compilation:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->date:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->genre:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 63
    invoke-direct {p0}, Lcn/nubia/cloud/storage/common/bean/MetaRes;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->hasthumbnail:Z

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->artistName:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->albumTitle:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->albumArtist:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->albumArt:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->composer:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->trackTitle:Ljava/lang/String;

    const-wide/16 v1, -0x1

    .line 33
    iput-wide v1, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->trackNumber:J

    const-wide/16 v1, 0x0

    .line 36
    iput-wide v1, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->duration:J

    .line 39
    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->compilation:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->date:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->genre:Ljava/lang/String;

    .line 64
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/nubia/cloud/storage/common/bean/AudioMetaRes$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 84
    invoke-super {p0, p1}, Lcn/nubia/cloud/storage/common/bean/MetaRes;->readFromParcel(Landroid/os/Parcel;)V

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->hasthumbnail:Z

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->artistName:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->albumTitle:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->albumArtist:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->albumArt:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->composer:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->trackTitle:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->compilation:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->date:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->genre:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->trackNumber:J

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->duration:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 104
    invoke-super {p0, p1, p2}, Lcn/nubia/cloud/storage/common/bean/MetaRes;->writeToParcel(Landroid/os/Parcel;I)V

    .line 105
    iget-boolean p2, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->hasthumbnail:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->artistName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->albumTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->albumArtist:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->albumArt:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->composer:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->trackTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->compilation:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->date:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->genre:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->trackNumber:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 116
    iget-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/AudioMetaRes;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
