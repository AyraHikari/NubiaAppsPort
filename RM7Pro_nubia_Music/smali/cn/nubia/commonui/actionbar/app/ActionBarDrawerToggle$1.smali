.class Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$1;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Lcn/nubia/commonui/actionbar/widget/Toolbar;Landroid/support/v4/widget/DrawerLayout;Landroid/graphics/drawable/Drawable;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$1;->a:Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$1;->a:Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->access$000(Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$1;->a:Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->access$100(Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;)V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$1;->a:Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->access$200(Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$1;->a:Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;

    invoke-static {v0}, Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;->access$200(Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method
