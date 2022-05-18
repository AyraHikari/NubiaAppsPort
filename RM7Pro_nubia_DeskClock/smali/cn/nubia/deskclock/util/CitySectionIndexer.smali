.class public Lcn/nubia/deskclock/util/CitySectionIndexer;
.super Ljava/lang/Object;
.source "CitySectionIndexer.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# static fields
.field private static final BLANK_HEADER_STRING:Ljava/lang/String; = " "

.field private static final TAG:Ljava/lang/String; = "DeskClock:[CitySectionIndexer]"


# instance fields
.field private mCount:I

.field private mPositions:[I

.field private mSections:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;[I)V
    .locals 4
    .param p1, "sections"    # [Ljava/lang/String;
    .param p2, "counts"    # [I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 49
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 52
    :cond_1
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_2

    .line 53
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The sections and counts arrays must have the same length"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_2
    iput-object p1, p0, Lcn/nubia/deskclock/util/CitySectionIndexer;->mSections:[Ljava/lang/String;

    .line 58
    array-length v2, p2

    new-array v2, v2, [I

    iput-object v2, p0, Lcn/nubia/deskclock/util/CitySectionIndexer;->mPositions:[I

    .line 59
    const/4 v1, 0x0

    .line 60
    .local v1, "position":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_5

    .line 61
    iget-object v2, p0, Lcn/nubia/deskclock/util/CitySectionIndexer;->mSections:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 62
    iget-object v2, p0, Lcn/nubia/deskclock/util/CitySectionIndexer;->mSections:[Ljava/lang/String;

    const-string v3, " "

    aput-object v3, v2, v0

    .line 67
    :cond_3
    :goto_1
    iget-object v2, p0, Lcn/nubia/deskclock/util/CitySectionIndexer;->mPositions:[I

    aput v1, v2, v0

    .line 68
    aget v2, p2, v0

    add-int/2addr v1, v2

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_4
    iget-object v2, p0, Lcn/nubia/deskclock/util/CitySectionIndexer;->mSections:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 64
    iget-object v2, p0, Lcn/nubia/deskclock/util/CitySectionIndexer;->mSections:[Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/deskclock/util/CitySectionIndexer;->mSections:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 70
    :cond_5
    iput v1, p0, Lcn/nubia/deskclock/util/CitySectionIndexer;->mCount:I

    .line 71
    return-void
.end method

.method public static buildFromSortKeys(Ljava/util/List;)Lcn/nubia/deskclock/util/CitySectionIndexer;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcn/nubia/deskclock/util/CitySectionIndexer;"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZ#"

    .line 157
    .local v0, "SECTIONS":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    new-array v3, v11, [I

    .line 158
    .local v3, "countArray":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_1

    .line 159
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/nubia/deskclock/model/City;

    iget-object v11, v11, Lcn/nubia/deskclock/model/City;->mCityNamePinyin:Ljava/lang/String;

    invoke-static {v11}, Lcn/nubia/deskclock/util/CitySectionIndexer;->getSection(Ljava/lang/String;)C

    move-result v9

    .line 160
    .local v9, "section":C
    const/16 v11, 0x23

    if-eq v11, v9, :cond_0

    .line 161
    add-int/lit8 v11, v9, -0x41

    aget v12, v3, v11

    add-int/lit8 v12, v12, 0x1

    aput v12, v3, v11

    .line 158
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    aget v12, v3, v11

    add-int/lit8 v12, v12, 0x1

    aput v12, v3, v11

    goto :goto_1

    .line 166
    .end local v9    # "section":C
    :cond_1
    const/4 v1, 0x0

    .line 167
    .local v1, "actualSize":I
    array-length v12, v3

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v12, :cond_3

    aget v2, v3, v11

    .line 168
    .local v2, "count":I
    if-eqz v2, :cond_2

    .line 169
    add-int/lit8 v1, v1, 0x1

    .line 167
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 173
    .end local v2    # "count":I
    :cond_3
    const/4 v7, 0x0

    .line 174
    .local v7, "indexer":Lcn/nubia/deskclock/util/CitySectionIndexer;
    if-lez v1, :cond_6

    .line 175
    new-array v10, v1, [Ljava/lang/String;

    .line 176
    .local v10, "sections":[Ljava/lang/String;
    new-array v4, v1, [I

    .line 177
    .local v4, "counts":[I
    const/4 v6, 0x0

    .line 179
    .local v6, "index":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v8, v11, :cond_5

    .line 180
    aget v11, v3, v8

    if-eqz v11, :cond_4

    .line 181
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v0, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    .line 182
    aget v11, v3, v8

    aput v11, v4, v6

    .line 183
    add-int/lit8 v6, v6, 0x1

    .line 179
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 186
    :cond_5
    new-instance v7, Lcn/nubia/deskclock/util/CitySectionIndexer;

    .end local v7    # "indexer":Lcn/nubia/deskclock/util/CitySectionIndexer;
    invoke-direct {v7, v10, v4}, Lcn/nubia/deskclock/util/CitySectionIndexer;-><init>([Ljava/lang/String;[I)V

    .line 188
    .end local v4    # "counts":[I
    .end local v6    # "index":I
    .end local v8    # "j":I
    .end local v10    # "sections":[Ljava/lang/String;
    .restart local v7    # "indexer":Lcn/nubia/deskclock/util/CitySectionIndexer;
    :cond_6
    return-object v7
.end method

.method private getPositionForNotInSection(Ljava/lang/String;)I
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 103
    const/4 v1, -0x1

    .line 104
    .local v1, "position":I
    const-string v3, "#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    iget-object v3, p0, Lcn/nubia/deskclock/util/CitySectionIndexer;->mSections:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_0

    iget-object v2, p0, Lcn/nubia/deskclock/util/CitySectionIndexer;->mPositions:[I

    iget-object v3, p0, Lcn/nubia/deskclock/util/CitySectionIndexer;->mSections:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    .line 129
    :cond_0
    :goto_0
    return v2

    .line 107
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcn/nubia/deskclock/util/CitySectionIndexer;->mSections:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 108
    iget-object v3, p0, Lcn/nubia/deskclock/util/CitySectionIndexer;->mSections:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_6

    .line 109
    iget-object v3, p0, Lcn/nubia/deskclock/util/CitySectionIndexer;->mSections:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_4

    .line 110
    iget-object v2, p0, Lcn/nubia/deskclock/util/CitySectionIndexer;->mPositions:[I

    aget v1, v2, v0

    .line 125
    :cond_2
    :goto_2
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 126
    const/4 v1, 0x0

    :cond_3
    move v2, v1

    .line 129
    goto :goto_0

    .line 113
    :cond_4
    iget-object v3, p0, Lcn/nubia/deskclock/util/CitySectionIndexer;->mSections:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 114
    iget-object v2, p0, Lcn/nubia/deskclock/util/CitySectionIndexer;->mPositions:[I

    aget v1, v2, v0

    .line 115
    goto :goto_2

    .line 117
    :cond_5
    iget-object v3, p0, Lcn/nubia/deskclock/util/CitySectionIndexer;->mSections:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcn/nubia/deskclock/util/CitySectionIndexer;->isAlpha(C)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcn/nubia/deskclock/util/CitySectionIndexer;->mSections:[Ljava/lang/String;

    aget-object v3, v3, v0

    .line 118
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-le v3, v4, :cond_6

    .line 119
    iget-object v2, p0, Lcn/nubia/deskclock/util/CitySectionIndexer;->mPositions:[I

    aget v1, v2, v0

    .line 120
    goto :goto_2

    .line 107
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static getSection(Ljava/lang/String;)C
    .locals 4
    .param p0, "curString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 192
    const/16 v1, 0x23

    .line 193
    .local v1, "section":C
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 194
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 195
    .local v0, "firstChar":C
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    const/16 v2, 0x5a

    if-gt v0, v2, :cond_1

    .line 196
    move v1, v0

    .line 201
    .end local v0    # "firstChar":C
    :cond_0
    :goto_0
    return v1

    .line 197
    .restart local v0    # "firstChar":C
    :cond_1
    const/16 v2, 0x61

    if-lt v0, v2, :cond_0

    const/16 v2, 0x7a

    if-gt v0, v2, :cond_0

    .line 198
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0
.end method

.method private isAlpha(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 133
    const/16 v0, 0x61

    if-le p1, v0, :cond_0

    const/16 v0, 0x7a

    if-lt p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-le p1, v0, :cond_2

    const/16 v0, 0x5a

    if-ge p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getPositionForSection(I)I
    .locals 1
    .param p1, "section"    # I

    .prologue
    .line 80
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/util/CitySectionIndexer;->mSections:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 81
    :cond_0
    const/4 v0, -0x1

    .line 84
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/util/CitySectionIndexer;->mPositions:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public getPositionForSection(Ljava/lang/String;)I
    .locals 5
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    .line 88
    const/4 v1, -0x1

    .line 89
    .local v1, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcn/nubia/deskclock/util/CitySectionIndexer;->mSections:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 90
    iget-object v2, p0, Lcn/nubia/deskclock/util/CitySectionIndexer;->mSections:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    const-string v2, "DeskClock:[CitySectionIndexer]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPositionForSection="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/deskclock/util/CitySectionIndexer;->mSections:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v2, p0, Lcn/nubia/deskclock/util/CitySectionIndexer;->mPositions:[I

    aget v1, v2, v0

    .line 96
    :cond_0
    const/4 v2, -0x1

    if-ne v2, v1, :cond_1

    .line 97
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/util/CitySectionIndexer;->getPositionForNotInSection(Ljava/lang/String;)I

    move-result v1

    .line 99
    :cond_1
    return v1

    .line 89
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 138
    if-ltz p1, :cond_0

    iget v1, p0, Lcn/nubia/deskclock/util/CitySectionIndexer;->mCount:I

    if-lt p1, v1, :cond_2

    .line 139
    :cond_0
    const/4 v0, -0x1

    .line 151
    :cond_1
    :goto_0
    return v0

    .line 142
    :cond_2
    iget-object v1, p0, Lcn/nubia/deskclock/util/CitySectionIndexer;->mPositions:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 151
    .local v0, "index":I
    if-gez v0, :cond_1

    neg-int v1, v0

    add-int/lit8 v0, v1, -0x2

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcn/nubia/deskclock/util/CitySectionIndexer;->mSections:[Ljava/lang/String;

    return-object v0
.end method
