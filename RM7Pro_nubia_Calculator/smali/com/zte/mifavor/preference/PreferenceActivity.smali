.class public abstract Lcom/zte/mifavor/preference/PreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "PreferenceActivity.java"

# interfaces
.implements Lcom/zte/mifavor/widget/MfvActivity;


# instance fields
.field private mActivityCommon:Lcom/zte/mifavor/widget/ActivityCommon;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getFromDecor()Landroid/view/View;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mActivityCommon:Lcom/zte/mifavor/widget/ActivityCommon;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityCommon;->getFromDecor()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 24
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    new-instance p1, Lcom/zte/mifavor/widget/ActivityCommon;

    invoke-direct {p1, p0}, Lcom/zte/mifavor/widget/ActivityCommon;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mActivityCommon:Lcom/zte/mifavor/widget/ActivityCommon;

    .line 26
    iget-object p0, p0, Lcom/zte/mifavor/preference/PreferenceActivity;->mActivityCommon:Lcom/zte/mifavor/widget/ActivityCommon;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityCommon;->onCreate()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lcom/zte/mifavor/utils/UIUtils;->setMenuIconColor(Landroid/app/Activity;Landroid/view/Menu;)V

    .line 32
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public setContentView(I)V
    .locals 8

    .line 48
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "preference_list_content_material"

    const-string v2, "layout"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 51
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "preference_list_content_single"

    const-string v3, "layout"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eq v0, p1, :cond_0

    if-ne v1, p1, :cond_3

    :cond_0
    const v2, 0x102000a

    .line 53
    invoke-virtual {p0, v2}, Lcom/zte/mifavor/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    if-eqz v2, :cond_3

    .line 54
    instance-of v3, v2, Lcom/zte/mifavor/widget/ListView;

    if-nez v3, :cond_3

    .line 55
    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 56
    invoke-virtual {v2}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    .line 58
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    const-string v6, "layout_inflater"

    .line 60
    invoke-virtual {p0, v6}, Lcom/zte/mifavor/preference/PreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    const/4 v7, 0x0

    if-ne v0, p1, :cond_1

    .line 63
    sget p1, Lcom/zte/extres/R$layout;->preference_list_content_material_listview:I

    invoke-virtual {v6, p1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    goto :goto_0

    :cond_1
    if-ne v1, p1, :cond_2

    .line 65
    sget p1, Lcom/zte/extres/R$layout;->preference_list_content_single_listview:I

    invoke-virtual {v6, p1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    :cond_2
    :goto_0
    if-eqz v7, :cond_3

    const/4 p1, -0x1

    if-eq v5, p1, :cond_3

    if-eqz v3, :cond_3

    .line 68
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 69
    invoke-virtual {v4, v7, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 70
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceActivity;->onContentChanged()V

    :cond_3
    return-void
.end method

.method public setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    return-void
.end method
