.class Lcn/nubia/camera/ay/b$a;
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
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ay/b;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/ay/b;)V
    .locals 0

    .line 577
    iput-object p1, p0, Lcn/nubia/camera/ay/b$a;->a:Lcn/nubia/camera/ay/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/ay/b;Lcn/nubia/camera/ay/b$1;)V
    .locals 0

    .line 577
    invoke-direct {p0, p1}, Lcn/nubia/camera/ay/b$a;-><init>(Lcn/nubia/camera/ay/b;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 581
    iget-object p1, p0, Lcn/nubia/camera/ay/b$a;->a:Lcn/nubia/camera/ay/b;

    invoke-static {p1}, Lcn/nubia/camera/ay/b;->j(Lcn/nubia/camera/ay/b;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->getVisibility()I

    move-result p1

    const-string v0, "TrajectoryFragment"

    if-nez p1, :cond_0

    const-string p1, "can\'t ChangeButtonClickListener ,because is making"

    .line 582
    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 585
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/ay/b$a;->a:Lcn/nubia/camera/ay/b;

    invoke-static {p1}, Lcn/nubia/camera/ay/b;->l(Lcn/nubia/camera/ay/b;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "can\'t ChangeButtonClickListener ,because is saving"

    .line 586
    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 589
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/ay/b$a;->a:Lcn/nubia/camera/ay/b;

    invoke-static {p1}, Lcn/nubia/camera/ay/b;->a(Lcn/nubia/camera/ay/b;)Lcn/nubia/camera/ay/a;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "can\'t ChangeButtonClickListener, because mTrajectory is null!"

    .line 590
    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 593
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/ay/b$a;->a:Lcn/nubia/camera/ay/b;

    invoke-static {p1}, Lcn/nubia/camera/ay/b;->a(Lcn/nubia/camera/ay/b;)Lcn/nubia/camera/ay/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ay/a;->a()I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 594
    iget-object p1, p0, Lcn/nubia/camera/ay/b$a;->a:Lcn/nubia/camera/ay/b;

    invoke-static {p1}, Lcn/nubia/camera/ay/b;->a(Lcn/nubia/camera/ay/b;)Lcn/nubia/camera/ay/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ay/a;->f()V

    .line 595
    iget-object p1, p0, Lcn/nubia/camera/ay/b$a;->a:Lcn/nubia/camera/ay/b;

    invoke-static {p1}, Lcn/nubia/camera/ay/b;->i(Lcn/nubia/camera/ay/b;)V

    .line 596
    iget-object p1, p0, Lcn/nubia/camera/ay/b$a;->a:Lcn/nubia/camera/ay/b;

    invoke-static {p1}, Lcn/nubia/camera/ay/b;->a(Lcn/nubia/camera/ay/b;)Lcn/nubia/camera/ay/a;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/nubia/camera/ay/a;->a(Z)V

    goto :goto_0

    .line 598
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChangeButtonClickListener compositionConfirm failed! State is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/camera/ay/b$a;->a:Lcn/nubia/camera/ay/b;

    invoke-static {v1}, Lcn/nubia/camera/ay/b;->a(Lcn/nubia/camera/ay/b;)Lcn/nubia/camera/ay/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ay/a;->a()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
