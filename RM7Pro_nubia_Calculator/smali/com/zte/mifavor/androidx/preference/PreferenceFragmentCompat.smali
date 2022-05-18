.class public abstract Lcom/zte/mifavor/androidx/preference/PreferenceFragmentCompat;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "PreferenceFragmentCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceFragmentCompat"


# instance fields
.field private mList:Landroidx/recyclerview/widget/RecyclerView;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mStyledContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method

.method private initDivider(Lcom/zte/mifavor/androidx/preference/DividerDecoration;)V
    .locals 6

    .line 41
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 42
    invoke-virtual {p0}, Lcom/zte/mifavor/androidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroidx/preference/R$attr;->preferenceTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 44
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-nez v0, :cond_0

    .line 47
    sget v0, Lcom/zte/extres/R$style;->PreferenceThemeOverlay:I

    .line 49
    :cond_0
    new-instance v1, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/zte/mifavor/androidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/zte/mifavor/androidx/preference/PreferenceFragmentCompat;->mStyledContext:Landroid/content/Context;

    .line 51
    iget-object v0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceFragmentCompat;->mStyledContext:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v2, Lcom/zte/extres/R$styleable;->PreferenceFragment:[I

    iget-object p0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceFragmentCompat;->mStyledContext:Landroid/content/Context;

    sget v4, Landroidx/preference/R$attr;->preferenceFragmentStyle:I

    const v5, 0x1010506

    .line 53
    invoke-static {p0, v4, v5}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result p0

    const/4 v4, 0x0

    .line 51
    invoke-virtual {v0, v1, v2, p0, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 57
    sget v0, Lcom/zte/extres/R$styleable;->PreferenceFragment_android_divider:I

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 58
    sget v1, Lcom/zte/extres/R$styleable;->PreferenceFragment_android_dividerHeight:I

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 62
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    invoke-virtual {p1, v0}, Lcom/zte/mifavor/androidx/preference/DividerDecoration;->setDivider(Landroid/graphics/drawable/Drawable;)V

    if-eq v1, v2, :cond_1

    .line 66
    invoke-virtual {p1, v1}, Lcom/zte/mifavor/androidx/preference/DividerDecoration;->setDividerHeight(I)V

    .line 68
    :cond_1
    invoke-virtual {p1, v3}, Lcom/zte/mifavor/androidx/preference/DividerDecoration;->setAllowDividerAfterLastItem(Z)V

    return-void
.end method


# virtual methods
.method protected onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    .line 73
    new-instance p0, Lcom/zte/mifavor/androidx/preference/PreferenceGroupAdapter;

    invoke-direct {p0, p1}, Lcom/zte/mifavor/androidx/preference/PreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;)V

    return-object p0
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lcom/zte/mifavor/androidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    const-string v0, "android.hardware.type.automotive"

    invoke-virtual {p3, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 87
    sget p3, Lcom/zte/extres/R$id;->recycler_view:I

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p3, :cond_0

    return-object p3

    .line 92
    :cond_0
    sget p3, Lcom/zte/extres/R$layout;->preference_recyclerview_mfs:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/zte/mifavor/androidx/preference/PreferenceFragmentCompat;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 93
    iget-object p1, p0, Lcom/zte/mifavor/androidx/preference/PreferenceFragmentCompat;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/zte/mifavor/androidx/preference/PreferenceFragmentCompat;->onCreateLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 94
    iget-object p1, p0, Lcom/zte/mifavor/androidx/preference/PreferenceFragmentCompat;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;

    iget-object p3, p0, Lcom/zte/mifavor/androidx/preference/PreferenceFragmentCompat;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p2, p3}, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;)V

    .line 95
    iget-object p0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceFragmentCompat;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 31
    invoke-super {p0, p1, p2, p3}, Landroidx/preference/PreferenceFragmentCompat;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 32
    invoke-virtual {p0}, Lcom/zte/mifavor/androidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    iput-object p2, p0, Lcom/zte/mifavor/androidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    .line 33
    invoke-virtual {p0, p2}, Lcom/zte/mifavor/androidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method public setHeight(I)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceFragmentCompat;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceFragmentCompat;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 101
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 102
    iget-object p1, p0, Lcom/zte/mifavor/androidx/preference/PreferenceFragmentCompat;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    iget-object p0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceFragmentCompat;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setIconSize(II)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/zte/mifavor/androidx/preference/PreferenceGroupAdapter;

    if-eqz v0, :cond_0

    .line 78
    iget-object p0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    check-cast p0, Lcom/zte/mifavor/androidx/preference/PreferenceGroupAdapter;

    .line 79
    invoke-virtual {p0, p1, p2}, Lcom/zte/mifavor/androidx/preference/PreferenceGroupAdapter;->setIconSize(II)V

    :cond_0
    return-void
.end method

.method public setUseSpring(Z)V
    .locals 2

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceFragmentCompat;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceFragmentCompat;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    instance-of v0, v0, Lcom/zte/mifavor/androidx/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 111
    iget-object p0, p0, Lcom/zte/mifavor/androidx/preference/PreferenceFragmentCompat;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    check-cast p0, Lcom/zte/mifavor/androidx/widget/RecyclerView;

    .line 112
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/androidx/widget/RecyclerView;->setUseSpring(Z)V

    goto :goto_0

    :cond_0
    const-string p0, "PreferenceFragmentCompat"

    const-string p1, "setUseSpring error, mRecyclerView is null."

    .line 114
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "PreferenceFragmentCompat"

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUseSpring error, e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
