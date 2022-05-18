.class public abstract Lcn/nubia/videogenerator/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroid/media/MediaFormat;

.field protected b:Lcn/nubia/videogenerator/a/g;

.field protected c:Ljava/lang/String;

.field protected d:Z

.field protected e:Z

.field protected f:Z

.field protected g:Z

.field protected h:Ljava/lang/String;

.field protected i:J

.field protected j:J

.field protected k:J

.field protected l:J

.field protected m:I

.field protected n:I

.field protected o:J

.field protected p:Landroid/media/MediaExtractor;

.field protected q:Lcn/nubia/videogenerator/a/c;

.field protected r:Lcn/nubia/videogenerator/a/b;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcn/nubia/videogenerator/c/c;->d:Z

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcn/nubia/videogenerator/c/c;->e:Z

    .line 19
    iput-boolean v0, p0, Lcn/nubia/videogenerator/c/c;->f:Z

    .line 20
    iput-boolean v0, p0, Lcn/nubia/videogenerator/c/c;->g:Z

    const-wide/16 v1, -0x1

    .line 22
    iput-wide v1, p0, Lcn/nubia/videogenerator/c/c;->i:J

    .line 23
    iput-wide v1, p0, Lcn/nubia/videogenerator/c/c;->j:J

    const-wide/16 v1, 0x0

    .line 24
    iput-wide v1, p0, Lcn/nubia/videogenerator/c/c;->k:J

    .line 25
    iput-wide v1, p0, Lcn/nubia/videogenerator/c/c;->l:J

    .line 26
    iput v0, p0, Lcn/nubia/videogenerator/c/c;->m:I

    .line 27
    iput v0, p0, Lcn/nubia/videogenerator/c/c;->n:I

    .line 28
    iput-wide v1, p0, Lcn/nubia/videogenerator/c/c;->o:J

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcn/nubia/videogenerator/c/c;->n:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 45
    iput-wide p1, p0, Lcn/nubia/videogenerator/c/c;->l:J

    return-void
.end method

.method public a(JJJ)V
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 61
    iput-wide p1, p0, Lcn/nubia/videogenerator/c/c;->i:J

    mul-long/2addr p3, v0

    .line 62
    iput-wide p3, p0, Lcn/nubia/videogenerator/c/c;->j:J

    mul-long/2addr p5, v0

    .line 63
    iput-wide p5, p0, Lcn/nubia/videogenerator/c/c;->k:J

    return-void
.end method

.method public a(Lcn/nubia/videogenerator/a/c;Lcn/nubia/videogenerator/a/g;Lcn/nubia/videogenerator/a/b;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcn/nubia/videogenerator/c/c;->q:Lcn/nubia/videogenerator/a/c;

    .line 36
    iput-object p2, p0, Lcn/nubia/videogenerator/c/c;->b:Lcn/nubia/videogenerator/a/g;

    .line 37
    iput-object p3, p0, Lcn/nubia/videogenerator/c/c;->r:Lcn/nubia/videogenerator/a/b;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcn/nubia/videogenerator/c/c;->f:Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcn/nubia/videogenerator/c/c;->e:Z

    return-void
.end method

.method public c()Landroid/media/MediaFormat;
    .locals 1

    .line 41
    iget-object v0, p0, Lcn/nubia/videogenerator/c/c;->a:Landroid/media/MediaFormat;

    return-object v0
.end method
