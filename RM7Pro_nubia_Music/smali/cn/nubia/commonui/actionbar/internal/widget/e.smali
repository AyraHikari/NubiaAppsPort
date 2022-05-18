.class Lcn/nubia/commonui/actionbar/internal/widget/e;
.super Landroid/content/ContextWrapper;
.source "TintContextWrapper.java"


# instance fields
.field private final a:Lcn/nubia/commonui/actionbar/internal/widget/TintManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    invoke-direct {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/e;->a:Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    .line 43
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 34
    instance-of v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/e;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/e;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/internal/widget/e;-><init>(Landroid/content/Context;)V

    move-object p0, v0

    .line 37
    :cond_0
    return-object p0
.end method


# virtual methods
.method final a()Lcn/nubia/commonui/actionbar/internal/widget/TintManager;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/e;->a:Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/e;->a:Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method
