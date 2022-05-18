.class public Lcn/nubia/gallery3d/data/FavorHelper;
.super Ljava/lang/Object;
.source "FavorHelper.java"


# static fields
.field public static final COLUMN_DATE_FAVORITED:Ljava/lang/String; = "date_favorited"

.field public static final COLUMN_DATE_MODIFIED:Ljava/lang/String; = "date_modified"

.field public static final COLUMN_IS_FAVORITE:Ljava/lang/String; = "is_favorite"

.field private static final KEY_FAVOR_TRANSFER_DONE:Ljava/lang/String; = "transfer-done"

.field public static final ORDER_BY_ASC:Ljava/lang/String; = "date_modified ASC, _id ASC"

.field public static final ORDER_BY_DESC:Ljava/lang/String; = "date_modified DESC, _id DESC"

.field private static final TAG:Ljava/lang/String; = "FavorHelper"

.field public static final VALUE_FAVORITE:I = 0x1

.field public static final VALUE_NOT_FAVORITE:I = 0x0

.field private static isMediaProviderSupportFavor:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bulkSetUnFavor(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/lang/String;)V
    .locals 1

    .line 215
    sget-boolean v0, Lcn/nubia/gallery3d/data/FavorHelper;->isMediaProviderSupportFavor:Z

    if-eqz v0, :cond_0

    .line 216
    invoke-static {}, Lcn/nubia/gallery3d/data/FavorHelper;->getUnFavorContentValues()Landroid/content/ContentValues;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->updateByIdSet(Lcn/nubia/gallery3d/app/GalleryApp;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_0
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryApp;->getItemFlagManager()Lcn/nubia/gallery3d/data/ItemFlagManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/data/ItemFlagManager;->removeMarkFlagByIds(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static bulkSetUnFavorByGalleryDatabase(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/lang/String;)V
    .locals 1

    .line 209
    sget-boolean v0, Lcn/nubia/gallery3d/data/FavorHelper;->isMediaProviderSupportFavor:Z

    if-nez v0, :cond_0

    .line 210
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryApp;->getItemFlagManager()Lcn/nubia/gallery3d/data/ItemFlagManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/data/ItemFlagManager;->removeMarkFlagByIds(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static checkIsFavor(Lcn/nubia/gallery3d/app/GalleryApp;Landroid/database/Cursor;I)Z
    .locals 1

    .line 239
    sget-boolean v0, Lcn/nubia/gallery3d/data/FavorHelper;->isMediaProviderSupportFavor:Z

    if-eqz v0, :cond_0

    .line 240
    invoke-static {p1}, Lcn/nubia/gallery3d/data/FavorHelper;->checkIsFavorByMediaDatabase(Landroid/database/Cursor;)Z

    move-result p0

    return p0

    .line 242
    :cond_0
    invoke-static {p0, p2}, Lcn/nubia/gallery3d/data/FavorHelper;->checkIsFavorByGalleryDatabase(Lcn/nubia/gallery3d/app/GalleryApp;I)Z

    move-result p0

    return p0
.end method

.method private static checkIsFavorByGalleryDatabase(Lcn/nubia/gallery3d/app/GalleryApp;I)Z
    .locals 0

    .line 235
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryApp;->getItemFlagManager()Lcn/nubia/gallery3d/data/ItemFlagManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/data/ItemFlagManager;->checkMarkFlagById(I)Z

    move-result p0

    return p0
.end method

.method public static checkIsFavorByMediaDatabase(Landroid/database/Cursor;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 224
    sget-boolean v1, Lcn/nubia/gallery3d/data/FavorHelper;->isMediaProviderSupportFavor:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "is_favorite"

    .line 226
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    return v0

    .line 230
    :cond_1
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    move v0, v1

    :cond_2
    :goto_0
    return v0
.end method

.method private static checkMediaProviderFavorSupport(Lcn/nubia/gallery3d/app/GalleryApp;)Z
    .locals 6

    .line 68
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object v0

    sget-object p0, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->URI_FILES_EXTERNAL:Landroid/net/Uri;

    .line 69
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v1, "limit"

    const-string v2, "0"

    .line 70
    invoke-virtual {p0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 68
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    const-string v1, "is_favorite"

    .line 74
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 76
    :cond_1
    invoke-static {p0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 77
    throw v0
.end method

.method private static createCoverFormMediaDatebase(Lcn/nubia/gallery3d/app/GalleryApp;I)Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;
    .locals 7

    .line 128
    sget-object v0, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->URI_FILES_EXTERNAL:Landroid/net/Uri;

    .line 129
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    const-string v2, "0,1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 130
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object v1

    .line 131
    invoke-static {}, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->getProjection()[Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcn/nubia/gallery3d/data/FavorAlbum;->getSelection(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "date_modified DESC, _id DESC"

    .line 130
    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 138
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 139
    new-instance v0, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    sget v1, Lcn/nubia/gallery3d/util/MediaSetUtils;->MARK_BUCKET_ID:I

    const-string v2, "mark"

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;-><init>(ILjava/lang/String;)V

    const/4 v1, 0x7

    .line 141
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x0

    .line 142
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    if-eqz v4, :cond_2

    .line 145
    sget-object v1, Lcn/nubia/gallery3d/data/LocalImage;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v1, v3}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v1

    goto :goto_1

    .line 147
    :cond_2
    sget-object v1, Lcn/nubia/gallery3d/data/LocalVideo;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    invoke-virtual {v1, v3}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v1

    .line 150
    :goto_1
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryApp;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v3

    .line 149
    invoke-static {v1, p1, v3, p0, v4}, Lcn/nubia/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcn/nubia/gallery3d/data/Path;Landroid/database/Cursor;Lcn/nubia/gallery3d/data/DataManager;Lcn/nubia/gallery3d/app/GalleryApp;Z)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object p0

    .line 151
    iput-object p0, v0, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->cover:Lcn/nubia/gallery3d/data/MediaItem;

    .line 152
    iput v2, v0, Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 156
    throw p0
.end method

.method public static getCurrentOder()Ljava/lang/String;
    .locals 1

    .line 257
    invoke-static {}, Lcn/nubia/improve/ImproveConfig;->isSupportSortByASC()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "date_modified ASC, _id ASC"

    return-object v0

    :cond_0
    const-string v0, "date_modified DESC, _id DESC"

    return-object v0
.end method

.method public static getFavorContentValues()Landroid/content/ContentValues;
    .locals 3

    .line 161
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x1

    .line 162
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_favorite"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static getMarkCover(Lcn/nubia/gallery3d/app/GalleryApp;I)Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;
    .locals 1

    .line 119
    sget-boolean v0, Lcn/nubia/gallery3d/data/FavorHelper;->isMediaProviderSupportFavor:Z

    if-eqz v0, :cond_0

    .line 120
    invoke-static {p0, p1}, Lcn/nubia/gallery3d/data/FavorHelper;->createCoverFormMediaDatebase(Lcn/nubia/gallery3d/app/GalleryApp;I)Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    move-result-object p0

    return-object p0

    .line 123
    :cond_0
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryApp;->getItemFlagManager()Lcn/nubia/gallery3d/data/ItemFlagManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcn/nubia/gallery3d/data/ItemFlagManager;->getMarkAlbumCover(Lcn/nubia/gallery3d/app/GalleryApp;I)Lcn/nubia/gallery3d/data/LocalAlbumSet$AlbumEntry;

    move-result-object p0

    return-object p0
.end method

.method public static getUnFavorContentValues()Landroid/content/ContentValues;
    .locals 3

    .line 167
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    .line 168
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_favorite"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static isMediaProviderSupportFavor()Z
    .locals 1

    .line 53
    sget-boolean v0, Lcn/nubia/gallery3d/data/FavorHelper;->isMediaProviderSupportFavor:Z

    return v0
.end method

.method private static isTransferDone(Landroid/content/Context;)Z
    .locals 2

    .line 252
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "transfer-done"

    const/4 v1, 0x1

    .line 253
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static setFavor(Lcn/nubia/gallery3d/app/GalleryApp;IJI)V
    .locals 1

    .line 193
    sget-boolean v0, Lcn/nubia/gallery3d/data/FavorHelper;->isMediaProviderSupportFavor:Z

    if-eqz v0, :cond_0

    .line 194
    invoke-static {p0, p1}, Lcn/nubia/gallery3d/data/FavorHelper;->setFavorByMediaDatabase(Lcn/nubia/gallery3d/app/GalleryApp;I)V

    goto :goto_0

    .line 196
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcn/nubia/gallery3d/data/FavorHelper;->setFavorByGalleryDatabase(Lcn/nubia/gallery3d/app/GalleryApp;IJI)V

    :goto_0
    return-void
.end method

.method private static setFavorByGalleryDatabase(Lcn/nubia/gallery3d/app/GalleryApp;IJI)V
    .locals 0

    .line 185
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryApp;->getItemFlagManager()Lcn/nubia/gallery3d/data/ItemFlagManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/nubia/gallery3d/data/ItemFlagManager;->setMarkFlagById(IJI)V

    return-void
.end method

.method public static setFavorByMediaDatabase(Lcn/nubia/gallery3d/app/GalleryApp;I)V
    .locals 1

    .line 173
    sget-boolean v0, Lcn/nubia/gallery3d/data/FavorHelper;->isMediaProviderSupportFavor:Z

    if-nez v0, :cond_0

    return-void

    .line 175
    :cond_0
    invoke-static {}, Lcn/nubia/gallery3d/data/FavorHelper;->getFavorContentValues()Landroid/content/ContentValues;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->updateById(Lcn/nubia/gallery3d/app/GalleryApp;Landroid/content/ContentValues;I)V

    return-void
.end method

.method private static setTransferDone(Landroid/content/Context;)V
    .locals 2

    .line 247
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 248
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "transfer-done"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setUnFavor(Lcn/nubia/gallery3d/app/GalleryApp;I)V
    .locals 1

    .line 201
    sget-boolean v0, Lcn/nubia/gallery3d/data/FavorHelper;->isMediaProviderSupportFavor:Z

    if-eqz v0, :cond_0

    .line 202
    invoke-static {p0, p1}, Lcn/nubia/gallery3d/data/FavorHelper;->setUnFavorByMediaDatabase(Lcn/nubia/gallery3d/app/GalleryApp;I)V

    goto :goto_0

    .line 204
    :cond_0
    invoke-static {p0, p1}, Lcn/nubia/gallery3d/data/FavorHelper;->setUnFavorByGalleryDatabase(Lcn/nubia/gallery3d/app/GalleryApp;I)V

    :goto_0
    return-void
.end method

.method private static setUnFavorByGalleryDatabase(Lcn/nubia/gallery3d/app/GalleryApp;I)V
    .locals 0

    .line 189
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryApp;->getItemFlagManager()Lcn/nubia/gallery3d/data/ItemFlagManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/data/ItemFlagManager;->removeMarkFlagById(I)V

    return-void
.end method

.method public static setUnFavorByMediaDatabase(Lcn/nubia/gallery3d/app/GalleryApp;I)V
    .locals 1

    .line 179
    sget-boolean v0, Lcn/nubia/gallery3d/data/FavorHelper;->isMediaProviderSupportFavor:Z

    if-nez v0, :cond_0

    return-void

    .line 181
    :cond_0
    invoke-static {}, Lcn/nubia/gallery3d/data/FavorHelper;->getUnFavorContentValues()Landroid/content/ContentValues;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->updateById(Lcn/nubia/gallery3d/app/GalleryApp;Landroid/content/ContentValues;I)V

    return-void
.end method

.method public static setupFavorData(Lcn/nubia/gallery3d/app/GalleryApp;)V
    .locals 2

    .line 57
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isNubiaUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 58
    sput-boolean v0, Lcn/nubia/gallery3d/data/FavorHelper;->isMediaProviderSupportFavor:Z

    .line 60
    :cond_0
    sget-boolean v0, Lcn/nubia/gallery3d/data/FavorHelper;->isMediaProviderSupportFavor:Z

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/gallery3d/data/FavorHelper;->isTransferDone(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FavorHelper"

    const-string v1, "start transfer"

    .line 61
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {p0}, Lcn/nubia/gallery3d/data/FavorHelper;->transferFavorsToMediaProvider(Lcn/nubia/gallery3d/app/GalleryApp;)Z

    .line 63
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/gallery3d/data/FavorHelper;->setTransferDone(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private static transferFavorsToMediaProvider(Lcn/nubia/gallery3d/app/GalleryApp;)Z
    .locals 12

    const-string v0, "gallery.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 84
    :try_start_0
    invoke-interface {p0}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    goto :goto_0

    .line 87
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Open "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " failed"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "FavorHelper"

    invoke-static {v3, v0}, Lcn/nubia/gallery3d/data/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v1

    :goto_0
    const/4 v0, 0x0

    if-nez v4, :cond_0

    return v0

    :cond_0
    :try_start_1
    const-string v5, "recent"

    const-string v3, "imageid"

    .line 93
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    .line 95
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    :goto_1
    if-nez v1, :cond_1

    return v0

    .line 100
    :cond_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_2

    .line 112
    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return v2

    .line 102
    :cond_2
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 104
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 106
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 107
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    .line 108
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    :cond_4
    invoke-static {}, Lcn/nubia/gallery3d/data/FavorHelper;->getFavorContentValues()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v3}, Lcn/nubia/gallery3d/data/MediaDatabaseHelper;->updateByIdSet(Lcn/nubia/gallery3d/app/GalleryApp;Landroid/content/ContentValues;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 112
    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return v2

    :catchall_0
    move-exception p0

    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 113
    throw p0
.end method
