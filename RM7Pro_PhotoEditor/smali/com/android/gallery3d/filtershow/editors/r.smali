.class public Lcom/android/gallery3d/filtershow/editors/r;
.super Lcom/android/gallery3d/filtershow/editors/c;
.source ""


# static fields
.field public static final s:Ljava/lang/String;


# instance fields
.field r:Lcom/android/gallery3d/filtershow/imageshow/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/gallery3d/filtershow/editors/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/gallery3d/filtershow/editors/r;->s:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x7f080110

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/editors/c;-><init>(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->i:Z

    return-void
.end method


# virtual methods
.method public E(Landroid/widget/LinearLayout;)V
    .locals 1

    const v0, 0x7f080027

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/android/gallery3d/filtershow/editors/r$a;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/filtershow/editors/r$a;-><init>(Lcom/android/gallery3d/filtershow/editors/r;Landroid/widget/Button;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public F()V
    .locals 3

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v1

    const-string v2, "ROTATION"

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->q(Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->C0(Lcom/android/gallery3d/filtershow/filters/x;)V

    invoke-super {p0}, Lcom/android/gallery3d/filtershow/editors/c;->F()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/gallery3d/filtershow/filters/z;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/gallery3d/filtershow/editors/r;->s:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not reflect current filter, not of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/android/gallery3d/filtershow/filters/z;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/r;->r:Lcom/android/gallery3d/filtershow/imageshow/r;

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/z;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/r;->setFilterRotateRepresentation(Lcom/android/gallery3d/filtershow/filters/z;)V

    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/r;->r:Lcom/android/gallery3d/filtershow/imageshow/r;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public K()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public L()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Q()I
    .locals 1

    const v0, 0x7f0e0162

    return v0
.end method

.method public q(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/c;->q(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/r;->r:Lcom/android/gallery3d/filtershow/imageshow/r;

    if-nez p2, :cond_0

    new-instance p2, Lcom/android/gallery3d/filtershow/imageshow/r;

    invoke-direct {p2, p1}, Lcom/android/gallery3d/filtershow/imageshow/r;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/r;->r:Lcom/android/gallery3d/filtershow/imageshow/r;

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/r;->r:Lcom/android/gallery3d/filtershow/imageshow/r;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->b:Landroid/view/View;

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/filtershow/imageshow/r;->setEditor(Lcom/android/gallery3d/filtershow/editors/r;)V

    return-void
.end method

.method public s()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/r;->r:Lcom/android/gallery3d/filtershow/imageshow/r;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/r;->getFinalRepresentation()Lcom/android/gallery3d/filtershow/filters/z;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/editors/c;->k(Lcom/android/gallery3d/filtershow/filters/x;)V

    return-void
.end method
