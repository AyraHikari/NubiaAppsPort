.class public abstract Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;
.super Ljava/lang/Object;
.source "AppCompatDelegate.java"


# static fields
.field static final TAG:Ljava/lang/String; = "NubiaWidget"

.field private static sCompatVectorFromResourcesEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->sCompatVectorFromResourcesEnabled:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/app/Activity;Lcn/nubia/commonui/actionbar/app/AppCompatCallback;)Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;
    .locals 2

    .prologue
    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 79
    new-instance v0, Lcn/nubia/commonui/actionbar/app/c;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcn/nubia/commonui/actionbar/app/c;-><init>(Landroid/content/Context;Landroid/view/Window;Lcn/nubia/commonui/actionbar/app/AppCompatCallback;)V

    .line 81
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;-><init>(Landroid/content/Context;Landroid/view/Window;Lcn/nubia/commonui/actionbar/app/AppCompatCallback;)V

    goto :goto_0
.end method

.method public static create(Landroid/app/Dialog;Lcn/nubia/commonui/actionbar/app/AppCompatCallback;)Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;
    .locals 3

    .prologue
    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 92
    new-instance v0, Lcn/nubia/commonui/actionbar/app/c;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcn/nubia/commonui/actionbar/app/c;-><init>(Landroid/content/Context;Landroid/view/Window;Lcn/nubia/commonui/actionbar/app/AppCompatCallback;)V

    .line 94
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;-><init>(Landroid/content/Context;Landroid/view/Window;Lcn/nubia/commonui/actionbar/app/AppCompatCallback;)V

    goto :goto_0
.end method

.method public static isCompatVectorFromResourcesEnabled()Z
    .locals 1

    .prologue
    .line 297
    sget-boolean v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->sCompatVectorFromResourcesEnabled:Z

    return v0
.end method

.method public static setCompatVectorFromResourcesEnabled(Z)V
    .locals 0

    .prologue
    .line 287
    sput-boolean p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;->sCompatVectorFromResourcesEnabled:Z

    .line 288
    return-void
.end method


# virtual methods
.method public abstract addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.end method

.method public abstract getDrawerToggleDelegate()Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$Delegate;
.end method

.method public abstract getMenuInflater()Landroid/view/MenuInflater;
.end method

.method public abstract getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;
.end method

.method public abstract installViewFactory()V
.end method

.method public abstract invalidateOptionsMenu()V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onPostCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onPostResume()V
.end method

.method public abstract onStop()V
.end method

.method public abstract requestWindowFeature(I)Z
.end method

.method public abstract setContentView(I)V
.end method

.method public abstract setContentView(Landroid/view/View;)V
.end method

.method public abstract setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract setSupportActionBar(Lcn/nubia/commonui/actionbar/widget/Toolbar;)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract startSupportActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;)Lcn/nubia/commonui/actionbar/view/ActionMode;
.end method
