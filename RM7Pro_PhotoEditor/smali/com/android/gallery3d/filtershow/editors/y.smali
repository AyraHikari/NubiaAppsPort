.class public Lcom/android/gallery3d/filtershow/editors/y;
.super Lcom/android/gallery3d/filtershow/editors/c;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f080184

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/editors/c;-><init>(I)V

    return-void
.end method


# virtual methods
.method public L()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public q(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/c;->q(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    new-instance p2, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-direct {p2, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/c;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/c;->b:Landroid/view/View;

    return-void
.end method
