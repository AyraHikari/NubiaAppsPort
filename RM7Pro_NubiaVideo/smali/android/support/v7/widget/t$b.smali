.class Landroid/support/v7/widget/t$b;
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
    iput-object p1, p0, Landroid/support/v7/widget/t$b;->b:Landroid/support/v7/widget/t;

    iput-object p2, p0, Landroid/support/v7/widget/t$b;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/t$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/t$i;

    .line 2
    iget-object v2, p0, Landroid/support/v7/widget/t$b;->b:Landroid/support/v7/widget/t;

    invoke-static {v2, v1}, Landroid/support/v7/widget/t;->J(Landroid/support/v7/widget/t;Landroid/support/v7/widget/t$i;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/t$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object v0, p0, Landroid/support/v7/widget/t$b;->b:Landroid/support/v7/widget/t;

    invoke-static {v0}, Landroid/support/v7/widget/t;->K(Landroid/support/v7/widget/t;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/t$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
