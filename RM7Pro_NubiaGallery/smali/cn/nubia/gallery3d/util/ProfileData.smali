.class public Lcn/nubia/gallery3d/util/ProfileData;
.super Ljava/lang/Object;
.source "ProfileData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/util/ProfileData$Node;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ProfileData"


# instance fields
.field private mNameToId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNextId:I

.field private mOut:Ljava/io/DataOutputStream;

.field private mRoot:Lcn/nubia/gallery3d/util/ProfileData$Node;

.field private mScratch:[B


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 51
    iput-object v0, p0, Lcn/nubia/gallery3d/util/ProfileData;->mScratch:[B

    .line 54
    new-instance v0, Lcn/nubia/gallery3d/util/ProfileData$Node;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/util/ProfileData$Node;-><init>(Lcn/nubia/gallery3d/util/ProfileData$Node;I)V

    iput-object v0, p0, Lcn/nubia/gallery3d/util/ProfileData;->mRoot:Lcn/nubia/gallery3d/util/ProfileData$Node;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/gallery3d/util/ProfileData;->mNameToId:Ljava/util/HashMap;

    return-void
.end method

.method private nameToId(Ljava/lang/String;)I
    .locals 2

    .line 65
    iget-object v0, p0, Lcn/nubia/gallery3d/util/ProfileData;->mNameToId:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 67
    iget v0, p0, Lcn/nubia/gallery3d/util/ProfileData;->mNextId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/gallery3d/util/ProfileData;->mNextId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcn/nubia/gallery3d/util/ProfileData;->mNameToId:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method private writeAllStacks(Lcn/nubia/gallery3d/util/ProfileData$Node;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    iget v0, p1, Lcn/nubia/gallery3d/util/ProfileData$Node;->sampleCount:I

    if-lez v0, :cond_0

    .line 141
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/util/ProfileData;->writeOneStack(Lcn/nubia/gallery3d/util/ProfileData$Node;I)V

    .line 144
    :cond_0
    iget-object p1, p1, Lcn/nubia/gallery3d/util/ProfileData$Node;->children:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 146
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 147
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/util/ProfileData$Node;

    add-int/lit8 v2, p2, 0x1

    invoke-direct {p0, v1, v2}, Lcn/nubia/gallery3d/util/ProfileData;->writeAllStacks(Lcn/nubia/gallery3d/util/ProfileData$Node;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private writeAllSymbols()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcn/nubia/gallery3d/util/ProfileData;->mNameToId:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 156
    iget-object v2, p0, Lcn/nubia/gallery3d/util/ProfileData;->mOut:Ljava/io/DataOutputStream;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v3, v4

    const-string v1, "0x%x %s\n"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeInt(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcn/nubia/gallery3d/util/ProfileData;->mScratch:[B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x1

    .line 162
    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x2

    .line 163
    aput-byte v1, v0, v2

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    const/4 v1, 0x3

    .line 164
    aput-byte p1, v0, v1

    .line 165
    iget-object p1, p0, Lcn/nubia/gallery3d/util/ProfileData;->mOut:Ljava/io/DataOutputStream;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    return-void
.end method

.method private writeOneStack(Lcn/nubia/gallery3d/util/ProfileData$Node;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget v0, p1, Lcn/nubia/gallery3d/util/ProfileData$Node;->sampleCount:I

    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/util/ProfileData;->writeInt(I)V

    .line 132
    invoke-direct {p0, p2}, Lcn/nubia/gallery3d/util/ProfileData;->writeInt(I)V

    :goto_0
    add-int/lit8 v0, p2, -0x1

    if-lez p2, :cond_0

    .line 134
    iget p2, p1, Lcn/nubia/gallery3d/util/ProfileData$Node;->id:I

    invoke-direct {p0, p2}, Lcn/nubia/gallery3d/util/ProfileData;->writeInt(I)V

    .line 135
    iget-object p1, p1, Lcn/nubia/gallery3d/util/ProfileData$Node;->parent:Lcn/nubia/gallery3d/util/ProfileData$Node;

    move p2, v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addSample([Ljava/lang/String;)V
    .locals 7

    .line 74
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    .line 75
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 76
    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Lcn/nubia/gallery3d/util/ProfileData;->nameToId(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    :cond_0
    iget-object v2, p0, Lcn/nubia/gallery3d/util/ProfileData;->mRoot:Lcn/nubia/gallery3d/util/ProfileData$Node;

    .line 80
    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_5

    .line 81
    iget-object v3, v2, Lcn/nubia/gallery3d/util/ProfileData$Node;->children:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 82
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcn/nubia/gallery3d/util/ProfileData$Node;->children:Ljava/util/ArrayList;

    .line 85
    :cond_1
    aget v3, v0, p1

    .line 86
    iget-object v4, v2, Lcn/nubia/gallery3d/util/ProfileData$Node;->children:Ljava/util/ArrayList;

    move v5, v1

    .line 88
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 89
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/gallery3d/util/ProfileData$Node;

    iget v6, v6, Lcn/nubia/gallery3d/util/ProfileData$Node;->id:I

    if-ne v6, v3, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 91
    :cond_3
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 92
    new-instance v6, Lcn/nubia/gallery3d/util/ProfileData$Node;

    invoke-direct {v6, v2, v3}, Lcn/nubia/gallery3d/util/ProfileData$Node;-><init>(Lcn/nubia/gallery3d/util/ProfileData$Node;I)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_4
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/util/ProfileData$Node;

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 98
    :cond_5
    iget p1, v2, Lcn/nubia/gallery3d/util/ProfileData$Node;->sampleCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v2, Lcn/nubia/gallery3d/util/ProfileData$Node;->sampleCount:I

    return-void
.end method

.method public dumpToFile(Ljava/lang/String;)V
    .locals 2

    .line 103
    :try_start_0
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/util/ProfileData;->mOut:Ljava/io/DataOutputStream;

    const/4 p1, 0x0

    .line 105
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/util/ProfileData;->writeInt(I)V

    const/4 v0, 0x3

    .line 106
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/util/ProfileData;->writeInt(I)V

    const/4 v0, 0x1

    .line 107
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/util/ProfileData;->writeInt(I)V

    const/16 v1, 0x4e20

    .line 108
    invoke-direct {p0, v1}, Lcn/nubia/gallery3d/util/ProfileData;->writeInt(I)V

    .line 109
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/util/ProfileData;->writeInt(I)V

    .line 112
    iget-object v1, p0, Lcn/nubia/gallery3d/util/ProfileData;->mRoot:Lcn/nubia/gallery3d/util/ProfileData$Node;

    invoke-direct {p0, v1, p1}, Lcn/nubia/gallery3d/util/ProfileData;->writeAllStacks(Lcn/nubia/gallery3d/util/ProfileData$Node;I)V

    .line 115
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/util/ProfileData;->writeInt(I)V

    .line 116
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/util/ProfileData;->writeInt(I)V

    .line 117
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/util/ProfileData;->writeInt(I)V

    .line 118
    invoke-direct {p0}, Lcn/nubia/gallery3d/util/ProfileData;->writeAllSymbols()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "Failed to dump to file"

    .line 120
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :goto_0
    iget-object p1, p0, Lcn/nubia/gallery3d/util/ProfileData;->mOut:Ljava/io/DataOutputStream;

    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-void

    :goto_1
    iget-object v0, p0, Lcn/nubia/gallery3d/util/ProfileData;->mOut:Ljava/io/DataOutputStream;

    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 123
    throw p1
.end method

.method public reset()V
    .locals 3

    .line 59
    new-instance v0, Lcn/nubia/gallery3d/util/ProfileData$Node;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/util/ProfileData$Node;-><init>(Lcn/nubia/gallery3d/util/ProfileData$Node;I)V

    iput-object v0, p0, Lcn/nubia/gallery3d/util/ProfileData;->mRoot:Lcn/nubia/gallery3d/util/ProfileData$Node;

    .line 60
    iget-object v0, p0, Lcn/nubia/gallery3d/util/ProfileData;->mNameToId:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcn/nubia/gallery3d/util/ProfileData;->mNextId:I

    return-void
.end method
