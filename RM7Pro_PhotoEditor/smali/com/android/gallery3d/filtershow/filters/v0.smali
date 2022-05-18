.class public Lcom/android/gallery3d/filtershow/filters/v0;
.super Lcom/android/gallery3d/filtershow/filters/y0;
.source ""


# instance fields
.field private g:Lcom/android/gallery3d/filtershow/filters/f1;

.field h:Lcom/android/gallery3d/filtershow/filters/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/gallery3d/filtershow/filters/v0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/y0;-><init>()V

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/q;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/q;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/v0;->h:Lcom/android/gallery3d/filtershow/filters/q;

    const-string v0, "grad"

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->mName:Ljava/lang/String;

    return-void
.end method

.method private r()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/y0;->j()Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->finish()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getEnvironment()Lcom/android/gallery3d/filtershow/pipeline/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/e;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private s(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 5

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v1

    new-instance v2, Landroid/support/v8/renderscript/Script$LaunchOptions;

    invoke-direct {v2}, Landroid/support/v8/renderscript/Script$LaunchOptions;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/support/v8/renderscript/Script$LaunchOptions;->setX(II)Landroid/support/v8/renderscript/Script$LaunchOptions;

    :goto_0
    if-ge v3, v1, :cond_2

    add-int/lit8 v0, v3, 0x40

    if-le v0, v1, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    invoke-virtual {v2, v3, v4}, Landroid/support/v8/renderscript/Script$LaunchOptions;->setY(II)Landroid/support/v8/renderscript/Script$LaunchOptions;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/v0;->g:Lcom/android/gallery3d/filtershow/filters/f1;

    invoke-virtual {v3, p1, p2, v2}, Lcom/android/gallery3d/filtershow/filters/f1;->a(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/v0;->r()Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    move v3, v0

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 0

    if-nez p3, :cond_0

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/filters/y0;->apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    return-object p1
.end method

.method protected d()V
    .locals 5

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

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/v0;->g:Lcom/android/gallery3d/filtershow/filters/f1;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/android/gallery3d/filtershow/filters/f1;->f(J)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/v0;->g:Lcom/android/gallery3d/filtershow/filters/f1;

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/filters/f1;->e(J)V

    return-void
.end method

.method protected f(Landroid/content/res/Resources;FI)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/y0;->h()Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/gallery3d/filtershow/filters/v0;->g(Landroid/content/res/Resources;FILandroid/support/v8/renderscript/Allocation;)V

    return-void
.end method

.method protected g(Landroid/content/res/Resources;FILandroid/support/v8/renderscript/Allocation;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/y0;->j()Landroid/support/v8/renderscript/RenderScript;

    move-result-object p1

    new-instance p2, Landroid/support/v8/renderscript/Type$Builder;

    invoke-static {p1}, Landroid/support/v8/renderscript/Element;->F32_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object p3

    invoke-virtual {p3}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    invoke-virtual {p4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object p3

    invoke-virtual {p3}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/support/v8/renderscript/Type$Builder;->setY(I)Landroid/support/v8/renderscript/Type$Builder;

    new-instance p2, Lcom/android/gallery3d/filtershow/filters/f1;

    invoke-direct {p2, p1}, Lcom/android/gallery3d/filtershow/filters/f1;-><init>(Landroid/support/v8/renderscript/RenderScript;)V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/filters/v0;->g:Lcom/android/gallery3d/filtershow/filters/f1;

    return-void
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 1

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/q;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/q;-><init>()V

    return-object v0
.end method

.method protected l()V
    .locals 0

    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/v0;->g:Lcom/android/gallery3d/filtershow/filters/f1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/BaseObj;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/v0;->g:Lcom/android/gallery3d/filtershow/filters/f1;

    :cond_0
    return-void
.end method

.method protected o()V
    .locals 10

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/v0;->h:Lcom/android/gallery3d/filtershow/filters/q;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/q;->w0()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/v0;->h:Lcom/android/gallery3d/filtershow/filters/q;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/q;->y0()[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/filters/v0;->h:Lcom/android/gallery3d/filtershow/filters/q;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/q;->x0()[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/v0;->h:Lcom/android/gallery3d/filtershow/filters/q;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/q;->z0()[I

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/y0;->h()Landroid/support/v8/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/y0;->h()Landroid/support/v8/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getOriginalToScreenMatrix(II)Landroid/graphics/Matrix;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    array-length v8, v0

    if-ge v7, v8, :cond_0

    aget v8, v0, v7

    int-to-float v8, v8

    aput v8, v5, v6

    aget v8, v1, v7

    int-to-float v8, v8

    const/4 v9, 0x1

    aput v8, v5, v9

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v8, v5, v6

    float-to-int v8, v8

    aput v8, v0, v7

    aget v8, v5, v9

    float-to-int v8, v8

    aput v8, v1, v7

    aget v8, v2, v7

    int-to-float v8, v8

    aput v8, v5, v6

    aget v8, v3, v7

    int-to-float v8, v8

    aput v8, v5, v9

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v8, v5, v6

    float-to-int v8, v8

    aput v8, v2, v7

    aget v8, v5, v9

    float-to-int v8, v8

    aput v8, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/v0;->g:Lcom/android/gallery3d/filtershow/filters/f1;

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/filters/v0;->h:Lcom/android/gallery3d/filtershow/filters/q;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/filters/q;->p0()[Z

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/filtershow/filters/f1;->g([Z)V

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/filters/v0;->g:Lcom/android/gallery3d/filtershow/filters/f1;

    invoke-virtual {v4, v0}, Lcom/android/gallery3d/filtershow/filters/f1;->i([I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/v0;->g:Lcom/android/gallery3d/filtershow/filters/f1;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/f1;->k([I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/v0;->g:Lcom/android/gallery3d/filtershow/filters/f1;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/filters/f1;->j([I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/v0;->g:Lcom/android/gallery3d/filtershow/filters/f1;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/filters/f1;->l([I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/v0;->g:Lcom/android/gallery3d/filtershow/filters/f1;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/v0;->h:Lcom/android/gallery3d/filtershow/filters/q;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/q;->n0()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/f1;->c([I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/v0;->g:Lcom/android/gallery3d/filtershow/filters/f1;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/v0;->h:Lcom/android/gallery3d/filtershow/filters/q;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/q;->o0()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/f1;->d([I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/v0;->g:Lcom/android/gallery3d/filtershow/filters/f1;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/filters/v0;->h:Lcom/android/gallery3d/filtershow/filters/q;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/q;->u0()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/f1;->h([I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/v0;->g:Lcom/android/gallery3d/filtershow/filters/f1;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/f1;->b()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/y0;->h()Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/y0;->i()Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/filters/v0;->s(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    return-void
.end method

.method public useRepresentation(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/q;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/v0;->h:Lcom/android/gallery3d/filtershow/filters/q;

    return-void
.end method
