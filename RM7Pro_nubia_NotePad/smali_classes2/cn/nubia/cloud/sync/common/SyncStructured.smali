.class public Lcn/nubia/cloud/sync/common/SyncStructured;
.super Lcn/nubia/cloud/utils/ParcelableJson;
.source "SyncStructured.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/sync/common/SyncStructured$1;
    }
.end annotation


# instance fields
.field private mHashCode:I

.field private mKeyMap:Lcn/nubia/cloud/utils/DoubleKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/utils/DoubleKeyMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/cloud/utils/DataType;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalMimeType:Ljava/lang/String;

.field private mServerMimeType:Ljava/lang/String;

.field private mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/cloud/utils/DoubleKeyMap;)V
    .locals 1
    .param p1, "localMimeType"    # Ljava/lang/String;
    .param p2, "serverMimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/cloud/utils/DoubleKeyMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/cloud/utils/DataType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p3, "keyMap":Lcn/nubia/cloud/utils/DoubleKeyMap;, "Lcn/nubia/cloud/utils/DoubleKeyMap<Ljava/lang/String;Ljava/lang/String;Lcn/nubia/cloud/utils/DataType;>;"
    invoke-direct {p0}, Lcn/nubia/cloud/utils/ParcelableJson;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/cloud/sync/common/SyncStructured;->mHashCode:I

    .line 27
    iput-object p1, p0, Lcn/nubia/cloud/sync/common/SyncStructured;->mLocalMimeType:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcn/nubia/cloud/sync/common/SyncStructured;->mServerMimeType:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcn/nubia/cloud/sync/common/SyncStructured;->mKeyMap:Lcn/nubia/cloud/utils/DoubleKeyMap;

    .line 30
    return-void
.end method

.method private putData(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 11
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "firstKey"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v8, p0, Lcn/nubia/cloud/sync/common/SyncStructured;->mKeyMap:Lcn/nubia/cloud/utils/DoubleKeyMap;

    invoke-virtual {v8, p2}, Lcn/nubia/cloud/utils/DoubleKeyMap;->getValueByFirstKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/cloud/utils/DataType;

    .line 65
    .local v6, "type":Lcn/nubia/cloud/utils/DataType;
    iget-object v8, p0, Lcn/nubia/cloud/sync/common/SyncStructured;->mKeyMap:Lcn/nubia/cloud/utils/DoubleKeyMap;

    invoke-virtual {v8, p2}, Lcn/nubia/cloud/utils/DoubleKeyMap;->getSecondKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 66
    .local v3, "secondKey":Ljava/lang/String;
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 67
    .local v1, "id":I
    if-ltz v1, :cond_0

    if-eqz v6, :cond_0

    if-nez v3, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    sget-object v8, Lcn/nubia/cloud/sync/common/SyncStructured$1;->$SwitchMap$cn$nubia$cloud$utils$DataType:[I

    invoke-virtual {v6}, Lcn/nubia/cloud/utils/DataType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 93
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unsupport data type:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 72
    :pswitch_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 73
    .local v7, "value":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 74
    invoke-virtual {p0, v3, v7}, Lcn/nubia/cloud/sync/common/SyncStructured;->putData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    .end local v7    # "value":Ljava/lang/String;
    :pswitch_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 80
    .local v2, "intValue":I
    invoke-virtual {p0, v3, v2}, Lcn/nubia/cloud/sync/common/SyncStructured;->putData(Ljava/lang/String;I)V

    goto :goto_0

    .line 83
    .end local v2    # "intValue":I
    :pswitch_2
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 84
    .local v4, "longValue":J
    invoke-virtual {p0, v3, v4, v5}, Lcn/nubia/cloud/sync/common/SyncStructured;->putData(Ljava/lang/String;J)V

    goto :goto_0

    .line 87
    .end local v4    # "longValue":J
    :pswitch_3
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 88
    .local v0, "binaryData":[B
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0, v3, v0}, Lcn/nubia/cloud/sync/common/SyncStructured;->putBinaryData(Ljava/lang/String;[B)V

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private putData(Lorg/json/JSONObject;Lcn/nubia/cloud/utils/ParcelableJson;Ljava/lang/String;)V
    .locals 8
    .param p1, "src"    # Lorg/json/JSONObject;
    .param p2, "dec"    # Lcn/nubia/cloud/utils/ParcelableJson;
    .param p3, "secondKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v5, p0, Lcn/nubia/cloud/sync/common/SyncStructured;->mKeyMap:Lcn/nubia/cloud/utils/DoubleKeyMap;

    invoke-virtual {v5, p3}, Lcn/nubia/cloud/utils/DoubleKeyMap;->getValueBySecondKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/cloud/utils/DataType;

    .line 100
    .local v1, "type":Lcn/nubia/cloud/utils/DataType;
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v1, :cond_0

    if-nez p3, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    sget-object v5, Lcn/nubia/cloud/sync/common/SyncStructured$1;->$SwitchMap$cn$nubia$cloud$utils$DataType:[I

    invoke-virtual {v1}, Lcn/nubia/cloud/utils/DataType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 121
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unsupport data type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 106
    :pswitch_0
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, "value":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 108
    invoke-virtual {p2, p3, v4}, Lcn/nubia/cloud/utils/ParcelableJson;->putData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    .end local v4    # "value":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 114
    .local v0, "intValue":I
    invoke-virtual {p2, p3, v0}, Lcn/nubia/cloud/utils/ParcelableJson;->putData(Ljava/lang/String;I)V

    goto :goto_0

    .line 117
    .end local v0    # "intValue":I
    :pswitch_2
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 118
    .local v2, "longValue":J
    invoke-virtual {p2, p3, v2, v3}, Lcn/nubia/cloud/utils/ParcelableJson;->putData(Ljava/lang/String;J)V

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private putToContentValues(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 10
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "secondKey"    # Ljava/lang/String;

    .prologue
    .line 146
    iget-object v7, p0, Lcn/nubia/cloud/sync/common/SyncStructured;->mKeyMap:Lcn/nubia/cloud/utils/DoubleKeyMap;

    invoke-virtual {v7, p2}, Lcn/nubia/cloud/utils/DoubleKeyMap;->getValueBySecondKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/cloud/utils/DataType;

    .line 147
    .local v3, "type":Lcn/nubia/cloud/utils/DataType;
    iget-object v7, p0, Lcn/nubia/cloud/sync/common/SyncStructured;->mKeyMap:Lcn/nubia/cloud/utils/DoubleKeyMap;

    invoke-virtual {v7, p2}, Lcn/nubia/cloud/utils/DoubleKeyMap;->getFirstKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 148
    .local v1, "firstKey":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    sget-object v7, Lcn/nubia/cloud/sync/common/SyncStructured$1;->$SwitchMap$cn$nubia$cloud$utils$DataType:[I

    invoke-virtual {v3}, Lcn/nubia/cloud/utils/DataType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 153
    :pswitch_0
    invoke-virtual {p0, p2}, Lcn/nubia/cloud/sync/common/SyncStructured;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 154
    .local v6, "value":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 155
    invoke-virtual {p1, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    .end local v6    # "value":Ljava/lang/String;
    :pswitch_1
    const/4 v7, -0x1

    invoke-virtual {p0, p2, v7}, Lcn/nubia/cloud/sync/common/SyncStructured;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 161
    .local v2, "intValue":I
    if-ltz v2, :cond_0

    .line 162
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 166
    .end local v2    # "intValue":I
    :pswitch_2
    const-wide/16 v8, -0x1

    invoke-virtual {p0, p2, v8, v9}, Lcn/nubia/cloud/sync/common/SyncStructured;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 167
    .local v4, "longValue":J
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-ltz v7, :cond_0

    .line 168
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p1, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 172
    .end local v4    # "longValue":J
    :pswitch_3
    invoke-virtual {p0, p2}, Lcn/nubia/cloud/sync/common/SyncStructured;->getBinaryData(Ljava/lang/String;)[B

    move-result-object v0

    .line 173
    .local v0, "binaryData":[B
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 192
    if-ne p0, p1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v1

    .line 195
    :cond_1
    instance-of v2, p1, Lcn/nubia/cloud/sync/common/SyncStructured;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 196
    check-cast v0, Lcn/nubia/cloud/sync/common/SyncStructured;

    .line 197
    .local v0, "ot":Lcn/nubia/cloud/sync/common/SyncStructured;
    invoke-virtual {p0}, Lcn/nubia/cloud/sync/common/SyncStructured;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v0}, Lcn/nubia/cloud/sync/common/SyncStructured;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 201
    .end local v0    # "ot":Lcn/nubia/cloud/sync/common/SyncStructured;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocalMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/SyncStructured;->mLocalMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getServerMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/SyncStructured;->mServerMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 205
    iget-object v3, p0, Lcn/nubia/cloud/sync/common/SyncStructured;->mToken:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 206
    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v3, p0, Lcn/nubia/cloud/sync/common/SyncStructured;->mToken:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 209
    .local v0, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcn/nubia/cloud/sync/common/SyncStructured;->mKeyMap:Lcn/nubia/cloud/utils/DoubleKeyMap;

    invoke-virtual {v3}, Lcn/nubia/cloud/utils/DoubleKeyMap;->secondKeySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 210
    .local v2, "secondKey":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcn/nubia/cloud/sync/common/SyncStructured;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 214
    .end local v0    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "secondKey":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 212
    .restart local v0    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcn/nubia/cloud/utils/DigestSignUtil;->genSign(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/cloud/sync/common/SyncStructured;->mToken:Ljava/lang/String;

    .line 214
    .end local v0    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    :cond_2
    iget-object v3, p0, Lcn/nubia/cloud/sync/common/SyncStructured;->mToken:Ljava/lang/String;

    return-object v3
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcn/nubia/cloud/sync/common/SyncStructured;->mHashCode:I

    if-nez v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcn/nubia/cloud/sync/common/SyncStructured;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcn/nubia/cloud/sync/common/SyncStructured;->mHashCode:I

    .line 187
    :cond_0
    iget v0, p0, Lcn/nubia/cloud/sync/common/SyncStructured;->mHashCode:I

    return v0
.end method

.method public initData(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 41
    const/4 v3, 0x0

    iput v3, p0, Lcn/nubia/cloud/sync/common/SyncStructured;->mHashCode:I

    .line 42
    iget-object v3, p0, Lcn/nubia/cloud/sync/common/SyncStructured;->mKeyMap:Lcn/nubia/cloud/utils/DoubleKeyMap;

    invoke-virtual {v3}, Lcn/nubia/cloud/utils/DoubleKeyMap;->firstKeySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 44
    .local v1, "firstKey":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcn/nubia/cloud/sync/common/SyncStructured;->putData(Landroid/database/Cursor;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 49
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "firstKey":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public initData(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "jObject"    # Lorg/json/JSONObject;

    .prologue
    .line 52
    const/4 v3, 0x0

    iput v3, p0, Lcn/nubia/cloud/sync/common/SyncStructured;->mHashCode:I

    .line 53
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v3, p0, Lcn/nubia/cloud/sync/common/SyncStructured;->mKeyMap:Lcn/nubia/cloud/utils/DoubleKeyMap;

    invoke-virtual {v3}, Lcn/nubia/cloud/utils/DoubleKeyMap;->secondKeySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 56
    .local v2, "secondKey":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1, p0, v2}, Lcn/nubia/cloud/sync/common/SyncStructured;->putData(Lorg/json/JSONObject;Lcn/nubia/cloud/utils/ParcelableJson;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 61
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "secondKey":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public putDataToLoaclContentValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 138
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v2, p0, Lcn/nubia/cloud/sync/common/SyncStructured;->mKeyMap:Lcn/nubia/cloud/utils/DoubleKeyMap;

    invoke-virtual {v2}, Lcn/nubia/cloud/utils/DoubleKeyMap;->secondKeySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 140
    .local v1, "secondKey":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcn/nubia/cloud/sync/common/SyncStructured;->putToContentValues(Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    .end local v1    # "secondKey":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public putDataToServerJsonObject(Lcn/nubia/cloud/utils/ParcelableJson;)Lcn/nubia/cloud/utils/ParcelableJson;
    .locals 4
    .param p1, "json"    # Lcn/nubia/cloud/utils/ParcelableJson;

    .prologue
    .line 126
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v3, p0, Lcn/nubia/cloud/sync/common/SyncStructured;->mKeyMap:Lcn/nubia/cloud/utils/DoubleKeyMap;

    invoke-virtual {v3}, Lcn/nubia/cloud/utils/DoubleKeyMap;->secondKeySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 129
    .local v2, "secondKey":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p0, p1, v2}, Lcn/nubia/cloud/sync/common/SyncStructured;->putData(Lorg/json/JSONObject;Lcn/nubia/cloud/utils/ParcelableJson;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 134
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "secondKey":Ljava/lang/String;
    :cond_0
    return-object p1
.end method
