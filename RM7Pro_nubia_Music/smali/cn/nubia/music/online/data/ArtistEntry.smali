.class public Lcn/nubia/music/online/data/ArtistEntry;
.super Ljava/lang/Object;
.source "ArtistEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcn/nubia/music/online/data/ArtistEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAlbumCount:Ljava/lang/String;

.field public mArtistId:Ljava/lang/String;

.field public mArtistName:Ljava/lang/String;

.field public mAvatarBig:Ljava/lang/String;

.field public mAvatarMiddle:Ljava/lang/String;

.field public mAvatarMini:Ljava/lang/String;

.field public mAvatarSmall:Ljava/lang/String;

.field public mDescription:Ljava/lang/String;

.field public mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

.field public mMusicCount:Ljava/lang/String;

.field public mPic1000:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcn/nubia/music/online/data/ArtistEntry$1;

    invoke-direct {v0}, Lcn/nubia/music/online/data/ArtistEntry$1;-><init>()V

    sput-object v0, Lcn/nubia/music/online/data/ArtistEntry;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/data/ArtistEntry;->mArtistId:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/data/ArtistEntry;->mArtistName:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/data/ArtistEntry;->mAvatarBig:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/data/ArtistEntry;->mAvatarMiddle:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/data/ArtistEntry;->mAvatarSmall:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/data/ArtistEntry;->mAvatarMini:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/data/ArtistEntry;->mDescription:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/data/ArtistEntry;->mAlbumCount:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/data/ArtistEntry;->mMusicCount:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/data/ArtistEntry;->mPic1000:Ljava/lang/String;

    .line 70
    const-class v0, Lcn/nubia/music/online/data/ImageUrlEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/data/ImageUrlEntry;

    iput-object v0, p0, Lcn/nubia/music/online/data/ArtistEntry;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/nubia/music/online/data/ArtistEntry$1;)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcn/nubia/music/online/data/ArtistEntry;-><init>(Landroid/os/Parcel;)V

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
    iget-object v0, p0, Lcn/nubia/music/online/data/ArtistEntry;->mArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcn/nubia/music/online/data/ArtistEntry;->mArtistName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcn/nubia/music/online/data/ArtistEntry;->mAvatarBig:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcn/nubia/music/online/data/ArtistEntry;->mAvatarMiddle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcn/nubia/music/online/data/ArtistEntry;->mAvatarSmall:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcn/nubia/music/online/data/ArtistEntry;->mAvatarMini:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcn/nubia/music/online/data/ArtistEntry;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcn/nubia/music/online/data/ArtistEntry;->mAlbumCount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcn/nubia/music/online/data/ArtistEntry;->mMusicCount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcn/nubia/music/online/data/ArtistEntry;->mPic1000:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcn/nubia/music/online/data/ArtistEntry;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 47
    return-void
.end method
