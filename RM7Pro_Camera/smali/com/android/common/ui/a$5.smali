.class Lcom/android/common/ui/a$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/ui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/common/ui/a;


# direct methods
.method constructor <init>(Lcom/android/common/ui/a;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/android/common/ui/a$5;->a:Lcom/android/common/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .line 479
    iget-object v0, p0, Lcom/android/common/ui/a$5;->a:Lcom/android/common/ui/a;

    invoke-static {v0}, Lcom/android/common/ui/a;->j(Lcom/android/common/ui/a;)Landroid/animation/AnimatorSet;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/common/ui/a$5;->a:Lcom/android/common/ui/a;

    .line 480
    invoke-static {v0}, Lcom/android/common/ui/a;->k(Lcom/android/common/ui/a;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/android/common/ui/a$5;->a:Lcom/android/common/ui/a;

    invoke-static {v0}, Lcom/android/common/ui/a;->f(Lcom/android/common/ui/a;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/android/common/ui/a$5;->a:Lcom/android/common/ui/a;

    const-string v2, "onPreDraw"

    invoke-static {v0, v2}, Lcom/android/common/ui/a;->a(Lcom/android/common/ui/a;Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/android/common/ui/a$5;->a:Lcom/android/common/ui/a;

    invoke-static {v0}, Lcom/android/common/ui/a;->f(Lcom/android/common/ui/a;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 487
    iget-object v0, p0, Lcom/android/common/ui/a$5;->a:Lcom/android/common/ui/a;

    invoke-static {v0}, Lcom/android/common/ui/a;->l(Lcom/android/common/ui/a;)V

    :cond_1
    return v1

    .line 481
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/common/ui/a$5;->a:Lcom/android/common/ui/a;

    const-string v2, "Animation is null ignore onPreDraw"

    invoke-static {v0, v2}, Lcom/android/common/ui/a;->a(Lcom/android/common/ui/a;Ljava/lang/String;)V

    return v1
.end method
