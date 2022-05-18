.class public Lcn/nubia/camera/r/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/r/o$a;,
        Lcn/nubia/camera/r/o$b;
    }
.end annotation


# instance fields
.field a:Z

.field b:Lcn/nubia/camera/al/a$a;

.field private c:Lcn/nubia/camera/al/a;

.field private d:Z

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/r/o$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:[F

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/r/o$a;",
            ">;"
        }
    .end annotation
.end field

.field private h:J

.field private i:Z

.field private j:J

.field private k:Lcn/nubia/camera/r/o$b;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/al/a;)V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "StableMonitor"

    const/4 v1, 0x3

    .line 15
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/camera/r/o;->a:Z

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcn/nubia/camera/r/o;->c:Lcn/nubia/camera/al/a;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcn/nubia/camera/r/o;->d:Z

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/nubia/camera/r/o;->e:Ljava/util/ArrayList;

    new-array v1, v1, [F

    .line 28
    iput-object v1, p0, Lcn/nubia/camera/r/o;->f:[F

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/r/o;->g:Ljava/util/ArrayList;

    const-wide/16 v1, -0x1

    .line 32
    iput-wide v1, p0, Lcn/nubia/camera/r/o;->h:J

    .line 40
    iput-boolean v0, p0, Lcn/nubia/camera/r/o;->i:Z

    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, p0, Lcn/nubia/camera/r/o;->j:J

    .line 122
    new-instance v0, Lcn/nubia/camera/r/o$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/r/o$1;-><init>(Lcn/nubia/camera/r/o;)V

    iput-object v0, p0, Lcn/nubia/camera/r/o;->b:Lcn/nubia/camera/al/a$a;

    .line 57
    iput-object p1, p0, Lcn/nubia/camera/r/o;->c:Lcn/nubia/camera/al/a;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/r/o;J)J
    .locals 0

    .line 13
    iput-wide p1, p0, Lcn/nubia/camera/r/o;->h:J

    return-wide p1
.end method

.method static synthetic a(Lcn/nubia/camera/r/o;)Ljava/util/ArrayList;
    .locals 0

    .line 13
    iget-object p0, p0, Lcn/nubia/camera/r/o;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/r/o;Z)Z
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcn/nubia/camera/r/o;->i:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/r/o;J)J
    .locals 0

    .line 13
    iput-wide p1, p0, Lcn/nubia/camera/r/o;->j:J

    return-wide p1
.end method

.method static synthetic b(Lcn/nubia/camera/r/o;)[F
    .locals 0

    .line 13
    iget-object p0, p0, Lcn/nubia/camera/r/o;->f:[F

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/r/o;)Ljava/util/ArrayList;
    .locals 0

    .line 13
    iget-object p0, p0, Lcn/nubia/camera/r/o;->g:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/r/o;)J
    .locals 2

    .line 13
    iget-wide v0, p0, Lcn/nubia/camera/r/o;->h:J

    return-wide v0
.end method

.method private d()Z
    .locals 5

    .line 114
    iget-object v0, p0, Lcn/nubia/camera/r/o;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    .line 115
    iget-object v0, p0, Lcn/nubia/camera/r/o;->f:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    iget-object v3, p0, Lcn/nubia/camera/r/o;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/r/o;->f:[F

    aget v0, v0, v1

    iget-object v4, p0, Lcn/nubia/camera/r/o;->e:Ljava/util/ArrayList;

    .line 116
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/r/o;->f:[F

    const/4 v4, 0x2

    aget v0, v0, v4

    iget-object v4, p0, Lcn/nubia/camera/r/o;->e:Ljava/util/ArrayList;

    .line 117
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic e(Lcn/nubia/camera/r/o;)Z
    .locals 0

    .line 13
    iget-boolean p0, p0, Lcn/nubia/camera/r/o;->i:Z

    return p0
.end method

.method static synthetic f(Lcn/nubia/camera/r/o;)Lcn/nubia/camera/r/o$b;
    .locals 0

    .line 13
    iget-object p0, p0, Lcn/nubia/camera/r/o;->k:Lcn/nubia/camera/r/o$b;

    return-object p0
.end method

.method static synthetic g(Lcn/nubia/camera/r/o;)Z
    .locals 0

    .line 13
    invoke-direct {p0}, Lcn/nubia/camera/r/o;->d()Z

    move-result p0

    return p0
.end method

.method static synthetic h(Lcn/nubia/camera/r/o;)J
    .locals 2

    .line 13
    iget-wide v0, p0, Lcn/nubia/camera/r/o;->j:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 3

    monitor-enter p0

    .line 61
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/camera/r/o;->d:Z

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcn/nubia/camera/r/o;->c:Lcn/nubia/camera/al/a;

    iget-object v1, p0, Lcn/nubia/camera/r/o;->b:Lcn/nubia/camera/al/a$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/al/a;->a(Lcn/nubia/camera/al/a$a;)V

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcn/nubia/camera/r/o;->d:Z

    const-string v0, "StableMonitor"

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start sensor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/camera/r/o;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcn/nubia/camera/r/o$b;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcn/nubia/camera/r/o;->k:Lcn/nubia/camera/r/o$b;

    return-void
.end method

.method public a(Ljava/util/ArrayList;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/r/o$a;",
            ">;)Z"
        }
    .end annotation

    .line 173
    iget-boolean v0, p0, Lcn/nubia/camera/r/o;->i:Z

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 174
    fill-array-data v1, :array_0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 176
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v3, v5, :cond_0

    .line 177
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/camera/r/o$a;

    .line 178
    aget v8, v1, v2

    iget-object v9, v5, Lcn/nubia/camera/r/o$a;->a:[F

    aget v9, v9, v2

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    add-float/2addr v8, v9

    aput v8, v1, v2

    .line 179
    aget v8, v1, v7

    iget-object v9, v5, Lcn/nubia/camera/r/o$a;->a:[F

    aget v9, v9, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    add-float/2addr v8, v9

    aput v8, v1, v7

    .line 180
    aget v7, v1, v6

    iget-object v5, v5, Lcn/nubia/camera/r/o$a;->a:[F

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v7, v5

    aput v7, v1, v6

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-lez v4, :cond_3

    .line 184
    iget-boolean p1, p0, Lcn/nubia/camera/r/o;->i:Z

    if-eqz p1, :cond_2

    .line 185
    aget p1, v1, v2

    int-to-float v0, v4

    div-float/2addr p1, v0

    const v3, 0x3c03126f    # 0.008f

    cmpg-float p1, p1, v3

    if-gez p1, :cond_1

    aget p1, v1, v7

    div-float/2addr p1, v0

    cmpg-float p1, p1, v3

    if-gez p1, :cond_1

    aget p1, v1, v6

    div-float/2addr p1, v0

    cmpg-float p1, p1, v3

    if-gez p1, :cond_1

    :goto_1
    move v0, v7

    goto :goto_2

    :cond_1
    move v0, v2

    goto :goto_2

    .line 190
    :cond_2
    aget p1, v1, v2

    int-to-float v0, v4

    div-float/2addr p1, v0

    const v3, 0x3b03126f    # 0.002f

    cmpg-float p1, p1, v3

    if-gez p1, :cond_1

    aget p1, v1, v7

    div-float/2addr p1, v0

    cmpg-float p1, p1, v3

    if-gez p1, :cond_1

    aget p1, v1, v6

    div-float/2addr p1, v0

    cmpg-float p1, p1, v3

    if-gez p1, :cond_1

    goto :goto_1

    .line 195
    :cond_3
    :goto_2
    iget-boolean p1, p0, Lcn/nubia/camera/r/o;->a:Z

    if-eqz p1, :cond_4

    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eventNum:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ", average value ["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    aget v2, v1, v2

    int-to-float v3, v4

    div-float/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    aget v4, v1, v7

    div-float/2addr v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    aget v1, v1, v6

    div-float/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "], isFixed:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "StableMonitor"

    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 69
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/camera/r/o;->d:Z

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcn/nubia/camera/r/o;->c:Lcn/nubia/camera/al/a;

    iget-object v1, p0, Lcn/nubia/camera/r/o;->b:Lcn/nubia/camera/al/a$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/al/a;->b(Lcn/nubia/camera/al/a$a;)V

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcn/nubia/camera/r/o;->d:Z

    const-string v0, "StableMonitor"

    const-string v1, "stop sensor"

    .line 72
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcn/nubia/camera/r/o;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcn/nubia/camera/r/o;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/r/o$a;

    iget-wide v0, v0, Lcn/nubia/camera/r/o$a;->b:J

    iput-wide v0, p0, Lcn/nubia/camera/r/o;->h:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 208
    iput-wide v0, p0, Lcn/nubia/camera/r/o;->h:J

    :goto_0
    return-void
.end method
