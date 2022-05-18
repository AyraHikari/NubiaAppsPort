.class Landroid/support/v7/widget/n$c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/n$c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/n$c;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/n$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/n$c$b;->a:Landroid/support/v7/widget/n$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/n$c$b;->a:Landroid/support/v7/widget/n$c;

    iget-object v1, v0, Landroid/support/v7/widget/n$c;->L:Landroid/support/v7/widget/n;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/n$c;->M(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/n$c$b;->a:Landroid/support/v7/widget/n$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/b0;->dismiss()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/n$c$b;->a:Landroid/support/v7/widget/n$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/n$c;->K()V

    .line 4
    iget-object v0, p0, Landroid/support/v7/widget/n$c$b;->a:Landroid/support/v7/widget/n$c;

    invoke-static {v0}, Landroid/support/v7/widget/n$c;->J(Landroid/support/v7/widget/n$c;)V

    :goto_0
    return-void
.end method
