.class public Lb/a/a/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0}, Lb/a/a/b/b;->e()V

    return-void
.end method

.method private e()V
    .locals 1

    const-string v0, "audio/mp4a-latm"

    .line 1
    iput-object v0, p0, Lb/a/a/b/b;->a:Ljava/lang/String;

    const v0, 0x1f400

    .line 2
    iput v0, p0, Lb/a/a/b/b;->b:I

    const v0, 0xac44

    .line 3
    iput v0, p0, Lb/a/a/b/b;->c:I

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lb/a/a/b/b;->d:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lb/a/a/b/b;->d:I

    return v0
.end method

.method public b()Landroid/media/MediaFormat;
    .locals 3

    .line 1
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 2
    iget-object v1, p0, Lb/a/a/b/b;->a:Ljava/lang/String;

    const-string v2, "mime"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lb/a/a/b/b;->a:Ljava/lang/String;

    const-string v2, "audio/mp4a-latm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    const-string v2, "aac-profile"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 5
    :cond_0
    iget v1, p0, Lb/a/a/b/b;->b:I

    const-string v2, "bitrate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 6
    iget v1, p0, Lb/a/a/b/b;->c:I

    const-string v2, "sample-rate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 7
    iget v1, p0, Lb/a/a/b/b;->d:I

    const-string v2, "channel-count"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v1, 0x4800

    const-string v2, "max-input-size"

    .line 8
    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/b/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lb/a/a/b/b;->c:I

    return v0
.end method

.method public f(I)V
    .locals 0

    .line 1
    iput p1, p0, Lb/a/a/b/b;->c:I

    return-void
.end method

.method public g(I)V
    .locals 0

    .line 1
    iput p1, p0, Lb/a/a/b/b;->d:I

    return-void
.end method
