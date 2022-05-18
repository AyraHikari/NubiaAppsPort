.class Lcn/nubia/camera/ay/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/ay/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ay/b;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/ay/b;)V
    .locals 0

    .line 604
    iput-object p1, p0, Lcn/nubia/camera/ay/b$d;->a:Lcn/nubia/camera/ay/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/ay/b;Lcn/nubia/camera/ay/b$1;)V
    .locals 0

    .line 604
    invoke-direct {p0, p1}, Lcn/nubia/camera/ay/b$d;-><init>(Lcn/nubia/camera/ay/b;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 608
    iget-object p1, p0, Lcn/nubia/camera/ay/b$d;->a:Lcn/nubia/camera/ay/b;

    invoke-static {p1}, Lcn/nubia/camera/ay/b;->j(Lcn/nubia/camera/ay/b;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->getVisibility()I

    move-result p1

    const-string v0, "TrajectoryFragment"

    if-nez p1, :cond_0

    const-string p1, "can\'t SaveButtonClickListener ,because is making"

    .line 609
    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 612
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/ay/b$d;->a:Lcn/nubia/camera/ay/b;

    invoke-static {p1}, Lcn/nubia/camera/ay/b;->l(Lcn/nubia/camera/ay/b;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "can\'t ChangeButtonClickListener ,because is saving"

    .line 613
    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 616
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/ay/b$d;->a:Lcn/nubia/camera/ay/b;

    invoke-static {p1}, Lcn/nubia/camera/ay/b;->a(Lcn/nubia/camera/ay/b;)Lcn/nubia/camera/ay/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ay/a;->a()I

    move-result p1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    .line 617
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save failed! state is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/camera/ay/b$d;->a:Lcn/nubia/camera/ay/b;

    invoke-static {v1}, Lcn/nubia/camera/ay/b;->a(Lcn/nubia/camera/ay/b;)Lcn/nubia/camera/ay/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ay/a;->a()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 620
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/ay/b$d;->a:Lcn/nubia/camera/ay/b;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/camera/ay/b;->a(Lcn/nubia/camera/ay/b;Z)Z

    .line 621
    iget-object p1, p0, Lcn/nubia/camera/ay/b$d;->a:Lcn/nubia/camera/ay/b;

    invoke-static {p1}, Lcn/nubia/camera/ay/b;->k(Lcn/nubia/camera/ay/b;)Lcn/nubia/camera/ay/f;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ay/f;->u()V

    .line 622
    iget-object p1, p0, Lcn/nubia/camera/ay/b$d;->a:Lcn/nubia/camera/ay/b;

    invoke-static {p1}, Lcn/nubia/camera/ay/b;->m(Lcn/nubia/camera/ay/b;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 623
    iget-object p1, p0, Lcn/nubia/camera/ay/b$d;->a:Lcn/nubia/camera/ay/b;

    invoke-static {p1}, Lcn/nubia/camera/ay/b;->d(Lcn/nubia/camera/ay/b;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 624
    iget-object p1, p0, Lcn/nubia/camera/ay/b$d;->a:Lcn/nubia/camera/ay/b;

    invoke-static {p1}, Lcn/nubia/camera/ay/b;->a(Lcn/nubia/camera/ay/b;)Lcn/nubia/camera/ay/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ay/a;->e()V

    return-void
.end method
