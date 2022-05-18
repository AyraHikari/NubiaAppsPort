.class public Lcn/nubia/improve/category/CategoryDbHelper;
.super Ljava/lang/Object;
.source "CategoryDbHelper.java"


# static fields
.field public static final IMAGE_URI:Landroid/net/Uri;

.field public static final INDEX_DATA:I = 0x1

.field public static final INDEX_DATE_TAKEN:I = 0x2

.field public static final INDEX_ID:I = 0x0

.field public static final INDEX_MIME_TYPE:I = 0x3

.field public static final PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CategoryDbHelper"

.field private static mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFaceTagData:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaceTagData:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

.field private mThingsTagData:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 33
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcn/nubia/improve/category/CategoryDbHelper;->IMAGE_URI:Landroid/net/Uri;

    const-string v0, "_id"

    const-string v1, "_data"

    const-string v2, "datetaken"

    const-string v3, "mime_type"

    .line 38
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/improve/category/CategoryDbHelper;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryApp;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/improve/category/CategoryDbHelper;->mContext:Landroid/content/Context;

    .line 54
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/improve/category/CategoryDbHelper;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    .line 55
    iget-object p1, p0, Lcn/nubia/improve/category/CategoryDbHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object p1

    sput-object p1, Lcn/nubia/improve/category/CategoryDbHelper;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    .line 56
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcn/nubia/improve/category/CategoryDbHelper;->mPlaceTagData:Ljava/util/Set;

    .line 57
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcn/nubia/improve/category/CategoryDbHelper;->mThingsTagData:Ljava/util/Set;

    .line 58
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcn/nubia/improve/category/CategoryDbHelper;->mFaceTagData:Ljava/util/Set;

    return-void
.end method

.method public static deleteValue(ILjava/lang/String;)V
    .locals 3

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id"

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    sget-object p1, Lcn/nubia/improve/category/CategoryDbHelper;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->deleteItem(ILjava/lang/String;)Z

    return-void
.end method

.method private syncCategoryTable(ILjava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "!=\'-1\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 178
    sget-object v2, Lcn/nubia/improve/category/CategoryDbHelper;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    const/4 v11, 0x1

    new-array v3, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v9, v3, v12

    .line 179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v1, v2

    move/from16 v2, p1

    move-object/from16 v6, p3

    .line 178
    invoke-virtual/range {v1 .. v8}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const-string v4, ","

    if-eqz v1, :cond_2

    .line 185
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 186
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 187
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 191
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v11

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :cond_1
    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 195
    throw v0

    .line 198
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id"

    .line 199
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " IN ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, " AND "

    .line 200
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, "_data"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, " IS NOT NULL"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p0

    .line 202
    iget-object v13, v6, Lcn/nubia/improve/category/CategoryDbHelper;->mResolver:Lcn/nubia/gallery3d/app/ContentProviderProxy;

    const-string v14, "external"

    invoke-static {v14}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v15

    .line 203
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 202
    invoke-virtual/range {v13 .. v18}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 206
    :goto_2
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 207
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v10, :cond_3

    .line 209
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 214
    :cond_4
    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 215
    throw v0

    .line 218
    :cond_5
    :goto_3
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v1

    if-eqz v1, :cond_7

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v2, v12, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 222
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 224
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v11

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "txh syncCategoryTable, table = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", deleteSelection = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CategoryDbHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    sget-object v2, Lcn/nubia/improve/category/CategoryDbHelper;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->deleteItem(ILjava/lang/String;)Z

    :cond_7
    return-void
.end method


# virtual methods
.method public checkFaceTagById(I)Z
    .locals 1

    .line 240
    iget-object v0, p0, Lcn/nubia/improve/category/CategoryDbHelper;->mFaceTagData:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public checkPlaceTagById(I)Z
    .locals 1

    .line 232
    iget-object v0, p0, Lcn/nubia/improve/category/CategoryDbHelper;->mPlaceTagData:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public checkThingsTagById(I)Z
    .locals 1

    .line 236
    iget-object v0, p0, Lcn/nubia/improve/category/CategoryDbHelper;->mThingsTagData:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public insertFaceOperationValue(ILjava/lang/String;IILjava/lang/String;)V
    .locals 1

    .line 122
    sget-object v0, Lcn/nubia/improve/category/CategoryDbHelper;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    .line 123
    invoke-static {p1, p2, p3, p4, p5}, Lcn/nubia/improve/database/FaceOperationTable;->getContentValues(ILjava/lang/String;IILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    const/4 p2, 0x5

    .line 122
    invoke-virtual {v0, p2, p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->insertValues(ILandroid/content/ContentValues;)J

    return-void
.end method

.method public insertFaceValue(Lcn/nubia/improve/category/FaceTag;)V
    .locals 15

    .line 104
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/improve/category/FaceTag;->getFaceCount()I

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 105
    sget-object v0, Lcn/nubia/improve/category/CategoryDbHelper;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    .line 106
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/improve/category/FaceTag;->getParam()Lcn/nubia/improve/category/FaceTag$Param;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/improve/category/FaceTag$Param;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/improve/category/FaceTag;->getParam()Lcn/nubia/improve/category/FaceTag$Param;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/improve/category/FaceTag$Param;->getId()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/improve/category/FaceTag;->getParam()Lcn/nubia/improve/category/FaceTag$Param;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/improve/category/FaceTag$Param;->getDateTaken()J

    move-result-wide v4

    const/4 v6, -0x1

    .line 106
    invoke-static {v2, v3, v4, v5, v6}, Lcn/nubia/improve/database/FaceTable;->getContentValues(Ljava/lang/String;IJI)Landroid/content/ContentValues;

    move-result-object v2

    .line 105
    invoke-virtual {v0, v1, v2}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->insertValues(ILandroid/content/ContentValues;)J

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 110
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/improve/category/FaceTag;->getFaceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 111
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/improve/category/FaceTag;->getFaceInfos()[Lcn/nubia/improve/category/FaceInfo;

    move-result-object v2

    aget-object v2, v2, v0

    .line 112
    sget-object v3, Lcn/nubia/improve/category/CategoryDbHelper;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    .line 113
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/improve/category/FaceTag;->getParam()Lcn/nubia/improve/category/FaceTag$Param;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/improve/category/FaceTag$Param;->getFilePath()Ljava/lang/String;

    move-result-object v5

    .line 114
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/improve/category/FaceTag;->getParam()Lcn/nubia/improve/category/FaceTag$Param;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/improve/category/FaceTag$Param;->getId()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/improve/category/FaceTag;->getParam()Lcn/nubia/improve/category/FaceTag$Param;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/improve/category/FaceTag$Param;->getDateTaken()J

    move-result-wide v7

    iget v9, v2, Lcn/nubia/improve/category/FaceInfo;->faceId:I

    iget v10, v2, Lcn/nubia/improve/category/FaceInfo;->faceX:I

    iget v11, v2, Lcn/nubia/improve/category/FaceInfo;->faceY:I

    iget v12, v2, Lcn/nubia/improve/category/FaceInfo;->faceWidth:I

    iget v13, v2, Lcn/nubia/improve/category/FaceInfo;->faceHeight:I

    iget v14, v2, Lcn/nubia/improve/category/FaceInfo;->quality:F

    .line 113
    invoke-static/range {v5 .. v14}, Lcn/nubia/improve/database/FaceTable;->getContentValues(Ljava/lang/String;IJIIIIIF)Landroid/content/ContentValues;

    move-result-object v2

    .line 112
    invoke-virtual {v3, v1, v2}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->insertValues(ILandroid/content/ContentValues;)J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public insertPlaceValue(Lcn/nubia/improve/category/PlaceTag;)V
    .locals 8

    .line 69
    invoke-virtual {p1}, Lcn/nubia/improve/category/PlaceTag;->getParam()Lcn/nubia/improve/category/PlaceTag$Param;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/improve/category/PlaceTag$Param;->getLatitude()D

    move-result-wide v3

    .line 70
    invoke-virtual {p1}, Lcn/nubia/improve/category/PlaceTag;->getParam()Lcn/nubia/improve/category/PlaceTag$Param;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/improve/category/PlaceTag$Param;->getLongitude()D

    move-result-wide v5

    .line 72
    invoke-static {v3, v4, v5, v6}, Lcn/nubia/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v0

    const/4 v7, 0x2

    if-nez v0, :cond_0

    .line 73
    sget-object v0, Lcn/nubia/improve/category/CategoryDbHelper;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    .line 74
    invoke-virtual {p1}, Lcn/nubia/improve/category/PlaceTag;->getParam()Lcn/nubia/improve/category/PlaceTag$Param;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/improve/category/PlaceTag$Param;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcn/nubia/improve/category/PlaceTag;->getParam()Lcn/nubia/improve/category/PlaceTag$Param;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/improve/category/PlaceTag$Param;->getId()I

    move-result v2

    .line 73
    invoke-static/range {v1 .. v6}, Lcn/nubia/improve/database/PlaceTable;->getContentValues(Ljava/lang/String;IDD)Landroid/content/ContentValues;

    move-result-object p1

    invoke-virtual {v0, v7, p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->insertValues(ILandroid/content/ContentValues;)J

    goto :goto_0

    .line 76
    :cond_0
    sget-object v0, Lcn/nubia/improve/category/CategoryDbHelper;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    invoke-static {p1}, Lcn/nubia/improve/database/PlaceTable;->getContentValues(Lcn/nubia/improve/category/PlaceTag;)Landroid/content/ContentValues;

    move-result-object p1

    invoke-virtual {v0, v7, p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->insertValues(ILandroid/content/ContentValues;)J

    :goto_0
    return-void
.end method

.method public insertThingsValue(Lcn/nubia/improve/category/ThingsTag;)V
    .locals 12

    .line 83
    invoke-virtual {p1}, Lcn/nubia/improve/category/ThingsTag;->getTags()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 84
    sget-object v0, Lcn/nubia/improve/category/CategoryDbHelper;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    .line 85
    invoke-virtual {p1}, Lcn/nubia/improve/category/ThingsTag;->getParam()Lcn/nubia/improve/category/ThingsTag$Param;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/improve/category/ThingsTag$Param;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-virtual {p1}, Lcn/nubia/improve/category/ThingsTag;->getParam()Lcn/nubia/improve/category/ThingsTag$Param;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/improve/category/ThingsTag$Param;->getId()I

    move-result v3

    invoke-virtual {p1}, Lcn/nubia/improve/category/ThingsTag;->getParam()Lcn/nubia/improve/category/ThingsTag$Param;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/improve/category/ThingsTag$Param;->getDateTaken()J

    move-result-wide v4

    const-string p1, "null"

    .line 85
    invoke-static {v2, v3, v4, v5, p1}, Lcn/nubia/improve/database/ThingsTable;->getContentValues(Ljava/lang/String;IJLjava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    .line 84
    invoke-virtual {v0, v1, p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->insertValues(ILandroid/content/ContentValues;)J

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 88
    :goto_0
    invoke-virtual {p1}, Lcn/nubia/improve/category/ThingsTag;->getTags()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 89
    invoke-virtual {p1}, Lcn/nubia/improve/category/ThingsTag;->getTags()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 90
    sget-object v3, Lcn/nubia/improve/category/CategoryDbHelper;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    .line 92
    invoke-virtual {p1}, Lcn/nubia/improve/category/ThingsTag;->getParam()Lcn/nubia/improve/category/ThingsTag$Param;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/improve/category/ThingsTag$Param;->getFilePath()Ljava/lang/String;

    move-result-object v5

    .line 93
    invoke-virtual {p1}, Lcn/nubia/improve/category/ThingsTag;->getParam()Lcn/nubia/improve/category/ThingsTag$Param;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/improve/category/ThingsTag$Param;->getId()I

    move-result v6

    .line 94
    invoke-virtual {p1}, Lcn/nubia/improve/category/ThingsTag;->getParam()Lcn/nubia/improve/category/ThingsTag$Param;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/improve/category/ThingsTag$Param;->getDateTaken()J

    move-result-wide v7

    .line 95
    invoke-static {}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getThingsLabels()[Ljava/lang/String;

    move-result-object v4

    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v9, v4, v9

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    .line 96
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 97
    invoke-static {}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getThingsGroupLabels()[Ljava/lang/String;

    move-result-object v4

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v11, v4, v2

    .line 91
    invoke-static/range {v5 .. v11}, Lcn/nubia/improve/database/ThingsTable;->getContentValues(Ljava/lang/String;IJLjava/lang/String;FLjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 90
    invoke-virtual {v3, v1, v2}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->insertValues(ILandroid/content/ContentValues;)J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public notifyMediaSetToUpdateData()V
    .locals 1

    .line 244
    sget-object v0, Lcn/nubia/improve/category/CategoryDbHelper;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->notifyMediaSetToUpdateData()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcn/nubia/improve/category/CategoryDbHelper;->mPlaceTagData:Ljava/util/Set;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 250
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 251
    iput-object v1, p0, Lcn/nubia/improve/category/CategoryDbHelper;->mPlaceTagData:Ljava/util/Set;

    .line 253
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/category/CategoryDbHelper;->mThingsTagData:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 254
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 255
    iput-object v1, p0, Lcn/nubia/improve/category/CategoryDbHelper;->mThingsTagData:Ljava/util/Set;

    .line 257
    :cond_1
    iget-object v0, p0, Lcn/nubia/improve/category/CategoryDbHelper;->mFaceTagData:Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 258
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 259
    iput-object v1, p0, Lcn/nubia/improve/category/CategoryDbHelper;->mFaceTagData:Ljava/util/Set;

    :cond_2
    return-void
.end method

.method public syncDatabase()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcn/nubia/improve/category/CategoryDbHelper;->mPlaceTagData:Ljava/util/Set;

    const/4 v1, 0x2

    const-string v2, "_id"

    invoke-direct {p0, v1, v2, v2, v0}, Lcn/nubia/improve/category/CategoryDbHelper;->syncCategoryTable(ILjava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 63
    iget-object v0, p0, Lcn/nubia/improve/category/CategoryDbHelper;->mThingsTagData:Ljava/util/Set;

    const/4 v1, 0x3

    invoke-direct {p0, v1, v2, v2, v0}, Lcn/nubia/improve/category/CategoryDbHelper;->syncCategoryTable(ILjava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 64
    iget-object v0, p0, Lcn/nubia/improve/category/CategoryDbHelper;->mFaceTagData:Ljava/util/Set;

    const/4 v1, 0x4

    invoke-direct {p0, v1, v2, v2, v0}, Lcn/nubia/improve/category/CategoryDbHelper;->syncCategoryTable(ILjava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public declared-synchronized updateFaceCover()V
    .locals 11

    monitor-enter p0

    .line 127
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "face_id"

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= 0 AND ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "remove"

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is NULL or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "remove"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " <> 1)"

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    sget-object v3, Lcn/nubia/improve/category/CategoryDbHelper;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    const/4 v4, 0x4

    const-string v1, "face_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "face_id"

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 131
    invoke-virtual/range {v3 .. v10}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "CategoryDbHelper"

    const-string v1, "txh updateFaceCover failed"

    .line 134
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 135
    monitor-exit p0

    return-void

    .line 137
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 142
    :goto_0
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    .line 143
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 144
    invoke-static {v5}, Lcn/nubia/improve/category/algorithm/FaceClassify;->FaceClassifyGetFaceCover(I)I

    move-result v6

    const-string v7, "default_cover"

    .line 145
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "face_id"

    .line 146
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    sget-object v6, Lcn/nubia/improve/category/CategoryDbHelper;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    .line 148
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x5

    .line 147
    invoke-virtual {v6, v9, v2, v7, v8}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->update(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "face_id"

    .line 150
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 151
    sget-object v5, Lcn/nubia/improve/category/CategoryDbHelper;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    invoke-virtual {v5, v9, v2}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->insertValues(ILandroid/content/ContentValues;)J

    .line 153
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 158
    :cond_2
    :goto_1
    :try_start_3
    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_4
    const-string v2, "CategoryDbHelper"

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateFaceCover fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 160
    :goto_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    .line 158
    :try_start_5
    invoke-static {v1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 159
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateFaceOperationValue(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 165
    sget-object v0, Lcn/nubia/improve/category/CategoryDbHelper;->mHelper:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    .line 166
    invoke-static {p1, p2, p3, p4, p5}, Lcn/nubia/improve/database/FaceOperationTable;->getContentValues(ILjava/lang/String;IILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    const/4 p2, 0x5

    .line 165
    invoke-virtual {v0, p2, p1, p6, p7}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->update(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
