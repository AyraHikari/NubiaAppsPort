.class public Lcn/nubia/music/online/data/AlbumEntry;
.super Ljava/lang/Object;
.source "AlbumEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcn/nubia/music/online/data/AlbumEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAlbumDescription:Ljava/lang/String;

.field public mAlbumId:Ljava/lang/String;

.field public mAlbumName:Ljava/lang/String;

.field public mArtistId:Ljava/lang/String;

.field public mArtistName:Ljava/lang/String;

.field public mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

.field public mMusicCount:I

.field public mMusicList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/music/online/data/MusicEntry;",
            ">;"
        }
    .end annotation
.end field

.field public mPic1000:Ljava/lang/String;

.field public mPicBig:Ljava/lang/String;

.field public mPicSmall:Ljava/lang/String;

.field public mPublishTime:J

.field public totalCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcn/nubia/music/online/data/AlbumEntry$1;

    invoke-direct {v0}, Lcn/nubia/music/online/data/AlbumEntry$1;-><init>()V

    sput-object v0, Lcn/nubia/music/online/data/AlbumEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/data/AlbumEntry;->mAlbumId:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/data/AlbumEntry;->mAlbumName:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/data/AlbumEntry;->mArtistId:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/data/AlbumEntry;->mArtistName:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/data/AlbumEntry;->mAlbumDescription:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/data/AlbumEntry;->mMusicCount:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/data/AlbumEntry;->mPic1000:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/data/AlbumEntry;->mPicBig:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/data/AlbumEntry;->mPicSmall:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/music/online/data/AlbumEntry;->totalCount:I

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/online/data/AlbumEntry;->mMusicList:Ljava/util/ArrayList;

    .line 69
    iget-object v0, p0, Lcn/nubia/music/online/data/AlbumEntry;->mMusicList:Ljava/util/ArrayList;

    sget-object v1, Lcn/nubia/music/online/data/MusicEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 70
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/nubia/music/online/data/AlbumEntry$1;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcn/nubia/music/online/data/AlbumEntry;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/music/online/data/AlbumEntry;->mAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcn/nubia/music/online/data/AlbumEntry;->mAlbumName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcn/nubia/music/online/data/AlbumEntry;->mArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcn/nubia/music/online/data/AlbumEntry;->mArtistName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcn/nubia/music/online/data/AlbumEntry;->mAlbumDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget v0, p0, Lcn/nubia/music/online/data/AlbumEntry;->mMusicCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget-object v0, p0, Lcn/nubia/music/online/data/AlbumEntry;->mPic1000:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcn/nubia/music/online/data/AlbumEntry;->mPicBig:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcn/nubia/music/online/data/AlbumEntry;->mPicSmall:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget v0, p0, Lcn/nubia/music/online/data/AlbumEntry;->totalCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget-object v0, p0, Lcn/nubia/music/online/data/AlbumEntry;->mMusicList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 45
    return-void
.end method
