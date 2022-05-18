.class public Lcn/nubia/videogenerator/codec/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-direct {p0}, Lcn/nubia/videogenerator/codec/a;->g()V

    return-void
.end method

.method private g()V
    .locals 1

    const-string v0, "audio/mp4a-latm"

    .line 25
    iput-object v0, p0, Lcn/nubia/videogenerator/codec/a;->a:Ljava/lang/String;

    const/4 v0, 0x2

    .line 26
    iput v0, p0, Lcn/nubia/videogenerator/codec/a;->b:I

    const v0, 0x1f400

    .line 27
    iput v0, p0, Lcn/nubia/videogenerator/codec/a;->c:I

    const v0, 0xac44

    .line 28
    iput v0, p0, Lcn/nubia/videogenerator/codec/a;->d:I

    const/16 v0, 0x10

    .line 29
    iput v0, p0, Lcn/nubia/videogenerator/codec/a;->f:I

    const/4 v0, 0x1

    .line 30
    iput v0, p0, Lcn/nubia/videogenerator/codec/a;->e:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcn/nubia/videogenerator/codec/a;->d:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcn/nubia/videogenerator/codec/a;->a:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    .line 57
    iget v0, p0, Lcn/nubia/videogenerator/codec/a;->b:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcn/nubia/videogenerator/codec/a;->e:I

    return-void
.end method

.method public c()I
    .locals 1

    .line 65
    iget v0, p0, Lcn/nubia/videogenerator/codec/a;->c:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcn/nubia/videogenerator/codec/a;->f:I

    return-void
.end method

.method public d()I
    .locals 1

    .line 69
    iget v0, p0, Lcn/nubia/videogenerator/codec/a;->d:I

    return v0
.end method

.method public d(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcn/nubia/videogenerator/codec/a;->c:I

    return-void
.end method

.method public e()I
    .locals 1

    .line 77
    iget v0, p0, Lcn/nubia/videogenerator/codec/a;->f:I

    return v0
.end method

.method public e(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcn/nubia/videogenerator/codec/a;->b:I

    return-void
.end method

.method public f()Landroid/media/MediaFormat;
    .locals 3

    .line 81
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 82
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/a;->a:Ljava/lang/String;

    const-string v2, "mime"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcn/nubia/videogenerator/codec/a;->a:Ljava/lang/String;

    const-string v2, "audio/mp4a-latm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    const-string v2, "aac-profile"

    .line 84
    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 87
    :cond_0
    iget v1, p0, Lcn/nubia/videogenerator/codec/a;->c:I

    const-string v2, "bitrate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 88
    iget v1, p0, Lcn/nubia/videogenerator/codec/a;->d:I

    const-string v2, "sample-rate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 89
    iget v1, p0, Lcn/nubia/videogenerator/codec/a;->e:I

    const-string v2, "channel-count"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v1, 0x4800

    const-string v2, "max-input-size"

    .line 90
    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object v0
.end method
