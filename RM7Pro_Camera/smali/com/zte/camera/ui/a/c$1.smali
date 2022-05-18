.class Lcom/zte/camera/ui/a/c$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/camera/ui/a/c;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/zte/camera/ui/a/c;


# direct methods
.method constructor <init>(Lcom/zte/camera/ui/a/c;Landroid/view/View;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/zte/camera/ui/a/c$1;->b:Lcom/zte/camera/ui/a/c;

    iput-object p2, p0, Lcom/zte/camera/ui/a/c$1;->a:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 145
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 146
    iget-object p1, p0, Lcom/zte/camera/ui/a/c$1;->a:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object p1, p0, Lcom/zte/camera/ui/a/c$1;->b:Lcom/zte/camera/ui/a/c;

    invoke-static {p1}, Lcom/zte/camera/ui/a/c;->a(Lcom/zte/camera/ui/a/c;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 152
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 153
    iget-object p1, p0, Lcom/zte/camera/ui/a/c$1;->a:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 154
    iget-object p1, p0, Lcom/zte/camera/ui/a/c$1;->b:Lcom/zte/camera/ui/a/c;

    invoke-static {p1}, Lcom/zte/camera/ui/a/c;->a(Lcom/zte/camera/ui/a/c;)V

    return-void
.end method
