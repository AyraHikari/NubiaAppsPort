.class Lcn/nubia/camera/ap/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ap/b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ap/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ap/b;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcn/nubia/camera/ap/b$2;->a:Lcn/nubia/camera/ap/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 78
    iget-object p1, p0, Lcn/nubia/camera/ap/b$2;->a:Lcn/nubia/camera/ap/b;

    invoke-static {p1}, Lcn/nubia/camera/ap/b;->a(Lcn/nubia/camera/ap/b;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 79
    iget-object p1, p0, Lcn/nubia/camera/ap/b$2;->a:Lcn/nubia/camera/ap/b;

    invoke-static {p1}, Lcn/nubia/camera/ap/b;->a(Lcn/nubia/camera/ap/b;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/ap/a;

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v0}, Lcn/nubia/camera/ap/a;->a()V

    goto :goto_0

    .line 85
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/ap/b$2;->a:Lcn/nubia/camera/ap/b;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/nubia/camera/ap/b;->a(Z)V

    .line 86
    iget-object p1, p0, Lcn/nubia/camera/ap/b$2;->a:Lcn/nubia/camera/ap/b;

    invoke-static {p1}, Lcn/nubia/camera/ap/b;->b(Lcn/nubia/camera/ap/b;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, Lcn/nubia/camera/ap/b;->a(Lcn/nubia/camera/ap/b;Z)V

    return-void
.end method
