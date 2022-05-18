.class public Lcn/nubia/music/online/data/ImageUrlEntry;
.super Ljava/lang/Object;
.source "ImageUrlEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcn/nubia/music/online/data/ImageUrlEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mImageUrl_120_120:Ljava/lang/String;

.field public mImageUrl_220_220:Ljava/lang/String;

.field public mImageUrl_330_330:Ljava/lang/String;

.field public mImageUrl_400_400:Ljava/lang/String;

.field public mImageUrl_640_640:Ljava/lang/String;

.field public mImageUrl_720_720:Ljava/lang/String;

.field public mImageUrl_80_80:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcn/nubia/music/online/data/ImageUrlEntry$1;

    invoke-direct {v0}, Lcn/nubia/music/online/data/ImageUrlEntry$1;-><init>()V

    sput-object v0, Lcn/nubia/music/online/data/ImageUrlEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_80_80:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_120_120:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_220_220:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_330_330:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_400_400:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_640_640:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_720_720:Ljava/lang/String;

    .line 135
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/nubia/music/online/data/ImageUrlEntry$1;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcn/nubia/music/online/data/ImageUrlEntry;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_120_120:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    .line 109
    iget-object v0, p0, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_80_80:Ljava/lang/String;

    .line 121
    :goto_0
    return-object v0

    .line 110
    :cond_0
    const/16 v0, 0xaa

    if-ge p1, v0, :cond_1

    .line 111
    iget-object v0, p0, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_120_120:Ljava/lang/String;

    goto :goto_0

    .line 112
    :cond_1
    const/16 v0, 0x113

    if-ge p1, v0, :cond_2

    .line 113
    iget-object v0, p0, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_220_220:Ljava/lang/String;

    goto :goto_0

    .line 114
    :cond_2
    const/16 v0, 0x16d

    if-ge p1, v0, :cond_3

    .line 115
    iget-object v0, p0, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_330_330:Ljava/lang/String;

    goto :goto_0

    .line 116
    :cond_3
    const/16 v0, 0x208

    if-ge p1, v0, :cond_4

    .line 117
    iget-object v0, p0, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_400_400:Ljava/lang/String;

    goto :goto_0

    .line 118
    :cond_4
    const/16 v0, 0x2a8

    if-ge p1, v0, :cond_5

    .line 119
    iget-object v0, p0, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_640_640:Ljava/lang/String;

    goto :goto_0

    .line 121
    :cond_5
    iget-object v0, p0, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_720_720:Ljava/lang/String;

    goto :goto_0
.end method

.method public getImagerUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x14a

    const/4 v3, 0x0

    .line 48
    .line 49
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "image_url_80_80"

    aput-object v1, v0, v3

    const-string v1, "image_url_120_120"

    aput-object v1, v0, v5

    const-string v1, "image_url_220_220"

    aput-object v1, v0, v6

    const-string v1, "image_url_330_330"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "image_url_400_400"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "image_url_640_640"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "image_url_720_720"

    aput-object v2, v0, v1

    .line 53
    aget-object v1, v0, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcn/nubia/music/online/data/ImageUrlEntry;->getImageUrl(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    :goto_0
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcn/nubia/music/utils/MusicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 74
    :cond_0
    const/16 v0, 0x280

    invoke-virtual {p0, v0}, Lcn/nubia/music/online/data/ImageUrlEntry;->getImageUrl(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_9

    invoke-static {v0}, Lcn/nubia/music/utils/MusicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 102
    :cond_1
    :goto_1
    return-object v0

    .line 57
    :cond_2
    aget-object v1, v0, v5

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 58
    const/16 v0, 0x78

    invoke-virtual {p0, v0}, Lcn/nubia/music/online/data/ImageUrlEntry;->getImageUrl(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 59
    :cond_3
    aget-object v1, v0, v6

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 60
    const/16 v0, 0xdc

    invoke-virtual {p0, v0}, Lcn/nubia/music/online/data/ImageUrlEntry;->getImageUrl(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 61
    :cond_4
    aget-object v1, v0, v7

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 62
    invoke-virtual {p0, v4}, Lcn/nubia/music/online/data/ImageUrlEntry;->getImageUrl(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 63
    :cond_5
    const/4 v1, 0x4

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 64
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcn/nubia/music/online/data/ImageUrlEntry;->getImageUrl(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 65
    :cond_6
    const/4 v1, 0x5

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 66
    const/16 v0, 0x280

    invoke-virtual {p0, v0}, Lcn/nubia/music/online/data/ImageUrlEntry;->getImageUrl(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 67
    :cond_7
    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 68
    const/16 v0, 0x2d0

    invoke-virtual {p0, v0}, Lcn/nubia/music/online/data/ImageUrlEntry;->getImageUrl(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 70
    :cond_8
    invoke-virtual {p0, v4}, Lcn/nubia/music/online/data/ImageUrlEntry;->getImageUrl(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 78
    :cond_9
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcn/nubia/music/online/data/ImageUrlEntry;->getImageUrl(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_a

    invoke-static {v0}, Lcn/nubia/music/utils/MusicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 82
    :cond_a
    invoke-virtual {p0, v4}, Lcn/nubia/music/online/data/ImageUrlEntry;->getImageUrl(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_b

    invoke-static {v0}, Lcn/nubia/music/utils/MusicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 87
    :cond_b
    const/16 v0, 0xdc

    invoke-virtual {p0, v0}, Lcn/nubia/music/online/data/ImageUrlEntry;->getImageUrl(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_c

    invoke-static {v0}, Lcn/nubia/music/utils/MusicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 91
    :cond_c
    const/16 v0, 0x78

    invoke-virtual {p0, v0}, Lcn/nubia/music/online/data/ImageUrlEntry;->getImageUrl(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_d

    invoke-static {v0}, Lcn/nubia/music/utils/MusicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 95
    :cond_d
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcn/nubia/music/online/data/ImageUrlEntry;->getImageUrl(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_e

    invoke-static {v0}, Lcn/nubia/music/utils/MusicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_e
    move-object v0, v1

    .line 102
    goto/16 :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageUrlEntry{mImageUrl_80_80=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_80_80:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImageUrl_120_120=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_120_120:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImageUrl_220_220=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_220_220:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImageUrl_330_330=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_330_330:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImageUrl_400_400=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_400_400:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImageUrl_640_640=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_640_640:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImageUrl_720_720=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_720_720:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_80_80:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_120_120:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_220_220:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_330_330:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_400_400:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_640_640:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcn/nubia/music/online/data/ImageUrlEntry;->mImageUrl_720_720:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    return-void
.end method
