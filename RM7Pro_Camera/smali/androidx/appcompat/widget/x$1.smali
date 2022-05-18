.class Landroidx/appcompat/widget/x$1;
.super Landroidx/appcompat/widget/ai;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/x$c;

.field final synthetic b:Landroidx/appcompat/widget/x;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/x;Landroid/view/View;Landroidx/appcompat/widget/x$c;)V
    .locals 0

    .line 264
    iput-object p1, p0, Landroidx/appcompat/widget/x$1;->b:Landroidx/appcompat/widget/x;

    iput-object p3, p0, Landroidx/appcompat/widget/x$1;->a:Landroidx/appcompat/widget/x$c;

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/ai;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/p;
    .locals 1

    .line 267
    iget-object v0, p0, Landroidx/appcompat/widget/x$1;->a:Landroidx/appcompat/widget/x$c;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 273
    iget-object v0, p0, Landroidx/appcompat/widget/x$1;->b:Landroidx/appcompat/widget/x;

    invoke-virtual {v0}, Landroidx/appcompat/widget/x;->getInternalPopup()Landroidx/appcompat/widget/x$e;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/widget/x$e;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Landroidx/appcompat/widget/x$1;->b:Landroidx/appcompat/widget/x;

    invoke-virtual {v0}, Landroidx/appcompat/widget/x;->a()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
