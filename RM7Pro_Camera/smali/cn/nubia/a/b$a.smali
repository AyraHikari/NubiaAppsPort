.class Lcn/nubia/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/a/b;

.field private b:Z


# direct methods
.method private constructor <init>(Lcn/nubia/a/b;)V
    .locals 0

    .line 911
    iput-object p1, p0, Lcn/nubia/a/b$a;->a:Lcn/nubia/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 912
    iput-boolean p1, p0, Lcn/nubia/a/b$a;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/a/b;Lcn/nubia/a/b$1;)V
    .locals 0

    .line 911
    invoke-direct {p0, p1}, Lcn/nubia/a/b$a;-><init>(Lcn/nubia/a/b;)V

    return-void
.end method


# virtual methods
.method public a(Z)Lcn/nubia/a/b$a;
    .locals 0

    .line 915
    iput-boolean p1, p0, Lcn/nubia/a/b$a;->b:Z

    return-object p0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 941
    iget-boolean p1, p0, Lcn/nubia/a/b$a;->b:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/a/b$a;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->n(Lcn/nubia/a/b;)Lcn/nubia/a/g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 942
    iget-object p1, p0, Lcn/nubia/a/b$a;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->n(Lcn/nubia/a/b;)Lcn/nubia/a/g;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/a/g;->e()V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 934
    iget-boolean p1, p0, Lcn/nubia/a/b$a;->b:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/a/b$a;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->n(Lcn/nubia/a/b;)Lcn/nubia/a/g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 935
    iget-object p1, p0, Lcn/nubia/a/b$a;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->n(Lcn/nubia/a/b;)Lcn/nubia/a/g;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/a/g;->e()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 921
    iget-object p1, p0, Lcn/nubia/a/b$a;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->p(Lcn/nubia/a/b;)V

    .line 922
    iget-boolean p1, p0, Lcn/nubia/a/b$a;->b:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/a/b$a;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->n(Lcn/nubia/a/b;)Lcn/nubia/a/g;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 923
    iget-object p1, p0, Lcn/nubia/a/b$a;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->n(Lcn/nubia/a/b;)Lcn/nubia/a/g;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/a/g;->d()V

    :cond_0
    return-void
.end method
