.class public Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Lcn/nubia/commonui/v7/preference/Preference$OnPreferenceChangeInternalListener;
.implements Lcn/nubia/commonui/v7/preference/PreferenceGroup$PreferencePositionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;",
        ">;",
        "Lcn/nubia/commonui/v7/preference/Preference$OnPreferenceChangeInternalListener;",
        "Lcn/nubia/commonui/v7/preference/PreferenceGroup$PreferencePositionCallback;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceGroupAdapter"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPreferenceGroup:Lcn/nubia/commonui/v7/preference/PreferenceGroup;

.field private mPreferenceLayouts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;",
            ">;"
        }
    .end annotation
.end field

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

.field private mPreferenceListInternal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/commonui/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncRunnable:Ljava/lang/Runnable;

.field private mTempPreferenceLayout:Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;


# direct methods
.method public constructor <init>(Lcn/nubia/commonui/v7/preference/PreferenceGroup;)V
    .locals 1
    .param p1, "preferenceGroup"    # Lcn/nubia/commonui/v7/preference/PreferenceGroup;

    .prologue
    .line 120
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 75
    new-instance v0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {v0}, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    .line 79
    new-instance v0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$1;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$1;-><init>(Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;)V

    iput-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    .line 121
    iput-object p1, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mPreferenceGroup:Lcn/nubia/commonui/v7/preference/PreferenceGroup;

    .line 123
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mPreferenceGroup:Lcn/nubia/commonui/v7/preference/PreferenceGroup;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->setOnPreferenceChangeInternalListener(Lcn/nubia/commonui/v7/preference/Preference$OnPreferenceChangeInternalListener;)V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mPreferenceListInternal:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    .line 129
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mPreferenceGroup:Lcn/nubia/commonui/v7/preference/PreferenceGroup;

    instance-of v0, v0, Lcn/nubia/commonui/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mPreferenceGroup:Lcn/nubia/commonui/v7/preference/PreferenceGroup;

    check-cast v0, Lcn/nubia/commonui/v7/preference/PreferenceScreen;

    invoke-virtual {v0}, Lcn/nubia/commonui/v7/preference/PreferenceScreen;->shouldUseGeneratedIds()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->setHasStableIds(Z)V

    .line 135
    :goto_0
    invoke-direct {p0}, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->syncMyPreferences()V

    .line 136
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->setHasStableIds(Z)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;

    .prologue
    .line 45
    invoke-direct {p0}, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->syncMyPreferences()V

    return-void
.end method

.method private addPreferenceClassName(Lcn/nubia/commonui/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Lcn/nubia/commonui/v7/preference/Preference;

    .prologue
    .line 236
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->createPreferenceLayout(Lcn/nubia/commonui/v7/preference/Preference;Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    move-result-object v0

    .line 237
    .local v0, "pl":Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_0
    return-void
.end method

.method private createPreferenceLayout(Lcn/nubia/commonui/v7/preference/Preference;Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;
    .locals 2
    .param p1, "preference"    # Lcn/nubia/commonui/v7/preference/Preference;
    .param p2, "in"    # Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    .prologue
    .line 228
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 229
    .local v0, "pl":Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->access$102(Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;Ljava/lang/String;)Ljava/lang/String;

    .line 230
    invoke-virtual {p1}, Lcn/nubia/commonui/v7/preference/Preference;->getLayoutResource()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->access$202(Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;I)I

    .line 231
    invoke-virtual {p1}, Lcn/nubia/commonui/v7/preference/Preference;->getWidgetLayoutResource()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->access$302(Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;I)I

    .line 232
    return-object v0

    .line 228
    .end local v0    # "pl":Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;
    :cond_0
    new-instance v0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {v0}, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>()V

    goto :goto_0
.end method

.method private flattenPreferenceGroup(Ljava/util/List;Lcn/nubia/commonui/v7/preference/PreferenceGroup;)V
    .locals 5
    .param p2, "group"    # Lcn/nubia/commonui/v7/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/commonui/v7/preference/Preference;",
            ">;",
            "Lcn/nubia/commonui/v7/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, "preferences":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/commonui/v7/preference/Preference;>;"
    invoke-virtual {p2}, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->sortPreferences()V

    .line 203
    invoke-virtual {p2}, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 204
    .local v0, "groupSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 205
    invoke-virtual {p2, v1}, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->getPreference(I)Lcn/nubia/commonui/v7/preference/Preference;

    move-result-object v2

    .line 207
    .local v2, "preference":Lcn/nubia/commonui/v7/preference/Preference;
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-direct {p0, v2}, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->addPreferenceClassName(Lcn/nubia/commonui/v7/preference/Preference;)V

    .line 211
    instance-of v4, v2, Lcn/nubia/commonui/v7/preference/PreferenceGroup;

    if-eqz v4, :cond_0

    move-object v3, v2

    .line 212
    check-cast v3, Lcn/nubia/commonui/v7/preference/PreferenceGroup;

    .line 213
    .local v3, "preferenceAsGroup":Lcn/nubia/commonui/v7/preference/PreferenceGroup;
    invoke-virtual {v3}, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->isOnSameScreenAsChildren()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 214
    invoke-direct {p0, p1, v3}, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Lcn/nubia/commonui/v7/preference/PreferenceGroup;)V

    .line 218
    .end local v3    # "preferenceAsGroup":Lcn/nubia/commonui/v7/preference/PreferenceGroup;
    :cond_0
    invoke-virtual {v2, p0}, Lcn/nubia/commonui/v7/preference/Preference;->setOnPreferenceChangeInternalListener(Lcn/nubia/commonui/v7/preference/Preference$OnPreferenceChangeInternalListener;)V

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    .end local v2    # "preference":Lcn/nubia/commonui/v7/preference/Preference;
    :cond_1
    return-void
.end method

.method private syncMyPreferences()V
    .locals 9

    .prologue
    .line 139
    iget-object v7, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mPreferenceListInternal:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/commonui/v7/preference/Preference;

    .line 142
    .local v3, "preference":Lcn/nubia/commonui/v7/preference/Preference;
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lcn/nubia/commonui/v7/preference/Preference;->setOnPreferenceChangeInternalListener(Lcn/nubia/commonui/v7/preference/Preference$OnPreferenceChangeInternalListener;)V

    goto :goto_0

    .line 144
    .end local v3    # "preference":Lcn/nubia/commonui/v7/preference/Preference;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v7, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mPreferenceListInternal:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    .local v1, "fullPreferenceList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/commonui/v7/preference/Preference;>;"
    iget-object v7, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mPreferenceGroup:Lcn/nubia/commonui/v7/preference/PreferenceGroup;

    invoke-direct {p0, v1, v7}, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Lcn/nubia/commonui/v7/preference/PreferenceGroup;)V

    .line 147
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 149
    .local v6, "visiblePreferenceList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/commonui/v7/preference/Preference;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/commonui/v7/preference/Preference;

    .line 150
    .restart local v3    # "preference":Lcn/nubia/commonui/v7/preference/Preference;
    invoke-virtual {v3}, Lcn/nubia/commonui/v7/preference/Preference;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 151
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 155
    .end local v3    # "preference":Lcn/nubia/commonui/v7/preference/Preference;
    :cond_2
    iget-object v2, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 156
    .local v2, "oldVisibleList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/commonui/v7/preference/Preference;>;"
    iput-object v6, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 157
    iput-object v1, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mPreferenceListInternal:Ljava/util/List;

    .line 159
    iget-object v7, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mPreferenceGroup:Lcn/nubia/commonui/v7/preference/PreferenceGroup;

    invoke-virtual {v7}, Lcn/nubia/commonui/v7/preference/PreferenceGroup;->getPreferenceManager()Lcn/nubia/commonui/v7/preference/PreferenceManager;

    move-result-object v4

    .line 160
    .local v4, "preferenceManager":Lcn/nubia/commonui/v7/preference/PreferenceManager;
    if-eqz v4, :cond_3

    .line 161
    invoke-virtual {v4}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->getPreferenceComparisonCallback()Lcn/nubia/commonui/v7/preference/PreferenceManager$PreferenceComparisonCallback;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 163
    invoke-virtual {v4}, Lcn/nubia/commonui/v7/preference/PreferenceManager;->getPreferenceComparisonCallback()Lcn/nubia/commonui/v7/preference/PreferenceManager$PreferenceComparisonCallback;

    move-result-object v0

    .line 164
    .local v0, "comparisonCallback":Lcn/nubia/commonui/v7/preference/PreferenceManager$PreferenceComparisonCallback;
    new-instance v7, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$2;

    invoke-direct {v7, p0, v2, v6, v0}, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$2;-><init>(Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;Ljava/util/List;Ljava/util/List;Lcn/nubia/commonui/v7/preference/PreferenceManager$PreferenceComparisonCallback;)V

    invoke-static {v7}, Landroid/support/v7/util/DiffUtil;->calculateDiff(Landroid/support/v7/util/DiffUtil$Callback;)Landroid/support/v7/util/DiffUtil$DiffResult;

    move-result-object v5

    .line 190
    .local v5, "result":Landroid/support/v7/util/DiffUtil$DiffResult;
    invoke-virtual {v5, p0}, Landroid/support/v7/util/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 195
    .end local v0    # "comparisonCallback":Lcn/nubia/commonui/v7/preference/PreferenceManager$PreferenceComparisonCallback;
    .end local v5    # "result":Landroid/support/v7/util/DiffUtil$DiffResult;
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/commonui/v7/preference/Preference;

    .line 196
    .restart local v3    # "preference":Lcn/nubia/commonui/v7/preference/Preference;
    invoke-virtual {v3}, Lcn/nubia/commonui/v7/preference/Preference;->clearWasDetached()V

    goto :goto_3

    .line 192
    .end local v3    # "preference":Lcn/nubia/commonui/v7/preference/Preference;
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 198
    :cond_4
    return-void
.end method


# virtual methods
.method public getItem(I)Lcn/nubia/commonui/v7/preference/Preference;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 248
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 249
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/v7/preference/Preference;

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 254
    invoke-virtual {p0}, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    const-wide/16 v0, -0x1

    .line 257
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->getItem(I)Lcn/nubia/commonui/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/v7/preference/Preference;->getId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 315
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->getItem(I)Lcn/nubia/commonui/v7/preference/Preference;

    move-result-object v0

    .line 317
    .local v0, "preference":Lcn/nubia/commonui/v7/preference/Preference;
    iget-object v3, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {p0, v0, v3}, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->createPreferenceLayout(Lcn/nubia/commonui/v7/preference/Preference;Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 319
    iget-object v3, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    iget-object v4, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 320
    .local v1, "viewType":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 325
    .end local v1    # "viewType":I
    .local v2, "viewType":I
    :goto_0
    return v2

    .line 323
    .end local v2    # "viewType":I
    .restart local v1    # "viewType":I
    :cond_0
    iget-object v3, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 324
    iget-object v3, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    new-instance v4, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    iget-object v5, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {v4, v5}, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>(Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v1

    .line 325
    .end local v1    # "viewType":I
    .restart local v2    # "viewType":I
    goto :goto_0
.end method

.method public getPreferenceAdapterPosition(Lcn/nubia/commonui/v7/preference/Preference;)I
    .locals 4
    .param p1, "preference"    # Lcn/nubia/commonui/v7/preference/Preference;

    .prologue
    .line 380
    iget-object v3, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 381
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 382
    iget-object v3, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/v7/preference/Preference;

    .line 383
    .local v0, "candidate":Lcn/nubia/commonui/v7/preference/Preference;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 387
    .end local v0    # "candidate":Lcn/nubia/commonui/v7/preference/Preference;
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 381
    .restart local v0    # "candidate":Lcn/nubia/commonui/v7/preference/Preference;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    .end local v0    # "candidate":Lcn/nubia/commonui/v7/preference/Preference;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getPreferenceAdapterPosition(Ljava/lang/String;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 368
    iget-object v3, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 369
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 370
    iget-object v3, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/v7/preference/Preference;

    .line 371
    .local v0, "candidate":Lcn/nubia/commonui/v7/preference/Preference;
    invoke-virtual {v0}, Lcn/nubia/commonui/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 375
    .end local v0    # "candidate":Lcn/nubia/commonui/v7/preference/Preference;
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 369
    .restart local v0    # "candidate":Lcn/nubia/commonui/v7/preference/Preference;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 375
    .end local v0    # "candidate":Lcn/nubia/commonui/v7/preference/Preference;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 45
    check-cast p1, Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->onBindViewHolder(Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 362
    invoke-virtual {p0, p2}, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->getItem(I)Lcn/nubia/commonui/v7/preference/Preference;

    move-result-object v0

    .line 363
    .local v0, "preference":Lcn/nubia/commonui/v7/preference/Preference;
    invoke-virtual {v0, p1}, Lcn/nubia/commonui/v7/preference/Preference;->onBindViewHolder(Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;)V

    .line 364
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;
    .locals 9
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 331
    iget-object v6, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 332
    .local v3, "pl":Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 334
    .local v2, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    sget-object v8, Lcn/nubia/commonui/R$styleable;->BackgroundStyle:[I

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 335
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v6, Lcn/nubia/commonui/R$styleable;->BackgroundStyle_android_selectableItemBackground:I

    .line 336
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 337
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 338
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x1080062

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 341
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 343
    invoke-static {v3}, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->access$200(Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v2, v6, p1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 344
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_1

    .line 345
    invoke-static {v4, v1}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 348
    :cond_1
    const v6, 0x1020018

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 349
    .local v5, "widgetFrame":Landroid/view/ViewGroup;
    if-eqz v5, :cond_2

    .line 350
    invoke-static {v3}, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->access$300(Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)I

    move-result v6

    if-eqz v6, :cond_3

    .line 351
    invoke-static {v3}, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;->access$300(Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter$PreferenceLayout;)I

    move-result v6

    invoke-virtual {v2, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 357
    :cond_2
    :goto_0
    new-instance v6, Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;

    invoke-direct {v6, v4}, Lcn/nubia/commonui/v7/preference/PreferenceViewHolder;-><init>(Landroid/view/View;)V

    return-object v6

    .line 353
    :cond_3
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public onPreferenceChange(Lcn/nubia/commonui/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Lcn/nubia/commonui/v7/preference/Preference;

    .prologue
    .line 262
    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 264
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 266
    invoke-virtual {p0, v0, p1}, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 268
    :cond_0
    return-void
.end method

.method public onPreferenceHierarchyChange(Lcn/nubia/commonui/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Lcn/nubia/commonui/v7/preference/Preference;

    .prologue
    .line 272
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 273
    iget-object v0, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 274
    return-void
.end method

.method public onPreferenceVisibilityChange(Lcn/nubia/commonui/v7/preference/Preference;)V
    .locals 6
    .param p1, "preference"    # Lcn/nubia/commonui/v7/preference/Preference;

    .prologue
    .line 278
    iget-object v4, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mPreferenceListInternal:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 311
    :goto_0
    return-void

    .line 281
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/commonui/v7/preference/Preference;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 285
    const/4 v2, -0x1

    .line 286
    .local v2, "previousVisibleIndex":I
    iget-object v4, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mPreferenceListInternal:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/v7/preference/Preference;

    .line 287
    .local v1, "pref":Lcn/nubia/commonui/v7/preference/Preference;
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 295
    .end local v1    # "pref":Lcn/nubia/commonui/v7/preference/Preference;
    :cond_2
    iget-object v4, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v4, v5, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 297
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->notifyItemInserted(I)V

    goto :goto_0

    .line 290
    .restart local v1    # "pref":Lcn/nubia/commonui/v7/preference/Preference;
    :cond_3
    invoke-virtual {v1}, Lcn/nubia/commonui/v7/preference/Preference;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 291
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 302
    .end local v1    # "pref":Lcn/nubia/commonui/v7/preference/Preference;
    .end local v2    # "previousVisibleIndex":I
    :cond_4
    iget-object v4, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 303
    .local v0, "listSize":I
    const/4 v3, 0x0

    .local v3, "removalIndex":I
    :goto_2
    if-ge v3, v0, :cond_5

    .line 304
    iget-object v4, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 308
    :cond_5
    iget-object v4, p0, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 309
    invoke-virtual {p0, v3}, Lcn/nubia/commonui/v7/preference/PreferenceGroupAdapter;->notifyItemRemoved(I)V

    goto :goto_0

    .line 303
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method
