.class public Lcn/nubia/music/app/scan/MusicScanFoundFolder;
.super Ljava/lang/Object;
.source "MusicScanFoundFolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;
    }
.end annotation


# static fields
.field private static mFoundFolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;",
            ">;"
        }
    .end annotation
.end field

.field private static mFoundHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/music/app/scan/MediaInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static clear()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public static getFoundMusicFolder()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    sget-object v0, Lcn/nubia/music/app/scan/MusicScanFoundFolder;->mFoundFolders:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getFoundMusicFolderSize()I
    .locals 2

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 109
    sget-object v1, Lcn/nubia/music/app/scan/MusicScanFoundFolder;->mFoundFolders:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 110
    sget-object v0, Lcn/nubia/music/app/scan/MusicScanFoundFolder;->mFoundFolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 113
    :cond_0
    return v0
.end method

.method public static getFoundMusicHashmap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/music/app/scan/MediaInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 59
    sget-object v0, Lcn/nubia/music/app/scan/MusicScanFoundFolder;->mFoundHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getFoundMusicHashmapSize()I
    .locals 2

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    sget-object v1, Lcn/nubia/music/app/scan/MusicScanFoundFolder;->mFoundHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 65
    sget-object v0, Lcn/nubia/music/app/scan/MusicScanFoundFolder;->mFoundHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 68
    :cond_0
    return v0
.end method

.method public static setFoundMusicFolder(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/music/app/scan/MusicScanFoundFolder$AudioFolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    sput-object p0, Lcn/nubia/music/app/scan/MusicScanFoundFolder;->mFoundFolders:Ljava/util/ArrayList;

    .line 101
    return-void
.end method

.method public static declared-synchronized setFoundMusicHashmap(Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/music/app/scan/MediaInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 24
    const-class v4, Lcn/nubia/music/app/scan/MusicScanFoundFolder;

    monitor-enter v4

    :try_start_0
    sget-object v0, Lcn/nubia/music/app/scan/MusicScanFoundFolder;->mFoundHashMap:Ljava/util/HashMap;

    if-nez v0, :cond_5

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/music/app/scan/MusicScanFoundFolder;->mFoundHashMap:Ljava/util/HashMap;

    .line 29
    :goto_0
    if-eqz p0, :cond_6

    .line 30
    sget-object v0, Lcn/nubia/music/app/scan/MusicScanFoundFolder;->mFoundHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 31
    sget-object v0, Lcn/nubia/music/app/scan/MusicScanFoundFolder;->mFoundHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 32
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 33
    const/4 v1, 0x0

    move v3, v1

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_0

    .line 34
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/music/app/scan/MediaInfo;

    .line 35
    iget-object v2, v1, Lcn/nubia/music/app/scan/MediaInfo;->mPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 36
    invoke-static {}, Lcn/nubia/music/app/model/MetadataCheck;->getInstance()Lcn/nubia/music/app/model/MetadataCheck;

    move-result-object v2

    iget-object v6, v1, Lcn/nubia/music/app/scan/MediaInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcn/nubia/music/app/model/MetadataCheck;->getMetaData(Ljava/lang/String;)Lcn/nubia/music/app/model/MetadataCheck$Metadata;

    move-result-object v2

    .line 38
    if-nez v2, :cond_1

    .line 39
    iget-object v2, v1, Lcn/nubia/music/app/scan/MediaInfo;->mPath:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v2, v6}, Lcn/nubia/music/app/model/MetadataCheck;->parseMetaData(Ljava/lang/String;I)Lcn/nubia/music/app/model/MetadataCheck$Metadata;

    move-result-object v2

    .line 41
    invoke-static {}, Lcn/nubia/music/app/model/MetadataCheck;->getInstance()Lcn/nubia/music/app/model/MetadataCheck;

    move-result-object v6

    iget-object v7, v1, Lcn/nubia/music/app/scan/MediaInfo;->mPath:Ljava/lang/String;

    invoke-virtual {v6, v7, v2}, Lcn/nubia/music/app/model/MetadataCheck;->addMetaData(Ljava/lang/String;Lcn/nubia/music/app/model/MetadataCheck$Metadata;)V

    .line 43
    :cond_1
    iget-object v6, v2, Lcn/nubia/music/app/model/MetadataCheck$Metadata;->title:Ljava/lang/String;

    invoke-static {v6}, Lcn/nubia/music/utils/MusicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 44
    iget-object v6, v2, Lcn/nubia/music/app/model/MetadataCheck$Metadata;->title:Ljava/lang/String;

    iput-object v6, v1, Lcn/nubia/music/app/scan/MediaInfo;->mTitle:Ljava/lang/String;

    .line 46
    :cond_2
    iget-object v6, v2, Lcn/nubia/music/app/model/MetadataCheck$Metadata;->artist:Ljava/lang/String;

    invoke-static {v6}, Lcn/nubia/music/utils/MusicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 47
    iget-object v6, v2, Lcn/nubia/music/app/model/MetadataCheck$Metadata;->artist:Ljava/lang/String;

    iput-object v6, v1, Lcn/nubia/music/app/scan/MediaInfo;->mArtist:Ljava/lang/String;

    .line 49
    :cond_3
    iget-object v6, v2, Lcn/nubia/music/app/model/MetadataCheck$Metadata;->album:Ljava/lang/String;

    invoke-static {v6}, Lcn/nubia/music/utils/MusicUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 50
    iget-object v2, v2, Lcn/nubia/music/app/model/MetadataCheck$Metadata;->album:Ljava/lang/String;

    iput-object v2, v1, Lcn/nubia/music/app/scan/MediaInfo;->mAlbum:Ljava/lang/String;

    .line 33
    :cond_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 27
    :cond_5
    sget-object v0, Lcn/nubia/music/app/scan/MusicScanFoundFolder;->mFoundHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 56
    :cond_6
    monitor-exit v4

    return-void
.end method
