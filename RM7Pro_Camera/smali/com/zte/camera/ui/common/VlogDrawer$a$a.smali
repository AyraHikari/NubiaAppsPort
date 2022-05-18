.class Lcom/zte/camera/ui/common/VlogDrawer$a$a;
.super Landroidx/recyclerview/widget/RecyclerView$x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/camera/ui/common/VlogDrawer$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field q:Landroid/view/ViewGroup;

.field r:Landroid/widget/ImageView;

.field s:Landroid/widget/TextView;

.field t:Landroid/widget/ImageView;

.field u:Landroid/widget/TextView;

.field v:Landroid/view/View;

.field w:Landroid/view/TextureView;

.field x:Landroid/widget/ImageView;

.field y:Landroid/widget/ImageView;

.field final synthetic z:Lcom/zte/camera/ui/common/VlogDrawer$a;


# direct methods
.method constructor <init>(Lcom/zte/camera/ui/common/VlogDrawer$a;Landroid/view/View;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->z:Lcom/zte/camera/ui/common/VlogDrawer$a;

    .line 209
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$x;-><init>(Landroid/view/View;)V

    .line 210
    sget p1, Lcom/nubia/a/a$e;->A:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->q:Landroid/view/ViewGroup;

    .line 211
    sget p1, Lcom/nubia/a/a$e;->z:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->r:Landroid/widget/ImageView;

    .line 212
    sget p1, Lcom/nubia/a/a$e;->E:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->v:Landroid/view/View;

    .line 213
    sget p1, Lcom/nubia/a/a$e;->B:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->s:Landroid/widget/TextView;

    .line 214
    sget p1, Lcom/nubia/a/a$e;->C:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->t:Landroid/widget/ImageView;

    .line 215
    sget p1, Lcom/nubia/a/a$e;->y:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->u:Landroid/widget/TextView;

    .line 216
    sget p1, Lcom/nubia/a/a$e;->F:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    iput-object p1, p0, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->w:Landroid/view/TextureView;

    .line 217
    sget p1, Lcom/nubia/a/a$e;->G:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->x:Landroid/widget/ImageView;

    .line 218
    sget p1, Lcom/nubia/a/a$e;->x:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->y:Landroid/widget/ImageView;

    .line 220
    new-instance p2, Lcom/zte/camera/ui/common/-$$Lambda$VlogDrawer$a$a$VZEn_xhGdHsEIhX2kcu87gkuD9Q;

    invoke-direct {p2, p0}, Lcom/zte/camera/ui/common/-$$Lambda$VlogDrawer$a$a$VZEn_xhGdHsEIhX2kcu87gkuD9Q;-><init>(Lcom/zte/camera/ui/common/VlogDrawer$a$a;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object p1, p0, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->r:Landroid/widget/ImageView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 229
    iget-object p1, p0, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->w:Landroid/view/TextureView;

    invoke-virtual {p1, p2}, Landroid/view/TextureView;->setClipToOutline(Z)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 1

    .line 221
    iget-object p1, p0, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->z:Lcom/zte/camera/ui/common/VlogDrawer$a;

    iget-object p1, p1, Lcom/zte/camera/ui/common/VlogDrawer$a;->a:Lcom/zte/camera/ui/common/VlogDrawer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zte/camera/ui/common/VlogDrawer;->a(Lcom/zte/camera/ui/common/VlogDrawer;Z)Z

    .line 222
    iget-object p1, p0, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->z:Lcom/zte/camera/ui/common/VlogDrawer$a;

    iget-object p1, p1, Lcom/zte/camera/ui/common/VlogDrawer$a;->a:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {p1}, Lcom/zte/camera/ui/common/VlogDrawer;->f(Lcom/zte/camera/ui/common/VlogDrawer;)Lcom/zte/camera/ui/common/VlogCenterLayoutManager;

    move-result-object p1

    iget-object v0, p0, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->z:Lcom/zte/camera/ui/common/VlogDrawer$a;

    iget-object v0, v0, Lcom/zte/camera/ui/common/VlogDrawer$a;->a:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {v0}, Lcom/zte/camera/ui/common/VlogDrawer;->c(Lcom/zte/camera/ui/common/VlogDrawer;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zte/camera/ui/common/VlogCenterLayoutManager;->c(Z)V

    .line 223
    iget-object p1, p0, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->z:Lcom/zte/camera/ui/common/VlogDrawer$a;

    iget-object p1, p1, Lcom/zte/camera/ui/common/VlogDrawer$a;->a:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {p1}, Lcom/zte/camera/ui/common/VlogDrawer;->g(Lcom/zte/camera/ui/common/VlogDrawer;)Landroidx/recyclerview/widget/j;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/j;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 224
    iget-object p1, p0, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->z:Lcom/zte/camera/ui/common/VlogDrawer$a;

    invoke-virtual {p1}, Lcom/zte/camera/ui/common/VlogDrawer$a;->c()V

    .line 225
    iget-object p1, p0, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->z:Lcom/zte/camera/ui/common/VlogDrawer$a;

    iget-object p1, p1, Lcom/zte/camera/ui/common/VlogDrawer$a;->a:Lcom/zte/camera/ui/common/VlogDrawer;

    iget-object v0, p0, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->z:Lcom/zte/camera/ui/common/VlogDrawer$a;

    iget-object v0, v0, Lcom/zte/camera/ui/common/VlogDrawer$a;->a:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-static {v0}, Lcom/zte/camera/ui/common/VlogDrawer;->a(Lcom/zte/camera/ui/common/VlogDrawer;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/zte/camera/ui/common/VlogDrawer;->c(Lcom/zte/camera/ui/common/VlogDrawer;I)V

    return-void
.end method

.method public static synthetic lambda$VZEn_xhGdHsEIhX2kcu87gkuD9Q(Lcom/zte/camera/ui/common/VlogDrawer$a$a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/camera/ui/common/VlogDrawer$a$a;->a(Landroid/view/View;)V

    return-void
.end method
