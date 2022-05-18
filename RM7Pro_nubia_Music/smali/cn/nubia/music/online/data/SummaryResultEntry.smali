.class public Lcn/nubia/music/online/data/SummaryResultEntry;
.super Ljava/lang/Object;
.source "SummaryResultEntry.java"


# instance fields
.field public mAlbumList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/data/AlbumEntry;",
            ">;"
        }
    .end annotation
.end field

.field public mArtistList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/data/ArtistEntry;",
            ">;"
        }
    .end annotation
.end field

.field public mMusicList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/data/MusicEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
