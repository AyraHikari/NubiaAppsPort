.class Lcn/nubia/commonui/actionbar/widget/Toolbar$1;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/widget/ActionMenuView$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/actionbar/widget/Toolbar;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/actionbar/widget/Toolbar;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$1;->a:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$1;->a:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->access$000(Lcn/nubia/commonui/actionbar/widget/Toolbar;)Lcn/nubia/commonui/actionbar/widget/Toolbar$OnMenuItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar$1;->a:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->access$000(Lcn/nubia/commonui/actionbar/widget/Toolbar;)Lcn/nubia/commonui/actionbar/widget/Toolbar$OnMenuItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    .line 166
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
