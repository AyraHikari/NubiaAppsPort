.class public Lcom/android/gallery3d/filtershow/pipeline/l;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

.field private c:Lcom/android/gallery3d/filtershow/pipeline/m;

.field private d:F

.field private e:Landroid/graphics/Rect;

.field private f:Landroid/graphics/Rect;

.field private g:Landroid/graphics/Rect;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/l;->a:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/l;->b:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/l;->c:Lcom/android/gallery3d/filtershow/pipeline/m;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/gallery3d/filtershow/pipeline/l;->d:F

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/l;->e:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/l;->f:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/l;->g:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/pipeline/l;->h:I

    return-void
.end method

.method public static j(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;ILcom/android/gallery3d/filtershow/pipeline/m;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/gallery3d/filtershow/pipeline/l;->k(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;ILcom/android/gallery3d/filtershow/pipeline/m;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static k(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;ILcom/android/gallery3d/filtershow/pipeline/m;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eq p3, v3, :cond_0

    if-eq p3, v1, :cond_0

    if-eq p3, v0, :cond_0

    if-eq p3, v2, :cond_0

    if-eqz p1, :cond_6

    :cond_0
    if-eqz p2, :cond_6

    if-nez p4, :cond_1

    goto :goto_2

    :cond_1
    new-instance v4, Lcom/android/gallery3d/filtershow/pipeline/l;

    invoke-direct {v4}, Lcom/android/gallery3d/filtershow/pipeline/l;-><init>()V

    const/4 v5, 0x0

    if-eqz p3, :cond_3

    const/4 v6, 0x3

    if-eq p3, v6, :cond_3

    const/4 v6, 0x6

    if-ne p3, v6, :cond_2

    goto :goto_0

    :cond_2
    if-eq p3, v3, :cond_4

    if-eq p3, v1, :cond_4

    if-eq p3, v0, :cond_4

    if-eq p3, v2, :cond_4

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->n()Lcom/android/gallery3d/filtershow/e/a;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    const/16 v5, 0x8

    invoke-virtual {v0, v1, p1, v5}, Lcom/android/gallery3d/filtershow/e/a;->c(III)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_1

    :cond_3
    :goto_0
    new-instance v0, Lcom/android/gallery3d/filtershow/pipeline/c;

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/g0;->W()Lcom/android/gallery3d/filtershow/filters/g0;

    move-result-object v1

    const-string v5, "Icon"

    invoke-direct {v0, v1, v5}, Lcom/android/gallery3d/filtershow/pipeline/c;-><init>(Lcom/android/gallery3d/filtershow/filters/g0;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/filtershow/pipeline/c;->q(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)Landroid/graphics/Bitmap;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-virtual {v4, v5}, Lcom/android/gallery3d/filtershow/pipeline/l;->m(Landroid/graphics/Bitmap;)V

    new-instance p1, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    invoke-direct {p1, p2}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    invoke-virtual {v4, p2}, Lcom/android/gallery3d/filtershow/pipeline/l;->s(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/imageshow/x;->U()F

    move-result p2

    invoke-virtual {v4, p2}, Lcom/android/gallery3d/filtershow/pipeline/l;->t(F)V

    if-ne p3, v3, :cond_5

    invoke-virtual {v4, p5}, Lcom/android/gallery3d/filtershow/pipeline/l;->n(Landroid/graphics/Rect;)V

    invoke-virtual {v4, p6}, Lcom/android/gallery3d/filtershow/pipeline/l;->p(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v2, p5}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->T(ZLandroid/graphics/Rect;)V

    :cond_5
    invoke-virtual {v4, p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->r(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    invoke-virtual {v4, p3}, Lcom/android/gallery3d/filtershow/pipeline/l;->u(I)V

    invoke-virtual {v4, p4}, Lcom/android/gallery3d/filtershow/pipeline/l;->o(Lcom/android/gallery3d/filtershow/pipeline/m;)V

    invoke-virtual {v4, p0}, Lcom/android/gallery3d/filtershow/pipeline/l;->i(Landroid/content/Context;)V

    return-void

    :cond_6
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "something null: source: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " or preset: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " or caller: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RenderingRequest"

    invoke-static {p1, p0}, Lcom/android/gallery3d/filtershow/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static l(Landroid/content/Context;IILcom/android/gallery3d/filtershow/pipeline/ImagePreset;Lcom/android/gallery3d/filtershow/pipeline/m;)V
    .locals 2

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/gallery3d/filtershow/pipeline/l;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/pipeline/l;-><init>()V

    new-instance v1, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    invoke-direct {v1, p3}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    invoke-virtual {v0, p3}, Lcom/android/gallery3d/filtershow/pipeline/l;->s(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/gallery3d/filtershow/imageshow/x;->U()F

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/gallery3d/filtershow/pipeline/l;->t(F)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/pipeline/l;->r(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    const/4 p3, 0x3

    invoke-virtual {v0, p3}, Lcom/android/gallery3d/filtershow/pipeline/l;->u(I)V

    invoke-virtual {v0, p4}, Lcom/android/gallery3d/filtershow/pipeline/l;->o(Lcom/android/gallery3d/filtershow/pipeline/m;)V

    new-instance p3, Landroid/graphics/Rect;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p4, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p3}, Lcom/android/gallery3d/filtershow/pipeline/l;->q(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/pipeline/l;->i(Landroid/content/Context;)V

    return-void

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "something null, preset: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " or caller: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RenderingRequest"

    invoke-static {p1, p0}, Lcom/android/gallery3d/filtershow/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/l;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public b()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/l;->e:Landroid/graphics/Rect;

    return-object v0
.end method

.method public c()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/l;->f:Landroid/graphics/Rect;

    return-object v0
.end method

.method public d()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/l;->g:Landroid/graphics/Rect;

    return-object v0
.end method

.method public e()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/l;->b:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    return-object v0
.end method

.method public f()F
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/pipeline/l;->d:F

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/pipeline/l;->h:I

    return v0
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/l;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/l;->b:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/l;->c:Lcom/android/gallery3d/filtershow/pipeline/m;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0}, Lcom/android/gallery3d/filtershow/pipeline/m;->a(Lcom/android/gallery3d/filtershow/pipeline/l;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public i(Landroid/content/Context;)V
    .locals 1

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->U0()Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->n(Lcom/android/gallery3d/filtershow/pipeline/l;)V

    :cond_0
    return-void
.end method

.method public m(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/l;->a:Landroid/graphics/Bitmap;

    return-void
.end method

.method public n(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/l;->e:Landroid/graphics/Rect;

    return-void
.end method

.method public o(Lcom/android/gallery3d/filtershow/pipeline/m;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/l;->c:Lcom/android/gallery3d/filtershow/pipeline/m;

    return-void
.end method

.method public p(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/l;->f:Landroid/graphics/Rect;

    return-void
.end method

.method public q(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/l;->g:Landroid/graphics/Rect;

    return-void
.end method

.method public r(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/l;->b:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    return-void
.end method

.method public s(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V
    .locals 0

    return-void
.end method

.method public t(F)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/pipeline/l;->d:F

    return-void
.end method

.method public u(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/pipeline/l;->h:I

    return-void
.end method
