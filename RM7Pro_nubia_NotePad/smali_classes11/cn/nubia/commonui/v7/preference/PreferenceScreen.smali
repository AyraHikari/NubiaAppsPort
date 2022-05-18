.class public final Lcn/nubia/commonui/v7/preference/PreferenceScreen;
.super Lcn/nubia/commonui/v7/preference/PreferenceGroup;
.source "PreferenceScreen.java"


# instance fields
.field private mShouldUseGeneratedIds:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 90
    sget v0, Lcn/nubia/commonui/R$attr;->preferenceScreenStyle:I

    const v1, 0x101008b

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/v7/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceScreen;->mShouldUseGeneratedIds:Z

    .line 92
    return-void
.end method


# virtual methods
.method protected isOnSameScreenAsChildren()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method protected onClick()V
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceScreen;->getFragment()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceScreen;->getPreferenceManager()Lcn/nubia/commonui/v7/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->getOnNavigateToScreenListener()Lcn/nubia/commonui/v7/preference/PreferenceManager$OnNavigateToScreenListener;

    move-result-object v0

    .line 101
    .local v0, "listener":Lcn/nubia/commonui/v7/preference/PreferenceManager$OnNavigateToScreenListener;
    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0, p0}, Lcn/nubia/commonui/v7/preference/PreferenceManager$OnNavigateToScreenListener;->onNavigateToScreen(Lcn/nubia/commonui/v7/preference/PreferenceScreen;)V

    goto :goto_0
.end method

.method public setShouldUseGeneratedIds(Z)V
    .locals 2
    .param p1, "shouldUseGeneratedIds"    # Z

    .prologue
    .line 135
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceScreen;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change the usage of generated IDs while attached to the preference hierarchy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    iput-boolean p1, p0, Lcn/nubia/commonui/v7/preference/PreferenceScreen;->mShouldUseGeneratedIds:Z

    .line 140
    return-void
.end method

.method public shouldUseGeneratedIds()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceScreen;->mShouldUseGeneratedIds:Z

    return v0
.end method
