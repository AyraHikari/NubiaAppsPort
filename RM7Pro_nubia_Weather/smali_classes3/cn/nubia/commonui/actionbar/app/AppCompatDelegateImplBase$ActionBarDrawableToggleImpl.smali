.class Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplBase.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionBarDrawableToggleImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;


# direct methods
.method private constructor <init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;
    .param p2, "x1"    # Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase$1;

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;-><init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;)V

    return-void
.end method


# virtual methods
.method public getActionBarThemedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 163
    .line 164
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [I

    sget v5, Lcn/nubia/commonui/R$attr;->homeAsUpIndicator:I

    aput v5, v4, v6

    .line 163
    invoke-static {v2, v3, v4}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;

    move-result-object v0

    .line 165
    .local v0, "a":Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;
    invoke-virtual {v0, v6}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 166
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->recycle()V

    .line 167
    return-object v1
.end method

.method public isNavigationVisible()Z
    .locals 2

    .prologue
    .line 177
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 178
    .local v0, "ab":Lcn/nubia/commonui/actionbar/app/ActionBar;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/ActionBar;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setActionBarDescription(I)V
    .locals 2
    .param p1, "contentDescRes"    # I

    .prologue
    .line 192
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 193
    .local v0, "ab":Lcn/nubia/commonui/actionbar/app/ActionBar;
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 196
    :cond_0
    return-void
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "upDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "contentDescRes"    # I

    .prologue
    .line 183
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 184
    .local v0, "ab":Lcn/nubia/commonui/actionbar/app/ActionBar;
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 186
    invoke-virtual {v0, p2}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 188
    :cond_0
    return-void
.end method
