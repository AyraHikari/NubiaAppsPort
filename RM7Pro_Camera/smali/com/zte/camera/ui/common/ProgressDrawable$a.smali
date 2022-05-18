.class Lcom/zte/camera/ui/common/ProgressDrawable$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/camera/ui/common/ProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:F

.field b:F

.field final synthetic c:Lcom/zte/camera/ui/common/ProgressDrawable;

.field private d:I

.field private e:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Lcom/zte/camera/ui/common/ProgressDrawable;I)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/zte/camera/ui/common/ProgressDrawable$a;->c:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput p2, p0, Lcom/zte/camera/ui/common/ProgressDrawable$a;->d:I

    int-to-float p1, p2

    const/high16 p2, 0x43200000    # 160.0f

    mul-float/2addr p1, p2

    const p2, 0x450fc000    # 2300.0f

    div-float/2addr p1, p2

    .line 172
    iput p1, p0, Lcom/zte/camera/ui/common/ProgressDrawable$a;->a:F

    const p1, 0x3f26f4df

    .line 173
    iput p1, p0, Lcom/zte/camera/ui/common/ProgressDrawable$a;->b:F

    .line 174
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/zte/camera/ui/common/ProgressDrawable$a;->e:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 4

    .line 178
    iget v0, p0, Lcom/zte/camera/ui/common/ProgressDrawable$a;->a:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 181
    :cond_0
    iget v1, p0, Lcom/zte/camera/ui/common/ProgressDrawable$a;->b:F

    add-float v2, v1, v0

    cmpl-float v2, p1, v2

    const/high16 v3, 0x43b40000    # 360.0f

    if-ltz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/zte/camera/ui/common/ProgressDrawable$a;->e:Landroid/view/animation/Interpolator;

    sub-float/2addr p1, v0

    div-float/2addr p1, v1

    invoke-interface {v2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    mul-float/2addr v3, p1

    :goto_0
    return v3
.end method

.method public b(F)F
    .locals 1

    .line 186
    iget p1, p0, Lcom/zte/camera/ui/common/ProgressDrawable$a;->d:I

    int-to-float p1, p1

    const v0, 0x3dcccccd    # 0.1f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr v0, p1

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    return v0
.end method

.method public c(F)F
    .locals 4

    const v0, 0x3eef4dea

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    .line 192
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr p1, v3

    div-float/2addr p1, v0

    sub-float/2addr v2, p1

    invoke-virtual {v1, v2}, Landroid/view/animation/LinearInterpolator;->getInterpolation(F)F

    move-result p1

    mul-float/2addr p1, v3

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    return p1

    :cond_0
    const v0, 0x3f08590b

    cmpl-float p1, p1, v0

    const/high16 p1, 0x42ff0000    # 127.5f

    return p1
.end method

.method public d(F)F
    .locals 3

    .line 201
    invoke-virtual {p0, p1}, Lcom/zte/camera/ui/common/ProgressDrawable$a;->a(F)F

    move-result p1

    const/high16 v0, 0x438c0000    # 280.0f

    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_0

    .line 203
    invoke-virtual {p0, v2}, Lcom/zte/camera/ui/common/ProgressDrawable$a;->b(F)F

    move-result p1

    return p1

    :cond_0
    cmpl-float v1, p1, v0

    if-ltz v1, :cond_1

    const/high16 v1, 0x43a00000    # 320.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1

    .line 205
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sub-float/2addr p1, v0

    const/high16 v0, 0x42200000    # 40.0f

    div-float/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/view/animation/LinearInterpolator;->getInterpolation(F)F

    move-result p1

    invoke-virtual {p0, v2}, Lcom/zte/camera/ui/common/ProgressDrawable$a;->c(F)F

    move-result v0

    invoke-virtual {p0, v2}, Lcom/zte/camera/ui/common/ProgressDrawable$a;->b(F)F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr p1, v0

    invoke-virtual {p0, v2}, Lcom/zte/camera/ui/common/ProgressDrawable$a;->b(F)F

    move-result v0

    add-float/2addr p1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/zte/camera/ui/common/ProgressDrawable$a;->c(F)F

    move-result p1

    :goto_0
    return p1
.end method

.method public e(F)F
    .locals 4

    const v0, 0x3ed5b450

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/zte/camera/ui/common/ProgressDrawable$a;->c:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/camera/ui/common/ProgressDrawable;->b(Lcom/zte/camera/ui/common/ProgressDrawable;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/zte/camera/ui/common/ProgressDrawable$a;->c:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v2}, Lcom/zte/camera/ui/common/ProgressDrawable;->c(Lcom/zte/camera/ui/common/ProgressDrawable;)I

    move-result v2

    iget-object v3, p0, Lcom/zte/camera/ui/common/ProgressDrawable$a;->c:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v3}, Lcom/zte/camera/ui/common/ProgressDrawable;->b(Lcom/zte/camera/ui/common/ProgressDrawable;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float p1, v0, p1

    mul-float/2addr v2, p1

    div-float/2addr v2, v0

    add-float/2addr v1, v2

    return v1

    :cond_0
    const v1, 0x3f1525d8

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/zte/camera/ui/common/ProgressDrawable$a;->c:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v1}, Lcom/zte/camera/ui/common/ProgressDrawable;->b(Lcom/zte/camera/ui/common/ProgressDrawable;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/zte/camera/ui/common/ProgressDrawable$a;->c:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v2}, Lcom/zte/camera/ui/common/ProgressDrawable;->c(Lcom/zte/camera/ui/common/ProgressDrawable;)I

    move-result v2

    iget-object v3, p0, Lcom/zte/camera/ui/common/ProgressDrawable$a;->c:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {v3}, Lcom/zte/camera/ui/common/ProgressDrawable;->b(Lcom/zte/camera/ui/common/ProgressDrawable;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float p1, v3, p1

    div-float/2addr p1, v0

    sub-float/2addr v3, p1

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zte/camera/ui/common/ProgressDrawable$a;->c:Lcom/zte/camera/ui/common/ProgressDrawable;

    invoke-static {p1}, Lcom/zte/camera/ui/common/ProgressDrawable;->b(Lcom/zte/camera/ui/common/ProgressDrawable;)I

    move-result p1

    int-to-float v1, p1

    :goto_0
    return v1
.end method
