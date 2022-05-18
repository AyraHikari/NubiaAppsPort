.class public Lcn/nubia/cloud/common/sync/SyncStructured;
.super Lcn/nubia/cloud/common/ParcelableJson;
.source "SyncStructured.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static synthetic $SWITCH_TABLE$cn$nubia$cloud$common$DataType:[I


# instance fields
.field private mHashCode:J

.field private mKeyMap:Lcn/nubia/cloud/common/DoubleKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/common/DoubleKeyMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/cloud/common/DataType;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalMimeType:Ljava/lang/String;

.field private mServerMimeType:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$cn$nubia$cloud$common$DataType()[I
    .locals 3

    .line 14
    sget-object v0, Lcn/nubia/cloud/common/sync/SyncStructured;->$SWITCH_TABLE$cn$nubia$cloud$common$DataType:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcn/nubia/cloud/common/DataType;->values()[Lcn/nubia/cloud/common/DataType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcn/nubia/cloud/common/DataType;->Binary:Lcn/nubia/cloud/common/DataType;

    invoke-virtual {v1}, Lcn/nubia/cloud/common/DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcn/nubia/cloud/common/DataType;->Boolean:Lcn/nubia/cloud/common/DataType;

    invoke-virtual {v1}, Lcn/nubia/cloud/common/DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcn/nubia/cloud/common/DataType;->Integer:Lcn/nubia/cloud/common/DataType;

    invoke-virtual {v1}, Lcn/nubia/cloud/common/DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcn/nubia/cloud/common/DataType;->Long:Lcn/nubia/cloud/common/DataType;

    invoke-virtual {v1}, Lcn/nubia/cloud/common/DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcn/nubia/cloud/common/DataType;->String:Lcn/nubia/cloud/common/DataType;

    invoke-virtual {v1}, Lcn/nubia/cloud/common/DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    sput-object v0, Lcn/nubia/cloud/common/sync/SyncStructured;->$SWITCH_TABLE$cn$nubia$cloud$common$DataType:[I

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcn/nubia/cloud/common/DoubleKeyMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/cloud/common/DoubleKeyMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/cloud/common/DataType;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lcn/nubia/cloud/common/ParcelableJson;-><init>()V

    const-wide/16 v0, 0x0

    .line 18
    iput-wide v0, p0, Lcn/nubia/cloud/common/sync/SyncStructured;->mHashCode:J

    .line 22
    iput-object p1, p0, Lcn/nubia/cloud/common/sync/SyncStructured;->mLocalMimeType:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcn/nubia/cloud/common/sync/SyncStructured;->mServerMimeType:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcn/nubia/cloud/common/sync/SyncStructured;->mKeyMap:Lcn/nubia/cloud/common/DoubleKeyMap;

    return-void
.end method

.method private putData(Landroid/database/Cursor;Lcn/nubia/cloud/common/DoubleKeyMap$Entry;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcn/nubia/cloud/common/DoubleKeyMap$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/cloud/common/DataType;",
            ">;)V"
        }
    .end annotation

    .line 58
    iget-object v0, p2, Lcn/nubia/cloud/common/DoubleKeyMap$Entry;->firstKey:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-static {}, Lcn/nubia/cloud/common/sync/SyncStructured;->$SWITCH_TABLE$cn$nubia$cloud$common$DataType()[I

    move-result-object v1

    iget-object v2, p2, Lcn/nubia/cloud/common/DoubleKeyMap$Entry;->value:Ljava/lang/Object;

    check-cast v2, Lcn/nubia/cloud/common/DataType;

    invoke-virtual {v2}, Lcn/nubia/cloud/common/DataType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 74
    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    if-eqz p1, :cond_4

    .line 76
    iget-object p2, p2, Lcn/nubia/cloud/common/DoubleKeyMap$Entry;->secondKey:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcn/nubia/cloud/common/sync/SyncStructured;->putBinaryData(Ljava/lang/String;[B)V

    goto :goto_0

    .line 70
    :cond_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 71
    iget-object p2, p2, Lcn/nubia/cloud/common/DoubleKeyMap$Entry;->secondKey:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcn/nubia/cloud/common/sync/SyncStructured;->putData(Ljava/lang/String;I)V

    goto :goto_0

    .line 64
    :cond_3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 66
    iget-object p2, p2, Lcn/nubia/cloud/common/DoubleKeyMap$Entry;->secondKey:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcn/nubia/cloud/common/sync/SyncStructured;->putData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private static putData(Lorg/json/JSONObject;Lcn/nubia/cloud/common/ParcelableJson;Lcn/nubia/cloud/common/DoubleKeyMap$Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcn/nubia/cloud/common/ParcelableJson;",
            "Lcn/nubia/cloud/common/DoubleKeyMap$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/cloud/common/DataType;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 86
    iget-object v0, p2, Lcn/nubia/cloud/common/DoubleKeyMap$Entry;->secondKey:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-static {}, Lcn/nubia/cloud/common/sync/SyncStructured;->$SWITCH_TABLE$cn$nubia$cloud$common$DataType()[I

    move-result-object v0

    iget-object v1, p2, Lcn/nubia/cloud/common/DoubleKeyMap$Entry;->value:Ljava/lang/Object;

    check-cast v1, Lcn/nubia/cloud/common/DataType;

    invoke-virtual {v1}, Lcn/nubia/cloud/common/DataType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p2, Lcn/nubia/cloud/common/DoubleKeyMap$Entry;->secondKey:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 99
    iget-object p2, p2, Lcn/nubia/cloud/common/DoubleKeyMap$Entry;->secondKey:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Lcn/nubia/cloud/common/ParcelableJson;->putData(Ljava/lang/String;I)V

    goto :goto_0

    .line 92
    :cond_2
    iget-object v0, p2, Lcn/nubia/cloud/common/DoubleKeyMap$Entry;->secondKey:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 93
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 94
    iget-object p2, p2, Lcn/nubia/cloud/common/DoubleKeyMap$Entry;->secondKey:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Lcn/nubia/cloud/common/ParcelableJson;->putData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private putToContentValues(Landroid/content/ContentValues;Lcn/nubia/cloud/common/DoubleKeyMap$Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "Lcn/nubia/cloud/common/DoubleKeyMap$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/nubia/cloud/common/DataType;",
            ">;)V"
        }
    .end annotation

    .line 128
    invoke-static {}, Lcn/nubia/cloud/common/sync/SyncStructured;->$SWITCH_TABLE$cn$nubia$cloud$common$DataType()[I

    move-result-object v0

    iget-object v1, p2, Lcn/nubia/cloud/common/DoubleKeyMap$Entry;->value:Ljava/lang/Object;

    check-cast v1, Lcn/nubia/cloud/common/DataType;

    invoke-virtual {v1}, Lcn/nubia/cloud/common/DataType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p2, Lcn/nubia/cloud/common/DoubleKeyMap$Entry;->secondKey:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/nubia/cloud/common/sync/SyncStructured;->getBinaryData(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_3

    .line 144
    iget-object p2, p2, Lcn/nubia/cloud/common/DoubleKeyMap$Entry;->firstKey:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0

    .line 136
    :cond_1
    iget-object v0, p2, Lcn/nubia/cloud/common/DoubleKeyMap$Entry;->secondKey:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcn/nubia/cloud/common/sync/SyncStructured;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_3

    .line 138
    iget-object p2, p2, Lcn/nubia/cloud/common/DoubleKeyMap$Entry;->firstKey:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 130
    :cond_2
    iget-object v0, p2, Lcn/nubia/cloud/common/DoubleKeyMap$Entry;->secondKey:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/nubia/cloud/common/sync/SyncStructured;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 132
    iget-object p2, p2, Lcn/nubia/cloud/common/DoubleKeyMap$Entry;->firstKey:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 170
    :cond_0
    instance-of v1, p1, Lcn/nubia/cloud/common/sync/SyncStructured;

    if-eqz v1, :cond_1

    .line 171
    check-cast p1, Lcn/nubia/cloud/common/sync/SyncStructured;

    .line 172
    invoke-virtual {p0}, Lcn/nubia/cloud/common/sync/SyncStructured;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Lcn/nubia/cloud/common/sync/SyncStructured;->hashCode()I

    move-result p1

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getLocalMimeType()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcn/nubia/cloud/common/sync/SyncStructured;->mLocalMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getServerMimeType()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcn/nubia/cloud/common/sync/SyncStructured;->mServerMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 154
    iget-wide v0, p0, Lcn/nubia/cloud/common/sync/SyncStructured;->mHashCode:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 155
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 156
    invoke-virtual {p0, v0}, Lcn/nubia/cloud/common/sync/SyncStructured;->putDataToLoaclContentValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    .line 157
    invoke-virtual {v0}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 158
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 159
    iget-wide v3, p0, Lcn/nubia/cloud/common/sync/SyncStructured;->mHashCode:J

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcn/nubia/cloud/common/sync/SyncStructured;->mHashCode:J

    goto :goto_0

    .line 162
    :cond_1
    :goto_1
    iget-wide v0, p0, Lcn/nubia/cloud/common/sync/SyncStructured;->mHashCode:J

    long-to-int v0, v0

    return v0
.end method

.method public initData(Landroid/database/Cursor;)V
    .locals 3

    .line 36
    iget-object v0, p0, Lcn/nubia/cloud/common/sync/SyncStructured;->mKeyMap:Lcn/nubia/cloud/common/DoubleKeyMap;

    invoke-virtual {v0}, Lcn/nubia/cloud/common/DoubleKeyMap;->firstKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 38
    :try_start_0
    iget-object v2, p0, Lcn/nubia/cloud/common/sync/SyncStructured;->mKeyMap:Lcn/nubia/cloud/common/DoubleKeyMap;

    invoke-virtual {v2, v1}, Lcn/nubia/cloud/common/DoubleKeyMap;->getEntryByFirstKey(Ljava/lang/Object;)Lcn/nubia/cloud/common/DoubleKeyMap$Entry;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcn/nubia/cloud/common/sync/SyncStructured;->putData(Landroid/database/Cursor;Lcn/nubia/cloud/common/DoubleKeyMap$Entry;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public initData(Lorg/json/JSONObject;)V
    .locals 3

    .line 46
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcn/nubia/cloud/common/sync/SyncStructured;->mKeyMap:Lcn/nubia/cloud/common/DoubleKeyMap;

    invoke-virtual {v0}, Lcn/nubia/cloud/common/DoubleKeyMap;->secondKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 49
    :try_start_0
    iget-object v2, p0, Lcn/nubia/cloud/common/sync/SyncStructured;->mKeyMap:Lcn/nubia/cloud/common/DoubleKeyMap;

    invoke-virtual {v2, v1}, Lcn/nubia/cloud/common/DoubleKeyMap;->getEntryBySecondKey(Ljava/lang/Object;)Lcn/nubia/cloud/common/DoubleKeyMap$Entry;

    move-result-object v1

    invoke-static {p1, p0, v1}, Lcn/nubia/cloud/common/sync/SyncStructured;->putData(Lorg/json/JSONObject;Lcn/nubia/cloud/common/ParcelableJson;Lcn/nubia/cloud/common/DoubleKeyMap$Entry;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 51
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public putDataToLoaclContentValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 3

    .line 119
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcn/nubia/cloud/common/sync/SyncStructured;->mKeyMap:Lcn/nubia/cloud/common/DoubleKeyMap;

    invoke-virtual {v0}, Lcn/nubia/cloud/common/DoubleKeyMap;->secondKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-object p1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 121
    iget-object v2, p0, Lcn/nubia/cloud/common/sync/SyncStructured;->mKeyMap:Lcn/nubia/cloud/common/DoubleKeyMap;

    invoke-virtual {v2, v1}, Lcn/nubia/cloud/common/DoubleKeyMap;->getEntryBySecondKey(Ljava/lang/Object;)Lcn/nubia/cloud/common/DoubleKeyMap$Entry;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcn/nubia/cloud/common/sync/SyncStructured;->putToContentValues(Landroid/content/ContentValues;Lcn/nubia/cloud/common/DoubleKeyMap$Entry;)V

    goto :goto_0
.end method

.method public putDataToServerJsonObject(Lcn/nubia/cloud/common/ParcelableJson;)Lcn/nubia/cloud/common/ParcelableJson;
    .locals 3

    .line 107
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcn/nubia/cloud/common/sync/SyncStructured;->mKeyMap:Lcn/nubia/cloud/common/DoubleKeyMap;

    invoke-virtual {v0}, Lcn/nubia/cloud/common/DoubleKeyMap;->secondKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-object p1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 110
    :try_start_0
    iget-object v2, p0, Lcn/nubia/cloud/common/sync/SyncStructured;->mKeyMap:Lcn/nubia/cloud/common/DoubleKeyMap;

    invoke-virtual {v2, v1}, Lcn/nubia/cloud/common/DoubleKeyMap;->getEntryBySecondKey(Ljava/lang/Object;)Lcn/nubia/cloud/common/DoubleKeyMap$Entry;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcn/nubia/cloud/common/sync/SyncStructured;->putData(Lorg/json/JSONObject;Lcn/nubia/cloud/common/ParcelableJson;Lcn/nubia/cloud/common/DoubleKeyMap$Entry;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 112
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
