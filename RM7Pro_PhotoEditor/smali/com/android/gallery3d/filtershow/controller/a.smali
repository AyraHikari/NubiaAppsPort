.class public Lcom/android/gallery3d/filtershow/controller/a;
.super Lcom/android/gallery3d/filtershow/controller/v;
.source ""


# instance fields
.field h:Landroid/widget/ImageButton;

.field i:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/controller/v;-><init>()V

    const v0, 0x7f0b002a

    iput v0, p0, Lcom/android/gallery3d/filtershow/controller/v;->g:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-super {p0}, Lcom/android/gallery3d/filtershow/controller/v;->a()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/a;->h:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/v;->d:Lcom/android/gallery3d/filtershow/controller/m;

    check-cast v0, Lcom/android/gallery3d/filtershow/controller/i;

    invoke-interface {v0}, Lcom/android/gallery3d/filtershow/controller/i;->p()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/controller/a;->h:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/a;->i:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/v;->d:Lcom/android/gallery3d/filtershow/controller/m;

    check-cast v0, Lcom/android/gallery3d/filtershow/controller/i;

    invoke-interface {v0}, Lcom/android/gallery3d/filtershow/controller/i;->z()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/controller/a;->i:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method public d(Landroid/view/ViewGroup;Lcom/android/gallery3d/filtershow/controller/h;Lcom/android/gallery3d/filtershow/editors/c;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/controller/v;->d(Landroid/view/ViewGroup;Lcom/android/gallery3d/filtershow/controller/h;Lcom/android/gallery3d/filtershow/editors/c;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/controller/v;->f:Landroid/view/View;

    const p2, 0x7f080198

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/controller/a;->h:Landroid/widget/ImageButton;

    new-instance p2, Lcom/android/gallery3d/filtershow/controller/a$a;

    invoke-direct {p2, p0}, Lcom/android/gallery3d/filtershow/controller/a$a;-><init>(Lcom/android/gallery3d/filtershow/controller/a;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/controller/v;->f:Landroid/view/View;

    const p2, 0x7f08020b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/controller/a;->i:Landroid/widget/ImageButton;

    new-instance p2, Lcom/android/gallery3d/filtershow/controller/a$b;

    invoke-direct {p2, p0}, Lcom/android/gallery3d/filtershow/controller/a$b;-><init>(Lcom/android/gallery3d/filtershow/controller/a;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/controller/a;->a()V

    return-void
.end method
