.class Landroid/support/v7/widget/RecyclerView$6;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroid/support/v7/widget/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/RecyclerView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 874
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$6;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v7/widget/RecyclerView$u;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 877
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$6;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/RecyclerView;->a(IZ)Landroid/support/v7/widget/RecyclerView$u;

    move-result-object v1

    .line 878
    if-nez v1, :cond_1

    .line 889
    :cond_0
    :goto_0
    return-object v0

    .line 883
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$6;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/b;

    iget-object v3, v1, Landroid/support/v7/widget/RecyclerView$u;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/b;->c(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 889
    goto :goto_0
.end method

.method public a(II)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 894
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/RecyclerView;->a(IIZ)V

    .line 895
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->a:Landroid/support/v7/widget/RecyclerView;

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->C:Z

    .line 896
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/support/v7/widget/RecyclerView$r;

    iget v1, v0, Landroid/support/v7/widget/RecyclerView$r;->b:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$r;->b:I

    .line 897
    return-void
.end method

.method public a(IILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 909
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->a(IILjava/lang/Object;)V

    .line 910
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->D:Z

    .line 911
    return-void
.end method

.method public a(Landroid/support/v7/widget/a$b;)V
    .locals 0

    .prologue
    .line 915
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$6;->c(Landroid/support/v7/widget/a$b;)V

    .line 916
    return-void
.end method

.method public b(II)V
    .locals 2

    .prologue
    .line 902
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/RecyclerView;->a(IIZ)V

    .line 903
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->C:Z

    .line 904
    return-void
.end method

.method public b(Landroid/support/v7/widget/a$b;)V
    .locals 0

    .prologue
    .line 938
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$6;->c(Landroid/support/v7/widget/a$b;)V

    .line 939
    return-void
.end method

.method public c(II)V
    .locals 2

    .prologue
    .line 943
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->g(II)V

    .line 944
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->C:Z

    .line 945
    return-void
.end method

.method c(Landroid/support/v7/widget/a$b;)V
    .locals 5

    .prologue
    .line 919
    iget v0, p1, Landroid/support/v7/widget/a$b;->a:I

    packed-switch v0, :pswitch_data_0

    .line 934
    :goto_0
    :pswitch_0
    return-void

    .line 921
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$6;->a:Landroid/support/v7/widget/RecyclerView;

    iget v2, p1, Landroid/support/v7/widget/a$b;->b:I

    iget v3, p1, Landroid/support/v7/widget/a$b;->d:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView;II)V

    goto :goto_0

    .line 924
    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$6;->a:Landroid/support/v7/widget/RecyclerView;

    iget v2, p1, Landroid/support/v7/widget/a$b;->b:I

    iget v3, p1, Landroid/support/v7/widget/a$b;->d:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$h;->b(Landroid/support/v7/widget/RecyclerView;II)V

    goto :goto_0

    .line 927
    :pswitch_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$6;->a:Landroid/support/v7/widget/RecyclerView;

    iget v2, p1, Landroid/support/v7/widget/a$b;->b:I

    iget v3, p1, Landroid/support/v7/widget/a$b;->d:I

    iget-object v4, p1, Landroid/support/v7/widget/a$b;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V

    goto :goto_0

    .line 931
    :pswitch_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$h;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$6;->a:Landroid/support/v7/widget/RecyclerView;

    iget v2, p1, Landroid/support/v7/widget/a$b;->b:I

    iget v3, p1, Landroid/support/v7/widget/a$b;->d:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$h;->a(Landroid/support/v7/widget/RecyclerView;III)V

    goto :goto_0

    .line 919
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public d(II)V
    .locals 2

    .prologue
    .line 949
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->f(II)V

    .line 951
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$6;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->C:Z

    .line 952
    return-void
.end method
