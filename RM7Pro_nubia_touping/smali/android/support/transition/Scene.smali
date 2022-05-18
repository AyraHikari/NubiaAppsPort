.class public Landroid/support/transition/Scene;
.super Ljava/lang/Object;
.source "Scene.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnterAction:Ljava/lang/Runnable;

.field private mExitAction:Ljava/lang/Runnable;

.field private mLayout:Landroid/view/View;

.field private mLayoutId:I

.field private mSceneRoot:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/transition/Scene;->mLayoutId:I

    .line 89
    iput-object p1, p0, Landroid/support/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    .line 90
    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;ILandroid/content/Context;)V
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "layoutId"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/transition/Scene;->mLayoutId:I

    .line 108
    iput-object p3, p0, Landroid/support/transition/Scene;->mContext:Landroid/content/Context;

    .line 109
    iput-object p1, p0, Landroid/support/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    .line 110
    iput p2, p0, Landroid/support/transition/Scene;->mLayoutId:I

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "layout"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/transition/Scene;->mLayoutId:I

    .line 124
    iput-object p1, p0, Landroid/support/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    .line 125
    iput-object p2, p0, Landroid/support/transition/Scene;->mLayout:Landroid/view/View;

    .line 126
    return-void
.end method

.method static getCurrentScene(Landroid/view/View;)Landroid/support/transition/Scene;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 206
    sget v0, Landroid/support/transition/R$id;->transition_current_scene:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/Scene;

    return-object v0
.end method

.method public static getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/support/transition/Scene;
    .locals 4
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "layoutId"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 62
    sget v3, Landroid/support/transition/R$id;->transition_scene_layoutid_cache:I

    .line 63
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 64
    .local v2, "scenes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/transition/Scene;>;"
    if-nez v2, :cond_0

    .line 65
    new-instance v2, Landroid/util/SparseArray;

    .end local v2    # "scenes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/transition/Scene;>;"
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 66
    .restart local v2    # "scenes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/transition/Scene;>;"
    sget v3, Landroid/support/transition/R$id;->transition_scene_layoutid_cache:I

    invoke-virtual {p0, v3, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 68
    :cond_0
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/Scene;

    .line 69
    .local v0, "scene":Landroid/support/transition/Scene;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 74
    .end local v0    # "scene":Landroid/support/transition/Scene;
    .local v1, "scene":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 72
    .end local v1    # "scene":Ljava/lang/Object;
    .restart local v0    # "scene":Landroid/support/transition/Scene;
    :cond_1
    new-instance v0, Landroid/support/transition/Scene;

    .end local v0    # "scene":Landroid/support/transition/Scene;
    invoke-direct {v0, p0, p1, p2}, Landroid/support/transition/Scene;-><init>(Landroid/view/ViewGroup;ILandroid/content/Context;)V

    .line 73
    .restart local v0    # "scene":Landroid/support/transition/Scene;
    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v0

    .line 74
    .restart local v1    # "scene":Ljava/lang/Object;
    goto :goto_0
.end method

.method static setCurrentScene(Landroid/view/View;Landroid/support/transition/Scene;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "scene"    # Landroid/support/transition/Scene;

    .prologue
    .line 195
    sget v0, Landroid/support/transition/R$id;->transition_current_scene:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 196
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 167
    iget v0, p0, Landroid/support/transition/Scene;->mLayoutId:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/Scene;->mLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 169
    :cond_0
    invoke-virtual {p0}, Landroid/support/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 171
    iget v0, p0, Landroid/support/transition/Scene;->mLayoutId:I

    if-lez v0, :cond_3

    .line 172
    iget-object v0, p0, Landroid/support/transition/Scene;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Landroid/support/transition/Scene;->mLayoutId:I

    iget-object v2, p0, Landroid/support/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 179
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/transition/Scene;->mEnterAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Landroid/support/transition/Scene;->mEnterAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 183
    :cond_2
    iget-object v0, p0, Landroid/support/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-static {v0, p0}, Landroid/support/transition/Scene;->setCurrentScene(Landroid/view/View;Landroid/support/transition/Scene;)V

    .line 184
    return-void

    .line 174
    :cond_3
    iget-object v0, p0, Landroid/support/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/transition/Scene;->mLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Landroid/support/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/transition/Scene;->getCurrentScene(Landroid/view/View;)Landroid/support/transition/Scene;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 149
    iget-object v0, p0, Landroid/support/transition/Scene;->mExitAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Landroid/support/transition/Scene;->mExitAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 153
    :cond_0
    return-void
.end method

.method public getSceneRoot()Landroid/view/ViewGroup;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Landroid/support/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method isCreatedFromLayoutResource()Z
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Landroid/support/transition/Scene;->mLayoutId:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnterAction(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 227
    iput-object p1, p0, Landroid/support/transition/Scene;->mEnterAction:Ljava/lang/Runnable;

    .line 228
    return-void
.end method

.method public setExitAction(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 247
    iput-object p1, p0, Landroid/support/transition/Scene;->mExitAction:Ljava/lang/Runnable;

    .line 248
    return-void
.end method
