.class public Lb/a/a/b/f;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0}, Lb/a/a/b/f;->h()V

    return-void
.end method

.method private h()V
    .locals 1

    const-string v0, "video/avc"

    .line 1
    iput-object v0, p0, Lb/a/a/b/f;->a:Ljava/lang/String;

    const v0, 0x7f000789

    .line 2
    iput v0, p0, Lb/a/a/b/f;->g:I

    const/16 v0, 0x280

    .line 3
    iput v0, p0, Lb/a/a/b/f;->e:I

    const/16 v0, 0x1e0

    .line 4
    iput v0, p0, Lb/a/a/b/f;->f:I

    const/high16 v0, 0x700000

    .line 5
    iput v0, p0, Lb/a/a/b/f;->h:I

    const/16 v0, 0x1e

    .line 6
    iput v0, p0, Lb/a/a/b/f;->d:I

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lb/a/a/b/f;->i:I

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lb/a/a/b/f;->b:Z

    .line 9
    iput-boolean v0, p0, Lb/a/a/b/f;->c:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lb/a/a/b/f;->g:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lb/a/a/b/f;->f:I

    return v0
.end method

.method public c()Landroid/media/MediaFormat;
    .locals 3

    .line 1
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 2
    iget-object v1, p0, Lb/a/a/b/f;->a:Ljava/lang/String;

    const-string v2, "mime"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget v1, p0, Lb/a/a/b/f;->e:I

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 4
    iget v1, p0, Lb/a/a/b/f;->e:I

    const-string v2, "stride"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 5
    iget v1, p0, Lb/a/a/b/f;->f:I

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 6
    iget v1, p0, Lb/a/a/b/f;->f:I

    const-string v2, "slice-height"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMediaFormat   mWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lb/a/a/b/f;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lb/a/a/b/f;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " colorFormat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lb/a/a/b/f;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "videobits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lb/a/a/b/f;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "woo"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget v1, p0, Lb/a/a/b/f;->h:I

    const-string v2, "bitrate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 9
    iget v1, p0, Lb/a/a/b/f;->d:I

    const-string v2, "frame-rate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 10
    iget v1, p0, Lb/a/a/b/f;->g:I

    const-string v2, "color-format"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 11
    iget v1, p0, Lb/a/a/b/f;->i:I

    const-string v2, "i-frame-interval"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/b/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/a/a/b/f;->b:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/a/a/b/f;->c:Z

    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lb/a/a/b/f;->e:I

    return v0
.end method

.method public i(I)V
    .locals 0

    .line 1
    iput p1, p0, Lb/a/a/b/f;->h:I

    return-void
.end method

.method public j(I)V
    .locals 0

    .line 1
    iput p1, p0, Lb/a/a/b/f;->d:I

    return-void
.end method

.method public k(II)V
    .locals 2

    .line 1
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

    .line 2
    iput p1, p0, Lb/a/a/b/f;->e:I

    .line 3
    iput p2, p0, Lb/a/a/b/f;->f:I

    return-void
.end method
