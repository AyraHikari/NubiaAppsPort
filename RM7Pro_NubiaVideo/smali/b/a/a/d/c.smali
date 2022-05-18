.class public abstract Lb/a/a/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroid/media/MediaFormat;

.field protected b:Lb/a/a/c/k;

.field protected c:Ljava/lang/String;

.field protected d:Z

.field protected e:Ljava/lang/String;

.field protected f:J

.field protected g:J

.field protected h:Landroid/media/MediaExtractor;

.field protected i:Lb/a/a/c/c;

.field protected j:Lb/a/a/c/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lb/a/a/d/c;->d:Z

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lb/a/a/d/c;->f:J

    .line 4
    iput-wide v0, p0, Lb/a/a/d/c;->g:J

    return-void
.end method


# virtual methods
.method public a()Landroid/media/MediaFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/d/c;->a:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public b(Lb/a/a/c/c;Lb/a/a/c/k;Lb/a/a/c/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/d/c;->i:Lb/a/a/c/c;

    .line 2
    iput-object p2, p0, Lb/a/a/d/c;->b:Lb/a/a/c/k;

    .line 3
    iput-object p3, p0, Lb/a/a/d/c;->j:Lb/a/a/c/b;

    return-void
.end method

.method public c(J)V
    .locals 0

    return-void
.end method

.method public d(JJJ)V
    .locals 0

    const-wide/16 p5, 0x3e8

    mul-long/2addr p1, p5

    .line 1
    iput-wide p1, p0, Lb/a/a/d/c;->f:J

    mul-long/2addr p3, p5

    .line 2
    iput-wide p3, p0, Lb/a/a/d/c;->g:J

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lb/a/a/d/c;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lb/a/a/d/c;->d:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lb/a/a/d/c;->i:Lb/a/a/c/c;

    .line 4
    iput-object v0, p0, Lb/a/a/d/c;->b:Lb/a/a/c/k;

    .line 5
    iput-object v0, p0, Lb/a/a/d/c;->j:Lb/a/a/c/b;

    .line 6
    iget-object v1, p0, Lb/a/a/d/c;->h:Landroid/media/MediaExtractor;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 8
    iput-object v0, p0, Lb/a/a/d/c;->h:Landroid/media/MediaExtractor;

    :cond_1
    :goto_0
    return-void
.end method
