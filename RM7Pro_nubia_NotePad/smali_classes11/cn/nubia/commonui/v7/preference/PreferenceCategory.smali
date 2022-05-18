.class public Lcn/nubia/commonui/v7/preference/PreferenceCategory;
.super Lcn/nubia/commonui/v7/preference/PreferenceGroup;
.source "PreferenceCategory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceCategory"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    sget v0, Lcn/nubia/commonui/R$attr;->preferenceCategoryStyle:I

    const v1, 0x101008c

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/commonui/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/commonui/v7/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 8
    .param p1, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->onInitializeAccessibilityNodeInfo(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 82
    invoke-virtual {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getCollectionItemInfo()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v6

    .line 83
    .local v6, "existingItemInfo":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
    if-nez v6, :cond_0

    .line 95
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual {v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->getRowIndex()I

    move-result v0

    .line 89
    invoke-virtual {v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->getRowSpan()I

    move-result v1

    .line 90
    invoke-virtual {v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->getColumnIndex()I

    move-result v2

    .line 91
    invoke-virtual {v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->getColumnSpan()I

    move-result v3

    const/4 v4, 0x1

    .line 93
    invoke-virtual {v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->isSelected()Z

    move-result v5

    .line 87
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v7

    .line 94
    .local v7, "newItemInfo":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
    invoke-virtual {p1, v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onPrepareAddPreference(Lcn/nubia/commonui/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Lcn/nubia/commonui/v7/preference/Preference;

    .prologue
    .line 60
    instance-of v0, p1, Lcn/nubia/commonui/v7/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a PreferenceCategory directly to a PreferenceCategory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->onPrepareAddPreference(Lcn/nubia/commonui/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
