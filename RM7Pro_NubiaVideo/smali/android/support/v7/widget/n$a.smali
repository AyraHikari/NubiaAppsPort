.class Landroid/support/v7/widget/n$a;
.super Landroid/support/v7/widget/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic j:Landroid/support/v7/widget/n$c;

.field final synthetic k:Landroid/support/v7/widget/n;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/n;Landroid/view/View;Landroid/support/v7/widget/n$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/n$a;->k:Landroid/support/v7/widget/n;

    iput-object p3, p0, Landroid/support/v7/widget/n$a;->j:Landroid/support/v7/widget/n$c;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/x;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public b()Landroid/support/v7/view/menu/q;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/n$a;->j:Landroid/support/v7/widget/n$c;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/n$a;->k:Landroid/support/v7/widget/n;

    iget-object v0, v0, Landroid/support/v7/widget/n;->f:Landroid/support/v7/widget/n$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/b0;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/n$a;->k:Landroid/support/v7/widget/n;

    iget-object v0, v0, Landroid/support/v7/widget/n;->f:Landroid/support/v7/widget/n$c;

    invoke-virtual {v0}, Landroid/support/v7/widget/n$c;->c()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
