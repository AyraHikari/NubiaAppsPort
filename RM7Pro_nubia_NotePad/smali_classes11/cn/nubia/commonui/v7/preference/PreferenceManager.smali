.class public Lcn/nubia/commonui/v7/preference/PreferenceManager;
.super Ljava/lang/Object;
.source "PreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/v7/preference/PreferenceManager$OnNavigateToScreenListener;,
        Lcn/nubia/commonui/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;,
        Lcn/nubia/commonui/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;,
        Lcn/nubia/commonui/v7/preference/PreferenceManager$SimplePreferenceComparisonCallback;,
        Lcn/nubia/commonui/v7/preference/PreferenceManager$PreferenceComparisonCallback;
    }
.end annotation


# static fields
.field public static final KEY_HAS_SET_DEFAULT_VALUES:Ljava/lang/String; = "_has_set_default_values"

.field private static final STORAGE_DEFAULT:I = 0x0

.field private static final STORAGE_DEVICE_PROTECTED:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mNextId:J

.field private mNoCommit:Z

.field private mOnDisplayPreferenceDialogListener:Lcn/nubia/commonui/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;

.field private mOnNavigateToScreenListener:Lcn/nubia/commonui/v7/preference/PreferenceManager$OnNavigateToScreenListener;

.field private mOnPreferenceTreeClickListener:Lcn/nubia/commonui/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;

.field private mPreferenceComparisonCallback:Lcn/nubia/commonui/v7/preference/PreferenceManager$PreferenceComparisonCallback;

.field private mPreferenceDataStore:Lcn/nubia/commonui/v7/preference/PreferenceDataStore;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mPreferenceScreen:Lcn/nubia/commonui/v7/preference/PreferenceScreen;

.field private mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mSharedPreferencesMode:I

.field private mSharedPreferencesName:Ljava/lang/String;

.field private mStorage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mNextId:J

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mStorage:I

    .line 114
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mContext:Landroid/content/Context;

    .line 116
    invoke-static {p1}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public static getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 347
    invoke-static {p0}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-static {}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->getDefaultSharedPreferencesMode()I

    move-result v1

    .line 347
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultSharedPreferencesMode()I
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x0

    return v0
.end method

.method private static getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setDefaultValues(Landroid/content/Context;IZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "readAgain"    # Z

    .prologue
    .line 424
    invoke-static {p0}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 425
    invoke-static {}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->getDefaultSharedPreferencesMode()I

    move-result v1

    .line 424
    invoke-static {p0, v0, v1, p1, p2}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 426
    return-void
.end method

.method public static setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sharedPreferencesName"    # Ljava/lang/String;
    .param p2, "sharedPreferencesMode"    # I
    .param p3, "resId"    # I
    .param p4, "readAgain"    # Z

    .prologue
    const/4 v4, 0x0

    .line 458
    const-string v3, "_has_set_default_values"

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 461
    .local v0, "defaultValueSp":Landroid/content/SharedPreferences;
    if-nez p4, :cond_0

    const-string v3, "_has_set_default_values"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 462
    :cond_0
    new-instance v2, Lcn/nubia/commonui/v7/preference/PreferenceManager;

    invoke-direct {v2, p0}, Lcn/nubia/commonui/v7/preference/PreferenceManager;-><init>(Landroid/content/Context;)V

    .line 463
    .local v2, "pm":Lcn/nubia/commonui/v7/preference/PreferenceManager;
    invoke-virtual {v2, p1}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v2, p2}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->setSharedPreferencesMode(I)V

    .line 465
    const/4 v3, 0x0

    invoke-virtual {v2, p0, p3, v3}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILcn/nubia/commonui/v7/preference/PreferenceScreen;)Lcn/nubia/commonui/v7/preference/PreferenceScreen;

    .line 468
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "_has_set_default_values"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 470
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;->getInstance()Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 472
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "pm":Lcn/nubia/commonui/v7/preference/PreferenceManager;
    :cond_1
    return-void
.end method

.method private setNoCommit(Z)V
    .locals 2
    .param p1, "noCommit"    # Z

    .prologue
    .line 513
    if-nez p1, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 514
    invoke-static {}, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;->getInstance()Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 516
    :cond_0
    iput-boolean p1, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mNoCommit:Z

    .line 517
    return-void
.end method


# virtual methods
.method public createPreferenceScreen(Landroid/content/Context;)Lcn/nubia/commonui/v7/preference/PreferenceScreen;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    new-instance v0, Lcn/nubia/commonui/v7/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcn/nubia/commonui/v7/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 149
    .local v0, "preferenceScreen":Lcn/nubia/commonui/v7/preference/PreferenceScreen;
    invoke-virtual {v0, p0}, Lcn/nubia/commonui/v7/preference/PreferenceScreen;->onAttachedToHierarchy(Lcn/nubia/commonui/v7/preference/PreferenceManager;)V

    .line 150
    return-object v0
.end method

.method public findPreference(Ljava/lang/CharSequence;)Lcn/nubia/commonui/v7/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/CharSequence;

    .prologue
    .line 394
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mPreferenceScreen:Lcn/nubia/commonui/v7/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 395
    const/4 v0, 0x0

    .line 398
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mPreferenceScreen:Lcn/nubia/commonui/v7/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcn/nubia/commonui/v7/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mPreferenceDataStore:Lcn/nubia/commonui/v7/preference/PreferenceDataStore;

    if-eqz v0, :cond_0

    .line 485
    const/4 v0, 0x0

    .line 495
    :goto_0
    return-object v0

    .line 488
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mNoCommit:Z

    if-eqz v0, :cond_2

    .line 489
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_1

    .line 490
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 493
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 495
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_0
.end method

.method getNextId()J
    .locals 4

    .prologue
    .line 159
    monitor-enter p0

    .line 160
    :try_start_0
    iget-wide v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mNextId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mNextId:J

    monitor-exit p0

    return-wide v0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOnDisplayPreferenceDialogListener()Lcn/nubia/commonui/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mOnDisplayPreferenceDialogListener:Lcn/nubia/commonui/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;

    return-object v0
.end method

.method public getOnNavigateToScreenListener()Lcn/nubia/commonui/v7/preference/PreferenceManager$OnNavigateToScreenListener;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mOnNavigateToScreenListener:Lcn/nubia/commonui/v7/preference/PreferenceManager$OnNavigateToScreenListener;

    return-object v0
.end method

.method public getOnPreferenceTreeClickListener()Lcn/nubia/commonui/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Lcn/nubia/commonui/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;

    return-object v0
.end method

.method public getPreferenceComparisonCallback()Lcn/nubia/commonui/v7/preference/PreferenceManager$PreferenceComparisonCallback;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mPreferenceComparisonCallback:Lcn/nubia/commonui/v7/preference/PreferenceManager$PreferenceComparisonCallback;

    return-object v0
.end method

.method public getPreferenceDataStore()Lcn/nubia/commonui/v7/preference/PreferenceDataStore;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mPreferenceDataStore:Lcn/nubia/commonui/v7/preference/PreferenceDataStore;

    return-object v0
.end method

.method public getPreferenceScreen()Lcn/nubia/commonui/v7/preference/PreferenceScreen;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mPreferenceScreen:Lcn/nubia/commonui/v7/preference/PreferenceScreen;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 316
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->getPreferenceDataStore()Lcn/nubia/commonui/v7/preference/PreferenceDataStore;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 317
    const/4 v1, 0x0

    .line 335
    :goto_0
    return-object v1

    .line 320
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    .line 322
    iget v1, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mStorage:I

    packed-switch v1, :pswitch_data_0

    .line 327
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mContext:Landroid/content/Context;

    .line 331
    .local v0, "storageContext":Landroid/content/Context;
    :goto_1
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    iget v2, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mSharedPreferencesMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 335
    .end local v0    # "storageContext":Landroid/content/Context;
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    goto :goto_0

    .line 324
    :pswitch_0
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/ContextCompat;->createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 325
    .restart local v0    # "storageContext":Landroid/content/Context;
    goto :goto_1

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getSharedPreferencesMode()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mSharedPreferencesMode:I

    return v0
.end method

.method public getSharedPreferencesName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    return-object v0
.end method

.method public inflateFromResource(Landroid/content/Context;ILcn/nubia/commonui/v7/preference/PreferenceScreen;)Lcn/nubia/commonui/v7/preference/PreferenceScreen;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "rootPreferences"    # Lcn/nubia/commonui/v7/preference/PreferenceScreen;

    .prologue
    .line 135
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->setNoCommit(Z)V

    .line 137
    new-instance v0, Lcn/nubia/commonui/v7/preference/PreferenceInflater;

    invoke-direct {v0, p1, p0}, Lcn/nubia/commonui/v7/preference/PreferenceInflater;-><init>(Landroid/content/Context;Lcn/nubia/commonui/v7/preference/PreferenceManager;)V

    .line 138
    .local v0, "inflater":Lcn/nubia/commonui/v7/preference/PreferenceInflater;
    invoke-virtual {v0, p2, p3}, Lcn/nubia/commonui/v7/preference/PreferenceInflater;->inflate(ILcn/nubia/commonui/v7/preference/PreferenceGroup;)Lcn/nubia/commonui/v7/preference/Preference;

    move-result-object p3

    .end local p3    # "rootPreferences":Lcn/nubia/commonui/v7/preference/PreferenceScreen;
    check-cast p3, Lcn/nubia/commonui/v7/preference/PreferenceScreen;

    .line 139
    .restart local p3    # "rootPreferences":Lcn/nubia/commonui/v7/preference/PreferenceScreen;
    invoke-virtual {p3, p0}, Lcn/nubia/commonui/v7/preference/PreferenceScreen;->onAttachedToHierarchy(Lcn/nubia/commonui/v7/preference/PreferenceManager;)V

    .line 142
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->setNoCommit(Z)V

    .line 144
    return-object p3
.end method

.method public isStorageDefault()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 259
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 260
    iget v1, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mStorage:I

    if-nez v1, :cond_1

    .line 262
    :cond_0
    :goto_0
    return v0

    .line 260
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStorageDeviceProtected()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 274
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    .line 275
    iget v2, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mStorage:I

    if-ne v2, v0, :cond_0

    .line 277
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 275
    goto :goto_0

    :cond_1
    move v0, v1

    .line 277
    goto :goto_0
.end method

.method public setOnDisplayPreferenceDialogListener(Lcn/nubia/commonui/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;)V
    .locals 0
    .param p1, "onDisplayPreferenceDialogListener"    # Lcn/nubia/commonui/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;

    .prologue
    .line 543
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mOnDisplayPreferenceDialogListener:Lcn/nubia/commonui/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;

    .line 544
    return-void
.end method

.method public setOnNavigateToScreenListener(Lcn/nubia/commonui/v7/preference/PreferenceManager$OnNavigateToScreenListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/commonui/v7/preference/PreferenceManager$OnNavigateToScreenListener;

    .prologue
    .line 578
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mOnNavigateToScreenListener:Lcn/nubia/commonui/v7/preference/PreferenceManager$OnNavigateToScreenListener;

    .line 579
    return-void
.end method

.method public setOnPreferenceTreeClickListener(Lcn/nubia/commonui/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/commonui/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;

    .prologue
    .line 564
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Lcn/nubia/commonui/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;

    .line 565
    return-void
.end method

.method public setPreferenceComparisonCallback(Lcn/nubia/commonui/v7/preference/PreferenceManager$PreferenceComparisonCallback;)V
    .locals 0
    .param p1, "preferenceComparisonCallback"    # Lcn/nubia/commonui/v7/preference/PreferenceManager$PreferenceComparisonCallback;

    .prologue
    .line 534
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mPreferenceComparisonCallback:Lcn/nubia/commonui/v7/preference/PreferenceManager$PreferenceComparisonCallback;

    .line 535
    return-void
.end method

.method public setPreferenceDataStore(Lcn/nubia/commonui/v7/preference/PreferenceDataStore;)V
    .locals 0
    .param p1, "dataStore"    # Lcn/nubia/commonui/v7/preference/PreferenceDataStore;

    .prologue
    .line 292
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mPreferenceDataStore:Lcn/nubia/commonui/v7/preference/PreferenceDataStore;

    .line 293
    return-void
.end method

.method public setPreferences(Lcn/nubia/commonui/v7/preference/PreferenceScreen;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Lcn/nubia/commonui/v7/preference/PreferenceScreen;

    .prologue
    .line 375
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mPreferenceScreen:Lcn/nubia/commonui/v7/preference/PreferenceScreen;

    if-eq p1, v0, :cond_1

    .line 376
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mPreferenceScreen:Lcn/nubia/commonui/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mPreferenceScreen:Lcn/nubia/commonui/v7/preference/PreferenceScreen;

    invoke-virtual {v0}, Lcn/nubia/commonui/v7/preference/PreferenceScreen;->onDetached()V

    .line 379
    :cond_0
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mPreferenceScreen:Lcn/nubia/commonui/v7/preference/PreferenceScreen;

    .line 380
    const/4 v0, 0x1

    .line 383
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSharedPreferencesMode(I)V
    .locals 1
    .param p1, "sharedPreferencesMode"    # I

    .prologue
    .line 209
    iput p1, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mSharedPreferencesMode:I

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 211
    return-void
.end method

.method public setSharedPreferencesName(Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferencesName"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mSharedPreferencesName:Ljava/lang/String;

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 188
    return-void
.end method

.method public setStorageDefault()V
    .locals 2

    .prologue
    .line 218
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 219
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mStorage:I

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 222
    :cond_0
    return-void
.end method

.method public setStorageDeviceProtected()V
    .locals 2

    .prologue
    .line 245
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 246
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mStorage:I

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 249
    :cond_0
    return-void
.end method

.method shouldCommit()Z
    .locals 1

    .prologue
    .line 509
    iget-boolean v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mNoCommit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showDialog(Lcn/nubia/commonui/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Lcn/nubia/commonui/v7/preference/Preference;

    .prologue
    .line 552
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mOnDisplayPreferenceDialogListener:Lcn/nubia/commonui/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceManager;->mOnDisplayPreferenceDialogListener:Lcn/nubia/commonui/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;

    invoke-interface {v0, p1}, Lcn/nubia/commonui/v7/preference/PreferenceManager$OnDisplayPreferenceDialogListener;->onDisplayPreferenceDialog(Lcn/nubia/commonui/v7/preference/Preference;)V

    .line 555
    :cond_0
    return-void
.end method
