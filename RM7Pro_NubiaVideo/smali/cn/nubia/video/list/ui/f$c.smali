.class Lcn/nubia/video/list/ui/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/b/c/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/list/ui/f;->O()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/list/ui/f;


# direct methods
.method constructor <init>(Lcn/nubia/video/list/ui/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/list/ui/f$c;->a:Lcn/nubia/video/list/ui/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 2

    if-eqz p1, :cond_1

    const v0, 0x7f090047

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    const v1, 0x7f090115

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f060057

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 6
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/list/ui/f$c;->a:Lcn/nubia/video/list/ui/f;

    iget-object p1, p1, Lcn/nubia/video/list/ui/f;->n:Lb/a/b/c/b/p;

    invoke-virtual {p1, p2}, Lb/a/b/c/b/p;->z(I)V

    return-void
.end method
