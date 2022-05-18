.class public Landroid/support/v7/widget/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field b:I

.field final synthetic c:Landroid/support/v7/widget/a;


# direct methods
.method protected constructor <init>(Landroid/support/v7/widget/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/a$a;->c:Landroid/support/v7/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Landroid/support/v7/widget/a$a;->a:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Landroid/support/v7/widget/a$a;->a:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Landroid/support/v7/widget/a$a;->a:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/a$a;->c:Landroid/support/v7/widget/a;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/a;->e:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 3
    iget v0, p0, Landroid/support/v7/widget/a$a;->b:I

    invoke-static {p1, v0}, Landroid/support/v7/widget/a;->b(Landroid/support/v7/widget/a;I)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/support/v7/widget/a$a;->c:Landroid/support/v7/widget/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/widget/a;->a(Landroid/support/v7/widget/a;I)V

    .line 2
    iput-boolean v0, p0, Landroid/support/v7/widget/a$a;->a:Z

    return-void
.end method
