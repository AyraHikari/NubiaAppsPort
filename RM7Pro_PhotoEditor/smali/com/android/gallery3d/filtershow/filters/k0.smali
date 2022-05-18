.class public Lcom/android/gallery3d/filtershow/filters/k0;
.super Lcom/android/gallery3d/filtershow/filters/y0;
.source ""


# instance fields
.field private g:Lcom/android/gallery3d/filtershow/filters/g1;

.field h:Lcom/android/gallery3d/filtershow/filters/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/gallery3d/filtershow/filters/k0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/y0;-><init>()V

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/g;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/g;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/k0;->h:Lcom/android/gallery3d/filtershow/filters/g;

    const-string v0, "ChannelSat"

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
    if-ge v3, v1, :cond_3

    add-int/lit8 v0, v3, 0x40

    if-le v0, v1, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    invoke-virtual {v2, v3, v4}, Landroid/support/v8/renderscript/Script$LaunchOptions;->setY(II)Landroid/support/v8/renderscript/Script$LaunchOptions;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/k0;->g:Lcom/android/gallery3d/filtershow/filters/g1;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1, p2, v2}, Lcom/android/gallery3d/filtershow/filters/g1;->a(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/k0;->r()Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    :cond_2
    move v3, v0

    goto :goto_0

    :cond_3
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
    .locals 1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/y0;->h()Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getX()I

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/y0;->h()Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getY()I

    return-void
.end method

.method protected f(Landroid/content/res/Resources;FI)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/y0;->h()Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/gallery3d/filtershow/filters/k0;->g(Landroid/content/res/Resources;FILandroid/support/v8/renderscript/Allocation;)V

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

    new-instance p2, Lcom/android/gallery3d/filtershow/filters/g1;

    invoke-direct {p2, p1}, Lcom/android/gallery3d/filtershow/filters/g1;-><init>(Landroid/support/v8/renderscript/RenderScript;)V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/filters/k0;->g:Lcom/android/gallery3d/filtershow/filters/g1;

    return-void
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 1

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/g;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/g;-><init>()V

    return-object v0
.end method

.method protected l()V
    .locals 0

    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/k0;->g:Lcom/android/gallery3d/filtershow/filters/g1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/BaseObj;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/k0;->g:Lcom/android/gallery3d/filtershow/filters/g1;

    :cond_0
    return-void
.end method

.method protected o()V
    .locals 4

    const/4 v0, 0x7

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/filters/k0;->h:Lcom/android/gallery3d/filtershow/filters/g;

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/filtershow/filters/g;->n0(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/y0;->h()Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/y0;->h()Landroid/support/v8/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->getOriginalToScreenMatrix(II)Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/k0;->g:Lcom/android/gallery3d/filtershow/filters/g1;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/g1;->c([I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/k0;->g:Lcom/android/gallery3d/filtershow/filters/g1;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/g1;->b()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/y0;->h()Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/y0;->i()Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/filters/k0;->s(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V

    return-void
.end method

.method public useRepresentation(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/g;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/k0;->h:Lcom/android/gallery3d/filtershow/filters/g;

    return-void
.end method
