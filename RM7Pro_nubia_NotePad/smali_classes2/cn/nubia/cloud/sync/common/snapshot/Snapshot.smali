.class public final Lcn/nubia/cloud/sync/common/snapshot/Snapshot;
.super Ljava/lang/Object;
.source "Snapshot.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "cn.nubia.cloud.SyncSnapshot"

.field private static final AUTHORITY_URI:Landroid/net/Uri;

.field private static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_VERSION:Ljava/lang/String; = "version"

.field public static final DELETED:Ljava/lang/String; = "deleted"

.field public static final RAW_DATA_ID:Ljava/lang/String; = "raw_data_id"

.field public static final SERVER_ID:Ljava/lang/String; = "server_id"

.field public static final SYNC_TYPE:Ljava/lang/String; = "sync_type"

.field public static final SYNC_VERSION:Ljava/lang/String; = "last_sync"

.field public static final TABLE_NAME:Ljava/lang/String; = "datamap"

.field public static final TOKEN:Ljava/lang/String; = "token"

.field public static final USER_ID:Ljava/lang/String; = "user_id"

.field public static _ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    const-string v0, "content://cn.nubia.cloud.SyncSnapshot"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/cloud/sync/common/snapshot/Snapshot;->AUTHORITY_URI:Landroid/net/Uri;

    .line 13
    sget-object v0, Lcn/nubia/cloud/sync/common/snapshot/Snapshot;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "datamap"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/cloud/sync/common/snapshot/Snapshot;->CONTENT_URI:Landroid/net/Uri;

    .line 20
    const-string v0, "_id"

    sput-object v0, Lcn/nubia/cloud/sync/common/snapshot/Snapshot;->_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUri(Lcn/nubia/cloud/service/common/SyncType;)Landroid/net/Uri;
    .locals 4
    .param p0, "type"    # Lcn/nubia/cloud/service/common/SyncType;

    .prologue
    .line 17
    sget-object v0, Lcn/nubia/cloud/sync/common/snapshot/Snapshot;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "sync_type"

    invoke-virtual {p0}, Lcn/nubia/cloud/service/common/SyncType;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/cloud/utils/ContentUriUtil;->addLongParam(Landroid/net/Uri;Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
