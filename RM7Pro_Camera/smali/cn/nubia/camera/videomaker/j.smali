.class public Lcn/nubia/camera/videomaker/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/videomaker/k$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/videomaker/j$b;,
        Lcn/nubia/camera/videomaker/j$c;,
        Lcn/nubia/camera/videomaker/j$a;
    }
.end annotation


# instance fields
.field private A:Ljava/io/File;

.field private B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:I

.field private F:Landroid/app/Activity;

.field private G:Landroid/view/ViewGroup;

.field private final a:I

.field private b:I

.field private final c:I

.field private d:Landroid/hardware/Camera;

.field private e:J

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lcn/nubia/camera/videomaker/j$a;

.field private o:Lcn/nubia/camera/videomaker/j$c;

.field private p:Lcn/nubia/camera/ad/a;

.field private q:Lcn/nubia/algorithm/utils/BufferManager;

.field private r:Lcn/nubia/camera/videomaker/j$b;

.field private s:J

.field private t:J

.field private u:I

.field private v:Ljava/lang/String;

.field private w:Lcn/nubia/camera/videomaker/k;

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private y:Landroid/media/MediaRecorder;

.field private z:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/videomaker/j$a;Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 5

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 69
    iput v0, p0, Lcn/nubia/camera/videomaker/j;->a:I

    const/16 v0, 0x64

    .line 71
    iput v0, p0, Lcn/nubia/camera/videomaker/j;->c:I

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcn/nubia/camera/videomaker/j;->d:Landroid/hardware/Camera;

    const-wide/16 v1, 0x0

    .line 74
    iput-wide v1, p0, Lcn/nubia/camera/videomaker/j;->e:J

    const/4 v3, 0x0

    .line 75
    iput v3, p0, Lcn/nubia/camera/videomaker/j;->f:I

    .line 76
    iput v3, p0, Lcn/nubia/camera/videomaker/j;->g:I

    .line 77
    iput v3, p0, Lcn/nubia/camera/videomaker/j;->h:I

    .line 79
    iput-boolean v3, p0, Lcn/nubia/camera/videomaker/j;->i:Z

    const/4 v4, 0x1

    .line 80
    iput-boolean v4, p0, Lcn/nubia/camera/videomaker/j;->j:Z

    .line 81
    iput-boolean v3, p0, Lcn/nubia/camera/videomaker/j;->k:Z

    .line 82
    iput-boolean v3, p0, Lcn/nubia/camera/videomaker/j;->l:Z

    .line 83
    iput-boolean v4, p0, Lcn/nubia/camera/videomaker/j;->m:Z

    .line 87
    iput-object v0, p0, Lcn/nubia/camera/videomaker/j;->o:Lcn/nubia/camera/videomaker/j$c;

    .line 89
    iput-object v0, p0, Lcn/nubia/camera/videomaker/j;->p:Lcn/nubia/camera/ad/a;

    .line 90
    iput-object v0, p0, Lcn/nubia/camera/videomaker/j;->q:Lcn/nubia/algorithm/utils/BufferManager;

    .line 91
    iput-object v0, p0, Lcn/nubia/camera/videomaker/j;->r:Lcn/nubia/camera/videomaker/j$b;

    .line 93
    iput-wide v1, p0, Lcn/nubia/camera/videomaker/j;->s:J

    .line 94
    iput-wide v1, p0, Lcn/nubia/camera/videomaker/j;->t:J

    .line 95
    iput v3, p0, Lcn/nubia/camera/videomaker/j;->u:I

    .line 96
    iput-object v0, p0, Lcn/nubia/camera/videomaker/j;->v:Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lcn/nubia/camera/videomaker/j;->w:Lcn/nubia/camera/videomaker/k;

    .line 98
    iput-object v0, p0, Lcn/nubia/camera/videomaker/j;->x:Ljava/util/ArrayList;

    .line 100
    iput-object v0, p0, Lcn/nubia/camera/videomaker/j;->y:Landroid/media/MediaRecorder;

    .line 101
    iput-object v0, p0, Lcn/nubia/camera/videomaker/j;->z:Ljava/io/File;

    .line 102
    iput-object v0, p0, Lcn/nubia/camera/videomaker/j;->A:Ljava/io/File;

    .line 103
    iput-object v0, p0, Lcn/nubia/camera/videomaker/j;->B:Ljava/util/ArrayList;

    .line 104
    iput-object v0, p0, Lcn/nubia/camera/videomaker/j;->C:Ljava/lang/String;

    .line 105
    iput-object v0, p0, Lcn/nubia/camera/videomaker/j;->D:Ljava/lang/String;

    .line 107
    iput v3, p0, Lcn/nubia/camera/videomaker/j;->E:I

    .line 114
    iput-object p1, p0, Lcn/nubia/camera/videomaker/j;->p:Lcn/nubia/camera/ad/a;

    .line 115
    iput-object p2, p0, Lcn/nubia/camera/videomaker/j;->n:Lcn/nubia/camera/videomaker/j$a;

    .line 116
    new-instance p1, Lcn/nubia/algorithm/utils/BufferManager;

    invoke-direct {p1}, Lcn/nubia/algorithm/utils/BufferManager;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/videomaker/j;->q:Lcn/nubia/algorithm/utils/BufferManager;

    .line 117
    new-instance p1, Lcn/nubia/camera/videomaker/j$c;

    invoke-direct {p1, p0, v0}, Lcn/nubia/camera/videomaker/j$c;-><init>(Lcn/nubia/camera/videomaker/j;Lcn/nubia/camera/videomaker/j$1;)V

    iput-object p1, p0, Lcn/nubia/camera/videomaker/j;->o:Lcn/nubia/camera/videomaker/j$c;

    .line 118
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/videomaker/j;->x:Ljava/util/ArrayList;

    .line 119
    iput v3, p0, Lcn/nubia/camera/videomaker/j;->E:I

    .line 120
    iput-boolean v4, p0, Lcn/nubia/camera/videomaker/j;->m:Z

    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/nubia/camera/videomaker/j;->p()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "shortvideomaker"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/videomaker/j;->v:Ljava/lang/String;

    .line 123
    iput-object p3, p0, Lcn/nubia/camera/videomaker/j;->F:Landroid/app/Activity;

    .line 124
    iput-object p4, p0, Lcn/nubia/camera/videomaker/j;->G:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/videomaker/j;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcn/nubia/camera/videomaker/j;->h:I

    return p1
.end method

.method static synthetic a(Lcn/nubia/camera/videomaker/j;J)J
    .locals 0

    .line 46
    iput-wide p1, p0, Lcn/nubia/camera/videomaker/j;->s:J

    return-wide p1
.end method

.method static synthetic a(Lcn/nubia/camera/videomaker/j;Lcn/nubia/algorithm/utils/BufferManager;)Lcn/nubia/algorithm/utils/BufferManager;
    .locals 0

    .line 46
    iput-object p1, p0, Lcn/nubia/camera/videomaker/j;->q:Lcn/nubia/algorithm/utils/BufferManager;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/videomaker/j;)Lcn/nubia/camera/videomaker/j$a;
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/nubia/camera/videomaker/j;->n:Lcn/nubia/camera/videomaker/j$a;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-static {p0}, Lcn/nubia/camera/videomaker/j;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/videomaker/j;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcn/nubia/camera/videomaker/j;->j:Z

    return p1
.end method

.method static synthetic a(Lcn/nubia/camera/videomaker/j;[BLjava/lang/String;)Z
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/videomaker/j;->a([BLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a([BJ)Z
    .locals 2

    .line 402
    iget v0, p0, Lcn/nubia/camera/videomaker/j;->g:I

    rem-int/lit8 v0, v0, 0x64

    invoke-static {v0, p1}, Lcn/nubia/algorithm/utils/BufferManager;->putData(I[B)Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 404
    iget v1, p0, Lcn/nubia/camera/videomaker/j;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Lcn/nubia/camera/videomaker/j;->g:I

    .line 405
    iget v1, p0, Lcn/nubia/camera/videomaker/j;->E:I

    add-int/2addr v1, v0

    iput v1, p0, Lcn/nubia/camera/videomaker/j;->E:I

    .line 406
    iput-wide p2, p0, Lcn/nubia/camera/videomaker/j;->t:J

    .line 407
    iget-object p2, p0, Lcn/nubia/camera/videomaker/j;->o:Lcn/nubia/camera/videomaker/j$c;

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Lcn/nubia/camera/videomaker/j$c;->sendEmptyMessage(I)Z

    :cond_0
    return p1
.end method

.method private a([BLjava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 631
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 632
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 638
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    :goto_0
    :try_start_3
    const-string p2, "VideoMakerMultiShoot"

    const-string v1, "Failed to write image"

    .line 634
    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 p1, 0x0

    .line 638
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    return p1

    :goto_1
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 641
    :catch_4
    throw p1
.end method

.method static synthetic b(Lcn/nubia/camera/videomaker/j;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/j;->m()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 371
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 372
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 374
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 375
    invoke-static {v1}, Lcn/nubia/camera/videomaker/b/a;->a(Ljava/io/File;)Z

    :cond_1
    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/videomaker/j;)Landroid/util/Size;
    .locals 0

    .line 46
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/j;->o()Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/String;)V
    .locals 2

    const-string v0, "VideoMakerMultiShoot"

    const/4 v1, 0x3

    .line 690
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 691
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/videomaker/j;)Lcn/nubia/algorithm/utils/BufferManager;
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/nubia/camera/videomaker/j;->q:Lcn/nubia/algorithm/utils/BufferManager;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/camera/videomaker/j;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/nubia/camera/videomaker/j;->v:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcn/nubia/camera/videomaker/j;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcn/nubia/camera/videomaker/j;->k:Z

    return p0
.end method

.method static synthetic g(Lcn/nubia/camera/videomaker/j;)I
    .locals 0

    .line 46
    iget p0, p0, Lcn/nubia/camera/videomaker/j;->h:I

    return p0
.end method

.method static synthetic h(Lcn/nubia/camera/videomaker/j;)I
    .locals 0

    .line 46
    iget p0, p0, Lcn/nubia/camera/videomaker/j;->g:I

    return p0
.end method

.method static synthetic i(Lcn/nubia/camera/videomaker/j;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcn/nubia/camera/videomaker/j;->j:Z

    return p0
.end method

.method static synthetic j(Lcn/nubia/camera/videomaker/j;)I
    .locals 0

    .line 46
    iget p0, p0, Lcn/nubia/camera/videomaker/j;->u:I

    return p0
.end method

.method private j()V
    .locals 4

    const-string v0, "VideoMakerMultiShoot"

    const-string v1, "ClearData"

    .line 190
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcn/nubia/camera/videomaker/j;->x:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 192
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 193
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/j;->k()V

    .line 195
    iget-object v0, p0, Lcn/nubia/camera/videomaker/j;->z:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 196
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/camera/videomaker/j;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcn/nubia/camera/videomaker/j;->z:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 198
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    invoke-static {v0}, Lcn/nubia/camera/videomaker/b/a;->a(Ljava/io/File;)Z

    :cond_1
    return-void
.end method

.method static synthetic k(Lcn/nubia/camera/videomaker/j;)J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcn/nubia/camera/videomaker/j;->s:J

    return-wide v0
.end method

.method private k()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcn/nubia/camera/videomaker/j;->B:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 207
    iput-object v0, p0, Lcn/nubia/camera/videomaker/j;->B:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method static synthetic l(Lcn/nubia/camera/videomaker/j;)Ljava/util/ArrayList;
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/nubia/camera/videomaker/j;->x:Ljava/util/ArrayList;

    return-object p0
.end method

.method private l()V
    .locals 4

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/nubia/camera/videomaker/j;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "shortvideomaker"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/videomaker/j;->v:Ljava/lang/String;

    .line 284
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcn/nubia/camera/videomaker/j;->v:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/camera/videomaker/j;->z:Ljava/io/File;

    .line 285
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/camera/videomaker/j;->v:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recording"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/camera/videomaker/j;->A:Ljava/io/File;

    .line 286
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcn/nubia/camera/videomaker/j;->A:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 290
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/camera/videomaker/j;->A:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "videoMakerRecorder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "amr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/videomaker/j;->D:Ljava/lang/String;

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/videomaker/j;->B:Ljava/util/ArrayList;

    .line 295
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/nubia/camera/videomaker/j;->A:Ljava/io/File;

    const-string v2, ".nomedia"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 296
    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Cannot create file .nomedia"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 299
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private m()V
    .locals 6

    .line 305
    iget-boolean v0, p0, Lcn/nubia/camera/videomaker/j;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "startRecording"

    .line 306
    invoke-static {v0}, Lcn/nubia/camera/videomaker/j;->c(Ljava/lang/String;)V

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/camera/videomaker/j;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "recording"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "amr"

    invoke-static {v0, v1}, Lcn/nubia/camera/videomaker/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/videomaker/j;->C:Ljava/lang/String;

    if-nez v0, :cond_1

    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/videomaker/j;->y:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 314
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 315
    iput-object v1, p0, Lcn/nubia/camera/videomaker/j;->y:Landroid/media/MediaRecorder;

    .line 318
    :cond_2
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/videomaker/j;->y:Landroid/media/MediaRecorder;

    if-nez v0, :cond_3

    return-void

    .line 320
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/videomaker/j;->p:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 322
    iget-object v2, p0, Lcn/nubia/camera/videomaker/j;->y:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    double-to-float v0, v4

    invoke-virtual {v2, v3, v0}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 326
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/videomaker/j;->y:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 328
    iget-object v0, p0, Lcn/nubia/camera/videomaker/j;->y:Landroid/media/MediaRecorder;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 329
    iget-object v0, p0, Lcn/nubia/camera/videomaker/j;->y:Landroid/media/MediaRecorder;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 330
    iget-object v0, p0, Lcn/nubia/camera/videomaker/j;->y:Landroid/media/MediaRecorder;

    const/16 v2, 0x3200

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 331
    iget-object v0, p0, Lcn/nubia/camera/videomaker/j;->y:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcn/nubia/camera/videomaker/j;->C:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcn/nubia/camera/videomaker/j;->y:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 333
    iget-object v0, p0, Lcn/nubia/camera/videomaker/j;->y:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    iget-object v0, p0, Lcn/nubia/camera/videomaker/j;->B:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/videomaker/j;->B:Ljava/util/ArrayList;

    .line 345
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startRecording size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/videomaker/j;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  add mCurrentRecorderFilePath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/videomaker/j;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMakerMultiShoot"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Lcn/nubia/camera/videomaker/j;->B:Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/nubia/camera/videomaker/j;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :catch_0
    move-exception v0

    .line 335
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 336
    iget-object v0, p0, Lcn/nubia/camera/videomaker/j;->y:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 337
    iget-object v0, p0, Lcn/nubia/camera/videomaker/j;->y:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 338
    iput-object v1, p0, Lcn/nubia/camera/videomaker/j;->y:Landroid/media/MediaRecorder;

    .line 339
    iget-object v0, p0, Lcn/nubia/camera/videomaker/j;->C:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/camera/videomaker/j;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic m(Lcn/nubia/camera/videomaker/j;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcn/nubia/camera/videomaker/j;->l:Z

    return p0
.end method

.method private declared-synchronized n()V
    .locals 2

    monitor-enter p0

    .line 351
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/videomaker/j;->y:Landroid/media/MediaRecorder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "VideoMakerMultiShoot"

    const-string v1, "stopRecording"

    .line 352
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 355
    :try_start_2
    iget-object v1, p0, Lcn/nubia/camera/videomaker/j;->y:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 364
    :try_start_3
    iget-object v1, p0, Lcn/nubia/camera/videomaker/j;->y:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    .line 365
    iget-object v1, p0, Lcn/nubia/camera/videomaker/j;->y:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 366
    iput-object v0, p0, Lcn/nubia/camera/videomaker/j;->y:Landroid/media/MediaRecorder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 367
    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    .line 357
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 358
    iget-object v1, p0, Lcn/nubia/camera/videomaker/j;->y:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    .line 359
    iget-object v1, p0, Lcn/nubia/camera/videomaker/j;->y:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 360
    iput-object v0, p0, Lcn/nubia/camera/videomaker/j;->y:Landroid/media/MediaRecorder;

    .line 361
    iget-object v0, p0, Lcn/nubia/camera/videomaker/j;->C:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/nubia/camera/videomaker/j;->b(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 362
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic n(Lcn/nubia/camera/videomaker/j;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcn/nubia/camera/videomaker/j;->i:Z

    return p0
.end method

.method private o()Landroid/util/Size;
    .locals 3

    .line 650
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x280

    const/16 v2, 0x1e0

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method static synthetic o(Lcn/nubia/camera/videomaker/j;)Lcn/nubia/camera/videomaker/j$c;
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/nubia/camera/videomaker/j;->o:Lcn/nubia/camera/videomaker/j$c;

    return-object p0
.end method

.method static synthetic p(Lcn/nubia/camera/videomaker/j;)I
    .locals 0

    .line 46
    iget p0, p0, Lcn/nubia/camera/videomaker/j;->E:I

    return p0
.end method

.method private p()Ljava/lang/String;
    .locals 2

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic q(Lcn/nubia/camera/videomaker/j;)I
    .locals 0

    .line 46
    iget p0, p0, Lcn/nubia/camera/videomaker/j;->f:I

    return p0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 224
    iput p1, p0, Lcn/nubia/camera/videomaker/j;->f:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 220
    iput-wide p1, p0, Lcn/nubia/camera/videomaker/j;->e:J

    return-void
.end method

.method public a([B)V
    .locals 6

    .line 380
    iget-boolean v0, p0, Lcn/nubia/camera/videomaker/j;->j:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string p1, "onPreviewFrame return"

    .line 381
    invoke-static {p1}, Lcn/nubia/camera/videomaker/j;->c(Ljava/lang/String;)V

    return-void

    .line 384
    :cond_0
    iget v0, p0, Lcn/nubia/camera/videomaker/j;->E:I

    iget v2, p0, Lcn/nubia/camera/videomaker/j;->f:I

    if-ne v0, v2, :cond_1

    .line 385
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/j;->e()V

    return-void

    .line 388
    :cond_1
    iget v0, p0, Lcn/nubia/camera/videomaker/j;->g:I

    iget v2, p0, Lcn/nubia/camera/videomaker/j;->h:I

    add-int/lit8 v2, v2, 0x64

    if-ge v0, v2, :cond_3

    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 390
    iget-wide v2, p0, Lcn/nubia/camera/videomaker/j;->t:J

    sub-long v2, v0, v2

    .line 391
    iget-wide v4, p0, Lcn/nubia/camera/videomaker/j;->e:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    iget v2, p0, Lcn/nubia/camera/videomaker/j;->g:I

    if-nez v2, :cond_4

    .line 392
    :cond_2
    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/camera/videomaker/j;->a([BJ)Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 397
    :cond_3
    iput-boolean v1, p0, Lcn/nubia/camera/videomaker/j;->l:Z

    :cond_4
    return-void
.end method

.method public a()Z
    .locals 1

    .line 228
    iget-boolean v0, p0, Lcn/nubia/camera/videomaker/j;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/videomaker/j;->q:Lcn/nubia/algorithm/utils/BufferManager;

    if-eqz v0, :cond_0

    .line 229
    invoke-static {}, Lcn/nubia/algorithm/utils/BufferManager;->getRemainImages()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 2

    const-string v0, "cancelCapture"

    .line 241
    invoke-static {v0}, Lcn/nubia/camera/videomaker/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 242
    iput-boolean v0, p0, Lcn/nubia/camera/videomaker/j;->k:Z

    .line 244
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/j;->j()V

    const/4 v1, 0x0

    .line 245
    iput v1, p0, Lcn/nubia/camera/videomaker/j;->E:I

    .line 246
    iput-boolean v0, p0, Lcn/nubia/camera/videomaker/j;->m:Z

    .line 248
    iget-object v1, p0, Lcn/nubia/camera/videomaker/j;->p:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/d/a;->a()V

    .line 249
    iget-object v1, p0, Lcn/nubia/camera/videomaker/j;->o:Lcn/nubia/camera/videomaker/j$c;

    if-eqz v1, :cond_0

    .line 250
    invoke-virtual {v1, v0}, Lcn/nubia/camera/videomaker/j$c;->removeMessages(I)V

    .line 251
    iget-object v0, p0, Lcn/nubia/camera/videomaker/j;->o:Lcn/nubia/camera/videomaker/j$c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/camera/videomaker/j$c;->removeMessages(I)V

    .line 252
    iget-object v0, p0, Lcn/nubia/camera/videomaker/j;->o:Lcn/nubia/camera/videomaker/j$c;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/nubia/camera/videomaker/j$c;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public c()V
    .locals 8

    const-string v0, "doneCapture"

    .line 257
    invoke-static {v0}, Lcn/nubia/camera/videomaker/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 258
    iput-boolean v0, p0, Lcn/nubia/camera/videomaker/j;->k:Z

    .line 259
    iget-object v1, p0, Lcn/nubia/camera/videomaker/j;->o:Lcn/nubia/camera/videomaker/j$c;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/videomaker/j$c;->removeMessages(I)V

    .line 260
    iget-object v1, p0, Lcn/nubia/camera/videomaker/j;->o:Lcn/nubia/camera/videomaker/j$c;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcn/nubia/camera/videomaker/j$c;->removeMessages(I)V

    .line 266
    iget-object v1, p0, Lcn/nubia/camera/videomaker/j;->w:Lcn/nubia/camera/videomaker/k;

    if-nez v1, :cond_0

    .line 267
    new-instance v1, Lcn/nubia/camera/videomaker/k;

    iget-object v3, p0, Lcn/nubia/camera/videomaker/j;->p:Lcn/nubia/camera/ad/a;

    iget-object v4, p0, Lcn/nubia/camera/videomaker/j;->x:Ljava/util/ArrayList;

    iget-object v5, p0, Lcn/nubia/camera/videomaker/j;->v:Ljava/lang/String;

    iget-object v6, p0, Lcn/nubia/camera/videomaker/j;->F:Landroid/app/Activity;

    iget-object v7, p0, Lcn/nubia/camera/videomaker/j;->G:Landroid/view/ViewGroup;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcn/nubia/camera/videomaker/k;-><init>(Lcn/nubia/camera/ad/a;Ljava/util/ArrayList;Ljava/lang/String;Landroid/app/Activity;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcn/nubia/camera/videomaker/j;->w:Lcn/nubia/camera/videomaker/k;

    .line 269
    invoke-virtual {v1, p0}, Lcn/nubia/camera/videomaker/k;->a(Lcn/nubia/camera/videomaker/k$a;)V

    .line 272
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/videomaker/j;->w:Lcn/nubia/camera/videomaker/k;

    iget-object v2, p0, Lcn/nubia/camera/videomaker/j;->B:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/videomaker/k;->a(Ljava/util/ArrayList;)V

    const/4 v1, 0x0

    .line 273
    iput v1, p0, Lcn/nubia/camera/videomaker/j;->E:I

    .line 274
    iput-boolean v0, p0, Lcn/nubia/camera/videomaker/j;->m:Z

    .line 276
    iget-object v0, p0, Lcn/nubia/camera/videomaker/j;->p:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->a()V

    .line 277
    iget-object v0, p0, Lcn/nubia/camera/videomaker/j;->o:Lcn/nubia/camera/videomaker/j$c;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcn/nubia/camera/videomaker/j$c;->sendEmptyMessage(I)Z

    .line 278
    iget-object v0, p0, Lcn/nubia/camera/videomaker/j;->w:Lcn/nubia/camera/videomaker/k;

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/k;->c()V

    return-void
.end method

.method public d()V
    .locals 7

    const-string v0, "startMultiShoot"

    .line 413
    invoke-static {v0}, Lcn/nubia/camera/videomaker/j;->c(Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcn/nubia/camera/videomaker/j;->q:Lcn/nubia/algorithm/utils/BufferManager;

    if-nez v0, :cond_0

    .line 416
    new-instance v0, Lcn/nubia/algorithm/utils/BufferManager;

    invoke-direct {v0}, Lcn/nubia/algorithm/utils/BufferManager;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/videomaker/j;->q:Lcn/nubia/algorithm/utils/BufferManager;

    .line 418
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsMultiShootDone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/camera/videomaker/j;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/videomaker/j;->c(Ljava/lang/String;)V

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDataProvider.getRemainImages() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/nubia/algorithm/utils/BufferManager;->getRemainImages()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/videomaker/j;->c(Ljava/lang/String;)V

    .line 420
    iget-boolean v0, p0, Lcn/nubia/camera/videomaker/j;->j:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lcn/nubia/algorithm/utils/BufferManager;->getRemainImages()I

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 425
    :cond_1
    iget v0, p0, Lcn/nubia/camera/videomaker/j;->E:I

    iget v1, p0, Lcn/nubia/camera/videomaker/j;->f:I

    if-ne v0, v1, :cond_2

    const-string v0, "Max Number"

    .line 426
    invoke-static {v0}, Lcn/nubia/camera/videomaker/j;->c(Ljava/lang/String;)V

    return-void

    .line 429
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/camera/videomaker/j;->m:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 430
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/j;->k()V

    .line 432
    iget-object v0, p0, Lcn/nubia/camera/videomaker/j;->o:Lcn/nubia/camera/videomaker/j$c;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/videomaker/j$c;->sendEmptyMessage(I)Z

    .line 433
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/j;->l()V

    .line 434
    iput-boolean v2, p0, Lcn/nubia/camera/videomaker/j;->m:Z

    goto :goto_0

    .line 436
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/videomaker/j;->o:Lcn/nubia/camera/videomaker/j$c;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcn/nubia/camera/videomaker/j$c;->sendEmptyMessage(I)Z

    .line 439
    :goto_0
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/j;->o()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-direct {p0}, Lcn/nubia/camera/videomaker/j;->o()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    const/4 v3, 0x3

    mul-int/2addr v0, v3

    const/4 v4, 0x2

    div-int/2addr v0, v4

    iput v0, p0, Lcn/nubia/camera/videomaker/j;->b:I

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPreviewSize: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/camera/videomaker/j;->o()Landroid/util/Size;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/camera/videomaker/j;->o()Landroid/util/Size;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/videomaker/j;->c(Ljava/lang/String;)V

    .line 441
    iput-boolean v2, p0, Lcn/nubia/camera/videomaker/j;->j:Z

    .line 442
    iput-boolean v1, p0, Lcn/nubia/camera/videomaker/j;->i:Z

    .line 443
    iput-boolean v2, p0, Lcn/nubia/camera/videomaker/j;->k:Z

    .line 444
    iput-boolean v2, p0, Lcn/nubia/camera/videomaker/j;->l:Z

    .line 445
    iput v2, p0, Lcn/nubia/camera/videomaker/j;->h:I

    .line 446
    iput v2, p0, Lcn/nubia/camera/videomaker/j;->g:I

    .line 449
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    iget-object v5, p0, Lcn/nubia/camera/videomaker/j;->p:Lcn/nubia/camera/ad/a;

    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    iget-object v5, p0, Lcn/nubia/camera/videomaker/j;->p:Lcn/nubia/camera/ad/a;

    .line 450
    invoke-virtual {v5}, Lcn/nubia/camera/ad/a;->q()Lcn/nubia/camera/al/c;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/camera/al/c;->c()I

    move-result v5

    .line 448
    invoke-static {v0, v5}, Lcn/nubia/camera/aq/f;->a(Landroid/hardware/camera2/CameraCharacteristics;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/videomaker/j;->u:I

    .line 452
    new-instance v0, Lcn/nubia/camera/videomaker/j$b;

    invoke-direct {v0, p0}, Lcn/nubia/camera/videomaker/j$b;-><init>(Lcn/nubia/camera/videomaker/j;)V

    iput-object v0, p0, Lcn/nubia/camera/videomaker/j;->r:Lcn/nubia/camera/videomaker/j$b;

    .line 454
    iget v0, p0, Lcn/nubia/camera/videomaker/j;->b:I

    int-to-long v5, v0

    const/16 v0, 0x64

    invoke-static {v5, v6, v0}, Lcn/nubia/algorithm/utils/BufferManager;->initDataBuffer(JI)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "mDataProvider.initDataBuffer failed"

    .line 455
    invoke-static {v0}, Lcn/nubia/camera/videomaker/j;->c(Ljava/lang/String;)V

    return-void

    .line 463
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/videomaker/j;->p:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    new-array v3, v3, [Lcn/nubia/camera/d/d;

    sget-object v5, Lcn/nubia/camera/d/e;->a:Lcn/nubia/camera/d/e;

    aput-object v5, v3, v2

    sget-object v5, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    aput-object v5, v3, v1

    sget-object v1, Lcn/nubia/camera/d/c;->a:Lcn/nubia/camera/d/c;

    aput-object v1, v3, v4

    invoke-virtual {v0, v3}, Lcn/nubia/camera/d/a;->a([Lcn/nubia/camera/d/d;)V

    :goto_1
    if-ge v2, v4, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 469
    :cond_5
    iget-object v0, p0, Lcn/nubia/camera/videomaker/j;->r:Lcn/nubia/camera/videomaker/j$b;

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/j$b;->start()V

    .line 471
    iget-object v0, p0, Lcn/nubia/camera/videomaker/j;->o:Lcn/nubia/camera/videomaker/j$c;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcn/nubia/camera/videomaker/j$c;->removeMessages(I)V

    .line 472
    iget-object v0, p0, Lcn/nubia/camera/videomaker/j;->o:Lcn/nubia/camera/videomaker/j$c;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/camera/videomaker/j$c;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_6
    :goto_2
    const-string v0, "has remain images, return!"

    .line 421
    invoke-static {v0}, Lcn/nubia/camera/videomaker/j;->c(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopMultiShoot, mIsMultiShootOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/camera/videomaker/j;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/videomaker/j;->c(Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcn/nubia/camera/videomaker/j;->o:Lcn/nubia/camera/videomaker/j$c;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcn/nubia/camera/videomaker/j$c;->removeMessages(I)V

    .line 480
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/j;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    iget-object v0, p0, Lcn/nubia/camera/videomaker/j;->o:Lcn/nubia/camera/videomaker/j$c;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcn/nubia/camera/videomaker/j$c;->sendEmptyMessage(I)Z

    .line 485
    :cond_0
    iget v0, p0, Lcn/nubia/camera/videomaker/j;->E:I

    if-nez v0, :cond_1

    .line 486
    iget-object v0, p0, Lcn/nubia/camera/videomaker/j;->o:Lcn/nubia/camera/videomaker/j$c;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcn/nubia/camera/videomaker/j$c;->sendEmptyMessage(I)Z

    .line 487
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/j;->b()V

    .line 490
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/camera/videomaker/j;->i:Z

    if-eqz v0, :cond_2

    .line 491
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/j;->n()V

    const/4 v0, 0x0

    .line 493
    iput-boolean v0, p0, Lcn/nubia/camera/videomaker/j;->i:Z

    :cond_2
    return-void
.end method

.method public f()Lcn/nubia/camera/videomaker/k;
    .locals 1

    .line 678
    iget-object v0, p0, Lcn/nubia/camera/videomaker/j;->w:Lcn/nubia/camera/videomaker/k;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 682
    iget-object v0, p0, Lcn/nubia/camera/videomaker/j;->w:Lcn/nubia/camera/videomaker/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/k;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()V
    .locals 1

    .line 697
    iget-object v0, p0, Lcn/nubia/camera/videomaker/j;->n:Lcn/nubia/camera/videomaker/j$a;

    invoke-interface {v0}, Lcn/nubia/camera/videomaker/j$a;->n()V

    return-void
.end method

.method public i()Z
    .locals 1

    .line 724
    iget-boolean v0, p0, Lcn/nubia/camera/videomaker/j;->m:Z

    return v0
.end method
