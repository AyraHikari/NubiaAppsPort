.class Lcn/nubia/commonui/actionbar/internal/widget/TintContextWrapper;
.super Landroid/content/ContextWrapper;
.source "TintContextWrapper.java"


# instance fields
.field private final mTintManager:Lcn/nubia/commonui/actionbar/internal/widget/TintManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    invoke-direct {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintContextWrapper;->mTintManager:Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    .line 43
    return-void
.end method

.method public static wrap(Landroid/content/Context;)Landroid/content/Context;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    instance-of v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintContextWrapper;

    if-nez v1, :cond_0

    .line 35
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/TintContextWrapper;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintContextWrapper;-><init>(Landroid/content/Context;)V

    .end local p0    # "context":Landroid/content/Context;
    .local v0, "context":Landroid/content/Context;
    move-object p0, v0

    .line 37
    .end local v0    # "context":Landroid/content/Context;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintContextWrapper;->mTintManager:Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method final getTintManager()Lcn/nubia/commonui/actionbar/internal/widget/TintManager;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintContextWrapper;->mTintManager:Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    return-object v0
.end method
