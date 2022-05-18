.class public Lcn/nubia/videogenerator/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/videogenerator/a/h$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/nio/ByteBuffer;

.field public static final b:Ljava/nio/ByteBuffer;

.field public static final c:Ljava/nio/ByteBuffer;

.field public static final d:Ljava/nio/ByteBuffer;

.field public static final e:Ljava/nio/ByteBuffer;

.field public static final f:Ljava/nio/ByteBuffer;

.field public static final g:Ljava/nio/ByteBuffer;

.field public static final h:Ljava/nio/ByteBuffer;

.field public static final i:Ljava/nio/ByteBuffer;

.field public static final j:Ljava/nio/ByteBuffer;

.field public static final k:Ljava/nio/ByteBuffer;

.field public static final l:Ljava/nio/ByteBuffer;

.field public static final m:Lcn/nubia/videogenerator/a/h$a;

.field public static final n:Lcn/nubia/videogenerator/a/h$a;

.field public static final o:Lcn/nubia/videogenerator/a/h$a;

.field public static final p:Lcn/nubia/videogenerator/a/h$a;

.field public static final q:Lcn/nubia/videogenerator/a/h$a;

.field public static final r:Lcn/nubia/videogenerator/a/h$a;

.field public static final s:Lcn/nubia/videogenerator/a/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v0, 0x7

    new-array v1, v0, [B

    .line 14
    fill-array-data v1, :array_0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sput-object v1, Lcn/nubia/videogenerator/a/h;->a:Ljava/nio/ByteBuffer;

    const/16 v2, 0x8

    new-array v3, v2, [B

    .line 15
    fill-array-data v3, :array_1

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    sput-object v3, Lcn/nubia/videogenerator/a/h;->b:Ljava/nio/ByteBuffer;

    const/16 v4, 0x17

    new-array v4, v4, [B

    .line 16
    fill-array-data v4, :array_2

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    sput-object v4, Lcn/nubia/videogenerator/a/h;->c:Ljava/nio/ByteBuffer;

    const/16 v5, 0x9

    new-array v6, v5, [B

    .line 18
    fill-array-data v6, :array_3

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    sput-object v6, Lcn/nubia/videogenerator/a/h;->d:Ljava/nio/ByteBuffer;

    new-array v7, v5, [B

    .line 19
    fill-array-data v7, :array_4

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    sput-object v7, Lcn/nubia/videogenerator/a/h;->e:Ljava/nio/ByteBuffer;

    new-array v0, v0, [B

    .line 20
    fill-array-data v0, :array_5

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcn/nubia/videogenerator/a/h;->f:Ljava/nio/ByteBuffer;

    new-array v8, v2, [B

    .line 21
    fill-array-data v8, :array_6

    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    sput-object v8, Lcn/nubia/videogenerator/a/h;->g:Ljava/nio/ByteBuffer;

    const/16 v9, 0xb

    new-array v9, v9, [B

    .line 23
    fill-array-data v9, :array_7

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    sput-object v9, Lcn/nubia/videogenerator/a/h;->h:Ljava/nio/ByteBuffer;

    new-array v2, v2, [B

    .line 25
    fill-array-data v2, :array_8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    sput-object v2, Lcn/nubia/videogenerator/a/h;->i:Ljava/nio/ByteBuffer;

    new-array v5, v5, [B

    .line 26
    fill-array-data v5, :array_9

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    sput-object v5, Lcn/nubia/videogenerator/a/h;->j:Ljava/nio/ByteBuffer;

    const/16 v10, 0x1a

    new-array v10, v10, [B

    .line 27
    fill-array-data v10, :array_a

    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    sput-object v10, Lcn/nubia/videogenerator/a/h;->k:Ljava/nio/ByteBuffer;

    const/4 v11, 0x4

    new-array v11, v11, [B

    .line 29
    fill-array-data v11, :array_b

    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    sput-object v11, Lcn/nubia/videogenerator/a/h;->l:Ljava/nio/ByteBuffer;

    .line 30
    new-instance v12, Lcn/nubia/videogenerator/a/h$a;

    invoke-direct {v12, v1, v3}, Lcn/nubia/videogenerator/a/h$a;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    sput-object v12, Lcn/nubia/videogenerator/a/h;->m:Lcn/nubia/videogenerator/a/h$a;

    .line 31
    new-instance v1, Lcn/nubia/videogenerator/a/h$a;

    invoke-direct {v1, v4, v6}, Lcn/nubia/videogenerator/a/h$a;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    sput-object v1, Lcn/nubia/videogenerator/a/h;->n:Lcn/nubia/videogenerator/a/h$a;

    .line 32
    new-instance v1, Lcn/nubia/videogenerator/a/h$a;

    invoke-direct {v1, v4, v7}, Lcn/nubia/videogenerator/a/h$a;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    sput-object v1, Lcn/nubia/videogenerator/a/h;->o:Lcn/nubia/videogenerator/a/h$a;

    .line 33
    new-instance v1, Lcn/nubia/videogenerator/a/h$a;

    invoke-direct {v1, v0, v8}, Lcn/nubia/videogenerator/a/h$a;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    sput-object v1, Lcn/nubia/videogenerator/a/h;->p:Lcn/nubia/videogenerator/a/h$a;

    .line 34
    new-instance v0, Lcn/nubia/videogenerator/a/h$a;

    invoke-direct {v0, v9, v2}, Lcn/nubia/videogenerator/a/h$a;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    sput-object v0, Lcn/nubia/videogenerator/a/h;->q:Lcn/nubia/videogenerator/a/h$a;

    .line 35
    new-instance v0, Lcn/nubia/videogenerator/a/h$a;

    invoke-direct {v0, v9, v5}, Lcn/nubia/videogenerator/a/h$a;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    sput-object v0, Lcn/nubia/videogenerator/a/h;->r:Lcn/nubia/videogenerator/a/h$a;

    .line 36
    new-instance v0, Lcn/nubia/videogenerator/a/h$a;

    invoke-direct {v0, v10, v11}, Lcn/nubia/videogenerator/a/h$a;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    sput-object v0, Lcn/nubia/videogenerator/a/h;->s:Lcn/nubia/videogenerator/a/h$a;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x80t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0x6t
        -0x1et
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x67t
        0x64t
        0x0t
        0x28t
        -0x54t
        -0x4ct
        0x3t
        -0x40t
        0x11t
        0x3ft
        0x2ct
        -0x54t
        0x14t
        0x18t
        0x14t
        0x1bt
        0x42t
        -0x7ct
        -0x2ct
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x12t
        0x6t
        -0x1et
        -0x40t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x12t
        0x6t
        -0xet
        -0x40t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        0x0t
    .end array-data

    :array_6
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x36t
        0x43t
        -0x38t
    .end array-data

    :array_7
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x67t
        0x64t
        0x0t
        0x29t
        -0x54t
        0x1bt
        0x1at
    .end array-data

    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x16t
        0x43t
        -0x35t
    .end array-data

    :array_9
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x7t
        0x8t
        0x3ct
        -0x50t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x0t
        0x0t
        0x1t
        -0x50t
        0x1t
        0x0t
        0x0t
        0x1t
        -0x4bt
        -0x77t
        0x13t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x20t
        0x0t
        -0x3ct
        -0x73t
        -0x78t
        0x0t
        -0xbt
        0x3ct
    .end array-data

    nop

    :array_b
    .array-data 1
        -0x80t
        -0x80t
        -0x80t
        -0x80t
    .end array-data
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Lcn/nubia/videogenerator/a/h$a;
    .locals 3

    .line 55
    new-instance v0, Lcn/nubia/videogenerator/a/h$a;

    invoke-direct {v0}, Lcn/nubia/videogenerator/a/h$a;-><init>()V

    .line 56
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    const/4 v2, 0x0

    .line 58
    :try_start_0
    invoke-virtual {v1, p0, p1, v2}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 59
    invoke-static {v0, v1}, Lcn/nubia/videogenerator/a/h;->a(Lcn/nubia/videogenerator/a/h$a;Landroid/media/MediaExtractor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 64
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 65
    throw p0

    .line 64
    :catch_0
    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    return-object v0
.end method

.method private static a(Lcn/nubia/videogenerator/a/h$a;Landroid/media/MediaExtractor;)V
    .locals 4

    const/4 v0, 0x0

    .line 85
    :goto_0
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 86
    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    const-string v2, "mime"

    .line 87
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 88
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "video/"

    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "csd-0"

    .line 90
    invoke-virtual {v1, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v1, p1}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/videogenerator/a/h$a;->a:Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_0
    new-array p1, v2, [B

    .line 93
    fill-array-data p1, :array_0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/videogenerator/a/h$a;->a:Ljava/nio/ByteBuffer;

    :goto_1
    const-string p1, "csd-1"

    .line 95
    invoke-virtual {v1, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {v1, p1}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/videogenerator/a/h$a;->b:Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_1
    new-array p1, v2, [B

    .line 98
    fill-array-data p1, :array_1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/videogenerator/a/h$a;->b:Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void

    nop

    :array_0
    .array-data 1
        -0x80t
        -0x80t
        -0x80t
        -0x80t
    .end array-data

    :array_1
    .array-data 1
        -0x80t
        -0x80t
        -0x80t
        -0x80t
    .end array-data
.end method

.method public static a(Lcn/nubia/videogenerator/a/h$a;)Z
    .locals 1

    .line 141
    sget-object v0, Lcn/nubia/videogenerator/a/h;->q:Lcn/nubia/videogenerator/a/h$a;

    invoke-static {p0, v0}, Lcn/nubia/videogenerator/a/h;->a(Lcn/nubia/videogenerator/a/h$a;Lcn/nubia/videogenerator/a/h$a;)Z

    move-result p0

    return p0
.end method

.method public static a(Lcn/nubia/videogenerator/a/h$a;Lcn/nubia/videogenerator/a/h$a;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 109
    iget-object v1, p0, Lcn/nubia/videogenerator/a/h$a;->a:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/nubia/videogenerator/a/h$a;->b:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/nubia/videogenerator/a/h$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p1, Lcn/nubia/videogenerator/a/h$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lcn/nubia/videogenerator/a/h$a;->b:Ljava/nio/ByteBuffer;

    .line 110
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p1, Lcn/nubia/videogenerator/a/h$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-ge v1, v2, :cond_0

    goto :goto_2

    .line 113
    :cond_0
    iget-object v1, p1, Lcn/nubia/videogenerator/a/h$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 114
    iget-object v2, p0, Lcn/nubia/videogenerator/a/h$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v3, p1, Lcn/nubia/videogenerator/a/h$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 115
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 116
    iget-object v2, p1, Lcn/nubia/videogenerator/a/h$a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->compareTo(Ljava/nio/ByteBuffer;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    .line 120
    :goto_0
    iget-object v3, p1, Lcn/nubia/videogenerator/a/h$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 121
    iget-object p0, p0, Lcn/nubia/videogenerator/a/h$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    iget-object v4, p1, Lcn/nubia/videogenerator/a/h$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v3, p0, v0, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 122
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 123
    iget-object p0, p1, Lcn/nubia/videogenerator/a/h$a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p0}, Ljava/nio/ByteBuffer;->compareTo(Ljava/nio/ByteBuffer;)I

    move-result p0

    if-nez p0, :cond_2

    move p0, v2

    goto :goto_1

    :cond_2
    move p0, v0

    :goto_1
    if-eqz v1, :cond_3

    if-eqz p0, :cond_3

    move v0, v2

    :cond_3
    :goto_2
    return v0
.end method

.method public static b(Lcn/nubia/videogenerator/a/h$a;)Z
    .locals 1

    .line 149
    sget-object v0, Lcn/nubia/videogenerator/a/h;->r:Lcn/nubia/videogenerator/a/h$a;

    invoke-static {p0, v0}, Lcn/nubia/videogenerator/a/h;->a(Lcn/nubia/videogenerator/a/h$a;Lcn/nubia/videogenerator/a/h$a;)Z

    move-result p0

    return p0
.end method
