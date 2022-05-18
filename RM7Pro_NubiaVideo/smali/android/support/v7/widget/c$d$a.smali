.class Landroid/support/v7/widget/c$d$a;
.super Landroid/support/v7/widget/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/c$d;-><init>(Landroid/support/v7/widget/c;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic j:Landroid/support/v7/widget/c$d;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/c$d;Landroid/view/View;Landroid/support/v7/widget/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/c$d$a;->j:Landroid/support/v7/widget/c$d;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/x;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public b()Landroid/support/v7/view/menu/q;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/c$d$a;->j:Landroid/support/v7/widget/c$d;

    iget-object v0, v0, Landroid/support/v7/widget/c$d;->c:Landroid/support/v7/widget/c;

    iget-object v0, v0, Landroid/support/v7/widget/c;->w:Landroid/support/v7/widget/c$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/view/menu/l;->c()Landroid/support/v7/view/menu/k;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/c$d$a;->j:Landroid/support/v7/widget/c$d;

    iget-object v0, v0, Landroid/support/v7/widget/c$d;->c:Landroid/support/v7/widget/c;

    invoke-virtual {v0}, Landroid/support/v7/widget/c;->G()Z

    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/c$d$a;->j:Landroid/support/v7/widget/c$d;

    iget-object v0, v0, Landroid/support/v7/widget/c$d;->c:Landroid/support/v7/widget/c;

    iget-object v1, v0, Landroid/support/v7/widget/c;->y:Landroid/support/v7/widget/c$c;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/c;->y()Z

    const/4 v0, 0x1

    return v0
.end method
