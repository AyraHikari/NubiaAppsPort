.class Landroid/support/v7/app/AppCompatDelegateImplV14;
.super Landroid/support/v7/app/AppCompatDelegateImplV9;
.source "AppCompatDelegateImplV14.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;,
        Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;
    }
.end annotation


# static fields
.field private static final KEY_LOCAL_NIGHT_MODE:Ljava/lang/String; = "appcompat:local_night_mode"


# instance fields
.field private mApplyDayNightCalled:Z

.field private mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

.field private mHandleNativeActionModes:Z

.field private mLocalNightMode:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "window"    # Landroid/view/Window;
    .param p3, "callback"    # Landroid/support/v7/app/AppCompatCallback;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatDelegateImplV9;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V

    .line 47
    const/16 v0, -0x64

    iput v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mHandleNativeActionModes:Z

    .line 57
    return-void
.end method

.method private ensureAutoNightModeManager()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v7/app/TwilightManager;->getInstance(Landroid/content/Context;)Landroid/support/v7/app/TwilightManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV14;Landroid/support/v7/app/TwilightManager;)V

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    .line 251
    :cond_0
    return-void
.end method

.method private getNightMode()I
    .locals 2

    .prologue
    .line 177
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/support/v7/app/AppCompatDelegateImplV14;->getDefaultNightMode()I

    move-result v0

    goto :goto_0
.end method

.method private shouldRecreateOnNightModeChange()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 260
    iget-boolean v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mApplyDayNightCalled:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    instance-of v5, v5, Landroid/app/Activity;

    if-eqz v5, :cond_1

    .line 263
    iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 265
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    .line 266
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v6, 0x0

    .line 265
    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 269
    .local v1, "info":Landroid/content/pm/ActivityInfo;
    iget v5, v1, Landroid/content/pm/ActivityInfo;->configChanges:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v5, v5, 0x200

    if-nez v5, :cond_0

    .line 277
    .end local v1    # "info":Landroid/content/pm/ActivityInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    .restart local v1    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    move v3, v4

    .line 269
    goto :goto_0

    .line 270
    .end local v1    # "info":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "AppCompatDelegate"

    const-string v5, "Exception while getting ActivityInfo"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    move v3, v4

    .line 277
    goto :goto_0
.end method

.method private updateForNightMode(I)Z
    .locals 9
    .param p1, "mode"    # I

    .prologue
    .line 205
    iget-object v7, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 206
    .local v6, "res":Landroid/content/res/Resources;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 207
    .local v1, "conf":Landroid/content/res/Configuration;
    iget v7, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v7, 0x30

    .line 209
    .local v3, "currentNightMode":I
    const/4 v7, 0x2

    if-ne p1, v7, :cond_1

    const/16 v5, 0x20

    .line 213
    .local v5, "newNightMode":I
    :goto_0
    if-eq v3, v5, :cond_3

    .line 214
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->shouldRecreateOnNightModeChange()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 220
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 221
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 238
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_1
    const/4 v7, 0x1

    .line 244
    :goto_2
    return v7

    .line 209
    .end local v5    # "newNightMode":I
    :cond_1
    const/16 v5, 0x10

    goto :goto_0

    .line 226
    .restart local v5    # "newNightMode":I
    :cond_2
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 227
    .local v2, "config":Landroid/content/res/Configuration;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 230
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    iget v7, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v7, v7, -0x31

    or-int/2addr v7, v5

    iput v7, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 231
    invoke-virtual {v6, v2, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 234
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    if-ge v7, v8, :cond_0

    .line 235
    invoke-static {v6}, Landroid/support/v7/app/ResourcesFlusher;->flush(Landroid/content/res/Resources;)Z

    goto :goto_1

    .line 244
    .end local v2    # "config":Landroid/content/res/Configuration;
    .end local v4    # "metrics":Landroid/util/DisplayMetrics;
    :cond_3
    const/4 v7, 0x0

    goto :goto_2
.end method


# virtual methods
.method public applyDayNight()Z
    .locals 4

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 104
    .local v0, "applied":Z
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->getNightMode()I

    move-result v2

    .line 105
    .local v2, "nightMode":I
    invoke-virtual {p0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV14;->mapNightMode(I)I

    move-result v1

    .line 106
    .local v1, "modeToApply":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 107
    invoke-direct {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV14;->updateForNightMode(I)Z

    move-result v0

    .line 110
    :cond_0
    if-nez v2, :cond_1

    .line 112
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->ensureAutoNightModeManager()V

    .line 113
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->setup()V

    .line 116
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mApplyDayNightCalled:Z

    .line 117
    return v0
.end method

.method callActivityOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method final getAutoNightModeManager()Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 255
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->ensureAutoNightModeManager()V

    .line 256
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    return-object v0
.end method

.method public hasWindowFeature(I)Z
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->hasWindowFeature(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHandleNativeActionModesEnabled()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mHandleNativeActionModes:Z

    return v0
.end method

.method mapNightMode(I)I
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 163
    sparse-switch p1, :sswitch_data_0

    .line 171
    .end local p1    # "mode":I
    :goto_0
    return p1

    .line 165
    .restart local p1    # "mode":I
    :sswitch_0
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->ensureAutoNightModeManager()V

    .line 166
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->getApplyableNightMode()I

    move-result p1

    goto :goto_0

    .line 169
    :sswitch_1
    const/4 p1, -0x1

    goto :goto_0

    .line 163
    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, -0x64

    .line 61
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onCreate(Landroid/os/Bundle;)V

    .line 63
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    if-ne v0, v1, :cond_0

    .line 66
    const-string v0, "appcompat:local_night_mode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    .line 69
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 192
    invoke-super {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onDestroy()V

    .line 195
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->cleanup()V

    .line 198
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 184
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    .line 186
    const-string v0, "appcompat:local_night_mode"

    iget v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 188
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onStart()V

    .line 126
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->applyDayNight()Z

    .line 127
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onStop()V

    .line 134
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->cleanup()V

    .line 137
    :cond_0
    return-void
.end method

.method public setHandleNativeActionModesEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mHandleNativeActionModes:Z

    .line 93
    return-void
.end method

.method public setLocalNightMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 141
    packed-switch p1, :pswitch_data_0

    .line 156
    const-string v0, "AppCompatDelegate"

    const-string v1, "setLocalNightMode() called with an unknown mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 146
    :pswitch_0
    iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    if-eq v0, p1, :cond_0

    .line 147
    iput p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I

    .line 148
    iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mApplyDayNightCalled:Z

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->applyDayNight()Z

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method wrapWindowCallback(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1
    .param p1, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 87
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV14;Landroid/view/Window$Callback;)V

    return-object v0
.end method
