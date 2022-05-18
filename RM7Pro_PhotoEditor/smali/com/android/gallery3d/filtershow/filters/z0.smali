.class public Lcom/android/gallery3d/filtershow/filters/z0;
.super Lcom/android/gallery3d/filtershow/filters/y0;
.source ""


# instance fields
.field private g:Lcom/android/gallery3d/filtershow/filters/e1;

.field private h:Lcom/android/gallery3d/filtershow/filters/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/y0;-><init>()V

    const-string v0, "Sharpen"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    return-void
.end method

.method private r()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getEnvironment()Lcom/android/gallery3d/filtershow/pipeline/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/e;->j()F

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/z0;->h:Lcom/android/gallery3d/filtershow/filters/f;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/f;->getValue()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v1, v0

    const/16 v0, 0x9

    new-array v0, v0, [F

    neg-float v2, v1

    const/4 v3, 0x0

    aput v2, v0, v3

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v3, 0x2

    aput v2, v0, v3

    const/4 v3, 0x3

    aput v2, v0, v3

    const/high16 v3, 0x41000000    # 8.0f

    mul-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    const/4 v3, 0x4

    aput v1, v0, v3

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v2, v0, v1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/z0;->g:Lcom/android/gallery3d/filtershow/filters/e1;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/filters/e1;->d([F)V

    return-void
.end method


# virtual methods
.method protected d()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/y0;->h()Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/y0;->h()Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/z0;->g:Lcom/android/gallery3d/filtershow/filters/e1;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/filtershow/filters/e1;->g(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/z0;->g:Lcom/android/gallery3d/filtershow/filters/e1;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/e1;->e(I)V

    return-void
.end method

.method protected f(Landroid/content/res/Resources;FI)V
    .locals 0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/filters/z0;->g:Lcom/android/gallery3d/filtershow/filters/e1;

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/gallery3d/filtershow/filters/e1;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/y0;->j()Landroid/support/v8/renderscript/RenderScript;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/gallery3d/filtershow/filters/e1;-><init>(Landroid/support/v8/renderscript/RenderScript;)V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/z0;->g:Lcom/android/gallery3d/filtershow/filters/e1;

    :cond_0
    return-void
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 4

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/f;

    const-string v1, "Sharpen"

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/android/gallery3d/filtershow/filters/f;-><init>(Ljava/lang/String;III)V

    const-string v1, "SHARPEN"

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->d0(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/filters/x;->e0(Z)V

    const-class v1, Lcom/android/gallery3d/filtershow/filters/z0;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->X(Ljava/lang/Class;)V

    const v1, 0x7f0e0182

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->g0(I)V

    const v1, 0x7f070101

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->b0(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/x;->f0(Z)V

    return-object v0
.end method

.method protected l()V
    .locals 0

    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/z0;->g:Lcom/android/gallery3d/filtershow/filters/e1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/BaseObj;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/z0;->g:Lcom/android/gallery3d/filtershow/filters/e1;

    :cond_0
    return-void
.end method

.method protected o()V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/z0;->h:Lcom/android/gallery3d/filtershow/filters/f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/z0;->r()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/z0;->g:Lcom/android/gallery3d/filtershow/filters/e1;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/y0;->h()Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/e1;->f(Landroid/support/v8/renderscript/Allocation;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/z0;->g:Lcom/android/gallery3d/filtershow/filters/e1;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/y0;->h()Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/e1;->a(Landroid/support/v8/renderscript/Allocation;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/z0;->g:Lcom/android/gallery3d/filtershow/filters/e1;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/y0;->h()Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/y0;->i()Landroid/support/v8/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/e1;->b(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    return-void
.end method

.method public useRepresentation(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/f;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/z0;->h:Lcom/android/gallery3d/filtershow/filters/f;

    return-void
.end method
