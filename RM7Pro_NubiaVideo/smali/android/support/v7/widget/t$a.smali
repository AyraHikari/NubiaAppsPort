.class Landroid/support/v7/widget/t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/t;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Landroid/support/v7/widget/t;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/t;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/t$a;->b:Landroid/support/v7/widget/t;

    iput-object p2, p0, Landroid/support/v7/widget/t$a;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/t$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/t$j;

    .line 2
    iget-object v2, p0, Landroid/support/v7/widget/t$a;->b:Landroid/support/v7/widget/t;

    iget-object v3, v1, Landroid/support/v7/widget/t$j;->a:Landroid/support/v7/widget/RecyclerView$z;

    iget v4, v1, Landroid/support/v7/widget/t$j;->b:I

    iget v5, v1, Landroid/support/v7/widget/t$j;->c:I

    iget v6, v1, Landroid/support/v7/widget/t$j;->d:I

    iget v7, v1, Landroid/support/v7/widget/t$j;->e:I

    invoke-static/range {v2 .. v7}, Landroid/support/v7/widget/t;->F(Landroid/support/v7/widget/t;Landroid/support/v7/widget/RecyclerView$z;IIII)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/t$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object v0, p0, Landroid/support/v7/widget/t$a;->b:Landroid/support/v7/widget/t;

    invoke-static {v0}, Landroid/support/v7/widget/t;->G(Landroid/support/v7/widget/t;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/t$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
