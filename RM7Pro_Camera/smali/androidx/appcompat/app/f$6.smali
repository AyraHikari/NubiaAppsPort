.class Landroidx/appcompat/app/f$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/f;->b(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/f;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/f;)V
    .locals 0

    .line 1279
    iput-object p1, p0, Landroidx/appcompat/app/f$6;->a:Landroidx/appcompat/app/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1282
    iget-object v0, p0, Landroidx/appcompat/app/f$6;->a:Landroidx/appcompat/app/f;

    iget-object v0, v0, Landroidx/appcompat/app/f;->i:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroidx/appcompat/app/f$6;->a:Landroidx/appcompat/app/f;

    iget-object v1, v1, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v2, 0x37

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1285
    iget-object v0, p0, Landroidx/appcompat/app/f$6;->a:Landroidx/appcompat/app/f;

    invoke-virtual {v0}, Landroidx/appcompat/app/f;->q()V

    .line 1287
    iget-object v0, p0, Landroidx/appcompat/app/f$6;->a:Landroidx/appcompat/app/f;

    invoke-virtual {v0}, Landroidx/appcompat/app/f;->o()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 1288
    iget-object v0, p0, Landroidx/appcompat/app/f$6;->a:Landroidx/appcompat/app/f;

    iget-object v0, v0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setAlpha(F)V

    .line 1289
    iget-object v0, p0, Landroidx/appcompat/app/f$6;->a:Landroidx/appcompat/app/f;

    iget-object v2, v0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v2}, Landroidx/core/f/u;->j(Landroid/view/View;)Landroidx/core/f/y;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/core/f/y;->a(F)Landroidx/core/f/y;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/app/f;->k:Landroidx/core/f/y;

    .line 1290
    iget-object v0, p0, Landroidx/appcompat/app/f$6;->a:Landroidx/appcompat/app/f;

    iget-object v0, v0, Landroidx/appcompat/app/f;->k:Landroidx/core/f/y;

    new-instance v1, Landroidx/appcompat/app/f$6$1;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/f$6$1;-><init>(Landroidx/appcompat/app/f$6;)V

    invoke-virtual {v0, v1}, Landroidx/core/f/y;->a(Landroidx/core/f/z;)Landroidx/core/f/y;

    goto :goto_0

    .line 1304
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/f$6;->a:Landroidx/appcompat/app/f;

    iget-object v0, v0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setAlpha(F)V

    .line 1305
    iget-object v0, p0, Landroidx/appcompat/app/f$6;->a:Landroidx/appcompat/app/f;

    iget-object v0, v0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
