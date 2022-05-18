.class public Lcom/android/gallery3d/filtershow/controller/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/gallery3d/filtershow/controller/f;


# instance fields
.field private a:Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;

.field private b:Lcom/android/gallery3d/filtershow/controller/n;

.field private c:Lcom/android/gallery3d/filtershow/editors/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic e(Lcom/android/gallery3d/filtershow/controller/s;)Lcom/android/gallery3d/filtershow/controller/n;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/controller/s;->b:Lcom/android/gallery3d/filtershow/controller/n;

    return-object p0
.end method

.method static synthetic f(Lcom/android/gallery3d/filtershow/controller/s;)Lcom/android/gallery3d/filtershow/editors/c;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/controller/s;->c:Lcom/android/gallery3d/filtershow/editors/c;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/s;->a:Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/controller/s;->b:Lcom/android/gallery3d/filtershow/controller/n;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/controller/n;->e()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->setColor([F)V

    return-void
.end method

.method public b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/s;->a:Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;

    return-object v0
.end method

.method public c(Lcom/android/gallery3d/filtershow/controller/h;)V
    .locals 0

    check-cast p1, Lcom/android/gallery3d/filtershow/controller/n;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/controller/s;->b:Lcom/android/gallery3d/filtershow/controller/n;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/controller/s;->a:Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/controller/s;->a()V

    :cond_0
    return-void
.end method

.method public d(Landroid/view/ViewGroup;Lcom/android/gallery3d/filtershow/controller/h;Lcom/android/gallery3d/filtershow/editors/c;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/controller/s;->c:Lcom/android/gallery3d/filtershow/editors/c;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    check-cast p2, Lcom/android/gallery3d/filtershow/controller/n;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/controller/s;->b:Lcom/android/gallery3d/filtershow/controller/n;

    const-string p2, "layout_inflater"

    invoke-virtual {p3, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const p3, 0x7f0b004b

    const/4 v0, 0x1

    invoke-virtual {p2, p3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const p2, 0x7f0801f0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/controller/s;->a:Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/controller/s;->a()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/controller/s;->a:Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;

    new-instance p2, Lcom/android/gallery3d/filtershow/controller/s$a;

    invoke-direct {p2, p0}, Lcom/android/gallery3d/filtershow/controller/s$a;-><init>(Lcom/android/gallery3d/filtershow/controller/s;)V

    invoke-virtual {p1, p2}, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->a(Lcom/android/gallery3d/filtershow/colorpicker/a;)V

    return-void
.end method
