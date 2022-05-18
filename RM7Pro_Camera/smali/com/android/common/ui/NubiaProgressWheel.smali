.class public Lcom/android/common/ui/NubiaProgressWheel;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Landroid/graphics/Paint;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:D

.field private h:D

.field private i:Landroid/graphics/Paint;

.field private j:I

.field private k:I

.field private l:J

.field private m:Ljava/lang/Thread;

.field private n:D

.field private o:Ljava/lang/Boolean;

.field private p:Z

.field private q:Landroid/os/Handler;

.field private r:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/android/common/ui/NubiaProgressWheel;->a:I

    .line 22
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/common/ui/NubiaProgressWheel;->b:Landroid/graphics/Paint;

    const/16 p2, 0xa

    .line 23
    iput p2, p0, Lcom/android/common/ui/NubiaProgressWheel;->c:I

    const/16 v0, 0x60

    .line 24
    iput v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->d:I

    .line 25
    iput v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->e:I

    rsub-int/lit8 p2, p2, 0x60

    .line 26
    iput p2, p0, Lcom/android/common/ui/NubiaProgressWheel;->f:I

    const-wide/16 v1, 0x0

    .line 27
    iput-wide v1, p0, Lcom/android/common/ui/NubiaProgressWheel;->g:D

    .line 28
    iput-wide v1, p0, Lcom/android/common/ui/NubiaProgressWheel;->h:D

    .line 29
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/common/ui/NubiaProgressWheel;->i:Landroid/graphics/Paint;

    const/16 p2, 0xf

    .line 30
    iput p2, p0, Lcom/android/common/ui/NubiaProgressWheel;->j:I

    sub-int/2addr v0, p2

    .line 31
    iput v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->k:I

    const-wide/16 v0, 0x1e

    .line 32
    iput-wide v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->l:J

    const/4 p2, 0x0

    .line 33
    iput-object p2, p0, Lcom/android/common/ui/NubiaProgressWheel;->m:Ljava/lang/Thread;

    const-wide v0, 0x3fd3333340000000L    # 0.30000001192092896

    .line 35
    iput-wide v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->n:D

    .line 37
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/android/common/ui/NubiaProgressWheel;->o:Ljava/lang/Boolean;

    .line 39
    iput-boolean p1, p0, Lcom/android/common/ui/NubiaProgressWheel;->p:Z

    .line 40
    new-instance p1, Lcom/android/common/ui/NubiaProgressWheel$1;

    invoke-direct {p1, p0}, Lcom/android/common/ui/NubiaProgressWheel$1;-><init>(Lcom/android/common/ui/NubiaProgressWheel;)V

    iput-object p1, p0, Lcom/android/common/ui/NubiaProgressWheel;->q:Landroid/os/Handler;

    .line 60
    new-instance p1, Lcom/android/common/ui/NubiaProgressWheel$2;

    invoke-direct {p1, p0}, Lcom/android/common/ui/NubiaProgressWheel$2;-><init>(Lcom/android/common/ui/NubiaProgressWheel;)V

    iput-object p1, p0, Lcom/android/common/ui/NubiaProgressWheel;->r:Ljava/lang/Runnable;

    .line 99
    invoke-direct {p0}, Lcom/android/common/ui/NubiaProgressWheel;->c()V

    return-void
.end method

.method static synthetic a(Lcom/android/common/ui/NubiaProgressWheel;D)D
    .locals 0

    .line 15
    iput-wide p1, p0, Lcom/android/common/ui/NubiaProgressWheel;->g:D

    return-wide p1
.end method

.method static synthetic a(Lcom/android/common/ui/NubiaProgressWheel;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/android/common/ui/NubiaProgressWheel;->o:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic a(Lcom/android/common/ui/NubiaProgressWheel;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/android/common/ui/NubiaProgressWheel;->p:Z

    return p0
.end method

.method static synthetic b(Lcom/android/common/ui/NubiaProgressWheel;)D
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->g:D

    return-wide v0
.end method

.method static synthetic b(Lcom/android/common/ui/NubiaProgressWheel;D)D
    .locals 0

    .line 15
    iput-wide p1, p0, Lcom/android/common/ui/NubiaProgressWheel;->h:D

    return-wide p1
.end method

.method static synthetic c(Lcom/android/common/ui/NubiaProgressWheel;)D
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->n:D

    return-wide v0
.end method

.method static synthetic c(Lcom/android/common/ui/NubiaProgressWheel;D)D
    .locals 0

    .line 15
    iput-wide p1, p0, Lcom/android/common/ui/NubiaProgressWheel;->n:D

    return-wide p1
.end method

.method private c()V
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/common/ui/NubiaProgressWheel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/common/ui/c$b;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    iget-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->b:Landroid/graphics/Paint;

    const v1, 0x3fa66666    # 1.3f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 110
    iget-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 111
    iget-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 113
    iget-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->i:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/common/ui/NubiaProgressWheel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/common/ui/c$b;->a:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    iget-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->i:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 115
    iget-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 116
    iget-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method static synthetic d(Lcom/android/common/ui/NubiaProgressWheel;)D
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->h:D

    return-wide v0
.end method

.method static synthetic e(Lcom/android/common/ui/NubiaProgressWheel;)J
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->l:J

    return-wide v0
.end method

.method static synthetic f(Lcom/android/common/ui/NubiaProgressWheel;)Ljava/lang/Boolean;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/android/common/ui/NubiaProgressWheel;->o:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "NubiaProgressWheel"

    const-string v1, "start"

    .line 164
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v1, p0, Lcom/android/common/ui/NubiaProgressWheel;->m:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "start  mThread isAlive"

    .line 166
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p0}, Lcom/android/common/ui/NubiaProgressWheel;->b()V

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->m:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 172
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 175
    iput-boolean v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->p:Z

    const-wide v0, 0x3fd3333340000000L    # 0.30000001192092896

    .line 176
    iput-wide v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->n:D

    const-wide/16 v0, 0x0

    .line 177
    iput-wide v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->g:D

    .line 178
    iput-wide v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->h:D

    .line 179
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/common/ui/NubiaProgressWheel;->r:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->m:Ljava/lang/Thread;

    .line 180
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public b()V
    .locals 3

    const-string v0, "NubiaProgressWheel"

    const-string v1, "stop"

    .line 184
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 185
    iput-boolean v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->p:Z

    const-wide/16 v1, 0x0

    .line 186
    iput-wide v1, p0, Lcom/android/common/ui/NubiaProgressWheel;->g:D

    .line 187
    iput-wide v1, p0, Lcom/android/common/ui/NubiaProgressWheel;->h:D

    .line 188
    iget-object v1, p0, Lcom/android/common/ui/NubiaProgressWheel;->q:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 121
    iget-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->o:Ljava/lang/Boolean;

    monitor-enter v0

    const/4 v1, 0x0

    .line 122
    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/common/ui/NubiaProgressWheel;->o:Ljava/lang/Boolean;

    .line 123
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    iget v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->a:I

    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/android/common/ui/NubiaProgressWheel;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->a:I

    .line 126
    iput v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->d:I

    .line 127
    iput v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->e:I

    .line 128
    iget v2, p0, Lcom/android/common/ui/NubiaProgressWheel;->c:I

    sub-int v2, v0, v2

    iput v2, p0, Lcom/android/common/ui/NubiaProgressWheel;->f:I

    .line 129
    iget v2, p0, Lcom/android/common/ui/NubiaProgressWheel;->j:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->k:I

    .line 131
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 132
    iget-boolean v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->p:Z

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    if-eqz v0, :cond_1

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    .line 133
    iget-wide v6, p0, Lcom/android/common/ui/NubiaProgressWheel;->h:D

    mul-double/2addr v6, v4

    mul-double/2addr v6, v2

    .line 134
    iget v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->d:I

    int-to-float v0, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    iget v5, p0, Lcom/android/common/ui/NubiaProgressWheel;->k:I

    iget v8, p0, Lcom/android/common/ui/NubiaProgressWheel;->j:I

    add-int/2addr v5, v8

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float v9, v0, v4

    iget v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->e:I

    int-to-float v0, v0

    .line 136
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    iget v5, p0, Lcom/android/common/ui/NubiaProgressWheel;->k:I

    iget v8, p0, Lcom/android/common/ui/NubiaProgressWheel;->j:I

    add-int/2addr v5, v8

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float v10, v0, v4

    iget v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->d:I

    int-to-float v0, v0

    .line 138
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    iget v5, p0, Lcom/android/common/ui/NubiaProgressWheel;->k:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float v11, v0, v4

    iget v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->e:I

    int-to-float v0, v0

    .line 139
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    iget v5, p0, Lcom/android/common/ui/NubiaProgressWheel;->k:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float v12, v0, v4

    iget-object v13, p0, Lcom/android/common/ui/NubiaProgressWheel;->i:Landroid/graphics/Paint;

    move-object v8, p1

    .line 134
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 142
    :cond_1
    iget-wide v4, p0, Lcom/android/common/ui/NubiaProgressWheel;->n:D

    const-wide v6, 0x3fd3333340000000L    # 0.30000001192092896

    cmpl-double v0, v4, v6

    if-nez v0, :cond_2

    .line 143
    :goto_0
    iget-wide v4, p0, Lcom/android/common/ui/NubiaProgressWheel;->g:D

    double-to-int v0, v4

    if-ge v1, v0, :cond_3

    mul-int/lit8 v0, v1, 0x6

    int-to-double v4, v0

    mul-double/2addr v4, v2

    .line 145
    iget v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->d:I

    int-to-float v0, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    iget v7, p0, Lcom/android/common/ui/NubiaProgressWheel;->f:I

    iget v8, p0, Lcom/android/common/ui/NubiaProgressWheel;->c:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float v8, v0, v6

    iget v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->e:I

    int-to-float v0, v0

    .line 146
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    iget v7, p0, Lcom/android/common/ui/NubiaProgressWheel;->f:I

    iget v9, p0, Lcom/android/common/ui/NubiaProgressWheel;->c:I

    add-int/2addr v7, v9

    int-to-float v7, v7

    mul-float/2addr v6, v7

    sub-float v9, v0, v6

    iget v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->d:I

    int-to-float v0, v0

    .line 147
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    iget v7, p0, Lcom/android/common/ui/NubiaProgressWheel;->f:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float v10, v0, v6

    iget v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->e:I

    int-to-float v0, v0

    .line 148
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    iget v5, p0, Lcom/android/common/ui/NubiaProgressWheel;->f:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float v11, v0, v4

    iget-object v12, p0, Lcom/android/common/ui/NubiaProgressWheel;->b:Landroid/graphics/Paint;

    move-object v7, p1

    .line 145
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v0, 0x3c

    move v1, v0

    .line 152
    :goto_1
    iget-wide v4, p0, Lcom/android/common/ui/NubiaProgressWheel;->g:D

    double-to-int v4, v4

    rsub-int/lit8 v4, v4, 0x3c

    if-le v1, v4, :cond_3

    mul-int/lit8 v4, v1, 0x6

    int-to-double v4, v4

    mul-double/2addr v4, v2

    .line 154
    iget v6, p0, Lcom/android/common/ui/NubiaProgressWheel;->d:I

    int-to-float v6, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    iget v8, p0, Lcom/android/common/ui/NubiaProgressWheel;->f:I

    iget v9, p0, Lcom/android/common/ui/NubiaProgressWheel;->c:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v7, v8

    add-float v9, v6, v7

    iget v6, p0, Lcom/android/common/ui/NubiaProgressWheel;->e:I

    int-to-float v6, v6

    .line 155
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    iget v8, p0, Lcom/android/common/ui/NubiaProgressWheel;->f:I

    iget v10, p0, Lcom/android/common/ui/NubiaProgressWheel;->c:I

    add-int/2addr v8, v10

    int-to-float v8, v8

    mul-float/2addr v7, v8

    sub-float v10, v6, v7

    iget v6, p0, Lcom/android/common/ui/NubiaProgressWheel;->d:I

    int-to-float v6, v6

    .line 156
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    iget v8, p0, Lcom/android/common/ui/NubiaProgressWheel;->f:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    add-float v11, v6, v7

    iget v6, p0, Lcom/android/common/ui/NubiaProgressWheel;->e:I

    int-to-float v6, v6

    .line 157
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    iget v5, p0, Lcom/android/common/ui/NubiaProgressWheel;->f:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float v12, v6, v4

    iget-object v13, p0, Lcom/android/common/ui/NubiaProgressWheel;->b:Landroid/graphics/Paint;

    move-object v8, p1

    .line 154
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 123
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 197
    iget-boolean p1, p0, Lcom/android/common/ui/NubiaProgressWheel;->p:Z

    if-eqz p1, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/android/common/ui/NubiaProgressWheel;->b()V

    .line 200
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method
