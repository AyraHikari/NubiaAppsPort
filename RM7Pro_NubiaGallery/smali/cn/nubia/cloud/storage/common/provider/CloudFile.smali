.class public Lcn/nubia/cloud/storage/common/provider/CloudFile;
.super Lcn/nubia/cloud/storage/common/bean/FileInfo;
.source "CloudFile.java"

# interfaces
.implements Lcn/nubia/cloud/storage/common/provider/CloudStoreContract$FileColumns;


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static PROJECTION:[Ljava/lang/String; = null

.field public static final ROOT_PATH:Ljava/lang/String; = "/apps/nubia_cloud"

.field public static final TABLE_NAME:Ljava/lang/String; = "files"


# instance fields
.field public _id:J

.field public dateScan:J

.field public parent:J

.field public userid:J


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 14
    sget-object v0, Lcn/nubia/cloud/storage/common/provider/CloudStoreContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "files"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/cloud/storage/common/provider/CloudFile;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "_id"

    const-string v2, "userid"

    const-string v3, "store_type"

    const-string v4, "cloud_path"

    const-string v5, "local_path"

    const-string v6, "display_name"

    const-string v7, "parent"

    const-string v8, "is_dir"

    const-string v9, "format"

    const-string v10, "mime_type"

    const-string v11, "media_type"

    const-string v12, "size"

    const-string v13, "md5"

    const-string v14, "date_added"

    const-string v15, "date_modified"

    const-string v16, "date_scan"

    .line 17
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/cloud/storage/common/provider/CloudFile;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcn/nubia/cloud/storage/common/bean/FileInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/database/Cursor;)V
    .locals 2

    .line 42
    invoke-super {p0, p1}, Lcn/nubia/cloud/storage/common/bean/FileInfo;->init(Landroid/database/Cursor;)V

    const-string v0, "_id"

    .line 43
    invoke-static {p1, v0}, Lcn/nubia/cloud/utils/CursorUtil;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/provider/CloudFile;->_id:J

    const-string v0, "userid"

    .line 44
    invoke-static {p1, v0}, Lcn/nubia/cloud/utils/CursorUtil;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/provider/CloudFile;->userid:J

    const-string v0, "parent"

    .line 45
    invoke-static {p1, v0}, Lcn/nubia/cloud/utils/CursorUtil;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/provider/CloudFile;->parent:J

    const-string v0, "date_scan"

    .line 46
    invoke-static {p1, v0}, Lcn/nubia/cloud/utils/CursorUtil;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/provider/CloudFile;->dateScan:J

    return-void
.end method
