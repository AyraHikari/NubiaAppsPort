.class public Lb/a/e/a/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lb/a/e/a/e;->i()V

    return-void
.end method

.method private i()V
    .locals 1

    const-string v0, "video/avc"

    iput-object v0, p0, Lb/a/e/a/e;->a:Ljava/lang/String;

    const v0, 0x7f000789

    iput v0, p0, Lb/a/e/a/e;->g:I

    const/16 v0, 0x280

    iput v0, p0, Lb/a/e/a/e;->e:I

    const/16 v0, 0x1e0

    iput v0, p0, Lb/a/e/a/e;->f:I

    const/high16 v0, 0xf00000

    iput v0, p0, Lb/a/e/a/e;->h:I

    const/4 v0, 0x5

    iput v0, p0, Lb/a/e/a/e;->d:I

    const/4 v0, 0x1

    iput v0, p0, Lb/a/e/a/e;->i:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/a/e/a/e;->b:Z

    iput-boolean v0, p0, Lb/a/e/a/e;->c:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lb/a/e/a/e;->g:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lb/a/e/a/e;->d:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lb/a/e/a/e;->f:I

    return v0
.end method

.method public d()Landroid/media/MediaFormat;
    .locals 3

    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    iget-object v1, p0, Lb/a/e/a/e;->a:Ljava/lang/String;

    const-string v2, "mime"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lb/a/e/a/e;->e:I

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v1, p0, Lb/a/e/a/e;->e:I

    const-string v2, "stride"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v1, p0, Lb/a/e/a/e;->f:I

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v1, p0, Lb/a/e/a/e;->f:I

    const-string v2, "slice-height"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMediaFormat   mWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lb/a/e/a/e;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lb/a/e/a/e;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " colorFormat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lb/a/e/a/e;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "woo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lb/a/e/a/e;->h:I

    const-string v2, "bitrate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v1, p0, Lb/a/e/a/e;->d:I

    const-string v2, "frame-rate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v1, p0, Lb/a/e/a/e;->g:I

    const-string v2, "color-format"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v1, p0, Lb/a/e/a/e;->i:I

    const-string v2, "i-frame-interval"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/e/a/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lb/a/e/a/e;->b:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lb/a/e/a/e;->c:Z

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lb/a/e/a/e;->e:I

    return v0
.end method

.method public j(I)V
    .locals 0

    iput p1, p0, Lb/a/e/a/e;->g:I

    return-void
.end method

.method public k(I)V
    .locals 0

    iput p1, p0, Lb/a/e/a/e;->d:I

    return-void
.end method

.method public l(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSize width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "woo"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lb/a/e/a/e;->e:I

    iput p2, p0, Lb/a/e/a/e;->f:I

    return-void
.end method
