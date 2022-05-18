.class Lb/a/b/c/b/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/b/c/b/p;->x(Lcn/nubia/video/list/ui/a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcn/nubia/video/list/ui/a;

.field final synthetic c:Lb/a/b/c/b/p;


# direct methods
.method constructor <init>(Lb/a/b/c/b/p;ILcn/nubia/video/list/ui/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/b/c/b/p$a;->c:Lb/a/b/c/b/p;

    iput p2, p0, Lb/a/b/c/b/p$a;->a:I

    iput-object p3, p0, Lb/a/b/c/b/p$a;->b:Lcn/nubia/video/list/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lb/a/b/c/b/p$a;->c:Lb/a/b/c/b/p;

    iget v0, p0, Lb/a/b/c/b/p$a;->a:I

    invoke-virtual {p1, v0}, Lb/a/b/c/b/p;->z(I)V

    .line 2
    iget-object p1, p0, Lb/a/b/c/b/p$a;->b:Lcn/nubia/video/list/ui/a;

    invoke-virtual {p1}, Lcn/nubia/video/list/ui/a;->L()Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f060057

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Lb/a/b/c/b/p$a;->b:Lcn/nubia/video/list/ui/a;

    invoke-virtual {v0}, Lcn/nubia/video/list/ui/a;->M()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
