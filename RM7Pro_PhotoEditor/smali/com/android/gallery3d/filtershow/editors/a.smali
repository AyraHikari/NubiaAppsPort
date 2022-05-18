.class public Lcom/android/gallery3d/filtershow/editors/a;
.super Lcom/android/gallery3d/filtershow/editors/a0;
.source ""

# interfaces
.implements Lcom/android/gallery3d/filtershow/controller/m;


# static fields
.field public static y:I = 0x7f080036


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    sget v0, Lcom/android/gallery3d/filtershow/editors/a;->y:I

    const v1, 0x7f0b0030

    const v2, 0x7f080036

    invoke-direct {p0, v0, v1, v2}, Lcom/android/gallery3d/filtershow/editors/a0;-><init>(III)V

    return-void
.end method

.method protected constructor <init>(III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/editors/a0;-><init>(III)V

    return-void
.end method

.method private V()Lcom/android/gallery3d/filtershow/filters/f;
    .locals 2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/gallery3d/filtershow/filters/f;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/f;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public A(Lcom/android/gallery3d/filtershow/controller/f;)V
    .locals 0

    return-void
.end method

.method public F()V
    .locals 1

    invoke-super {p0}, Lcom/android/gallery3d/filtershow/editors/a0;->F()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    instance-of v0, v0, Lcom/android/gallery3d/filtershow/filters/f;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/f;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->N()V

    :cond_0
    return-void
.end method

.method protected P(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/a;->x()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/a;->h()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/c;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float p1, p1

    int-to-float v2, v2

    div-float/2addr p1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    mul-float/2addr v0, p1

    float-to-int p1, v0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/a;->getValue()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/editors/a;->l(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/a0;->t:Lcom/android/gallery3d/filtershow/controller/f;

    invoke-interface {p1}, Lcom/android/gallery3d/filtershow/controller/f;->a()V

    return-void
.end method

.method public getValue()I
    .locals 1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/a;->V()Lcom/android/gallery3d/filtershow/filters/f;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/f;->getValue()I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/a;->V()Lcom/android/gallery3d/filtershow/filters/f;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/f;->h()I

    move-result v0

    return v0
.end method

.method public l(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/a;->V()Lcom/android/gallery3d/filtershow/filters/f;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/filters/f;->l(I)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->a()V

    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "ParameterInteger"

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/a;->V()Lcom/android/gallery3d/filtershow/filters/f;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/x;->Q()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()I
    .locals 1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/a;->V()Lcom/android/gallery3d/filtershow/filters/f;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/f;->x()I

    move-result v0

    return v0
.end method
