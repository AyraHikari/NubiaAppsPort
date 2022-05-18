.class abstract Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;
.super Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;
.source "AppCompatDelegateImplBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase$AppCompatWindowCallback;,
        Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;
    }
.end annotation


# instance fields
.field private mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

.field final mAppCompatCallback:Lcn/nubia/commonui/actionbar/app/AppCompatCallback;

.field final mContext:Landroid/content/Context;

.field mHasActionBar:Z

.field private mIsDestroyed:Z

.field mIsFloating:Z

.field private mMenuInflater:Landroid/view/MenuInflater;

.field final mOriginalWindowCallback:Landroid/view/Window$Callback;

.field mOverlayActionBar:Z

.field mOverlayActionMode:Z

.field private mTitle:Ljava/lang/CharSequence;

.field final mWindow:Landroid/view/Window;

.field mWindowNoTitle:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Lcn/nubia/commonui/actionbar/app/AppCompatCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "window"    # Landroid/view/Window;
    .param p3, "callback"    # Lcn/nubia/commonui/actionbar/app/AppCompatCallback;

    .prologue
    .line 63
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegate;-><init>()V

    .line 64
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    .line 66
    iput-object p3, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->mAppCompatCallback:Lcn/nubia/commonui/actionbar/app/AppCompatCallback;

    .line 68
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    .line 69
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v0, v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase$AppCompatWindowCallback;

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppCompat has already installed itself into the Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    new-instance v1, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase$AppCompatWindowCallback;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    invoke-direct {v1, p0, v2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase$AppCompatWindowCallback;-><init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;Landroid/view/Window$Callback;)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 75
    return-void
.end method


# virtual methods
.method abstract createSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;
.end method

.method abstract dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method final getActionBarThemedContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 146
    const/4 v1, 0x0

    .line 149
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 150
    .local v0, "ab":Lcn/nubia/commonui/actionbar/app/ActionBar;
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    .line 154
    :cond_0
    if-nez v1, :cond_1

    .line 155
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    .line 157
    :cond_1
    return-object v1
.end method

.method public final getDrawerToggleDelegate()Lcn/nubia/commonui/actionbar/app/ActionBarDrawerToggle$Delegate;
    .locals 2

    .prologue
    .line 142
    new-instance v0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;-><init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase$1;)V

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->mMenuInflater:Landroid/view/MenuInflater;

    .line 104
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->mMenuInflater:Landroid/view/MenuInflater;

    return-object v0
.end method

.method public getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->mHasActionBar:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->createSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    .line 88
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    return-object v0
.end method

.method final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 228
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method final getWindowCallback()Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

.method final isDestroyed()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->mIsDestroyed:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 109
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    sget-object v2, Lcn/nubia/commonui/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 111
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcn/nubia/commonui/R$styleable;->Theme_windowActionBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_0
    sget v1, Lcn/nubia/commonui/R$styleable;->Theme_windowActionBar:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    iput-boolean v4, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->mHasActionBar:Z

    .line 120
    :cond_1
    sget v1, Lcn/nubia/commonui/R$styleable;->Theme_windowActionBarOverlay:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    iput-boolean v4, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->mOverlayActionBar:Z

    .line 123
    :cond_2
    sget v1, Lcn/nubia/commonui/R$styleable;->Theme_windowActionModeOverlay:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 124
    iput-boolean v4, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->mOverlayActionMode:Z

    .line 126
    :cond_3
    sget v1, Lcn/nubia/commonui/R$styleable;->Theme_android_windowIsFloating:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->mIsFloating:Z

    .line 127
    sget v1, Lcn/nubia/commonui/R$styleable;->Theme_windowNoTitle:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->mWindowNoTitle:Z

    .line 128
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 129
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->mIsDestroyed:Z

    .line 204
    return-void
.end method

.method abstract onKeyShortcut(ILandroid/view/KeyEvent;)Z
.end method

.method abstract onMenuOpened(ILandroid/view/Menu;)Z
.end method

.method abstract onPanelClosed(ILandroid/view/Menu;)Z
.end method

.method abstract onTitleChanged(Ljava/lang/CharSequence;)V
.end method

.method final peekSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    return-object v0
.end method

.method final setSupportActionBar(Lcn/nubia/commonui/actionbar/app/ActionBar;)V
    .locals 0
    .param p1, "actionBar"    # Lcn/nubia/commonui/actionbar/app/ActionBar;

    .prologue
    .line 96
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    .line 97
    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 216
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->mTitle:Ljava/lang/CharSequence;

    .line 217
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplBase;->onTitleChanged(Ljava/lang/CharSequence;)V

    .line 218
    return-void
.end method

.method abstract startSupportActionModeFromWindow(Lcn/nubia/commonui/actionbar/view/ActionMode$Callback;)Lcn/nubia/commonui/actionbar/view/ActionMode;
.end method
