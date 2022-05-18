.class Lcn/nubia/camera/r/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/r/e;->f(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/r/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/r/e;)V
    .locals 0

    .line 877
    iput-object p1, p0, Lcn/nubia/camera/r/e$2;->a:Lcn/nubia/camera/r/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 880
    iget-object p1, p0, Lcn/nubia/camera/r/e$2;->a:Lcn/nubia/camera/r/e;

    invoke-static {p1}, Lcn/nubia/camera/r/e;->a(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/r/i;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/r/i;->d()Lcn/nubia/camera/elefnovideo/l;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/elefnovideo/l;->b:Lcn/nubia/camera/elefnovideo/l;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    return v1

    .line 883
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 885
    iget-object p1, p0, Lcn/nubia/camera/r/e$2;->a:Lcn/nubia/camera/r/e;

    invoke-static {p1}, Lcn/nubia/camera/r/e;->B(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/r/j;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/r/j;->d()I

    move-result p1

    add-int/lit8 p1, p1, -0x5

    .line 886
    iget-object p2, p0, Lcn/nubia/camera/r/e$2;->a:Lcn/nubia/camera/r/e;

    invoke-static {p2}, Lcn/nubia/camera/r/e;->w(Lcn/nubia/camera/r/e;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 887
    iget-object p2, p0, Lcn/nubia/camera/r/e$2;->a:Lcn/nubia/camera/r/e;

    invoke-static {p2}, Lcn/nubia/camera/r/e;->u(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/r/d;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/nubia/camera/r/d;->a(I)V

    .line 888
    iget-object p1, p0, Lcn/nubia/camera/r/e$2;->a:Lcn/nubia/camera/r/e;

    invoke-static {p1}, Lcn/nubia/camera/r/e;->x(Lcn/nubia/camera/r/e;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setPressed(Z)V

    goto :goto_0

    .line 890
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    .line 891
    :cond_2
    iget-object p1, p0, Lcn/nubia/camera/r/e$2;->a:Lcn/nubia/camera/r/e;

    invoke-static {p1}, Lcn/nubia/camera/r/e;->x(Lcn/nubia/camera/r/e;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setPressed(Z)V

    .line 892
    iget-object p1, p0, Lcn/nubia/camera/r/e$2;->a:Lcn/nubia/camera/r/e;

    invoke-static {p1}, Lcn/nubia/camera/r/e;->x(Lcn/nubia/camera/r/e;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setEnabled(Z)V

    .line 893
    iget-object p1, p0, Lcn/nubia/camera/r/e$2;->a:Lcn/nubia/camera/r/e;

    invoke-static {p1}, Lcn/nubia/camera/r/e;->c(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/r/e$a;

    move-result-object p1

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v1, v2, v3}, Lcn/nubia/camera/r/e$a;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    :goto_0
    return v0
.end method
