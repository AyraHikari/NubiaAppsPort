.class public Lcom/android/gallery3d/filtershow/editors/q;
.super Lcom/android/gallery3d/filtershow/editors/c;
.source ""


# static fields
.field public static s:I = 0x7f08010f


# instance fields
.field r:Lcom/android/gallery3d/filtershow/imageshow/q;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/android/gallery3d/filtershow/editors/q;->s:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/editors/c;-><init>(I)V

    return-void
.end method


# virtual methods
.method public F()V
    .locals 2

    invoke-super {p0}, Lcom/android/gallery3d/filtershow/editors/c;->F()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v1

    instance-of v1, v1, Lcom/android/gallery3d/filtershow/filters/w;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/w;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/q;->r:Lcom/android/gallery3d/filtershow/imageshow/q;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/p;->setRepresentation(Lcom/android/gallery3d/filtershow/filters/w;)V

    :cond_0
    return-void
.end method

.method public L()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public q(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/c;->q(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    new-instance p2, Lcom/android/gallery3d/filtershow/imageshow/q;

    invoke-direct {p2, p1}, Lcom/android/gallery3d/filtershow/imageshow/q;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/q;->r:Lcom/android/gallery3d/filtershow/imageshow/q;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/c;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/c;->b:Landroid/view/View;

    invoke-virtual {p2, p0}, Lcom/android/gallery3d/filtershow/imageshow/p;->setEditor(Lcom/android/gallery3d/filtershow/editors/q;)V

    return-void
.end method
