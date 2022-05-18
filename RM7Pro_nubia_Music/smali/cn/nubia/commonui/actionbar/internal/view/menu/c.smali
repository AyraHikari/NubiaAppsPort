.class Lcn/nubia/commonui/actionbar/internal/view/menu/c;
.super Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemWrapperICS;
.source "MenuItemWrapperJB.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/actionbar/internal/view/menu/c$a;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenuItem;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemWrapperICS;-><init>(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenuItem;)V

    .line 36
    return-void
.end method


# virtual methods
.method createActionProviderWrapper(Landroid/view/ActionProvider;)Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemWrapperICS$a;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/view/menu/c$a;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/view/menu/c;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcn/nubia/commonui/actionbar/internal/view/menu/c$a;-><init>(Lcn/nubia/commonui/actionbar/internal/view/menu/c;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-object v0
.end method
