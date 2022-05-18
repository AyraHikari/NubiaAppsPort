.class public Lcn/nubia/music/online/data/PlaylistEntry;
.super Ljava/lang/Object;
.source "PlaylistEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcn/nubia/music/online/data/PlaylistEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mImageUrl:Ljava/lang/String;

.field public mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

.field public mPlaylistId:Ljava/lang/String;

.field public mPlaylistName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcn/nubia/music/online/data/PlaylistEntry$1;

    invoke-direct {v0}, Lcn/nubia/music/online/data/PlaylistEntry$1;-><init>()V

    sput-object v0, Lcn/nubia/music/online/data/PlaylistEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/data/PlaylistEntry;->mPlaylistId:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/data/PlaylistEntry;->mPlaylistName:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/online/data/PlaylistEntry;->mImageUrl:Ljava/lang/String;

    .line 47
    const-class v0, Lcn/nubia/music/online/data/ImageUrlEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/data/ImageUrlEntry;

    iput-object v0, p0, Lcn/nubia/music/online/data/PlaylistEntry;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/nubia/music/online/data/PlaylistEntry$1;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcn/nubia/music/online/data/PlaylistEntry;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcn/nubia/music/online/data/PlaylistEntry;->mPlaylistId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcn/nubia/music/online/data/PlaylistEntry;->mPlaylistName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcn/nubia/music/online/data/PlaylistEntry;->mImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcn/nubia/music/online/data/PlaylistEntry;->mImageUrlEntry:Lcn/nubia/music/online/data/ImageUrlEntry;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 30
    return-void
.end method
