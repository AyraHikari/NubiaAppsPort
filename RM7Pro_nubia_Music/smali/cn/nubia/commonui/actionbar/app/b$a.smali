.class Lcn/nubia/commonui/actionbar/app/b$a;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplBase.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/app/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/actionbar/app/b;


# direct methods
.method private constructor <init>(Lcn/nubia/commonui/actionbar/app/b;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/app/b$a;->a:Lcn/nubia/commonui/actionbar/app/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/commonui/actionbar/app/b;Lcn/nubia/commonui/actionbar/app/b$1;)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/app/b$a;-><init>(Lcn/nubia/commonui/actionbar/app/b;)V

    return-void
.end method


# virtual methods
.method public getActionBarThemedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/b$a;->a:Lcn/nubia/commonui/actionbar/app/b;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/b;->c()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 163
    .line 164
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/b$a;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [I

    sget v3, Lcn/nubia/commonui/R$attr;->homeAsUpIndicator:I

    aput v3, v2, v4

    .line 163
    invoke-static {v0, v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;

    move-result-object v0

    .line 165
    invoke-virtual {v0, v4}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 166
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->recycle()V

    .line 167
    return-object v1
.end method

.method public isNavigationVisible()Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/b$a;->a:Lcn/nubia/commonui/actionbar/app/b;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/b;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/ActionBar;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActionBarDescription(I)V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/b$a;->a:Lcn/nubia/commonui/actionbar/app/b;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/b;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 196
    :cond_0
    return-void
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/b$a;->a:Lcn/nubia/commonui/actionbar/app/b;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/b;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 186
    invoke-virtual {v0, p2}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 188
    :cond_0
    return-void
.end method
