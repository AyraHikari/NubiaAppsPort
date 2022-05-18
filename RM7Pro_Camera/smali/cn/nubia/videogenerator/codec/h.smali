.class public Lcn/nubia/videogenerator/codec/h;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-direct {p0}, Lcn/nubia/videogenerator/codec/h;->j()V

    return-void
.end method

.method private j()V
    .locals 1

    const-string v0, "video/avc"

    .line 35
    iput-object v0, p0, Lcn/nubia/videogenerator/codec/h;->a:Ljava/lang/String;

    const v0, 0x7f000789

    .line 36
    iput v0, p0, Lcn/nubia/videogenerator/codec/h;->g:I

    const/16 v0, 0x280

    .line 37
    iput v0, p0, Lcn/nubia/videogenerator/codec/h;->e:I

    const/16 v0, 0x1e0

    .line 38
    iput v0, p0, Lcn/nubia/videogenerator/codec/h;->f:I

    const/high16 v0, 0xf00000

    .line 39
    iput v0, p0, Lcn/nubia/videogenerator/codec/h;->h:I

    const/4 v0, 0x5

    .line 40
    iput v0, p0, Lcn/nubia/videogenerator/codec/h;->d:I

    const/4 v0, 0x1

    .line 41
    iput v0, p0, Lcn/nubia/videogenerator/codec/h;->i:I

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcn/nubia/videogenerator/codec/h;->b:Z

    .line 43
    iput-boolean v0, p0, Lcn/nubia/videogenerator/codec/h;->c:Z

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcn/nubia/videogenerator/codec/h;->d:I

    return-void
.end method

.method public a(II)V
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSize width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "woo"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iput p1, p0, Lcn/nubia/videogenerator/codec/h;->e:I

    .line 105
    iput p2, p0, Lcn/nubia/videogenerator/codec/h;->f:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcn/nubia/videogenerator/codec/h;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcn/nubia/videogenerator/codec/h;->b:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcn/nubia/videogenerator/codec/h;->b:Z

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcn/nubia/videogenerator/codec/h;->h:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcn/nubia/videogenerator/codec/h;->c:Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcn/nubia/videogenerator/codec/h;->c:Z

    return v0
.end method

.method public c()I
    .locals 1

    .line 67
    iget v0, p0, Lcn/nubia/videogenerator/codec/h;->d:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcn/nubia/videogenerator/codec/h;->i:I

    return-void
.end method

.method public d()I
    .locals 1

    .line 75
    iget v0, p0, Lcn/nubia/videogenerator/codec/h;->h:I

    return v0
.end method

.method public d(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcn/nubia/videogenerator/codec/h;->g:I

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 95
    iget v0, p0, Lcn/nubia/videogenerator/codec/h;->e:I

    return v0
.end method

.method public g()I
    .locals 1

    .line 99
    iget v0, p0, Lcn/nubia/videogenerator/codec/h;->f:I

    return v0
.end method

.method public h()I
    .locals 1

    .line 109
    iget v0, p0, Lcn/nubia/videogenerator/codec/h;->g:I

    return v0
.end method

.method public i()Landroid/media/MediaFormat;
    .locals 3

    .line 128
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 129
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/h;->a:Ljava/lang/String;

    const-string v2, "mime"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget v1, p0, Lcn/nubia/videogenerator/codec/h;->e:I

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 131
    iget v1, p0, Lcn/nubia/videogenerator/codec/h;->e:I

    const-string v2, "stride"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 132
    iget v1, p0, Lcn/nubia/videogenerator/codec/h;->f:I

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 133
    iget v1, p0, Lcn/nubia/videogenerator/codec/h;->f:I

    const-string v2, "slice-height"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMediaFormat   mWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/videogenerator/codec/h;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/videogenerator/codec/h;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " colorFormat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/videogenerator/codec/h;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "woo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget v1, p0, Lcn/nubia/videogenerator/codec/h;->h:I

    const-string v2, "bitrate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 137
    iget v1, p0, Lcn/nubia/videogenerator/codec/h;->d:I

    const-string v2, "frame-rate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 138
    iget v1, p0, Lcn/nubia/videogenerator/codec/h;->g:I

    const-string v2, "color-format"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 140
    iget v1, p0, Lcn/nubia/videogenerator/codec/h;->i:I

    const-string v2, "i-frame-interval"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object v0
.end method
