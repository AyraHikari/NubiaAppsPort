.class Lcom/android/common/ui/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

    .line 463
    iput-object p1, p0, Lcom/android/common/ui/a$4;->a:Lcom/android/common/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 467
    iget-object v0, p0, Lcom/android/common/ui/a$4;->a:Lcom/android/common/ui/a;

    invoke-static {v0}, Lcom/android/common/ui/a;->f(Lcom/android/common/ui/a;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/common/ui/a$4;->a:Lcom/android/common/ui/a;

    invoke-static {v0}, Lcom/android/common/ui/a;->a(Lcom/android/common/ui/a;)[Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/common/ui/a$4;->a:Lcom/android/common/ui/a;

    invoke-static {v0}, Lcom/android/common/ui/a;->f(Lcom/android/common/ui/a;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 469
    iget-object v0, p0, Lcom/android/common/ui/a$4;->a:Lcom/android/common/ui/a;

    invoke-static {v0}, Lcom/android/common/ui/a;->f(Lcom/android/common/ui/a;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/ui/a$4;->a:Lcom/android/common/ui/a;

    invoke-static {v2}, Lcom/android/common/ui/a;->a(Lcom/android/common/ui/a;)[Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/common/ui/a;->a(Lcom/android/common/ui/a;Landroid/widget/FrameLayout;[Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method
