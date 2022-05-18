.class public abstract Lcn/nubia/cloud/sync/common/SyncItem;
.super Ljava/lang/Object;
.source "SyncItem.java"

# interfaces
.implements Lcn/nubia/cloud/utils/Jsonable;


# static fields
.field public static final DELETED:Ljava/lang/String; = "deleted"

.field public static final KEY:Ljava/lang/String; = "key"

.field public static final KEY_ATTACHMENT:Ljava/lang/String; = "attachments"

.field public static final KEY_CACHE_PATH:Ljava/lang/String; = "cache_path"

.field private static final KEY_CONTENT:Ljava/lang/String; = "content"

.field public static final KEY_IS_ATTACHMENT:Ljava/lang/String; = "is_attachment"

.field public static final KEY_LOCAL_PATH:Ljava/lang/String; = "local_path"

.field public static final LOCAL_ID:Ljava/lang/String; = "local_id"

.field public static final SERVER_ID:Ljava/lang/String; = "server_id"


# instance fields
.field private mAttachmentJson:Lorg/json/JSONArray;

.field private mContentJson:Lcn/nubia/cloud/utils/ParcelableJson;

.field private mDeleted:I

.field private mLocalID:J

.field private mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

.field private mServerID:J


# direct methods
.method public constructor <init>(JJI)V
    .locals 3
    .param p1, "localID"    # J
    .param p3, "serverID"    # J
    .param p5, "deleted"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mLocalID:J

    .line 42
    iput-wide p3, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mServerID:J

    .line 43
    iput p5, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mDeleted:I

    .line 44
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mAttachmentJson:Lorg/json/JSONArray;

    .line 46
    :try_start_0
    new-instance v1, Lcn/nubia/cloud/utils/ParcelableJson;

    invoke-direct {v1}, Lcn/nubia/cloud/utils/ParcelableJson;-><init>()V

    iput-object v1, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    .line 47
    iget-object v1, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "local_id"

    invoke-virtual {v1, v2, p1, p2}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 48
    iget-object v1, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "server_id"

    invoke-virtual {v1, v2, p3, p4}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 49
    iget-object v1, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v2, "deleted"

    invoke-virtual {v1, v2, p5}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Lcn/nubia/cloud/utils/ParcelableJson;)V
    .locals 3
    .param p1, "json"    # Lcn/nubia/cloud/utils/ParcelableJson;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    .line 57
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v1, "local_id"

    invoke-virtual {v0, v1}, Lcn/nubia/cloud/utils/ParcelableJson;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v1, "local_id"

    invoke-virtual {v0, v1}, Lcn/nubia/cloud/utils/ParcelableJson;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    :cond_0
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v1, "server_id"

    invoke-virtual {v0, v1}, Lcn/nubia/cloud/utils/ParcelableJson;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mServerID:J

    .line 61
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v1, "deleted"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/cloud/utils/ParcelableJson;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mDeleted:I

    .line 62
    invoke-direct {p0}, Lcn/nubia/cloud/sync/common/SyncItem;->initContent()V

    .line 63
    return-void
.end method

.method private copyToCachePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "localPath"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-virtual {p0}, Lcn/nubia/cloud/sync/common/SyncItem;->getModuleToken()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcn/nubia/cloud/sync/common/SyncUtils;->getAttachmentCachePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "cachePath":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 120
    .local v4, "fis":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 121
    .local v0, "bufis":Ljava/io/BufferedInputStream;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 122
    .local v5, "fos":Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 124
    .local v1, "bufos":Ljava/io/BufferedOutputStream;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result v6

    .local v6, "len":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 125
    invoke-virtual {v1, v6}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 129
    .end local v0    # "bufis":Ljava/io/BufferedInputStream;
    .end local v1    # "bufos":Ljava/io/BufferedOutputStream;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "len":I
    :catch_0
    move-exception v3

    .line 130
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 134
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    return-object v2

    .line 127
    .restart local v0    # "bufis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "len":I
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 128
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 131
    .end local v0    # "bufis":Ljava/io/BufferedInputStream;
    .end local v1    # "bufos":Ljava/io/BufferedOutputStream;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "len":I
    :catch_1
    move-exception v3

    .line 132
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private initContent()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0}, Lcn/nubia/cloud/sync/common/SyncItem;->isDeleted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    new-instance v2, Lcn/nubia/cloud/utils/ParcelableJson;

    invoke-direct {v2}, Lcn/nubia/cloud/utils/ParcelableJson;-><init>()V

    iput-object v2, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mContentJson:Lcn/nubia/cloud/utils/ParcelableJson;

    .line 83
    :cond_0
    return-void

    .line 69
    :cond_1
    iget-object v2, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v3, "content"

    invoke-virtual {v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "contentRawStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 71
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 73
    .local v1, "jsonContent":Ljava/lang/String;
    new-instance v2, Lcn/nubia/cloud/utils/ParcelableJson;

    invoke-direct {v2, v1}, Lcn/nubia/cloud/utils/ParcelableJson;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mContentJson:Lcn/nubia/cloud/utils/ParcelableJson;

    .line 75
    .end local v1    # "jsonContent":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mContentJson:Lcn/nubia/cloud/utils/ParcelableJson;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mContentJson:Lcn/nubia/cloud/utils/ParcelableJson;

    invoke-virtual {v2}, Lcn/nubia/cloud/utils/ParcelableJson;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 76
    :cond_3
    sget-boolean v2, Lcn/nubia/cloud/utils/LogUtil;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pull content is null, serverid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mServerID:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/cloud/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 79
    :cond_4
    new-instance v2, Lorg/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pull content is null, serverid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mServerID:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public addAttachment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "canVisitPath"    # Ljava/lang/String;

    .prologue
    .line 110
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_0
    invoke-virtual {p0, p1, p2, p2}, Lcn/nubia/cloud/sync/common/SyncItem;->addAttachment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public addAttachment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "localPath"    # Ljava/lang/String;
    .param p3, "cachePath"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    invoke-direct {p0, p2}, Lcn/nubia/cloud/sync/common/SyncItem;->copyToCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 96
    :cond_0
    :try_start_0
    new-instance v1, Lcn/nubia/cloud/utils/ParcelableJson;

    invoke-direct {v1}, Lcn/nubia/cloud/utils/ParcelableJson;-><init>()V

    .line 97
    .local v1, "json":Lcn/nubia/cloud/utils/ParcelableJson;
    const-string v2, "local_path"

    invoke-virtual {v1, v2, p2}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string v2, "cache_path"

    invoke-virtual {v1, v2, p3}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string v2, "key"

    invoke-virtual {v1, v2, p1}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    iget-object v2, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mAttachmentJson:Lorg/json/JSONArray;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v1    # "json":Lcn/nubia/cloud/utils/ParcelableJson;
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method protected final getContent()Lcn/nubia/cloud/utils/ParcelableJson;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mContentJson:Lcn/nubia/cloud/utils/ParcelableJson;

    return-object v0
.end method

.method public getLocalID()J
    .locals 2

    .prologue
    .line 138
    iget-wide v0, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mLocalID:J

    return-wide v0
.end method

.method protected abstract getModuleToken()Ljava/lang/String;
.end method

.method public getServerID()J
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mServerID:J

    return-wide v0
.end method

.method public getString(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 186
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    invoke-virtual {v0, p1}, Lcn/nubia/cloud/utils/ParcelableJson;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    return-void
.end method

.method public isDeleted()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 146
    iget v1, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mDeleted:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract onToJson()Lcn/nubia/cloud/utils/ParcelableJson;
.end method

.method public putData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/cloud/utils/ParcelableJson;->putData(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public final toJson()Lcn/nubia/cloud/utils/ParcelableJson;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-virtual {p0}, Lcn/nubia/cloud/sync/common/SyncItem;->onToJson()Lcn/nubia/cloud/utils/ParcelableJson;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/cloud/utils/ParcelableJson;

    iput-object v2, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mContentJson:Lcn/nubia/cloud/utils/ParcelableJson;

    .line 157
    invoke-virtual {p0}, Lcn/nubia/cloud/sync/common/SyncItem;->isDeleted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 158
    iget-object v2, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mContentJson:Lcn/nubia/cloud/utils/ParcelableJson;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mContentJson:Lcn/nubia/cloud/utils/ParcelableJson;

    invoke-virtual {v2}, Lcn/nubia/cloud/utils/ParcelableJson;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 159
    iget-object v2, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mContentJson:Lcn/nubia/cloud/utils/ParcelableJson;

    invoke-virtual {v2}, Lcn/nubia/cloud/utils/ParcelableJson;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "jsonContentStr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "jsonEnCodeStr":Ljava/lang/String;
    iget-object v2, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v3, "content"

    invoke-virtual {v2, v3, v1}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    iget-object v2, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mAttachmentJson:Lorg/json/JSONArray;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mAttachmentJson:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 172
    iget-object v2, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v3, "is_attachment"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 173
    iget-object v2, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v3, "attachments"

    iget-object v4, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mAttachmentJson:Lorg/json/JSONArray;

    invoke-virtual {v2, v3, v4}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    .end local v0    # "jsonContentStr":Ljava/lang/String;
    .end local v1    # "jsonEnCodeStr":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    return-object v2

    .line 165
    :cond_1
    sget-boolean v2, Lcn/nubia/cloud/utils/LogUtil;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "push content is null, localID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mLocalID:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/cloud/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 168
    :cond_2
    new-instance v2, Lorg/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "push content is null, localID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mLocalID:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 175
    .restart local v0    # "jsonContentStr":Ljava/lang/String;
    .restart local v1    # "jsonEnCodeStr":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mRawJsonData:Lcn/nubia/cloud/utils/ParcelableJson;

    const-string v3, "is_attachment"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcn/nubia/cloud/utils/ParcelableJson;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serverId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mServerID:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " localId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mLocalID:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " deleted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mDeleted:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " deleted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mDeleted:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " content:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/cloud/sync/common/SyncItem;->mContentJson:Lcn/nubia/cloud/utils/ParcelableJson;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
