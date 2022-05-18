.class Landroid/support/v7/widget/RecyclerView$p;
.super Landroid/support/v7/widget/RecyclerView$c;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "p"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 5134
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$c;-><init>()V

    .line 5135
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 5139
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 5140
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$r;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$r;->e:Z

    .line 5142
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->u()V

    .line 5143
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/a;

    invoke-virtual {v0}, Landroid/support/v7/widget/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5144
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 5146
    :cond_0
    return-void
.end method

.method public a(III)V
    .locals 2

    .prologue
    .line 5174
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 5175
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/a;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/a;->a(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5176
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$p;->b()V

    .line 5178
    :cond_0
    return-void
.end method

.method public a(IILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 5150
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 5151
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/a;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/a;->a(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5152
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$p;->b()V

    .line 5154
    :cond_0
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    .line 5181
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView;->p:Z

    if-eqz v0, :cond_0

    .line 5182
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->i:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 5187
    :goto_0
    return-void

    .line 5184
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->v:Z

    .line 5185
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_0
.end method

.method public b(II)V
    .locals 2

    .prologue
    .line 5158
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 5159
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/a;->b(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5160
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$p;->b()V

    .line 5162
    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 2

    .prologue
    .line 5166
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    .line 5167
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$p;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/a;->c(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5168
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$p;->b()V

    .line 5170
    :cond_0
    return-void
.end method
