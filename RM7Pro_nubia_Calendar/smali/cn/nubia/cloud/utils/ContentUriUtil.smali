.class public Lcn/nubia/cloud/utils/ContentUriUtil;
.super Ljava/lang/Object;
.source "ContentUriUtil.java"


# static fields
.field private static final CALLER_IS_SYNCADAPTER:Ljava/lang/String; = "caller_is_syncadapter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBooleanParam(Landroid/net/Uri;Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCallerIsSyncAdapterParameter(Landroid/net/Uri;Z)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "isSyncOperation"    # Z

    .prologue
    .line 11
    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 17
    .end local p0    # "uri":Landroid/net/Uri;
    :cond_0
    return-object p0
.end method

.method public static addLongParam(Landroid/net/Uri;Ljava/lang/String;J)Landroid/net/Uri;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 21
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getLongParam(Landroid/net/Uri;Ljava/lang/String;J)J
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # J

    .prologue
    .line 33
    invoke-static {p0, p1}, Lcn/nubia/cloud/utils/ContentUriUtil;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 36
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 42
    .end local p2    # "def":J
    :cond_0
    :goto_0
    return-wide p2

    .line 37
    .restart local p2    # "def":J
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x26

    const/4 v10, -0x1

    const/4 v7, 0x0

    .line 80
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, "query":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-object v7

    .line 85
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 86
    .local v5, "queryLength":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 89
    .local v2, "parameterLength":I
    const/4 v1, 0x0

    .line 91
    .local v1, "index":I
    :cond_2
    :goto_1
    invoke-virtual {v4, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 92
    if-eq v1, v10, :cond_0

    .line 98
    if-lez v1, :cond_3

    .line 99
    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 100
    .local v3, "prevChar":C
    const/16 v8, 0x3f

    if-eq v3, v8, :cond_3

    if-eq v3, v11, :cond_3

    .line 103
    add-int/2addr v1, v2

    .line 104
    goto :goto_1

    .line 108
    .end local v3    # "prevChar":C
    :cond_3
    add-int/2addr v1, v2

    .line 110
    if-eq v5, v1, :cond_0

    .line 114
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x3d

    if-ne v8, v9, :cond_2

    .line 115
    add-int/lit8 v1, v1, 0x1

    .line 120
    invoke-virtual {v4, v11, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 121
    .local v0, "ampIndex":I
    if-ne v0, v10, :cond_4

    .line 122
    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 127
    .local v6, "value":Ljava/lang/String;
    :goto_2
    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 124
    .end local v6    # "value":Ljava/lang/String;
    :cond_4
    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "value":Ljava/lang/String;
    goto :goto_2
.end method

.method public static isSyncAdapterParameter(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 46
    const-string v0, "caller_is_syncadapter"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/nubia/cloud/utils/ContentUriUtil;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static matchQueryParameter(Ljava/lang/String;ILjava/lang/String;Z)Z
    .locals 6
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "ignoreCase"    # Z

    .prologue
    const/4 v4, 0x0

    .line 70
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, "length":I
    move-object v0, p0

    move v1, p3

    move v2, p1

    move-object v3, p2

    .line 71
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v1, p1, v5

    if-eq v0, v1, :cond_0

    add-int v0, p1, v5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x26

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v4, 0x1

    :cond_1
    return v4
.end method

.method public static readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "parameter"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 54
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "query":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 64
    .end local p2    # "defaultValue":Z
    :cond_0
    :goto_0
    return p2

    .line 59
    .restart local p2    # "defaultValue":Z
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 60
    .local v0, "index":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v4

    .line 64
    const-string v4, "=0"

    invoke-static {v1, v0, v4, v3}, Lcn/nubia/cloud/utils/ContentUriUtil;->matchQueryParameter(Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "=false"

    invoke-static {v1, v0, v4, v2}, Lcn/nubia/cloud/utils/ContentUriUtil;->matchQueryParameter(Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    move p2, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method
