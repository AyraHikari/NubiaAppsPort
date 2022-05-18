.class Landroidx/appcompat/widget/SearchView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/SearchView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/SearchView;)V
    .locals 0

    .line 981
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$6;->a:Landroidx/appcompat/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 984
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$6;->a:Landroidx/appcompat/widget/SearchView;

    iget-object v0, v0, Landroidx/appcompat/widget/SearchView;->b:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 985
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$6;->a:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->g()V

    goto :goto_0

    .line 986
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$6;->a:Landroidx/appcompat/widget/SearchView;

    iget-object v0, v0, Landroidx/appcompat/widget/SearchView;->d:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 987
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$6;->a:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->f()V

    goto :goto_0

    .line 988
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$6;->a:Landroidx/appcompat/widget/SearchView;

    iget-object v0, v0, Landroidx/appcompat/widget/SearchView;->c:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 989
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$6;->a:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->e()V

    goto :goto_0

    .line 990
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$6;->a:Landroidx/appcompat/widget/SearchView;

    iget-object v0, v0, Landroidx/appcompat/widget/SearchView;->e:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    .line 991
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$6;->a:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->h()V

    goto :goto_0

    .line 992
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$6;->a:Landroidx/appcompat/widget/SearchView;

    iget-object v0, v0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    if-ne p1, v0, :cond_4

    .line 993
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$6;->a:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->l()V

    :cond_4
    :goto_0
    return-void
.end method
