.class final Lcn/nubia/music/online/data/AlbumEntry$1;
.super Ljava/lang/Object;
.source "AlbumEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/online/data/AlbumEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcn/nubia/music/online/data/AlbumEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcn/nubia/music/online/data/AlbumEntry;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcn/nubia/music/online/data/AlbumEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcn/nubia/music/online/data/AlbumEntry;-><init>(Landroid/os/Parcel;Lcn/nubia/music/online/data/AlbumEntry$1;)V

    return-object v0
.end method

.method public a(I)[Lcn/nubia/music/online/data/AlbumEntry;
    .locals 1

    .prologue
    .line 53
    new-array v0, p1, [Lcn/nubia/music/online/data/AlbumEntry;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcn/nubia/music/online/data/AlbumEntry$1;->a(Landroid/os/Parcel;)Lcn/nubia/music/online/data/AlbumEntry;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcn/nubia/music/online/data/AlbumEntry$1;->a(I)[Lcn/nubia/music/online/data/AlbumEntry;

    move-result-object v0

    return-object v0
.end method
