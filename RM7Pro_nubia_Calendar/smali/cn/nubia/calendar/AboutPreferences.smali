.class public Lcn/nubia/calendar/AboutPreferences;
.super Landroid/preference/PreferenceFragment;
.source "AboutPreferences.java"


# static fields
.field private static final BUILD_VERSION:Ljava/lang/String; = "build_version"


# instance fields
.field private final mActionBarListener:Landroid/view/View$OnClickListener;

.field private mActivity:Landroid/app/Activity;

.field private mOrientation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 40
    new-instance v0, Lcn/nubia/calendar/AboutPreferences$1;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/AboutPreferences$1;-><init>(Lcn/nubia/calendar/AboutPreferences;)V

    iput-object v0, p0, Lcn/nubia/calendar/AboutPreferences;->mActionBarListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 57
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const/high16 v3, 0x7f070000

    invoke-virtual {p0, v3}, Lcn/nubia/calendar/AboutPreferences;->addPreferencesFromResource(I)V

    .line 60
    invoke-virtual {p0}, Lcn/nubia/calendar/AboutPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 61
    .local v0, "activity":Landroid/app/Activity;
    iput-object v0, p0, Lcn/nubia/calendar/AboutPreferences;->mActivity:Landroid/app/Activity;

    .line 63
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 64
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 65
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    const-string v3, "build_version"

    invoke-virtual {p0, v3}, Lcn/nubia/calendar/AboutPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    const-string v3, "build_version"

    invoke-virtual {p0, v3}, Lcn/nubia/calendar/AboutPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 70
    iget-object v3, p0, Lcn/nubia/calendar/AboutPreferences;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcn/nubia/calendar/AboutPreferences;->mOrientation:I

    .line 71
    return-void

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "build_version"

    invoke-virtual {p0, v3}, Lcn/nubia/calendar/AboutPreferences;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    const v2, 0x7f030060

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 77
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f110057

    .line 78
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 79
    .local v0, "rLayout":Landroid/widget/RelativeLayout;
    iget v2, p0, Lcn/nubia/calendar/AboutPreferences;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 80
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 82
    :cond_0
    const v2, 0x7f110058

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/calendar/AboutPreferences;->mActionBarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-object v1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 89
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 91
    iget v2, p0, Lcn/nubia/calendar/AboutPreferences;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 92
    iget-object v2, p0, Lcn/nubia/calendar/AboutPreferences;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, "customView":Landroid/view/View;
    const v2, 0x7f11004b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 94
    .local v1, "title":Landroid/widget/TextView;
    const v2, 0x7f0c004d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 97
    .end local v0    # "customView":Landroid/view/View;
    .end local v1    # "title":Landroid/widget/TextView;
    :cond_0
    return-void
.end method
