.class public Lcn/nubia/b/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 163
    iput v0, p0, Lcn/nubia/b/l$a;->a:I

    const/4 v0, 0x2

    .line 164
    iput v0, p0, Lcn/nubia/b/l$a;->b:I

    .line 165
    iput v0, p0, Lcn/nubia/b/l$a;->c:I

    const v1, 0x989680

    .line 166
    iput v1, p0, Lcn/nubia/b/l$a;->d:I

    const/16 v1, 0x1e

    .line 167
    iput v1, p0, Lcn/nubia/b/l$a;->e:I

    .line 169
    iput v0, p0, Lcn/nubia/b/l$a;->h:I

    const/4 v0, 0x3

    .line 170
    iput v0, p0, Lcn/nubia/b/l$a;->i:I

    .line 171
    iput v1, p0, Lcn/nubia/b/l$a;->j:I

    const/4 v0, -0x1

    .line 172
    iput v0, p0, Lcn/nubia/b/l$a;->k:I

    .line 173
    iput v0, p0, Lcn/nubia/b/l$a;->l:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 191
    iget v0, p0, Lcn/nubia/b/l$a;->b:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 199
    iput p1, p0, Lcn/nubia/b/l$a;->a:I

    return-void
.end method

.method public a(II)V
    .locals 0

    .line 272
    iput p1, p0, Lcn/nubia/b/l$a;->f:I

    .line 273
    iput p2, p0, Lcn/nubia/b/l$a;->g:I

    return-void
.end method

.method public a(Landroid/media/CamcorderProfile;)V
    .locals 1

    .line 176
    iget v0, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    iput v0, p0, Lcn/nubia/b/l$a;->d:I

    .line 177
    iget v0, p1, Landroid/media/CamcorderProfile;->fileFormat:I

    iput v0, p0, Lcn/nubia/b/l$a;->c:I

    .line 178
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    iput v0, p0, Lcn/nubia/b/l$a;->e:I

    .line 179
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcn/nubia/b/l$a;->f:I

    .line 180
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcn/nubia/b/l$a;->g:I

    .line 181
    iget v0, p1, Landroid/media/CamcorderProfile;->videoCodec:I

    iput v0, p0, Lcn/nubia/b/l$a;->h:I

    .line 182
    iget v0, p1, Landroid/media/CamcorderProfile;->audioCodec:I

    iput v0, p0, Lcn/nubia/b/l$a;->i:I

    .line 183
    iget p1, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    iput p1, p0, Lcn/nubia/b/l$a;->j:I

    return-void
.end method

.method public b()I
    .locals 1

    .line 207
    iget v0, p0, Lcn/nubia/b/l$a;->a:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 215
    iput p1, p0, Lcn/nubia/b/l$a;->c:I

    return-void
.end method

.method public b(II)V
    .locals 0

    .line 329
    iput p1, p0, Lcn/nubia/b/l$a;->k:I

    .line 330
    iput p2, p0, Lcn/nubia/b/l$a;->l:I

    return-void
.end method

.method public c()I
    .locals 1

    .line 223
    iget v0, p0, Lcn/nubia/b/l$a;->c:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 231
    iput p1, p0, Lcn/nubia/b/l$a;->d:I

    return-void
.end method

.method public d()I
    .locals 1

    .line 239
    iget v0, p0, Lcn/nubia/b/l$a;->d:I

    return v0
.end method

.method public d(I)V
    .locals 0

    .line 247
    iput p1, p0, Lcn/nubia/b/l$a;->e:I

    return-void
.end method

.method public e()I
    .locals 1

    .line 255
    iget v0, p0, Lcn/nubia/b/l$a;->e:I

    return v0
.end method

.method public e(I)V
    .locals 0

    .line 293
    iput p1, p0, Lcn/nubia/b/l$a;->h:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 335
    instance-of v0, p1, Lcn/nubia/b/l$a;

    if-eqz v0, :cond_0

    .line 336
    check-cast p1, Lcn/nubia/b/l$a;

    .line 337
    iget v0, p1, Lcn/nubia/b/l$a;->i:I

    iget v1, p0, Lcn/nubia/b/l$a;->i:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcn/nubia/b/l$a;->h:I

    iget v1, p0, Lcn/nubia/b/l$a;->h:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcn/nubia/b/l$a;->e:I

    iget v1, p0, Lcn/nubia/b/l$a;->e:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcn/nubia/b/l$a;->d:I

    iget v1, p0, Lcn/nubia/b/l$a;->d:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcn/nubia/b/l$a;->a:I

    iget v1, p0, Lcn/nubia/b/l$a;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcn/nubia/b/l$a;->b:I

    iget v1, p0, Lcn/nubia/b/l$a;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcn/nubia/b/l$a;->c:I

    iget v1, p0, Lcn/nubia/b/l$a;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcn/nubia/b/l$a;->f:I

    iget v1, p0, Lcn/nubia/b/l$a;->f:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcn/nubia/b/l$a;->g:I

    iget v1, p0, Lcn/nubia/b/l$a;->g:I

    if-ne v0, v1, :cond_0

    iget p1, p1, Lcn/nubia/b/l$a;->j:I

    iget v0, p0, Lcn/nubia/b/l$a;->j:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f()I
    .locals 1

    .line 259
    iget v0, p0, Lcn/nubia/b/l$a;->k:I

    return v0
.end method

.method public f(I)V
    .locals 0

    .line 309
    iput p1, p0, Lcn/nubia/b/l$a;->i:I

    return-void
.end method

.method public g()I
    .locals 1

    .line 263
    iget v0, p0, Lcn/nubia/b/l$a;->l:I

    return v0
.end method

.method public g(I)V
    .locals 0

    .line 321
    iput p1, p0, Lcn/nubia/b/l$a;->j:I

    return-void
.end method

.method public h()I
    .locals 1

    .line 281
    iget v0, p0, Lcn/nubia/b/l$a;->f:I

    return v0
.end method

.method public i()I
    .locals 1

    .line 285
    iget v0, p0, Lcn/nubia/b/l$a;->g:I

    return v0
.end method

.method public j()I
    .locals 1

    .line 301
    iget v0, p0, Lcn/nubia/b/l$a;->h:I

    return v0
.end method

.method public k()I
    .locals 1

    .line 317
    iget v0, p0, Lcn/nubia/b/l$a;->a:I

    return v0
.end method

.method public l()I
    .locals 1

    .line 325
    iget v0, p0, Lcn/nubia/b/l$a;->j:I

    return v0
.end method
