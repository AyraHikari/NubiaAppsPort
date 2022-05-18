.class public abstract Lcn/nubia/commonui/v7/preference/PreferenceGroup;
.super Lcn/nubia/commonui/v7/preference/Preference;
.source "PreferenceGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/v7/preference/PreferenceGroup$PreferencePositionCallback;
    }
.end annotation


# instance fields
.field private mAttachedToHierarchy:Z

.field private final mClearRecycleCacheRunnable:Ljava/lang/Runnable;

.field private mCurrentPreferenceOrder:I

.field private final mHandler:Landroid/os/Handler;

.field private final mIdRecycleCache:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mOrderingAsAdded:Z

.field private mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/commonui/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/v7/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/commonui/v7/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/commonui/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 58
    iput-boolean v3, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 60
    iput v1, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    .line 62
    iput-boolean v1, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->mAttachedToHierarchy:Z

    .line 64
    new-instance v1, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v1, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->mIdRecycleCache:Landroid/support/v4/util/SimpleArrayMap;

    .line 65
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->mHandler:Landroid/os/Handler;

    .line 66
    new-instance v1, Lcn/nubia/commonui/v7/preference/PreferenceGroup$1;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/v7/preference/PreferenceGroup$1;-><init>(Lcn/nubia/commonui/v7/preference/PreferenceGroup;)V

    iput-object v1, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->mClearRecycleCacheRunnable:Ljava/lang/Runnable;

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    .line 80
    sget-object v1, Lcn/nubia/commonui/R$styleable;->PreferenceGroup:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 83
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcn/nubia/commonui/R$styleable;->PreferenceGroup_orderingFromXml:I

    sget v2, Lcn/nubia/commonui/R$styleable;->PreferenceGroup_orderingFromXml:I

    .line 84
    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 87
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/v7/preference/PreferenceGroup;)Landroid/support/v4/util/SimpleArrayMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/v7/preference/PreferenceGroup;

    .prologue
    .line 50
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->mIdRecycleCache:Landroid/support/v4/util/SimpleArrayMap;

    return-object v0
.end method

.method private removePreferenceInt(Lcn/nubia/commonui/v7/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Lcn/nubia/commonui/v7/preference/Preference;

    .prologue
    .line 220
    monitor-enter p0

    .line 221
    :try_start_0
    invoke-virtual {p1}, Lcn/nubia/commonui/v7/preference/Preference;->onPrepareForRemoval()V

    .line 222
    invoke-virtual {p1}, Lcn/nubia/commonui/v7/preference/Preference;->getParent()Lcn/nubia/commonui/v7/preference/PreferenceGroup;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 223
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcn/nubia/commonui/v7/preference/Preference;->assignParent(Lcn/nubia/commonui/v7/preference/PreferenceGroup;)V

    .line 225
    :cond_0
    iget-object v2, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 226
    .local v1, "success":Z
    if-eqz v1, :cond_2

    .line 238
    invoke-virtual {p1}, Lcn/nubia/commonui/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 240
    iget-object v2, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->mIdRecycleCache:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {p1}, Lcn/nubia/commonui/v7/preference/Preference;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v2, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->mClearRecycleCacheRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 242
    iget-object v2, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->mClearRecycleCacheRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 244
    :cond_1
    iget-boolean v2, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->mAttachedToHierarchy:Z

    if-eqz v2, :cond_2

    .line 245
    invoke-virtual {p1}, Lcn/nubia/commonui/v7/preference/Preference;->onDetached()V

    .line 249
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    monitor-exit p0

    return v1

    .line 250
    .end local v1    # "success":Z
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public addItemFromInflater(Lcn/nubia/commonui/v7/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Lcn/nubia/commonui/v7/preference/Preference;

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->addPreference(Lcn/nubia/commonui/v7/preference/Preference;)Z

    .line 128
    return-void
.end method

.method public addPreference(Lcn/nubia/commonui/v7/preference/Preference;)Z
    .locals 8
    .param p1, "preference"    # Lcn/nubia/commonui/v7/preference/Preference;

    .prologue
    const/4 v6, 0x1

    .line 156
    iget-object v5, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    .line 204
    :goto_0
    return v5

    .line 161
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/commonui/v7/preference/Preference;->getOrder()I

    move-result v5

    const v7, 0x7fffffff

    if-ne v5, v7, :cond_2

    .line 162
    iget-boolean v5, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->mOrderingAsAdded:Z

    if-eqz v5, :cond_1

    .line 163
    iget v5, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    invoke-virtual {p1, v5}, Lcn/nubia/commonui/v7/preference/Preference;->setOrder(I)V

    .line 166
    :cond_1
    instance-of v5, p1, Lcn/nubia/commonui/v7/preference/PreferenceGroup;

    if-eqz v5, :cond_2

    move-object v5, p1

    .line 169
    check-cast v5, Lcn/nubia/commonui/v7/preference/PreferenceGroup;

    iget-boolean v7, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->mOrderingAsAdded:Z

    invoke-virtual {v5, v7}, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 173
    :cond_2
    iget-object v5, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-static {v5, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v2

    .line 174
    .local v2, "insertionIndex":I
    if-gez v2, :cond_3

    .line 175
    mul-int/lit8 v5, v2, -0x1

    add-int/lit8 v2, v5, -0x1

    .line 178
    :cond_3
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->onPrepareAddPreference(Lcn/nubia/commonui/v7/preference/Preference;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 179
    const/4 v5, 0x0

    goto :goto_0

    .line 182
    :cond_4
    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v5, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v5, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 184
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->getPreferenceManager()Lcn/nubia/commonui/v7/preference/PreferenceManager;

    move-result-object v4

    .line 187
    .local v4, "preferenceManager":Lcn/nubia/commonui/v7/preference/PreferenceManager;
    invoke-virtual {p1}, Lcn/nubia/commonui/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, "key":Ljava/lang/String;
    if-eqz v3, :cond_6

    iget-object v5, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->mIdRecycleCache:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v5, v3}, Landroid/support/v4/util/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 190
    iget-object v5, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->mIdRecycleCache:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v5, v3}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 191
    .local v0, "id":J
    iget-object v5, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->mIdRecycleCache:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v5, v3}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :goto_1
    invoke-virtual {p1, v4, v0, v1}, Lcn/nubia/commonui/v7/preference/Preference;->onAttachedToHierarchy(Lcn/nubia/commonui/v7/preference/PreferenceManager;J)V

    .line 196
    invoke-virtual {p1, p0}, Lcn/nubia/commonui/v7/preference/Preference;->assignParent(Lcn/nubia/commonui/v7/preference/PreferenceGroup;)V

    .line 198
    iget-boolean v5, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->mAttachedToHierarchy:Z

    if-eqz v5, :cond_5

    .line 199
    invoke-virtual {p1}, Lcn/nubia/commonui/v7/preference/Preference;->onAttached()V

    .line 202
    :cond_5
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->notifyHierarchyChanged()V

    move v5, v6

    .line 204
    goto :goto_0

    .line 184
    .end local v0    # "id":J
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "preferenceManager":Lcn/nubia/commonui/v7/preference/PreferenceManager;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 193
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "preferenceManager":Lcn/nubia/commonui/v7/preference/PreferenceManager;
    :cond_6
    invoke-virtual {v4}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->getNextId()J

    move-result-wide v0

    .restart local v0    # "id":J
    goto :goto_1
.end method

.method protected dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 395
    invoke-super {p0, p1}, Lcn/nubia/commonui/v7/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 398
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 399
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 400
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->getPreference(I)Lcn/nubia/commonui/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcn/nubia/commonui/v7/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 399
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    :cond_0
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 384
    invoke-super {p0, p1}, Lcn/nubia/commonui/v7/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 387
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 388
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 389
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->getPreference(I)Lcn/nubia/commonui/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcn/nubia/commonui/v7/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 388
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    :cond_0
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Lcn/nubia/commonui/v7/preference/Preference;
    .locals 6
    .param p1, "key"    # Ljava/lang/CharSequence;

    .prologue
    .line 291
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 312
    .end local p0    # "this":Lcn/nubia/commonui/v7/preference/PreferenceGroup;
    :goto_0
    return-object p0

    .line 294
    .restart local p0    # "this":Lcn/nubia/commonui/v7/preference/PreferenceGroup;
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    .line 295
    .local v3, "preferenceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 296
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->getPreference(I)Lcn/nubia/commonui/v7/preference/Preference;

    move-result-object v2

    .line 297
    .local v2, "preference":Lcn/nubia/commonui/v7/preference/Preference;
    invoke-virtual {v2}, Lcn/nubia/commonui/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "curKey":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object p0, v2

    .line 300
    goto :goto_0

    .line 303
    :cond_1
    instance-of v5, v2, Lcn/nubia/commonui/v7/preference/PreferenceGroup;

    if-eqz v5, :cond_2

    .line 304
    check-cast v2, Lcn/nubia/commonui/v7/preference/PreferenceGroup;

    .line 305
    .end local v2    # "preference":Lcn/nubia/commonui/v7/preference/Preference;
    invoke-virtual {v2, p1}, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcn/nubia/commonui/v7/preference/Preference;

    move-result-object v4

    .line 306
    .local v4, "returnedPreference":Lcn/nubia/commonui/v7/preference/Preference;
    if-eqz v4, :cond_2

    move-object p0, v4

    .line 307
    goto :goto_0

    .line 295
    .end local v4    # "returnedPreference":Lcn/nubia/commonui/v7/preference/Preference;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 312
    .end local v0    # "curKey":Ljava/lang/String;
    :cond_3
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public getPreference(I)Lcn/nubia/commonui/v7/preference/Preference;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/v7/preference/Preference;

    return-object v0
.end method

.method public getPreferenceCount()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isAttached()Z
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->mAttachedToHierarchy:Z

    return v0
.end method

.method protected isOnSameScreenAsChildren()Z
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x1

    return v0
.end method

.method public isOrderingAsAdded()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->mOrderingAsAdded:Z

    return v0
.end method

.method public notifyDependencyChange(Z)V
    .locals 3
    .param p1, "disableDependents"    # Z

    .prologue
    .line 366
    invoke-super {p0, p1}, Lcn/nubia/commonui/v7/preference/Preference;->notifyDependencyChange(Z)V

    .line 370
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 371
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 372
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->getPreference(I)Lcn/nubia/commonui/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcn/nubia/commonui/v7/preference/Preference;->onParentChanged(Lcn/nubia/commonui/v7/preference/Preference;Z)V

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 374
    :cond_0
    return-void
.end method

.method public onAttached()V
    .locals 3

    .prologue
    .line 337
    invoke-super {p0}, Lcn/nubia/commonui/v7/preference/Preference;->onAttached()V

    .line 341
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->mAttachedToHierarchy:Z

    .line 344
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 345
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 346
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->getPreference(I)Lcn/nubia/commonui/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/commonui/v7/preference/Preference;->onAttached()V

    .line 345
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 348
    :cond_0
    return-void
.end method

.method public onDetached()V
    .locals 3

    .prologue
    .line 352
    invoke-super {p0}, Lcn/nubia/commonui/v7/preference/Preference;->onDetached()V

    .line 355
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->mAttachedToHierarchy:Z

    .line 358
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 359
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 360
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->getPreference(I)Lcn/nubia/commonui/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/commonui/v7/preference/Preference;->onDetached()V

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    :cond_0
    return-void
.end method

.method protected onPrepareAddPreference(Lcn/nubia/commonui/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Lcn/nubia/commonui/v7/preference/Preference;

    .prologue
    .line 273
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcn/nubia/commonui/v7/preference/Preference;->onParentChanged(Lcn/nubia/commonui/v7/preference/Preference;Z)V

    .line 274
    const/4 v0, 0x1

    return v0
.end method

.method public removeAll()V
    .locals 3

    .prologue
    .line 257
    monitor-enter p0

    .line 258
    :try_start_0
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    .line 259
    .local v1, "preferenceList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/commonui/v7/preference/Preference;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 260
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/commonui/v7/preference/Preference;

    invoke-direct {p0, v2}, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->removePreferenceInt(Lcn/nubia/commonui/v7/preference/Preference;)Z

    .line 259
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 262
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->notifyHierarchyChanged()V

    .line 264
    return-void

    .line 262
    .end local v0    # "i":I
    .end local v1    # "preferenceList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/commonui/v7/preference/Preference;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public removePreference(Lcn/nubia/commonui/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Lcn/nubia/commonui/v7/preference/Preference;

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->removePreferenceInt(Lcn/nubia/commonui/v7/preference/Preference;)Z

    move-result v0

    .line 215
    .local v0, "returnValue":Z
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->notifyHierarchyChanged()V

    .line 216
    return v0
.end method

.method public setOrderingAsAdded(Z)V
    .locals 0
    .param p1, "orderingAsAdded"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 111
    return-void
.end method

.method sortPreferences()V
    .locals 1

    .prologue
    .line 377
    monitor-enter p0

    .line 378
    :try_start_0
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 379
    monitor-exit p0

    .line 380
    return-void

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
