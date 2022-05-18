.class public Lcn/nubia/commonui/v7/preference/Preference;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/v7/preference/Preference$BaseSavedState;,
        Lcn/nubia/commonui/v7/preference/Preference$OnPreferenceChangeInternalListener;,
        Lcn/nubia/commonui/v7/preference/Preference$OnPreferenceClickListener;,
        Lcn/nubia/commonui/v7/preference/Preference$OnPreferenceChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcn/nubia/commonui/v7/preference/Preference;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_DIVIDER_BELOW_IN_ROM_UI80:Z = false

.field public static final DEFAULT_ORDER:I = 0x7fffffff


# instance fields
.field private mAllowDividerAbove:Z

.field private mAllowDividerBelow:Z

.field private mBaseMethodCalled:Z

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mDefaultValue:Ljava/lang/Object;

.field private mDependencyKey:Ljava/lang/String;

.field private mDependencyMet:Z

.field private mDependents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/commonui/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mExtras:Landroid/os/Bundle;

.field private mFragment:Ljava/lang/String;

.field private mHasId:Z

.field private mHasSingleLineTitleAttr:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mIconSpaceReserved:Z

.field private mId:J

.field private mIntent:Landroid/content/Intent;

.field private mKey:Ljava/lang/String;

.field private mLayoutResId:I

.field private mListener:Lcn/nubia/commonui/v7/preference/Preference$OnPreferenceChangeInternalListener;

.field private mOnChangeListener:Lcn/nubia/commonui/v7/preference/Preference$OnPreferenceChangeListener;

.field private mOnClickListener:Lcn/nubia/commonui/v7/preference/Preference$OnPreferenceClickListener;

.field private mOrder:I

.field private mParentDependencyMet:Z

.field private mParentGroup:Lcn/nubia/commonui/v7/preference/PreferenceGroup;

.field private mPersistent:Z

.field private mPreferenceDataStore:Lcn/nubia/commonui/v7/preference/PreferenceDataStore;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRequiresKey:Z

.field private mSelectable:Z

.field private mShouldDisableView:Z

.field private mSingleLineTitle:Z

.field private mSummary:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;

.field private mViewId:I

.field private mVisible:Z

.field private mWasDetached:Z

.field private mWidgetLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 381
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 382
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 371
    sget v0, Lcn/nubia/commonui/R$attr;->preferenceStyle:I

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 373
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 353
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/commonui/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 354
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const v3, 0x7fffffff

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput v3, p0, Lcn/nubia/commonui/v7/preference/Preference;->mOrder:I

    .line 124
    iput v5, p0, Lcn/nubia/commonui/v7/preference/Preference;->mViewId:I

    .line 136
    iput-boolean v4, p0, Lcn/nubia/commonui/v7/preference/Preference;->mEnabled:Z

    .line 137
    iput-boolean v4, p0, Lcn/nubia/commonui/v7/preference/Preference;->mSelectable:Z

    .line 139
    iput-boolean v4, p0, Lcn/nubia/commonui/v7/preference/Preference;->mPersistent:Z

    .line 142
    iput-boolean v4, p0, Lcn/nubia/commonui/v7/preference/Preference;->mDependencyMet:Z

    .line 143
    iput-boolean v4, p0, Lcn/nubia/commonui/v7/preference/Preference;->mParentDependencyMet:Z

    .line 144
    iput-boolean v4, p0, Lcn/nubia/commonui/v7/preference/Preference;->mVisible:Z

    .line 147
    iput-boolean v4, p0, Lcn/nubia/commonui/v7/preference/Preference;->mAllowDividerAbove:Z

    .line 148
    iput-boolean v4, p0, Lcn/nubia/commonui/v7/preference/Preference;->mAllowDividerBelow:Z

    .line 150
    iput-boolean v4, p0, Lcn/nubia/commonui/v7/preference/Preference;->mSingleLineTitle:Z

    .line 156
    iput-boolean v4, p0, Lcn/nubia/commonui/v7/preference/Preference;->mShouldDisableView:Z

    .line 158
    sget v1, Lcn/nubia/commonui/R$layout;->preference:I

    iput v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mLayoutResId:I

    .line 169
    new-instance v1, Lcn/nubia/commonui/v7/preference/Preference$1;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/v7/preference/Preference$1;-><init>(Lcn/nubia/commonui/v7/preference/Preference;)V

    iput-object v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mClickListener:Landroid/view/View$OnClickListener;

    .line 262
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mContext:Landroid/content/Context;

    .line 264
    sget-object v1, Lcn/nubia/commonui/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 267
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcn/nubia/commonui/R$styleable;->Preference_icon:I

    sget v2, Lcn/nubia/commonui/R$styleable;->Preference_android_icon:I

    invoke-static {v0, v1, v2, v5}, Landroid/support/v4/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mIconResId:I

    .line 270
    sget v1, Lcn/nubia/commonui/R$styleable;->Preference_key:I

    sget v2, Lcn/nubia/commonui/R$styleable;->Preference_android_key:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mKey:Ljava/lang/String;

    .line 273
    sget v1, Lcn/nubia/commonui/R$styleable;->Preference_title:I

    sget v2, Lcn/nubia/commonui/R$styleable;->Preference_android_title:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getText(Landroid/content/res/TypedArray;II)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 276
    sget v1, Lcn/nubia/commonui/R$styleable;->Preference_summary:I

    sget v2, Lcn/nubia/commonui/R$styleable;->Preference_android_summary:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getText(Landroid/content/res/TypedArray;II)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 279
    sget v1, Lcn/nubia/commonui/R$styleable;->Preference_order:I

    sget v2, Lcn/nubia/commonui/R$styleable;->Preference_android_order:I

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getInt(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mOrder:I

    .line 282
    sget v1, Lcn/nubia/commonui/R$styleable;->Preference_fragment:I

    sget v2, Lcn/nubia/commonui/R$styleable;->Preference_android_fragment:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mFragment:Ljava/lang/String;

    .line 285
    sget v1, Lcn/nubia/commonui/R$styleable;->Preference_layout:I

    sget v2, Lcn/nubia/commonui/R$styleable;->Preference_android_layout:I

    sget v3, Lcn/nubia/commonui/R$layout;->preference:I

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mLayoutResId:I

    .line 288
    sget v1, Lcn/nubia/commonui/R$styleable;->Preference_widgetLayout:I

    sget v2, Lcn/nubia/commonui/R$styleable;->Preference_android_widgetLayout:I

    invoke-static {v0, v1, v2, v5}, Landroid/support/v4/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mWidgetLayoutResId:I

    .line 291
    sget v1, Lcn/nubia/commonui/R$styleable;->Preference_enabled:I

    sget v2, Lcn/nubia/commonui/R$styleable;->Preference_android_enabled:I

    invoke-static {v0, v1, v2, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mEnabled:Z

    .line 294
    sget v1, Lcn/nubia/commonui/R$styleable;->Preference_selectable:I

    sget v2, Lcn/nubia/commonui/R$styleable;->Preference_android_selectable:I

    invoke-static {v0, v1, v2, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mSelectable:Z

    .line 297
    sget v1, Lcn/nubia/commonui/R$styleable;->Preference_persistent:I

    sget v2, Lcn/nubia/commonui/R$styleable;->Preference_android_persistent:I

    invoke-static {v0, v1, v2, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mPersistent:Z

    .line 300
    sget v1, Lcn/nubia/commonui/R$styleable;->Preference_dependency:I

    sget v2, Lcn/nubia/commonui/R$styleable;->Preference_android_dependency:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 303
    sget v1, Lcn/nubia/commonui/R$styleable;->Preference_allowDividerAbove:I

    sget v2, Lcn/nubia/commonui/R$styleable;->Preference_allowDividerAbove:I

    iget-boolean v3, p0, Lcn/nubia/commonui/v7/preference/Preference;->mSelectable:Z

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mAllowDividerAbove:Z

    .line 306
    sget v1, Lcn/nubia/commonui/R$styleable;->Preference_allowDividerBelow:I

    sget v2, Lcn/nubia/commonui/R$styleable;->Preference_allowDividerBelow:I

    iget-boolean v3, p0, Lcn/nubia/commonui/v7/preference/Preference;->mSelectable:Z

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mAllowDividerBelow:Z

    .line 308
    iput-boolean v5, p0, Lcn/nubia/commonui/v7/preference/Preference;->mAllowDividerBelow:Z

    .line 310
    sget v1, Lcn/nubia/commonui/R$styleable;->Preference_defaultValue:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 311
    sget v1, Lcn/nubia/commonui/R$styleable;->Preference_defaultValue:I

    invoke-virtual {p0, v0, v1}, Lcn/nubia/commonui/v7/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    .line 316
    :cond_0
    :goto_0
    sget v1, Lcn/nubia/commonui/R$styleable;->Preference_shouldDisableView:I

    sget v2, Lcn/nubia/commonui/R$styleable;->Preference_android_shouldDisableView:I

    .line 317
    invoke-static {v0, v1, v2, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mShouldDisableView:Z

    .line 320
    sget v1, Lcn/nubia/commonui/R$styleable;->Preference_singleLineTitle:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mHasSingleLineTitleAttr:Z

    .line 321
    iget-boolean v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mHasSingleLineTitleAttr:Z

    if-eqz v1, :cond_1

    .line 322
    sget v1, Lcn/nubia/commonui/R$styleable;->Preference_singleLineTitle:I

    sget v2, Lcn/nubia/commonui/R$styleable;->Preference_android_singleLineTitle:I

    invoke-static {v0, v1, v2, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mSingleLineTitle:Z

    .line 326
    :cond_1
    sget v1, Lcn/nubia/commonui/R$styleable;->Preference_iconSpaceReserved:I

    sget v2, Lcn/nubia/commonui/R$styleable;->Preference_android_iconSpaceReserved:I

    invoke-static {v0, v1, v2, v5}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mIconSpaceReserved:Z

    .line 329
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 330
    return-void

    .line 312
    :cond_2
    sget v1, Lcn/nubia/commonui/R$styleable;->Preference_android_defaultValue:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    sget v1, Lcn/nubia/commonui/R$styleable;->Preference_android_defaultValue:I

    invoke-virtual {p0, v0, v1}, Lcn/nubia/commonui/v7/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    goto :goto_0
.end method

.method private dispatchSetInitialValue()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1514
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->getPreferenceDataStore()Lcn/nubia/commonui/v7/preference/PreferenceDataStore;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1515
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v3, v1}, Lcn/nubia/commonui/v7/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 1528
    :cond_0
    :goto_0
    return-void

    .line 1520
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->shouldPersist()Z

    move-result v0

    .line 1521
    .local v0, "shouldPersist":Z
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1522
    :cond_2
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1523
    const/4 v1, 0x0

    iget-object v2, p0, Lcn/nubia/commonui/v7/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcn/nubia/commonui/v7/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    goto :goto_0

    .line 1526
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v3, v1}, Lcn/nubia/commonui/v7/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    goto :goto_0
.end method

.method private registerDependency()V
    .locals 4

    .prologue
    .line 1324
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1333
    :goto_0
    return-void

    .line 1326
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/v7/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Lcn/nubia/commonui/v7/preference/Preference;

    move-result-object v0

    .line 1327
    .local v0, "preference":Lcn/nubia/commonui/v7/preference/Preference;
    if-eqz v0, :cond_1

    .line 1328
    invoke-direct {v0, p0}, Lcn/nubia/commonui/v7/preference/Preference;->registerDependent(Lcn/nubia/commonui/v7/preference/Preference;)V

    goto :goto_0

    .line 1330
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dependency \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/commonui/v7/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" not found for preference \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/commonui/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" (title: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/commonui/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private registerDependent(Lcn/nubia/commonui/v7/preference/Preference;)V
    .locals 1
    .param p1, "dependent"    # Lcn/nubia/commonui/v7/preference/Preference;

    .prologue
    .line 1372
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mDependents:Ljava/util/List;

    .line 1376
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1378
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcn/nubia/commonui/v7/preference/Preference;->onDependencyChanged(Lcn/nubia/commonui/v7/preference/Preference;Z)V

    .line 1379
    return-void
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 645
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 647
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 648
    check-cast v1, Landroid/view/ViewGroup;

    .line 649
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 650
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcn/nubia/commonui/v7/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 649
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 653
    .end local v0    # "i":I
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private tryCommit(Landroid/content/SharedPreferences$Editor;)V
    .locals 1
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1554
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    invoke-virtual {v0}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->shouldCommit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1555
    invoke-static {}, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;->getInstance()Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 1557
    :cond_0
    return-void
.end method

.method private unregisterDependency()V
    .locals 2

    .prologue
    .line 1336
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mDependencyKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1337
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/v7/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Lcn/nubia/commonui/v7/preference/Preference;

    move-result-object v0

    .line 1338
    .local v0, "oldDependency":Lcn/nubia/commonui/v7/preference/Preference;
    if-eqz v0, :cond_0

    .line 1339
    invoke-direct {v0, p0}, Lcn/nubia/commonui/v7/preference/Preference;->unregisterDependent(Lcn/nubia/commonui/v7/preference/Preference;)V

    .line 1342
    .end local v0    # "oldDependency":Lcn/nubia/commonui/v7/preference/Preference;
    :cond_0
    return-void
.end method

.method private unregisterDependent(Lcn/nubia/commonui/v7/preference/Preference;)V
    .locals 1
    .param p1, "dependent"    # Lcn/nubia/commonui/v7/preference/Preference;

    .prologue
    .line 1388
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mDependents:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1389
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1391
    :cond_0
    return-void
.end method


# virtual methods
.method assignParent(Lcn/nubia/commonui/v7/preference/PreferenceGroup;)V
    .locals 0
    .param p1, "parentGroup"    # Lcn/nubia/commonui/v7/preference/PreferenceGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1279
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mParentGroup:Lcn/nubia/commonui/v7/preference/PreferenceGroup;

    .line 1280
    return-void
.end method

.method public callChangeListener(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1062
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mOnChangeListener:Lcn/nubia/commonui/v7/preference/Preference$OnPreferenceChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mOnChangeListener:Lcn/nubia/commonui/v7/preference/Preference$OnPreferenceChangeListener;

    invoke-interface {v0, p0, p1}, Lcn/nubia/commonui/v7/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Lcn/nubia/commonui/v7/preference/Preference;Ljava/lang/Object;)Z

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

.method public final clearWasDetached()V
    .locals 1

    .prologue
    .line 1319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mWasDetached:Z

    .line 1320
    return-void
.end method

.method public compareTo(Lcn/nubia/commonui/v7/preference/Preference;)I
    .locals 2
    .param p1, "another"    # Lcn/nubia/commonui/v7/preference/Preference;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1186
    iget v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mOrder:I

    iget v1, p1, Lcn/nubia/commonui/v7/preference/Preference;->mOrder:I

    if-eq v0, v1, :cond_0

    .line 1188
    iget v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mOrder:I

    iget v1, p1, Lcn/nubia/commonui/v7/preference/Preference;->mOrder:I

    sub-int/2addr v0, v1

    .line 1198
    :goto_0
    return v0

    .line 1189
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcn/nubia/commonui/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-ne v0, v1, :cond_1

    .line 1191
    const/4 v0, 0x0

    goto :goto_0

    .line 1192
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 1193
    const/4 v0, 0x1

    goto :goto_0

    .line 1194
    :cond_2
    iget-object v0, p1, Lcn/nubia/commonui/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    .line 1195
    const/4 v0, -0x1

    goto :goto_0

    .line 1198
    :cond_3
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcn/nubia/commonui/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 89
    check-cast p1, Lcn/nubia/commonui/v7/preference/Preference;

    invoke-virtual {p0, p1}, Lcn/nubia/commonui/v7/preference/Preference;->compareTo(Lcn/nubia/commonui/v7/preference/Preference;)I

    move-result v0

    return v0
.end method

.method dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 1995
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1996
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1997
    .local v0, "state":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 1998
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mBaseMethodCalled:Z

    .line 1999
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v7/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2000
    iget-boolean v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mBaseMethodCalled:Z

    if-nez v1, :cond_0

    .line 2001
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2006
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 1942
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1943
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mBaseMethodCalled:Z

    .line 1944
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1945
    .local v0, "state":Landroid/os/Parcelable;
    iget-boolean v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mBaseMethodCalled:Z

    if-nez v1, :cond_0

    .line 1946
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1949
    :cond_0
    if-eqz v0, :cond_1

    .line 1950
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1953
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_1
    return-void
.end method

.method protected findPreferenceInHierarchy(Ljava/lang/String;)Lcn/nubia/commonui/v7/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1355
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    if-nez v0, :cond_1

    .line 1356
    :cond_0
    const/4 v0, 0x0

    .line 1359
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcn/nubia/commonui/v7/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDependency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1479
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mDependencyKey:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 483
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mExtras:Landroid/os/Bundle;

    .line 485
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method getFilterableStringBuilder()Ljava/lang/StringBuilder;
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 1903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1904
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1905
    .local v2, "title":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1906
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1908
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1909
    .local v1, "summary":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1910
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1912
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1914
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1916
    :cond_2
    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mFragment:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 767
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mIconResId:I

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mContext:Landroid/content/Context;

    iget v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mIconResId:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 770
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getId()J
    .locals 2

    .prologue
    .line 910
    iget-wide v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mId:J

    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getLayoutResource()I
    .locals 1

    .prologue
    .line 522
    iget v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mLayoutResId:I

    return v0
.end method

.method public getOnPreferenceChangeListener()Lcn/nubia/commonui/v7/preference/Preference$OnPreferenceChangeListener;
    .locals 1

    .prologue
    .line 1083
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mOnChangeListener:Lcn/nubia/commonui/v7/preference/Preference$OnPreferenceChangeListener;

    return-object v0
.end method

.method public getOnPreferenceClickListener()Lcn/nubia/commonui/v7/preference/Preference$OnPreferenceClickListener;
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mOnClickListener:Lcn/nubia/commonui/v7/preference/Preference$OnPreferenceClickListener;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 685
    iget v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mOrder:I

    return v0
.end method

.method public getParent()Lcn/nubia/commonui/v7/preference/PreferenceGroup;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1490
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mParentGroup:Lcn/nubia/commonui/v7/preference/PreferenceGroup;

    return-object v0
.end method

.method protected getPersistedBoolean(Z)Z
    .locals 3
    .param p1, "defaultReturnValue"    # Z

    .prologue
    .line 1874
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->shouldPersist()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1883
    .end local p1    # "defaultReturnValue":Z
    :goto_0
    return p1

    .line 1878
    .restart local p1    # "defaultReturnValue":Z
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->getPreferenceDataStore()Lcn/nubia/commonui/v7/preference/PreferenceDataStore;

    move-result-object v0

    .line 1879
    .local v0, "dataStore":Lcn/nubia/commonui/v7/preference/PreferenceDataStore;
    if-eqz v0, :cond_1

    .line 1880
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/commonui/v7/preference/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0

    .line 1883
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    invoke-virtual {v1}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedFloat(F)F
    .locals 3
    .param p1, "defaultReturnValue"    # F

    .prologue
    .line 1764
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->shouldPersist()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1773
    .end local p1    # "defaultReturnValue":F
    :goto_0
    return p1

    .line 1768
    .restart local p1    # "defaultReturnValue":F
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->getPreferenceDataStore()Lcn/nubia/commonui/v7/preference/PreferenceDataStore;

    move-result-object v0

    .line 1769
    .local v0, "dataStore":Lcn/nubia/commonui/v7/preference/PreferenceDataStore;
    if-eqz v0, :cond_1

    .line 1770
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/commonui/v7/preference/PreferenceDataStore;->getFloat(Ljava/lang/String;F)F

    move-result p1

    goto :goto_0

    .line 1773
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    invoke-virtual {v1}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedInt(I)I
    .locals 3
    .param p1, "defaultReturnValue"    # I

    .prologue
    .line 1709
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->shouldPersist()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1718
    .end local p1    # "defaultReturnValue":I
    :goto_0
    return p1

    .line 1713
    .restart local p1    # "defaultReturnValue":I
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->getPreferenceDataStore()Lcn/nubia/commonui/v7/preference/PreferenceDataStore;

    move-result-object v0

    .line 1714
    .local v0, "dataStore":Lcn/nubia/commonui/v7/preference/PreferenceDataStore;
    if-eqz v0, :cond_1

    .line 1715
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/commonui/v7/preference/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    .line 1718
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    invoke-virtual {v1}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedLong(J)J
    .locals 3
    .param p1, "defaultReturnValue"    # J

    .prologue
    .line 1819
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->shouldPersist()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1828
    .end local p1    # "defaultReturnValue":J
    :goto_0
    return-wide p1

    .line 1823
    .restart local p1    # "defaultReturnValue":J
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->getPreferenceDataStore()Lcn/nubia/commonui/v7/preference/PreferenceDataStore;

    move-result-object v0

    .line 1824
    .local v0, "dataStore":Lcn/nubia/commonui/v7/preference/PreferenceDataStore;
    if-eqz v0, :cond_1

    .line 1825
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcn/nubia/commonui/v7/preference/PreferenceDataStore;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    goto :goto_0

    .line 1828
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    invoke-virtual {v1}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    goto :goto_0
.end method

.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "defaultReturnValue"    # Ljava/lang/String;

    .prologue
    .line 1601
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->shouldPersist()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1610
    .end local p1    # "defaultReturnValue":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 1605
    .restart local p1    # "defaultReturnValue":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->getPreferenceDataStore()Lcn/nubia/commonui/v7/preference/PreferenceDataStore;

    move-result-object v0

    .line 1606
    .local v0, "dataStore":Lcn/nubia/commonui/v7/preference/PreferenceDataStore;
    if-eqz v0, :cond_1

    .line 1607
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/commonui/v7/preference/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1610
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    invoke-virtual {v1}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1654
    .local p1, "defaultReturnValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->shouldPersist()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1663
    .end local p1    # "defaultReturnValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    return-object p1

    .line 1658
    .restart local p1    # "defaultReturnValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->getPreferenceDataStore()Lcn/nubia/commonui/v7/preference/PreferenceDataStore;

    move-result-object v0

    .line 1659
    .local v0, "dataStore":Lcn/nubia/commonui/v7/preference/PreferenceDataStore;
    if-eqz v0, :cond_1

    .line 1660
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/commonui/v7/preference/PreferenceDataStore;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    .line 1663
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    invoke-virtual {v1}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    goto :goto_0
.end method

.method public getPreferenceDataStore()Lcn/nubia/commonui/v7/preference/PreferenceDataStore;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mPreferenceDataStore:Lcn/nubia/commonui/v7/preference/PreferenceDataStore;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mPreferenceDataStore:Lcn/nubia/commonui/v7/preference/PreferenceDataStore;

    .line 473
    :goto_0
    return-object v0

    .line 469
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    invoke-virtual {v0}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->getPreferenceDataStore()Lcn/nubia/commonui/v7/preference/PreferenceDataStore;

    move-result-object v0

    goto :goto_0

    .line 473
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreferenceManager()Lcn/nubia/commonui/v7/preference/PreferenceManager;
    .locals 1

    .prologue
    .line 1238
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 1170
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->getPreferenceDataStore()Lcn/nubia/commonui/v7/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1171
    :cond_0
    const/4 v0, 0x0

    .line 1174
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    invoke-virtual {v0}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public getShouldDisableView()Z
    .locals 1

    .prologue
    .line 875
    iget-boolean v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mShouldDisableView:Z

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getWidgetLayoutResource()I
    .locals 1

    .prologue
    .line 554
    iget v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mWidgetLayoutResId:I

    return v0
.end method

.method public hasKey()Z
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 829
    iget-boolean v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mDependencyMet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mParentDependencyMet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIconSpaceReserved()Z
    .locals 1

    .prologue
    .line 1050
    iget-boolean v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mIconSpaceReserved:Z

    return v0
.end method

.method public isPersistent()Z
    .locals 1

    .prologue
    .line 977
    iget-boolean v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mPersistent:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 850
    iget-boolean v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mSelectable:Z

    return v0
.end method

.method public isSingleLineTitle()Z
    .locals 1

    .prologue
    .line 1024
    iget-boolean v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mSingleLineTitle:Z

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 900
    iget-boolean v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mVisible:Z

    return v0
.end method

.method protected notifyChanged()V
    .locals 1

    .prologue
    .line 1216
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mListener:Lcn/nubia/commonui/v7/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1217
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mListener:Lcn/nubia/commonui/v7/preference/Preference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Lcn/nubia/commonui/v7/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceChange(Lcn/nubia/commonui/v7/preference/Preference;)V

    .line 1219
    :cond_0
    return-void
.end method

.method public notifyDependencyChange(Z)V
    .locals 4
    .param p1, "disableDependents"    # Z

    .prologue
    .line 1401
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mDependents:Ljava/util/List;

    .line 1403
    .local v0, "dependents":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/commonui/v7/preference/Preference;>;"
    if-nez v0, :cond_1

    .line 1411
    :cond_0
    return-void

    .line 1407
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1408
    .local v1, "dependentsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1409
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/commonui/v7/preference/Preference;

    invoke-virtual {v3, p0, p1}, Lcn/nubia/commonui/v7/preference/Preference;->onDependencyChanged(Lcn/nubia/commonui/v7/preference/Preference;Z)V

    .line 1408
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected notifyHierarchyChanged()V
    .locals 1

    .prologue
    .line 1227
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mListener:Lcn/nubia/commonui/v7/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1228
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mListener:Lcn/nubia/commonui/v7/preference/Preference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Lcn/nubia/commonui/v7/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceHierarchyChange(Lcn/nubia/commonui/v7/preference/Preference;)V

    .line 1230
    :cond_0
    return-void
.end method

.method public onAttached()V
    .locals 0

    .prologue
    .line 1291
    invoke-direct {p0}, Lcn/nubia/commonui/v7/preference/Preference;->registerDependency()V

    .line 1292
    return-void
.end method

.method protected onAttachedToHierarchy(Lcn/nubia/commonui/v7/preference/PreferenceManager;)V
    .locals 2
    .param p1, "preferenceManager"    # Lcn/nubia/commonui/v7/preference/PreferenceManager;

    .prologue
    .line 1248
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    .line 1250
    iget-boolean v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mHasId:Z

    if-nez v0, :cond_0

    .line 1251
    invoke-virtual {p1}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->getNextId()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mId:J

    .line 1254
    :cond_0
    invoke-direct {p0}, Lcn/nubia/commonui/v7/preference/Preference;->dispatchSetInitialValue()V

    .line 1255
    return-void
.end method

.method protected onAttachedToHierarchy(Lcn/nubia/commonui/v7/preference/PreferenceManager;J)V
    .locals 2
    .param p1, "preferenceManager"    # Lcn/nubia/commonui/v7/preference/PreferenceManager;
    .param p2, "id"    # J

    .prologue
    const/4 v1, 0x0

    .line 1263
    iput-wide p2, p0, Lcn/nubia/commonui/v7/preference/Preference;->mId:J

    .line 1264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mHasId:Z

    .line 1266
    :try_start_0
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/v7/preference/Preference;->onAttachedToHierarchy(Lcn/nubia/commonui/v7/preference/PreferenceManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1268
    iput-boolean v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mHasId:Z

    .line 1270
    return-void

    .line 1268
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mHasId:Z

    throw v0
.end method

.method public onBindViewHolder(Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;)V
    .locals 12
    .param p1, "holder"    # Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;

    .prologue
    const/4 v8, 0x4

    const/16 v9, 0x8

    const/4 v11, 0x0

    .line 570
    iget-object v7, p1, Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-object v10, p0, Lcn/nubia/commonui/v7/preference/Preference;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    iget-object v7, p1, Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget v10, p0, Lcn/nubia/commonui/v7/preference/Preference;->mViewId:I

    invoke-virtual {v7, v10}, Landroid/view/View;->setId(I)V

    .line 573
    const v7, 0x1020016

    invoke-virtual {p1, v7}, Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 574
    .local v6, "titleView":Landroid/widget/TextView;
    if-eqz v6, :cond_0

    .line 575
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    .line 576
    .local v5, "title":Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 577
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 579
    iget-boolean v7, p0, Lcn/nubia/commonui/v7/preference/Preference;->mHasSingleLineTitleAttr:Z

    if-eqz v7, :cond_0

    .line 580
    iget-boolean v7, p0, Lcn/nubia/commonui/v7/preference/Preference;->mSingleLineTitle:Z

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 587
    .end local v5    # "title":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    const v7, 0x1020010

    invoke-virtual {p1, v7}, Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 588
    .local v4, "summaryView":Landroid/widget/TextView;
    if-eqz v4, :cond_1

    .line 589
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    .line 590
    .local v3, "summary":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 591
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 598
    .end local v3    # "summary":Ljava/lang/CharSequence;
    :cond_1
    :goto_1
    const v7, 0x1020006

    invoke-virtual {p1, v7}, Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 599
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_5

    .line 600
    iget v7, p0, Lcn/nubia/commonui/v7/preference/Preference;->mIconResId:I

    if-nez v7, :cond_2

    iget-object v7, p0, Lcn/nubia/commonui/v7/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_4

    .line 601
    :cond_2
    iget-object v7, p0, Lcn/nubia/commonui/v7/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_3

    .line 602
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v10, p0, Lcn/nubia/commonui/v7/preference/Preference;->mIconResId:I

    invoke-static {v7, v10}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcn/nubia/commonui/v7/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 604
    :cond_3
    iget-object v7, p0, Lcn/nubia/commonui/v7/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_4

    .line 605
    iget-object v7, p0, Lcn/nubia/commonui/v7/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 608
    :cond_4
    iget-object v7, p0, Lcn/nubia/commonui/v7/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_a

    .line 609
    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 615
    :cond_5
    :goto_2
    sget v7, Lcn/nubia/commonui/R$id;->icon_frame:I

    invoke-virtual {p1, v7}, Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 616
    .local v0, "imageFrame":Landroid/view/View;
    if-nez v0, :cond_6

    .line 617
    sget v7, Lcn/nubia/commonui/v7/preference/AndroidResources;->ANDROID_R_ICON_FRAME:I

    invoke-virtual {p1, v7}, Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 619
    :cond_6
    if-eqz v0, :cond_7

    .line 620
    iget-object v7, p0, Lcn/nubia/commonui/v7/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_c

    .line 621
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 627
    :cond_7
    :goto_3
    iget-boolean v7, p0, Lcn/nubia/commonui/v7/preference/Preference;->mShouldDisableView:Z

    if-eqz v7, :cond_e

    .line 628
    iget-object v7, p1, Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->isEnabled()Z

    move-result v8

    invoke-direct {p0, v7, v8}, Lcn/nubia/commonui/v7/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 633
    :goto_4
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->isSelectable()Z

    move-result v2

    .line 634
    .local v2, "selectable":Z
    iget-object v7, p1, Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 635
    iget-object v7, p1, Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->setClickable(Z)V

    .line 637
    iget-boolean v7, p0, Lcn/nubia/commonui/v7/preference/Preference;->mAllowDividerAbove:Z

    invoke-virtual {p1, v7}, Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 638
    iget-boolean v7, p0, Lcn/nubia/commonui/v7/preference/Preference;->mAllowDividerBelow:Z

    invoke-virtual {p1, v7}, Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 639
    return-void

    .line 583
    .end local v0    # "imageFrame":Landroid/view/View;
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v2    # "selectable":Z
    .end local v4    # "summaryView":Landroid/widget/TextView;
    .restart local v5    # "title":Ljava/lang/CharSequence;
    :cond_8
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 594
    .end local v5    # "title":Ljava/lang/CharSequence;
    .restart local v3    # "summary":Ljava/lang/CharSequence;
    .restart local v4    # "summaryView":Landroid/widget/TextView;
    :cond_9
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 611
    .end local v3    # "summary":Ljava/lang/CharSequence;
    .restart local v1    # "imageView":Landroid/widget/ImageView;
    :cond_a
    iget-boolean v7, p0, Lcn/nubia/commonui/v7/preference/Preference;->mIconSpaceReserved:Z

    if-eqz v7, :cond_b

    move v7, v8

    :goto_5
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_b
    move v7, v9

    goto :goto_5

    .line 623
    .restart local v0    # "imageFrame":Landroid/view/View;
    :cond_c
    iget-boolean v7, p0, Lcn/nubia/commonui/v7/preference/Preference;->mIconSpaceReserved:Z

    if-eqz v7, :cond_d

    :goto_6
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_d
    move v8, v9

    goto :goto_6

    .line 630
    :cond_e
    iget-object v7, p1, Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lcn/nubia/commonui/v7/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    goto :goto_4
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 920
    return-void
.end method

.method public onDependencyChanged(Lcn/nubia/commonui/v7/preference/Preference;Z)V
    .locals 1
    .param p1, "dependency"    # Lcn/nubia/commonui/v7/preference/Preference;
    .param p2, "disableDependent"    # Z

    .prologue
    .line 1420
    iget-boolean v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mDependencyMet:Z

    if-ne v0, p2, :cond_0

    .line 1421
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mDependencyMet:Z

    .line 1424
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v7/preference/Preference;->notifyDependencyChange(Z)V

    .line 1426
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->notifyChanged()V

    .line 1428
    :cond_0
    return-void

    .line 1421
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetached()V
    .locals 1

    .prologue
    .line 1301
    invoke-direct {p0}, Lcn/nubia/commonui/v7/preference/Preference;->unregisterDependency()V

    .line 1302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mWasDetached:Z

    .line 1303
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 398
    const/4 v0, 0x0

    return-object v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0
    .param p1, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 2031
    return-void
.end method

.method public onParentChanged(Lcn/nubia/commonui/v7/preference/Preference;Z)V
    .locals 1
    .param p1, "parent"    # Lcn/nubia/commonui/v7/preference/Preference;
    .param p2, "disableChild"    # Z

    .prologue
    .line 1437
    iget-boolean v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mParentDependencyMet:Z

    if-ne v0, p2, :cond_0

    .line 1438
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mParentDependencyMet:Z

    .line 1441
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v7/preference/Preference;->notifyDependencyChange(Z)V

    .line 1443
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->notifyChanged()V

    .line 1445
    :cond_0
    return-void

    .line 1438
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPrepareForRemoval()V
    .locals 0

    .prologue
    .line 1499
    invoke-direct {p0}, Lcn/nubia/commonui/v7/preference/Preference;->unregisterDependency()V

    .line 1500
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 2019
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mBaseMethodCalled:Z

    .line 2020
    sget-object v0, Lcn/nubia/commonui/v7/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 2021
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong state class -- expecting Preference State"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2023
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1968
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mBaseMethodCalled:Z

    .line 1969
    sget-object v0, Lcn/nubia/commonui/v7/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 1551
    return-void
.end method

.method public peekExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public performClick()V
    .locals 4

    .prologue
    .line 1120
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1143
    :cond_0
    :goto_0
    return-void

    .line 1124
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->onClick()V

    .line 1126
    iget-object v3, p0, Lcn/nubia/commonui/v7/preference/Preference;->mOnClickListener:Lcn/nubia/commonui/v7/preference/Preference$OnPreferenceClickListener;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcn/nubia/commonui/v7/preference/Preference;->mOnClickListener:Lcn/nubia/commonui/v7/preference/Preference$OnPreferenceClickListener;

    invoke-interface {v3, p0}, Lcn/nubia/commonui/v7/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Lcn/nubia/commonui/v7/preference/Preference;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1130
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->getPreferenceManager()Lcn/nubia/commonui/v7/preference/PreferenceManager;

    move-result-object v2

    .line 1131
    .local v2, "preferenceManager":Lcn/nubia/commonui/v7/preference/PreferenceManager;
    if-eqz v2, :cond_3

    .line 1133
    invoke-virtual {v2}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->getOnPreferenceTreeClickListener()Lcn/nubia/commonui/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;

    move-result-object v1

    .line 1134
    .local v1, "listener":Lcn/nubia/commonui/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;
    if-eqz v1, :cond_3

    invoke-interface {v1, p0}, Lcn/nubia/commonui/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Lcn/nubia/commonui/v7/preference/Preference;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1139
    .end local v1    # "listener":Lcn/nubia/commonui/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;
    :cond_3
    iget-object v3, p0, Lcn/nubia/commonui/v7/preference/Preference;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 1140
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1141
    .local v0, "context":Landroid/content/Context;
    iget-object v3, p0, Lcn/nubia/commonui/v7/preference/Preference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected performClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1109
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->performClick()V

    .line 1110
    return-void
.end method

.method protected persistBoolean(Z)Z
    .locals 5
    .param p1, "value"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1843
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->shouldPersist()Z

    move-result v4

    if-nez v4, :cond_1

    move v3, v2

    .line 1860
    :cond_0
    :goto_0
    return v3

    .line 1847
    :cond_1
    if-nez p1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p0, v2}, Lcn/nubia/commonui/v7/preference/Preference;->getPersistedBoolean(Z)Z

    move-result v2

    if-eq p1, v2, :cond_0

    .line 1852
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->getPreferenceDataStore()Lcn/nubia/commonui/v7/preference/PreferenceDataStore;

    move-result-object v0

    .line 1853
    .local v0, "dataStore":Lcn/nubia/commonui/v7/preference/PreferenceDataStore;
    if-eqz v0, :cond_3

    .line 1854
    iget-object v2, p0, Lcn/nubia/commonui/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Lcn/nubia/commonui/v7/preference/PreferenceDataStore;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1856
    :cond_3
    iget-object v2, p0, Lcn/nubia/commonui/v7/preference/Preference;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    invoke-virtual {v2}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1857
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcn/nubia/commonui/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1858
    invoke-direct {p0, v1}, Lcn/nubia/commonui/v7/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method protected persistFloat(F)Z
    .locals 4
    .param p1, "value"    # F

    .prologue
    const/4 v2, 0x1

    .line 1733
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->shouldPersist()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1734
    const/4 v2, 0x0

    .line 1750
    :cond_0
    :goto_0
    return v2

    .line 1737
    :cond_1
    const/high16 v3, 0x7fc00000    # Float.NaN

    invoke-virtual {p0, v3}, Lcn/nubia/commonui/v7/preference/Preference;->getPersistedFloat(F)F

    move-result v3

    cmpl-float v3, p1, v3

    if-eqz v3, :cond_0

    .line 1742
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->getPreferenceDataStore()Lcn/nubia/commonui/v7/preference/PreferenceDataStore;

    move-result-object v0

    .line 1743
    .local v0, "dataStore":Lcn/nubia/commonui/v7/preference/PreferenceDataStore;
    if-eqz v0, :cond_2

    .line 1744
    iget-object v3, p0, Lcn/nubia/commonui/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Lcn/nubia/commonui/v7/preference/PreferenceDataStore;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 1746
    :cond_2
    iget-object v3, p0, Lcn/nubia/commonui/v7/preference/Preference;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    invoke-virtual {v3}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1747
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcn/nubia/commonui/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1748
    invoke-direct {p0, v1}, Lcn/nubia/commonui/v7/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method protected persistInt(I)Z
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/4 v2, 0x1

    .line 1678
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->shouldPersist()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1679
    const/4 v2, 0x0

    .line 1695
    :cond_0
    :goto_0
    return v2

    .line 1682
    :cond_1
    xor-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Lcn/nubia/commonui/v7/preference/Preference;->getPersistedInt(I)I

    move-result v3

    if-eq p1, v3, :cond_0

    .line 1687
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->getPreferenceDataStore()Lcn/nubia/commonui/v7/preference/PreferenceDataStore;

    move-result-object v0

    .line 1688
    .local v0, "dataStore":Lcn/nubia/commonui/v7/preference/PreferenceDataStore;
    if-eqz v0, :cond_2

    .line 1689
    iget-object v3, p0, Lcn/nubia/commonui/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Lcn/nubia/commonui/v7/preference/PreferenceDataStore;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1691
    :cond_2
    iget-object v3, p0, Lcn/nubia/commonui/v7/preference/Preference;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    invoke-virtual {v3}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1692
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcn/nubia/commonui/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1693
    invoke-direct {p0, v1}, Lcn/nubia/commonui/v7/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method protected persistLong(J)Z
    .locals 7
    .param p1, "value"    # J

    .prologue
    const/4 v2, 0x1

    .line 1788
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->shouldPersist()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1789
    const/4 v2, 0x0

    .line 1805
    :cond_0
    :goto_0
    return v2

    .line 1792
    :cond_1
    const-wide/16 v4, -0x1

    xor-long/2addr v4, p1

    invoke-virtual {p0, v4, v5}, Lcn/nubia/commonui/v7/preference/Preference;->getPersistedLong(J)J

    move-result-wide v4

    cmp-long v3, p1, v4

    if-eqz v3, :cond_0

    .line 1797
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->getPreferenceDataStore()Lcn/nubia/commonui/v7/preference/PreferenceDataStore;

    move-result-object v0

    .line 1798
    .local v0, "dataStore":Lcn/nubia/commonui/v7/preference/PreferenceDataStore;
    if-eqz v0, :cond_2

    .line 1799
    iget-object v3, p0, Lcn/nubia/commonui/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v3, p1, p2}, Lcn/nubia/commonui/v7/preference/PreferenceDataStore;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 1801
    :cond_2
    iget-object v3, p0, Lcn/nubia/commonui/v7/preference/Preference;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    invoke-virtual {v3}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1802
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcn/nubia/commonui/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1803
    invoke-direct {p0, v1}, Lcn/nubia/commonui/v7/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 1570
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->shouldPersist()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1571
    const/4 v2, 0x0

    .line 1588
    :cond_0
    :goto_0
    return v2

    .line 1575
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcn/nubia/commonui/v7/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1580
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->getPreferenceDataStore()Lcn/nubia/commonui/v7/preference/PreferenceDataStore;

    move-result-object v0

    .line 1581
    .local v0, "dataStore":Lcn/nubia/commonui/v7/preference/PreferenceDataStore;
    if-eqz v0, :cond_2

    .line 1582
    iget-object v3, p0, Lcn/nubia/commonui/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Lcn/nubia/commonui/v7/preference/PreferenceDataStore;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1584
    :cond_2
    iget-object v3, p0, Lcn/nubia/commonui/v7/preference/Preference;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    invoke-virtual {v3}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1585
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcn/nubia/commonui/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1586
    invoke-direct {p0, v1}, Lcn/nubia/commonui/v7/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method public persistStringSet(Ljava/util/Set;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 1624
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->shouldPersist()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1625
    const/4 v2, 0x0

    .line 1642
    :cond_0
    :goto_0
    return v2

    .line 1629
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcn/nubia/commonui/v7/preference/Preference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1634
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->getPreferenceDataStore()Lcn/nubia/commonui/v7/preference/PreferenceDataStore;

    move-result-object v0

    .line 1635
    .local v0, "dataStore":Lcn/nubia/commonui/v7/preference/PreferenceDataStore;
    if-eqz v0, :cond_2

    .line 1636
    iget-object v3, p0, Lcn/nubia/commonui/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Lcn/nubia/commonui/v7/preference/PreferenceDataStore;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    .line 1638
    :cond_2
    iget-object v3, p0, Lcn/nubia/commonui/v7/preference/Preference;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    invoke-virtual {v3}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1639
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcn/nubia/commonui/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1640
    invoke-direct {p0, v1}, Lcn/nubia/commonui/v7/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method requireKey()V
    .locals 2

    .prologue
    .line 953
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 954
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preference does not have a key assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 957
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mRequiresKey:Z

    .line 958
    return-void
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 1981
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/v7/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1982
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 1928
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/v7/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 1929
    return-void
.end method

.method public setAllowDividerBelow(Z)V
    .locals 0
    .param p1, "allDividerBelow"    # Z

    .prologue
    .line 529
    iput-boolean p1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mAllowDividerBelow:Z

    .line 530
    return-void
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 1510
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    .line 1511
    return-void
.end method

.method public setDependency(Ljava/lang/String;)V
    .locals 0
    .param p1, "dependencyKey"    # Ljava/lang/String;

    .prologue
    .line 1465
    invoke-direct {p0}, Lcn/nubia/commonui/v7/preference/Preference;->unregisterDependency()V

    .line 1468
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 1469
    invoke-direct {p0}, Lcn/nubia/commonui/v7/preference/Preference;->registerDependency()V

    .line 1470
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 813
    iget-boolean v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 814
    iput-boolean p1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mEnabled:Z

    .line 817
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v7/preference/Preference;->notifyDependencyChange(Z)V

    .line 819
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->notifyChanged()V

    .line 821
    :cond_0
    return-void
.end method

.method public setFragment(Ljava/lang/String;)V
    .locals 0
    .param p1, "fragment"    # Ljava/lang/String;

    .prologue
    .line 426
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mFragment:Ljava/lang/String;

    .line 427
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "iconResId"    # I

    .prologue
    .line 756
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 757
    iput p1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mIconResId:I

    .line 758
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 742
    if-nez p1, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 743
    :cond_1
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 744
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mIconResId:I

    .line 745
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->notifyChanged()V

    .line 747
    :cond_2
    return-void
.end method

.method public setIconSpaceReserved(Z)V
    .locals 0
    .param p1, "iconSpaceReserved"    # Z

    .prologue
    .line 1037
    iput-boolean p1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mIconSpaceReserved:Z

    .line 1038
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->notifyChanged()V

    .line 1039
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 408
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mIntent:Landroid/content/Intent;

    .line 409
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 929
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mKey:Ljava/lang/String;

    .line 931
    iget-boolean v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mRequiresKey:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->hasKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 932
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->requireKey()V

    .line 934
    :cond_0
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 0
    .param p1, "layoutResId"    # I

    .prologue
    .line 513
    iput p1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mLayoutResId:I

    .line 514
    return-void
.end method

.method final setOnPreferenceChangeInternalListener(Lcn/nubia/commonui/v7/preference/Preference$OnPreferenceChangeInternalListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/commonui/v7/preference/Preference$OnPreferenceChangeInternalListener;

    .prologue
    .line 1209
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mListener:Lcn/nubia/commonui/v7/preference/Preference$OnPreferenceChangeInternalListener;

    .line 1210
    return-void
.end method

.method public setOnPreferenceChangeListener(Lcn/nubia/commonui/v7/preference/Preference$OnPreferenceChangeListener;)V
    .locals 0
    .param p1, "onPreferenceChangeListener"    # Lcn/nubia/commonui/v7/preference/Preference$OnPreferenceChangeListener;

    .prologue
    .line 1073
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mOnChangeListener:Lcn/nubia/commonui/v7/preference/Preference$OnPreferenceChangeListener;

    .line 1074
    return-void
.end method

.method public setOnPreferenceClickListener(Lcn/nubia/commonui/v7/preference/Preference$OnPreferenceClickListener;)V
    .locals 0
    .param p1, "onPreferenceClickListener"    # Lcn/nubia/commonui/v7/preference/Preference$OnPreferenceClickListener;

    .prologue
    .line 1092
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mOnClickListener:Lcn/nubia/commonui/v7/preference/Preference$OnPreferenceClickListener;

    .line 1093
    return-void
.end method

.method public setOrder(I)V
    .locals 1
    .param p1, "order"    # I

    .prologue
    .line 669
    iget v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mOrder:I

    if-eq p1, v0, :cond_0

    .line 670
    iput p1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mOrder:I

    .line 673
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->notifyHierarchyChanged()V

    .line 675
    :cond_0
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0
    .param p1, "persistent"    # Z

    .prologue
    .line 1000
    iput-boolean p1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mPersistent:Z

    .line 1001
    return-void
.end method

.method public setPreferenceDataStore(Lcn/nubia/commonui/v7/preference/PreferenceDataStore;)V
    .locals 0
    .param p1, "dataStore"    # Lcn/nubia/commonui/v7/preference/PreferenceDataStore;

    .prologue
    .line 450
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mPreferenceDataStore:Lcn/nubia/commonui/v7/preference/PreferenceDataStore;

    .line 451
    return-void
.end method

.method public setSelectable(Z)V
    .locals 1
    .param p1, "selectable"    # Z

    .prologue
    .line 838
    iget-boolean v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mSelectable:Z

    if-eq v0, p1, :cond_0

    .line 839
    iput-boolean p1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mSelectable:Z

    .line 840
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->notifyChanged()V

    .line 842
    :cond_0
    return-void
.end method

.method public setShouldDisableView(Z)V
    .locals 0
    .param p1, "shouldDisableView"    # Z

    .prologue
    .line 865
    iput-boolean p1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mShouldDisableView:Z

    .line 866
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->notifyChanged()V

    .line 867
    return-void
.end method

.method public setSingleLineTitle(Z)V
    .locals 0
    .param p1, "singleLineTitle"    # Z

    .prologue
    .line 1012
    iput-boolean p1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mSingleLineTitle:Z

    .line 1013
    return-void
.end method

.method public setSummary(I)V
    .locals 1
    .param p1, "summaryResId"    # I

    .prologue
    .line 803
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 804
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 789
    if-nez p1, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 790
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 791
    :cond_1
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 792
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->notifyChanged()V

    .line 794
    :cond_2
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleResId"    # I

    .prologue
    .line 720
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 721
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 707
    if-nez p1, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 708
    :cond_1
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 709
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->notifyChanged()V

    .line 711
    :cond_2
    return-void
.end method

.method public setViewId(I)V
    .locals 0
    .param p1, "viewId"    # I

    .prologue
    .line 695
    iput p1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mViewId:I

    .line 696
    return-void
.end method

.method public final setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 886
    iget-boolean v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 887
    iput-boolean p1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mVisible:Z

    .line 888
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mListener:Lcn/nubia/commonui/v7/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mListener:Lcn/nubia/commonui/v7/preference/Preference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Lcn/nubia/commonui/v7/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceVisibilityChange(Lcn/nubia/commonui/v7/preference/Preference;)V

    .line 892
    :cond_0
    return-void
.end method

.method public setWidgetLayoutResource(I)V
    .locals 0
    .param p1, "widgetLayoutResId"    # I

    .prologue
    .line 545
    iput p1, p0, Lcn/nubia/commonui/v7/preference/Preference;->mWidgetLayoutResId:I

    .line 546
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 1454
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldPersist()Z
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mPreferenceManager:Lcn/nubia/commonui/v7/preference/PreferenceManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1888
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/Preference;->getFilterableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final wasDetached()Z
    .locals 1

    .prologue
    .line 1311
    iget-boolean v0, p0, Lcn/nubia/commonui/v7/preference/Preference;->mWasDetached:Z

    return v0
.end method
