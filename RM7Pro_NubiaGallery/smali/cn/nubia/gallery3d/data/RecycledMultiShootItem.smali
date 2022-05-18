.class public Lcn/nubia/gallery3d/data/RecycledMultiShootItem;
.super Lcn/nubia/gallery3d/data/RecycledImageItem;
.source "RecycledMultiShootItem.java"

# interfaces
.implements Lcn/nubia/gallery3d/data/IMultiShoot;


# static fields
.field public static final ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

.field private static final TAG:Ljava/lang/String; = "RecycledMultiShootItem"


# instance fields
.field private msId:I

.field private totalCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/local/recycled/image/multishootitem"

    .line 15
    invoke-static {v0}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/data/RecycledMultiShootItem;->ITEM_PATH:Lcn/nubia/gallery3d/data/Path;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;I)V
    .locals 2

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/gallery3d/data/RecycledImageItem;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;I)V

    .line 27
    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/improve/database/RecycledDataBaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/RecycledDataBaseHelper;

    move-result-object p2

    sget-object v0, Lcn/nubia/improve/database/RecycledDataBaseHelper;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {p2, v0, p3}, Lcn/nubia/improve/database/RecycledDataBaseHelper;->query([Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 33
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 34
    invoke-virtual {p0, p2}, Lcn/nubia/gallery3d/data/RecycledMultiShootItem;->loadFromCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return-void

    .line 36
    :cond_0
    :try_start_1
    new-instance p3, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot find data for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 39
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 40
    throw p1

    .line 30
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot get cursor for: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/gallery3d/data/RecycledImageItem;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    .line 22
    invoke-virtual {p0, p3}, Lcn/nubia/gallery3d/data/RecycledMultiShootItem;->loadFromCursor(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 89
    iget v0, p0, Lcn/nubia/gallery3d/data/RecycledMultiShootItem;->totalCount:I

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcn/nubia/gallery3d/data/RecycledMultiShootItem;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/improve/database/RecycledDataBaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/RecycledDataBaseHelper;

    move-result-object v0

    iget v1, p0, Lcn/nubia/gallery3d/data/RecycledMultiShootItem;->msId:I

    .line 91
    invoke-virtual {v0, v1}, Lcn/nubia/improve/database/RecycledDataBaseHelper;->queryMultiShootCount(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/data/RecycledMultiShootItem;->totalCount:I

    .line 93
    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/data/RecycledMultiShootItem;->totalCount:I

    return v0
.end method

.method public getExpandRecycledData()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/RecycledData;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcn/nubia/gallery3d/data/RecycledMultiShootItem;->totalCount:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    iget-object v1, p0, Lcn/nubia/gallery3d/data/RecycledMultiShootItem;->mApplication:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/improve/database/RecycledDataBaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/RecycledDataBaseHelper;

    move-result-object v1

    sget-object v2, Lcn/nubia/improve/database/RecycledDataBaseHelper;->PROJECTION:[Ljava/lang/String;

    iget v3, p0, Lcn/nubia/gallery3d/data/RecycledMultiShootItem;->msId:I

    .line 58
    invoke-virtual {v1, v2, v3}, Lcn/nubia/improve/database/RecycledDataBaseHelper;->queryMultiShoot([Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "RecycledMultiShootItem"

    const-string v2, "null cursor"

    .line 61
    invoke-static {v1, v2}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 66
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    new-instance v2, Lcn/nubia/gallery3d/data/RecycledData;

    invoke-direct {v2}, Lcn/nubia/gallery3d/data/RecycledData;-><init>()V

    .line 68
    invoke-static {v1, v2}, Lcn/nubia/gallery3d/data/RecycledData;->initRecoverData(Landroid/database/Cursor;Lcn/nubia/gallery3d/data/RecycledData;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 75
    :cond_1
    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 76
    throw v0
.end method

.method public getFilePathList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getMediaType()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method protected loadFromCursor(Landroid/database/Cursor;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/data/RecycledImageItem;->loadFromCursor(Landroid/database/Cursor;)V

    const/16 v0, 0x8

    .line 46
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/data/RecycledMultiShootItem;->msId:I

    return-void
.end method
