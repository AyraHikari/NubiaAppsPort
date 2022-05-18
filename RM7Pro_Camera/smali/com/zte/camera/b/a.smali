.class public Lcom/zte/camera/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "a"


# instance fields
.field private b:I

.field private c:Lcom/zte/camera/ui/b/c/a/b;

.field private d:Lcom/zte/camera/ui/b/c/b;

.field private e:Lcom/zte/camera/ui/b/c/c;

.field private f:I

.field private g:Lcom/zte/camera/ui/b/a/c;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:J

.field private o:Lcom/zte/camera/ui/b/c/a$a;

.field private p:Landroid/content/Context;

.field private q:Z

.field private r:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/zte/camera/b/a;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/zte/camera/b/a;->f:I

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/zte/camera/b/a;->h:Z

    .line 22
    iput-boolean v0, p0, Lcom/zte/camera/b/a;->i:Z

    const/4 v1, 0x1

    .line 23
    iput-boolean v1, p0, Lcom/zte/camera/b/a;->j:Z

    .line 24
    iput-boolean v0, p0, Lcom/zte/camera/b/a;->k:Z

    const-wide/16 v1, -0x1

    .line 29
    iput-wide v1, p0, Lcom/zte/camera/b/a;->n:J

    .line 34
    iput-boolean v0, p0, Lcom/zte/camera/b/a;->q:Z

    new-array v3, v0, [B

    .line 35
    iput-object v3, p0, Lcom/zte/camera/b/a;->r:[B

    .line 42
    iput-object p1, p0, Lcom/zte/camera/b/a;->p:Landroid/content/Context;

    .line 43
    iput-boolean v0, p0, Lcom/zte/camera/b/a;->i:Z

    .line 44
    sget-object p1, Lcom/zte/camera/ui/b/c/a$a;->a:Lcom/zte/camera/ui/b/c/a$a;

    iput-object p1, p0, Lcom/zte/camera/b/a;->o:Lcom/zte/camera/ui/b/c/a$a;

    .line 45
    iput-boolean p2, p0, Lcom/zte/camera/b/a;->h:Z

    .line 46
    iput-wide v1, p0, Lcom/zte/camera/b/a;->n:J

    .line 47
    iput-boolean v0, p0, Lcom/zte/camera/b/a;->q:Z

    .line 48
    new-instance p1, Lcom/zte/camera/ui/b/a/c;

    iget-object v0, p0, Lcom/zte/camera/b/a;->p:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lcom/zte/camera/ui/b/a/c;-><init>(Landroid/content/Context;Z)V

    iput-object p1, p0, Lcom/zte/camera/b/a;->g:Lcom/zte/camera/ui/b/a/c;

    return-void
.end method

.method private a(IZ)Z
    .locals 9

    .line 154
    iget-object v0, p0, Lcom/zte/camera/b/a;->e:Lcom/zte/camera/ui/b/c/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 155
    sget-object p1, Lcom/zte/camera/b/a;->a:Ljava/lang/String;

    const-string p2, "error updateCurrentTemplatePara templatenode is null"

    invoke-static {p1, p2}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    if-gez p1, :cond_1

    move p1, v1

    .line 162
    :cond_1
    invoke-virtual {v0}, Lcom/zte/camera/ui/b/c/c;->a()Landroid/util/SparseArray;

    move-result-object v0

    if-nez v0, :cond_2

    .line 163
    sget-object p1, Lcom/zte/camera/b/a;->a:Ljava/lang/String;

    const-string p2, "config anmiavalues is null"

    invoke-static {p1, p2}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/zte/camera/b/a;->e:Lcom/zte/camera/ui/b/c/c;

    invoke-virtual {v0}, Lcom/zte/camera/ui/b/c/c;->a()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_3

    .line 169
    sget-object v3, Lcom/zte/camera/b/a;->a:Ljava/lang/String;

    const-string v4, "template size is not right"

    invoke-static {v3, v4}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-lt p1, v0, :cond_4

    if-lt v0, v2, :cond_4

    add-int/lit8 p1, v0, -0x1

    .line 176
    :cond_4
    sget-object v3, Lcom/zte/camera/b/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCurrentTemplateSegementId segmentId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",templateid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, p0, Lcom/zte/camera/b/a;->f:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-boolean v4, p0, Lcom/zte/camera/b/a;->k:Z

    if-nez v4, :cond_6

    if-nez p2, :cond_6

    iget p2, p0, Lcom/zte/camera/b/a;->b:I

    if-ne p2, p1, :cond_6

    iget-object p2, p0, Lcom/zte/camera/b/a;->c:Lcom/zte/camera/ui/b/c/a/b;

    if-nez p2, :cond_5

    goto :goto_0

    .line 193
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not update, and the same segment id="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_6
    :goto_0
    const-wide/16 v7, -0x1

    .line 178
    iput-wide v7, p0, Lcom/zte/camera/b/a;->n:J

    .line 179
    iput p1, p0, Lcom/zte/camera/b/a;->b:I

    .line 180
    iget-object p2, p0, Lcom/zte/camera/b/a;->e:Lcom/zte/camera/ui/b/c/c;

    invoke-virtual {p2}, Lcom/zte/camera/ui/b/c/c;->a()Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zte/camera/ui/b/c/a/b;

    iput-object p2, p0, Lcom/zte/camera/b/a;->c:Lcom/zte/camera/ui/b/c/a/b;

    if-nez p2, :cond_7

    .line 182
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v4, p0, Lcom/zte/camera/b/a;->f:I

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v4, ",size="

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",anim="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/zte/camera/b/a;->c:Lcom/zte/camera/ui/b/c/a/b;

    invoke-interface {p2}, Lcom/zte/camera/ui/b/c/a/b;->a()Lcom/zte/camera/ui/b/c/a/b$b;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/zte/camera/b/a;->f:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object p1, p0, Lcom/zte/camera/b/a;->g:Lcom/zte/camera/ui/b/a/c;

    iget-object p2, p0, Lcom/zte/camera/b/a;->c:Lcom/zte/camera/ui/b/c/a/b;

    invoke-virtual {p1, p2}, Lcom/zte/camera/ui/b/a/c;->a(Lcom/zte/camera/ui/b/c/a/b;)V

    .line 188
    iget-object p1, p0, Lcom/zte/camera/b/a;->g:Lcom/zte/camera/ui/b/a/c;

    iget-object p2, p0, Lcom/zte/camera/b/a;->c:Lcom/zte/camera/ui/b/c/a/b;

    invoke-interface {p2}, Lcom/zte/camera/ui/b/c/a/b;->c()I

    move-result p2

    int-to-long v3, p2

    const-wide/32 v5, 0xf4240

    mul-long/2addr v3, v5

    invoke-virtual {p1, v3, v4}, Lcom/zte/camera/ui/b/a/c;->a(J)V

    .line 190
    iput-boolean v1, p0, Lcom/zte/camera/b/a;->k:Z

    return v2
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/zte/camera/b/a;->g:Lcom/zte/camera/ui/b/a/c;

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lcom/zte/camera/b/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTextureId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/zte/camera/b/a;->g:Lcom/zte/camera/ui/b/a/c;

    invoke-virtual {v0, p1}, Lcom/zte/camera/ui/b/a/c;->a(I)V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 1

    .line 109
    iput p1, p0, Lcom/zte/camera/b/a;->l:I

    .line 110
    iput p2, p0, Lcom/zte/camera/b/a;->m:I

    .line 111
    iget-object v0, p0, Lcom/zte/camera/b/a;->g:Lcom/zte/camera/ui/b/a/c;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0, p1, p2}, Lcom/zte/camera/ui/b/a/c;->a(II)V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 16

    move-object/from16 v0, p0

    .line 219
    iget-object v1, v0, Lcom/zte/camera/b/a;->g:Lcom/zte/camera/ui/b/a/c;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/zte/camera/b/a;->c:Lcom/zte/camera/ui/b/c/a/b;

    if-eqz v1, :cond_1

    .line 221
    invoke-interface {v1}, Lcom/zte/camera/ui/b/c/a/b;->c()I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v3, 0xf4240

    mul-long v9, v1, v3

    const-wide/32 v1, 0x11e1a300

    sub-long v13, v9, v1

    .line 223
    sget-object v1, Lcom/zte/camera/b/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "draw sum ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",apla="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "curr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v3, p1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-boolean v1, v0, Lcom/zte/camera/b/a;->h:Z

    if-eqz v1, :cond_0

    .line 225
    iget-object v5, v0, Lcom/zte/camera/b/a;->g:Lcom/zte/camera/ui/b/a/c;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v15, 0x1

    move-wide/from16 v11, p1

    invoke-virtual/range {v5 .. v15}, Lcom/zte/camera/ui/b/a/c;->a(ZZZJJJZ)Z

    goto :goto_1

    .line 227
    :cond_0
    iget-object v5, v0, Lcom/zte/camera/b/a;->g:Lcom/zte/camera/ui/b/a/c;

    const/4 v6, 0x1

    iget-object v1, v0, Lcom/zte/camera/b/a;->c:Lcom/zte/camera/ui/b/c/a/b;

    invoke-interface {v1}, Lcom/zte/camera/ui/b/c/a/b;->f()Z

    move-result v7

    iget-object v1, v0, Lcom/zte/camera/b/a;->c:Lcom/zte/camera/ui/b/c/a/b;

    invoke-interface {v1}, Lcom/zte/camera/ui/b/c/a/b;->g()Z

    move-result v8

    const/4 v15, 0x1

    move-wide/from16 v11, p1

    invoke-virtual/range {v5 .. v15}, Lcom/zte/camera/ui/b/a/c;->a(ZZZJJJZ)Z

    goto :goto_1

    .line 230
    :cond_1
    sget-object v1, Lcom/zte/camera/b/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "draw error because para anmiValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/zte/camera/b/a;->c:Lcom/zte/camera/ui/b/c/a/b;

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",ispriview status= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lcom/zte/camera/b/a;->h:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 68
    sget-object v0, Lcom/zte/camera/b/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recording status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iput-boolean p1, p0, Lcom/zte/camera/b/a;->i:Z

    .line 70
    iget-object v0, p0, Lcom/zte/camera/b/a;->g:Lcom/zte/camera/ui/b/a/c;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0, p1}, Lcom/zte/camera/ui/b/a/c;->a(Z)V

    :cond_0
    if-nez p1, :cond_1

    const-wide/16 v0, -0x1

    .line 74
    iput-wide v0, p0, Lcom/zte/camera/b/a;->n:J

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 3

    .line 52
    sget-object v0, Lcom/zte/camera/b/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init preview = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/zte/camera/b/a;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/zte/camera/b/a;->g:Lcom/zte/camera/ui/b/a/c;

    invoke-virtual {v1}, Lcom/zte/camera/ui/b/a/c;->a()Z

    move-result v1

    iput-boolean v1, p0, Lcom/zte/camera/b/a;->q:Z

    .line 54
    invoke-static {}, Lcom/zte/camera/ui/b/c/b;->a()Lcom/zte/camera/ui/b/c/b;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/camera/b/a;->d:Lcom/zte/camera/ui/b/c/b;

    const/4 v1, -0x1

    .line 55
    iput v1, p0, Lcom/zte/camera/b/a;->f:I

    const/4 v1, 0x0

    .line 56
    iput-boolean v1, p0, Lcom/zte/camera/b/a;->k:Z

    const-wide/16 v1, -0x1

    .line 57
    iput-wide v1, p0, Lcom/zte/camera/b/a;->n:J

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init ispreview = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/zte/camera/b/a;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/zte/camera/b/a;->q:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-boolean v0, p0, Lcom/zte/camera/b/a;->q:Z

    return v0
.end method

.method public a(IJ)Z
    .locals 4

    .line 204
    iget-boolean p1, p0, Lcom/zte/camera/b/a;->i:Z

    if-eqz p1, :cond_1

    .line 205
    iget-wide v0, p0, Lcom/zte/camera/b/a;->n:J

    const-wide/16 v2, 0x1

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    .line 206
    iput-wide p2, p0, Lcom/zte/camera/b/a;->n:J

    .line 208
    :cond_0
    iget-wide v0, p0, Lcom/zte/camera/b/a;->n:J

    sub-long/2addr p2, v0

    .line 209
    invoke-virtual {p0, p2, p3}, Lcom/zte/camera/b/a;->a(J)V

    const/4 p1, 0x1

    return p1

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/zte/camera/b/a;->e()V

    const/4 p1, 0x0

    return p1
.end method

.method public b(II)V
    .locals 0

    .line 199
    invoke-virtual {p0, p1}, Lcom/zte/camera/b/a;->b(I)Z

    move-result p1

    .line 200
    invoke-direct {p0, p2, p1}, Lcom/zte/camera/b/a;->a(IZ)Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/zte/camera/b/a;->j:Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/zte/camera/b/a;->q:Z

    return v0
.end method

.method public b(I)Z
    .locals 7

    .line 129
    sget-object v0, Lcom/zte/camera/b/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentTemplate index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {p1}, Lcom/zte/camera/ui/b/c/d;->d(I)I

    move-result v1

    .line 131
    iget v3, p0, Lcom/zte/camera/b/a;->f:I

    const/4 v4, 0x0

    if-ne v3, p1, :cond_1

    iget-object p1, p0, Lcom/zte/camera/b/a;->e:Lcom/zte/camera/ui/b/c/c;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "updateCurrentTemplateNode not update, it is same"

    .line 141
    invoke-static {v0, p1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_1
    :goto_0
    const-wide/16 v5, -0x1

    .line 132
    iput-wide v5, p0, Lcom/zte/camera/b/a;->n:J

    .line 133
    iget-object p1, p0, Lcom/zte/camera/b/a;->d:Lcom/zte/camera/ui/b/c/b;

    invoke-virtual {p1, v1}, Lcom/zte/camera/ui/b/c/b;->b(I)Lcom/zte/camera/ui/b/c/c;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/camera/b/a;->e:Lcom/zte/camera/ui/b/c/c;

    .line 134
    iput v1, p0, Lcom/zte/camera/b/a;->f:I

    const/4 p1, 0x1

    .line 135
    iput-boolean p1, p0, Lcom/zte/camera/b/a;->k:Z

    .line 136
    invoke-static {v1}, Lcom/zte/camera/ui/b/c/d;->a(I)Lcom/zte/camera/ui/b/c/a$a;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/camera/b/a;->o:Lcom/zte/camera/ui/b/c/a$a;

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0, v4}, Lcom/zte/camera/b/a;->c(I)Z

    return p1
.end method

.method public c()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/zte/camera/b/a;->j:Z

    return v0
.end method

.method public c(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 150
    invoke-direct {p0, p1, v0}, Lcom/zte/camera/b/a;->a(IZ)Z

    move-result p1

    return p1
.end method

.method public d()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/zte/camera/b/a;->g:Lcom/zte/camera/ui/b/a/c;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/zte/camera/b/a;->r:[B

    monitor-enter v0

    const/4 v1, 0x0

    .line 93
    :try_start_0
    iput-boolean v1, p0, Lcom/zte/camera/b/a;->q:Z

    .line 94
    iget-object v1, p0, Lcom/zte/camera/b/a;->g:Lcom/zte/camera/ui/b/a/c;

    invoke-virtual {v1}, Lcom/zte/camera/ui/b/a/c;->b()Z

    move-result v1

    iput-boolean v1, p0, Lcom/zte/camera/b/a;->q:Z

    .line 95
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    sget-object v0, Lcom/zte/camera/b/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reinit result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/zte/camera/b/a;->q:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isPreview="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/zte/camera/b/a;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 95
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public e()V
    .locals 11

    .line 235
    iget-object v0, p0, Lcom/zte/camera/b/a;->g:Lcom/zte/camera/ui/b/a/c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zte/camera/b/a;->c:Lcom/zte/camera/ui/b/c/a/b;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    .line 236
    invoke-virtual/range {v0 .. v10}, Lcom/zte/camera/ui/b/a/c;->a(ZZZJJJZ)Z

    goto :goto_1

    .line 238
    :cond_0
    sget-object v0, Lcom/zte/camera/b/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preview draw error because para anmiValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/camera/b/a;->c:Lcom/zte/camera/ui/b/c/a/b;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isPreview status= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/zte/camera/b/a;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public f()V
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/zte/camera/b/a;->g:Lcom/zte/camera/ui/b/a/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0}, Lcom/zte/camera/ui/b/a/c;->d()V

    .line 245
    iput-object v1, p0, Lcom/zte/camera/b/a;->g:Lcom/zte/camera/ui/b/a/c;

    .line 247
    :cond_0
    iput-object v1, p0, Lcom/zte/camera/b/a;->d:Lcom/zte/camera/ui/b/c/b;

    const/4 v0, -0x1

    .line 248
    iput v0, p0, Lcom/zte/camera/b/a;->f:I

    const/4 v0, 0x0

    .line 249
    iput-boolean v0, p0, Lcom/zte/camera/b/a;->k:Z

    const-wide/16 v1, -0x1

    .line 250
    iput-wide v1, p0, Lcom/zte/camera/b/a;->n:J

    .line 251
    iput-boolean v0, p0, Lcom/zte/camera/b/a;->q:Z

    return-void
.end method
