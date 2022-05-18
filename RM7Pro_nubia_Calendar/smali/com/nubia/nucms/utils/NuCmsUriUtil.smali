.class public Lcom/nubia/nucms/utils/NuCmsUriUtil;
.super Ljava/lang/Object;
.source "NuCmsUriUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getQueryParameterNames(Landroid/net/Uri;)Ljava/util/Set;
    .locals 9
    .param p0, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 17
    invoke-virtual {p0}, Landroid/net/Uri;->isOpaque()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 18
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v7

    .line 43
    :goto_0
    return-object v7

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v4

    .line 22
    .local v4, "query":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v7

    goto :goto_0

    .line 26
    :cond_1
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 27
    .local v2, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 29
    .local v6, "start":I
    :cond_2
    const/16 v7, 0x26

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 30
    .local v3, "next":I
    if-ne v3, v8, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    .line 32
    .local v0, "end":I
    :goto_1
    const/16 v7, 0x3d

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 33
    .local v5, "separator":I
    if-gt v5, v0, :cond_3

    if-ne v5, v8, :cond_4

    .line 34
    :cond_3
    move v5, v0

    .line 37
    :cond_4
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "name":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    add-int/lit8 v6, v0, 0x1

    .line 41
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_2

    .line 43
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v7

    goto :goto_0

    .end local v0    # "end":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v5    # "separator":I
    :cond_5
    move v0, v3

    .line 30
    goto :goto_1
.end method

.method public static getQueryParameters(Landroid/net/Uri;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 58
    invoke-virtual {p0}, Landroid/net/Uri;->isOpaque()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 99
    :goto_0
    return-object v6

    .line 61
    :cond_0
    if-nez p1, :cond_1

    .line 62
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "key"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 65
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "query":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 67
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    goto :goto_0

    .line 70
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v5, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 74
    .local v4, "start":I
    :goto_1
    const/16 v6, 0x26

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 75
    .local v1, "nextAmpersand":I
    if-eq v1, v8, :cond_6

    move v0, v1

    .line 77
    .local v0, "end":I
    :goto_2
    const/16 v6, 0x3d

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 78
    .local v3, "separator":I
    if-gt v3, v0, :cond_3

    if-ne v3, v8, :cond_4

    .line 79
    :cond_3
    move v3, v0

    .line 82
    :cond_4
    sub-int v6, v3, v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_5

    const/4 v6, 0x0

    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v4, p1, v6, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 84
    if-ne v3, v0, :cond_7

    .line 85
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_5
    :goto_3
    if-eq v1, v8, :cond_8

    .line 93
    add-int/lit8 v4, v1, 0x1

    .line 97
    goto :goto_1

    .line 75
    .end local v0    # "end":I
    .end local v3    # "separator":I
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_2

    .line 87
    .restart local v0    # "end":I
    .restart local v3    # "separator":I
    :cond_7
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v2, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 99
    :cond_8
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    goto :goto_0
.end method
